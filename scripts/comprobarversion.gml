//busca actualizacion en servidor, pero no lo hace muy seguido
//arg0: id instancia con la informacion

ini_open("config_omwa.ini");
if ini_read_string("config", "newversion", argument0.version) != argument0.version
{
    argument0.newvvv = true;
}
else
{
    argument0.newvvv = false;
    if ini_read_string("config", "dia_revision_actu", "") != string(current_weekday) and
        os_is_network_connected()
    {
        ini_write_string("config", "dia_revision_actu", string(current_weekday));
        argument0.leeserver1 = http_get("http://ojorcio.000webhostapp.com/mysql_omarsauriogames.php?ff=rv&game=dardasos&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");
        //no olvidar annadir evento asincrono HTTP en argument0
    }
}
ini_close();
