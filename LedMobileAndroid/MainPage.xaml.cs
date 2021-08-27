using MySqlConnector;
using System;
using System.Data;
using System.Timers;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace LedMobileAndroid
{
    //[XamlCompilation(XamlCompilationOptions.Compile)]

    public partial class MainPage : ContentPage
    {
        DataAccess dataAccess;

        public MainPage()
        {
            InitializeComponent();

            dataAccess = new DataAccess();

            this.SwitchOnOff.Toggled += SwitchOnOff_Toggled;
            this.SwitchAuto.Toggled += SwitchAuto_Toggled;

            this.ButtonChangeColor.Clicked += ButtonChangeColor_Clicked;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            GetLoadData();
        }

        private void SwitchAuto_Toggled(object sender, ToggledEventArgs e)
        {
            try
            {
                dataAccess.SwitchAuto_Toggled(true);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Failed: " + ex.Message);
            }
        }

        private void ButtonChangeColor_Clicked(object sender, EventArgs e)
        {
            try
            {
                SwitchOnOff.IsToggled = true;
                SwitchAuto.IsToggled = false;

                dataAccess.ButtonChangeColor_Clicked(this.ColorWheel1.SelectedColor);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Failed: " + ex.Message);
            }
        }

        private void SwitchOnOff_Toggled(object sender, ToggledEventArgs e)
        {
            try
            {
                dataAccess.SwitchOnOff_Toggled((sender as Switch).IsToggled);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Failed: " + ex.Message);
            }
        }

        public void GetLoadData()
        {
            try
            {

                DataTable results = dataAccess.GetLoadData();

                SwitchOnOff.IsToggled = (Boolean)(results.Rows[0][0]);

                if ((int)(results.Rows[0][1]) == 3)
                {
                    SwitchAuto.IsToggled = true;
                }
                else
                {
                    SwitchAuto.IsToggled = false;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Failed: " + ex.Message);
            }
        }

    }
}