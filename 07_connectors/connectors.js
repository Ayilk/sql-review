
const mysql = require('mysql2');

const connection = mysql.createConnection({
    user: 'root',
    host: '127.0.0.1',
    database: 'tienda',
    password: 'r!Tdu)GQg8Bp',
    port: 3306,
});


connection.connect( error => {
    error ? console.error("No se pude conectar a la base de datos: ",error) 
          : console.log("La conección a la base de datos ha sido establecida");
});

connection.query('SELECT * FROM users', (error, response)=>{
    error ? console.error('Hubo un error en la consulta: ', error)
          : console.log('Respuesta: ', response)
});

connection.end(error => {
    error ? console.error('Hubo un error al finalizar la conección: ', error)
          : console.log('La conección ha sido cerrada');
})

/*
Esta es la respuesta al ejecutar este código con node:

bash-5.2$ node connectors.js
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
  },
  {
    user_id: 2,
    name: 'Marco',
    lastname: 'Guiterrez',
    init_date: 2024-03-05T06:00:00.000Z,
    email: 'marco@gmail.com',
    company_id: null
  },
  {
    user_id: 3,
    name: 'Miriam',
    lastname: 'Jimenez',
    init_date: 2019-11-09T06:00:00.000Z,
    email: null,
    company_id: null
  },
  {
    user_id: 4,
    name: 'José',
    lastname: 'Benitez',
    init_date: 2018-08-27T05:00:00.000Z,
    email: 'jose@gmail.com',
    company_id: null
  },
  {
    user_id: 5,
    name: 'Teresa',
    lastname: 'Jimenez',
    init_date: 2022-03-03T06:00:00.000Z,
    email: 'jose@gmail.com',
    company_id: 3
  },
  {
    user_id: 6,
    name: 'Adriana',
    lastname: 'Lima',
    init_date: 2018-08-27T05:00:00.000Z,
    email: '',
    company_id: 4
  },
  {
    user_id: 7,
    name: 'Tomas',
    lastname: 'García',
    init_date: 2019-11-09T06:00:00.000Z,
    email: 'tomas@gmai.com',
    company_id: 2
  }
]

*/