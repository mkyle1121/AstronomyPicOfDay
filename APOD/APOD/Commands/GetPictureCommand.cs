using APOD.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace APOD.Commands
{
    public class GetPictureCommand : ICommand
    {
        public WindowVM VM { get; set; }

        public event EventHandler? CanExecuteChanged;

        public GetPictureCommand(WindowVM vM)
        {
            VM = vM;
        }

        public bool CanExecute(object? parameter)
        {
            return true;
        }

        public void Execute(object? parameter)
        {
            VM.GetPicture();
        }
    }
}
