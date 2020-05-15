/*
 * MIT License
 *
 * Copyright (c) 2020 Diego Urrutia-Astorga <durrutia@ucn.cl>.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

// https://doc.zeroc.com/ice/3.7/language-mappings/java-mapping/client-side-slice-to-java-mapping/customizing-the-java-mapping
["java:package:cl.ucn.disc.pdis.fivet.zeroice", "cs:namespace:Fivet.ZeroIce"]
module model {

    /**
    * The Persona
    **/
    class Persona{

        /**
        * PK
        **/
        int id;

        /**
        * Rut: 81.518.400-9
        **/
        string rut;

        /**
        * Nombre
        **/
        string nombre;

        /**
        * Direccion
        **/
        string direccion;

        /**
        * Telefono Fijo: +56 552355000
        **/
        long telefonoFijo;

        /**
        * Telefono Movil: +56 9 52369874
        **/
        long telefonoMovil;

        /**
        * Correo Electronico
        **/
        string correoElectronico;
    }

    /**
    * The Ficha
    **/
    class Ficha{
        /**
        * PK
        */
        int numeroFicha;

        /**
        * Fecha Zona: ISO_ZONED_DATE_TIME
        */
        //FECHA

        /**
        * Paciente/Nombre
        */
        string nombrePaciente;

        /**
        * Especie
        */
        string especie;

        /**
        * Fecha Nacimiento
        */
        string fecha;

        /**
        * Raza
        */
        string raza;

        /**
        * Sexo
        */
        string sexo;

        /**
        * Color
        */
        string color;

        /**
        * Tipo
        */
        string tipo;

    }

    /**
    * The Control
    */
    class Control {

        /**
        * PK
        */
        int id;

    }

    /**
    * The Contratos
    */
    interface Contratos{

        /**
        * Dado un numero de ficha, retornar la ficha asociada
        * @param numero de la ficha a obtener.
        * @return the Ficha
        */
        Ficha obtenerFicha(int numero);

        /**
        * Registro de datos del paciente
        * @param datos del paciente
        * @return bool
        */
        bool regDatosPaciente(string nombre, string especie, string fechaDeNacimiento, string raza, string sexo,
        string color, string tipo);

        /**
        * Registro de datos del dueño
        * @param datos del dueño
        * @return bool
        */
        bool regDatosDueno(string rut, string nombre, string direccion, int telefonoFijo, int telefonoMovil,
        string email);

    }

    /**
     * The base system.
     */
     interface TheSystem {

        /**
         * @return the diference in time between client and server.
         */
        long getDelay(long clientTime);

     }

}
