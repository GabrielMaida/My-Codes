using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasaAutomatica
{
    class Automacao
    {
        public int idAutomacao { get; set; }
        public string cdAutomacao { get; set; }
        public DateTime dtLigar { get; set; }
        public DateTime dtDesligar { get; set; }

        public DataTable Listar()
        {
            //string strCon = "server=127.0.0.1;uid=root;database=gestaogastos;SslMode=none;";
            string strCon = "server=serverlab03;uid=13ia22;password=mariebig;database=13ia22;sslMode=none;";
            MySqlConnection con = new MySqlConnection(strCon);
            con.Open();
            //Gerar um script SQL
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM automacao", con);
            //Recuperar os dados do banco
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            //Armazenar em uma estrutura de dados, no caso uma DataTabl
            DataTable dt = new DataTable();
            //Preenche o DataTable com os dados retornados no dataAdapter
            da.Fill(dt);
            con.Close();
            return dt;
        }

        public DataTable ListarResumo()
        {
            //string strCon = "server=127.0.0.1;uid=root;database=gestaogastos;SslMode=none;";
            string strCon = "server=serverlab03;uid=13ia22;password=mariebig;database=13ia22;sslMode=none;";
            MySqlConnection con = new MySqlConnection(strCon);
            con.Open();
            //Gerar um script SQL
            //MySqlCommand cmd = new MySqlCommand("SELECT cdAutomacao, sum( (dtDesligar - dtLigar )) as QtHoras FROM automacao WHERE dtDesligar is not null group by cdAutomacao", con);
            MySqlCommand cmd = new MySqlCommand("SELECT cdAutomacao, sum( TIMEDIFF(dtDesligar, dtLigar)/60) as QtMinutos from automacao where dtDesligar is not null group by cdAutomacao", con);
            //Recuperar os dados do banco
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            //Armazenar em uma estrutura de dados, no caso uma DataTabl
            DataTable dt = new DataTable();
            //Preenche o DataTable com os dados retornados no dataAdapter
            da.Fill(dt);
            con.Close();
            return dt;
        }
 
        public bool RegistrarAcender()
        {
            //string strCon = "server=127.0.0.1;uid=root;database=gestaogastos;SslMode=none;";
            string strCon = "server=serverlab03;uid=13ia22;password=mariebig;database=13ia22;sslMode=none;";
            MySqlConnection con = new MySqlConnection(strCon);
            try
            {
                // Abre a conexao
                con.Open();

                // criar o comando SQL para inserir dados
                // insert into p1usuario (nmLogin, nmSenha, nmUsuario) values (X,Y,Z)
                MySqlCommand cmd = new MySqlCommand("INSERT INTO automacao (cdAutomacao, dtLigar, dtDesligar) VALUES ( @cdAutomacao, @dtLigar, null )", con);
                cmd.Parameters.AddWithValue("@cdAutomacao", this.cdAutomacao);
                cmd.Parameters.AddWithValue("@dtLigar", this.dtLigar);


                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }
        public bool RegistrarApagar()
        {
            //string strCon = "server=127.0.0.1;uid=root;database=gestaogastos;SslMode=none;";
            string strCon = "server=serverlab03;uid=13ia22;password=mariebig;database=13ia22;sslMode=none;";
            MySqlConnection con = new MySqlConnection(strCon);
            try
            {
                // Abre a conexao
                con.Open();

                // criar o comando SQL para inserir dados
                // insert into p1usuario (nmLogin, nmSenha, nmUsuario) values (X,Y,Z)
                MySqlCommand cmd = new MySqlCommand("UPDATE automacao set dtDesligar = @dtDesligar where cdAutomacao = @cdAutomacao and dtDesligar is null", con);
                cmd.Parameters.AddWithValue("@dtDesligar", this.dtDesligar);
                cmd.Parameters.AddWithValue("@cdAutomacao", this.cdAutomacao);          

                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }

    }
}
