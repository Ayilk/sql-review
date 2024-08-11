
const mysql = require('mysql2');

function query_users( user ){

    const connection = mysql.createConnection({
        user: 'root',
        host: '127.0.0.1',
        database: 'tienda',
        password: 'r!Tdu)GQg8Bp',
        port: 3306,
    });

    const query = "SELECT * FROM users  WHERE name = %s;";
    console.log("query", query)

    connection.connect( error => {
        error ? console.error("No se pude conectar a la base de datos: ",error) 
            : console.log("La conección a la base de datos ha sido establecida");
    });

    connection.query(query, (error, response)=>{
        error ? console.error('Hubo un error en la consulta: ', error)
            : console.log('Respuesta: ', response)
    });

    connection.end(error => {
        error ? console.error('Hubo un error al finalizar la conección: ', error)
            : console.log('La conección ha sido cerrada');
    })

}   

//query_users( 'Juan' );

/*
bash-5.2$ node injector.js
query SELECT * FROM users  WHERE name = 'Juan';
La conección a la base de datos ha sido establecida
La conección ha sido cerrada
Respuesta:  [
  {
    user_id: 1,
    name: 'Juan',
    lastname: 'Sanchez',
    init_date: 2020-04-29T05:00:00.000Z,
    email: 'nuevo@gmail.com',
    company_id: 1
  }
]
*/

//query_users( "'; UPDATE users SET email = 'changed@gmail.com' WHERE user_id=1 ; --" );

query_users('Juan');