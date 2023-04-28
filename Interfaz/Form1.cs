using Interfaz.Concexión;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Interfaz
{
    public partial class Form1 : Form
    {


        private Dictionary<string, int> nombreIdDiccionario = new Dictionary<string, int>();


        public Form1()
        {
            InitializeComponent();
            MostrarTabla();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            listView1.Items.Clear();
            MostrarTabla();

        }

        public void MostrarTabla()
        {
            ConexionMySQL conexion = new ConexionMySQL();
            if (conexion.OpenConnection())
            {
                string query = "SELECT * FROM ejemplo";
                MySqlCommand cmd = new MySqlCommand(query, conexion.conn);
                MySqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    ListViewItem item = new ListViewItem(dataReader.GetInt32("id").ToString());
                    item.SubItems.Add(dataReader.GetString("nombre"));
                    item.SubItems.Add(dataReader.GetInt32("edad").ToString());
                    item.SubItems.Add(dataReader.GetString("ciudad"));
                    int id = dataReader.GetInt32("id");
                    string nombre = dataReader.GetString("nombre");
                    nombreIdDiccionario[nombre] = id; // añadir al diccionario
                    item.Tag = id; // guardar el ID en la propiedad Tag del ListViewItem
                    listView1.Items.Add(item);
                }


                dataReader.Close();
                conexion.CloseConnection();
            }
            else
            {
                Console.WriteLine("Error al conectar con la base de datos");
            }
        }

        private void listView1_MouseClick(object sender, MouseEventArgs e)
        {
            ListViewItem item = listView1.GetItemAt(e.X, e.Y);
            if (item != null)
            {
                int rowIndex = item.Index;
                int columnIndex = -1;

                for (int i = 0; i < item.SubItems.Count; i++)
                {
                    if (item.SubItems[i].Bounds.Contains(e.Location))
                    {
                        columnIndex = i;
                        break;
                    }
                }

                if (columnIndex >= 0)
                {
                    string message = $"Se seleccionó la columna {columnIndex + 1} en la fila {rowIndex + 1}";
                    MessageBox.Show(message);
                }
            }
        }

    }
}