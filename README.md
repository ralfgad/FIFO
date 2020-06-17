# FIFO
Punto de partida tarea1 FIFO
## Diseño
Se te proporciona el componente fundamental del data-path que no es otro que un shifter 2D.

## Verificación

Se os proporciona un ejemplo completo de verificación con systemverilog de una FIFO, en este caso basada en una RAM de doble puerto.

Si quieres ejecutar el ejemplo, muévete al directorio tests/ejemplo y ejecuta

vsim -do script_rtl_2018_ver1.do

en caso de trabajar con linux

En el caso de trabajar con windows , ejecuta el mismo script una vez arrancado questasim

En el caso que quieras utilizar este banco de pruebas en vuestro diseño, basta con que añadáis vuestros ficheros de diseño al directorio de ejemplo y que sustituyáis en el fichero fifo_top_duv la FIFO instanciada.
