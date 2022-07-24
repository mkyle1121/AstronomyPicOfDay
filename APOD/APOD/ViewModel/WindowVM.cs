using APOD.Commands;
using APOD.Model;
using System;
using System.ComponentModel;
using System.Text.RegularExpressions;
using System.Windows.Media.Imaging;

namespace APOD.ViewModel
{
    public class WindowVM : INotifyPropertyChanged
    {
        public GetPictureCommand GetPictureCommand { get; set; }

        public event PropertyChangedEventHandler? PropertyChanged;

        private string date;

        public string Date
        {
            get { return date; }
            set
            {
                if (ValidateDateRegex(value))
                {
                    date = value;                    
                    OnPropertyChanged(nameof(Date));
                }
            }
        }

        //private bool ValidateDate(string dateInput)
        //{
        //    DateTime dateTime;
        //    if (DateTime.TryParse(dateInput, out dateTime))
        //    {
        //        if (dateTime <= DateTime.Now)
        //        {
        //            return true;
        //        }
        //    }
        //    return false;
        //}

        private Apod apod; 
        
        public Apod Apod 
        {
            get 
            {
                return apod;
            }            
            set
            {
                apod = value;
                OnPropertyChanged(nameof(Apod));
            }        
        }

        private bool ValidateDateRegex(string dateInput)
        {
            string pattern = @"^\d{0,4}-\d{0,2}-\d{0,2}$";
            Regex regex = new Regex(pattern);
            return regex.IsMatch(dateInput) ? true : false;
        }

        private BitmapImage bitmapImage;

        public BitmapImage BitmapImage
        {
            get { return bitmapImage; }
            set 
            {
                bitmapImage = value;
                OnPropertyChanged(nameof(BitmapImage));
            }
        }

        public WindowVM()
        {
            Apod = new Apod();
            GetPictureCommand = new GetPictureCommand(this);
            Date = DateTime.Now.ToString("yyyy-MM-dd");
            GetPicture();
        }

        private void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async void GetPicture()
        {
            Apod = await ApodRequester.GetApodRequestAsync(Date);

            BitmapImage = new BitmapImage();
            BitmapImage.BeginInit();
            bitmapImage.UriSource = new Uri(Apod.Url);
            BitmapImage.EndInit();
        }
        
    }
}
