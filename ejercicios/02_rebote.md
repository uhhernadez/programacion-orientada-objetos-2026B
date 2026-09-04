# Ejercicio 2: El círculo que rebota

## Objetivo
Implementar condicionales dentro de los métodos de una clase para controlar el comportamiento del objeto al interactuar con los límites de la pantalla.

## Contexto y Precedente
En el ejercicio anterior logramos que el círculo cayera. Sin embargo, si lo dejamos caer, eventualmente desaparecerá por la parte inferior de la pantalla. En un entorno real, los objetos chocan contra el suelo. 

En Processing, puedes conocer el tamaño de tu ventana en cualquier momento usando las variables predefinidas `width` (ancho) y `height` (alto). El "suelo" de tu ventana corresponde a la variable `height`.

## El Problema
Modifica o crea una nueva versión de tu clase `Circulo`.
Mantén los atributos base (`x`, `y`, `l`), pero ahora tu función encargada de actualizar la posición debe verificar si el círculo ha tocado o cruzado el límite inferior de la pantalla.

Cuando el círculo toque el fondo, debe "rebotar", es decir, su dirección de movimiento en el eje Y debe invertirse para que comience a subir.

## Tu tarea
1. **Propón la implementación** de la lógica de rebote dentro de la función de actualización. ¿Qué atributos extra (como `velocidad_y`) necesitas para poder invertir la dirección del movimiento?
2. Ten en cuenta el tamaño del círculo (`l`). Si solo evalúas la posición central `y` contra `height`, es probable que el círculo se hunda hasta la mitad antes de rebotar. ¿Cómo puedes usar el atributo `l` para que rebote exactamente cuando su borde inferior toque el suelo?
3. **Propón la forma de probarlo** en tu archivo principal de Processing, asegurándote de que el círculo se mantenga rebotando.
