using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace LedMobileAndroid
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new MainPage();

        }

        protected override void OnStart()
        {
            // Handle when your app starts
            //(MainPage as MainPage).GetLoadData();
            //(MainPage as MainPage).Initialize();
        }

        protected override void OnSleep()
        {
            // Handle when your app sleeps
        }

        protected override void OnResume()
        {
            // Handle when your app resumes
        }

        
    }
}
