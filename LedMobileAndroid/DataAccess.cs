using MySqlConnector;
using System;
using System.Data;
using System.Timers;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace LedMobileAndroid
{
    class DataAccess
    {
        MySqlConnection mySqlConnection;

        public DataAccess()
        {
            mySqlConnection = new MySqlConnection
            {
                ConnectionString = "server=192.168.1.87;port=3306;userid=LedExternal;password=JTM665650;database=LED;Pooling=false"                
            };
            
        }

        public void SwitchAuto_Toggled(bool isAuto)
        {
            mySqlConnection.Open();
            MySqlCommand mySqlCommand = new MySqlCommand("Update LED_Main set id_ComponentInControl = @idComponentInControl", mySqlConnection);
            MySqlParameter mySqlParameter = new MySqlParameter("@idComponentInControl", MySqlDbType.Int16);

            if (isAuto)
                mySqlParameter.Value = 3;
            else
                mySqlParameter.Value = 2;

            mySqlCommand.Parameters.Add(mySqlParameter);

            mySqlCommand.ExecuteNonQuery();

            mySqlConnection.Close();
        }

        public void ButtonChangeColor_Clicked(Color currentColor)
        {
            mySqlConnection.Open();
            MySqlCommand mySqlCommand = new MySqlCommand("Update LED_Main set red = @red, green = @green, blue = @blue, id_ComponentInControl = @wheel", mySqlConnection);
            MySqlParameter mySqlParameterRed = new MySqlParameter("@red", MySqlDbType.Int16);
            MySqlParameter mySqlParameterGreen = new MySqlParameter("@green", MySqlDbType.Int16);
            MySqlParameter mySqlParameterBlue = new MySqlParameter("@blue", MySqlDbType.Int16);
            MySqlParameter mySqlParameterWheel = new MySqlParameter("@wheel", MySqlDbType.Int16);
            mySqlParameterRed.Value = Math.Round(currentColor.R * 255);
            mySqlParameterGreen.Value = Math.Round(currentColor.G * 255);
            mySqlParameterBlue.Value = Math.Round(currentColor.B * 255);
            mySqlParameterWheel.Value = 2;

            mySqlCommand.Parameters.Add(mySqlParameterRed);
            mySqlCommand.Parameters.Add(mySqlParameterGreen);
            mySqlCommand.Parameters.Add(mySqlParameterBlue);
            mySqlCommand.Parameters.Add(mySqlParameterWheel);

            mySqlCommand.ExecuteNonQuery();

            mySqlConnection.Close();

        }

        public void SwitchOnOff_Toggled(bool isToggled)
        {
            using MySqlCommand mySqlCommand = new MySqlCommand("Update LED_Main set LightsOn = @lightsOn", mySqlConnection);
            //using MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(mySqlCommand);
            if (mySqlConnection.State == ConnectionState.Closed)
            {
                int x = 1;
            }

            mySqlConnection.Open();
            MySqlParameter mySqlParameter = new MySqlParameter("@lightsOn", MySqlDbType.Binary);
            mySqlParameter.Value = isToggled;
            mySqlCommand.Parameters.Add(mySqlParameter);
            mySqlCommand.ExecuteNonQuery();
            mySqlConnection.Close();

        }

        public DataTable GetLoadData()
        {
            DataTable results = new DataTable("LED");

            using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT LightsOn, id_ComponentInControl, red, green, blue, controllerColor FROM LED_Main", mySqlConnection))
            using (MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(mySqlCommand))
            {
                mySqlDataAdapter.Fill(results);                
            }
            return results;
        }
    }
}