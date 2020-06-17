# INSTRUCCIONES


Este repositorio ha sido creado para que os sirva como punto de partida de vuestra primera tarea. Además os debe de servir para el equipo para tener un control de versiones adecuado y por último nos servirá como alojamiento del entregable que constará fundamentalmente y necesariamente de los dos subdirectorios identificados como entregables y que contienen a su vez instriucciones específicas para hacer una entrega correcta

## Diseño
Se os proporciona el componente fundamental del data-path que no es otro que un shifter 2D. Este compoenente será descrito, y explicado en las sesiones de teoría y se puede observar que ejercerá todo el papel asociado a la variable "shifter" del siguiente ASM solución de la FIFO

![ASM](imagenes/ASM_shifter_def2.jpg) 

## Verificación

Se os proporciona un ejemplo completo de verificación con systemverilog de una FIFO, en este caso basada en una RAM de doble puerto.

Si quieres ejecutar el ejemplo, muévete al directorio tests/ejemplo y ejecuta

vsim -do script_rtl_2018_ver1.do

en caso de trabajar con linux

En el caso de trabajar con windows , ejecuta el mismo script una vez arrancado questasim

En el caso que quieras utilizar este banco de pruebas en vuestro diseño, basta con que añadáis vuestros ficheros de diseño al directorio de ejemplo y que sustituyáis en el fichero fifo_top_duv la FIFO instanciada.

