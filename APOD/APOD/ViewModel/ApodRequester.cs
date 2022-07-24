using APOD.Model;
using Newtonsoft.Json;
using System;
using System.Net.Http;
using System.Threading.Tasks;

namespace APOD.ViewModel
{
    public class ApodRequester
    {
        private static string DATE = DateTime.Now.ToString("yyyy-MM-dd");
        private static readonly string API_KEY = "wkyRrSkkIa00TeJCEIJnocKyrXYDkJPioO8D0ITE";
        private static readonly string BASE_URL = "https://api.nasa.gov/planetary/apod";
        private static readonly string PARAMETERS = "?api_key={0}&date={1}";

        public static async Task<Apod> GetApodRequestAsync(string? date = null)
        {
            Apod apod = new Apod();

            if(!string.IsNullOrEmpty(date))
            {
                DATE = date;
            }

            using (var client = new HttpClient())
            {
                var response = await client.GetStringAsync(BASE_URL + string.Format(PARAMETERS, API_KEY, DATE));
                apod = JsonConvert.DeserializeObject<Apod>(response);
            }
            return apod;
        }
    }
}
