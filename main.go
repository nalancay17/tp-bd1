package main

import (
	"database/sql"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"os/exec"
	"time"

	_ "github.com/lib/pq"
)

var dbCreada = true
var tablasCreadas = false
var instanciasAgregadas = false

const driverBaseDeDatos = "postgres"
const nombreBaseDeDatos = "tp_bd1"
const stringConexionCreacionDB = "user=nico17 host=localhost password=manager1 sslmode=disable"
const stringConexion = stringConexionCreacionDB + " database=" + nombreBaseDeDatos
const dropDB = "DROP DATABASE IF EXISTS " + nombreBaseDeDatos
const createDB = "CREATE DATABASE " + nombreBaseDeDatos

func main() {

	var opcion string
	salir := false

	for !salir {
		clearScreen()
		fmt.Printf("\n                              TP BASE DE DATOS\n\n\n")
		fmt.Printf("Elija una opción:\n\n")
		fmt.Printf("1. Crear base de datos\n")
		fmt.Printf("2. Crear tablas\n")
		fmt.Printf("3. Agregar instancias\n")
		fmt.Printf("4. Salir\n\n")
		fmt.Scanf("%s", &opcion)

		if opcion == "1" {
			createDatabase()
			dbCreada = true
			time.Sleep(1 * time.Second)
		} else if opcion == "2" {
			createTables()
			tablasCreadas = true
			time.Sleep(1 * time.Second)
		} else if opcion == "3" {
			addInstances()
			instanciasAgregadas = true
			time.Sleep(1 * time.Second)
		} else if opcion == "4" {
			salir = true
		} else {
			fmt.Printf("Opción inválida. Ingrese una opción correcta.")
		}
	}
}

func clearScreen() {
	cmd := exec.Command("clear") //guarda el comando en un struct cmd
	cmd.Stdout = os.Stdout       //mostrar resultado de ejecutar comando por pantalla

	//ejecuta el comando y guarda un posible error
	err := cmd.Run()
	if err != nil {
		log.Fatal(err)
	}
}

func ejecutarQueriesArchivo(archivo string) {
	db, err := sql.Open(driverBaseDeDatos, stringConexion)
	if err != nil {
		log.Fatal(err)
	}
	//leer archivo resulta en []byte
	content, err := ioutil.ReadFile(archivo)
	if err != nil {
		log.Fatal(err)
	}
	//casteo el contenido del archivo y lo ejecuto
	_, err = db.Exec(string(content))
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()
}

func createDatabase() {
	db, err := sql.Open(driverBaseDeDatos, stringConexionCreacionDB)
	if err != nil {
		log.Fatal(err)
	}
	_, err = db.Exec(dropDB)
	if err != nil {
		log.Fatal(err)
	}
	_, err = db.Exec(createDB)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()
	fmt.Printf("BASE DE DATOS CREADA\n")
}

func createTables() {
	if !dbCreada {
		fmt.Printf("Cree la base de datos para agregar las tablas\n")
	} else if tablasCreadas {
		fmt.Printf("Las tablas ya fueron creadas")
	} else {
		ejecutarQueriesArchivo("tablas/tablas.sql")
		fmt.Printf("TABLAS CREADAS\n")
	}
}

func addInstances() {
	if !dbCreada {
		fmt.Printf("Cree la base de datos y las tablas para agregar instancias\n")
	} else if !tablasCreadas {
		fmt.Printf("Cree las tablas para agregar instancias\n")
	} else if instanciasAgregadas {
		fmt.Printf("Las instancias ya fueron agregadas")
	} else {
		ejecutarQueriesArchivo("tablas/inserts.sql")
		fmt.Printf("CONSUMOS AGREGADOS\n")
	}
}
