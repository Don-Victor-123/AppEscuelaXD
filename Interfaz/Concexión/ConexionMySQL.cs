using MySql.Data.MySqlClient;
using System;


namespace Interfaz.Concexión
{
    class ConexionMySQL
    {

        public MySqlConnection conn;
        private string server = "localhost";
        private string database = "ejemplo";
        private string uid = "root";
        private string password = "";

        public bool OpenConnection()
        {
            string connectionString = $"SERVER={server};DATABASE={database};UID={uid};PASSWORD={password};";
            conn = new MySqlConnection(connectionString);
            try
            {
                conn.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        public void CloseConnection()
        {
            conn.Close();
        }

    }
}
