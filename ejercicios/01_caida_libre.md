# Ejercicio 1: El círculo en caída libre

## Objetivo
Comprender la estructura básica de una clase en Programación Orientada a Objetos, su instanciación y el sistema de coordenadas de Processing.

## Contexto y Precedente
En la vida real, cuando soltamos un objeto, la gravedad hace que caiga hacia el suelo. Queremos simular este comportamiento en pantalla usando un círculo. 

**¡Importante sobre Processing!**
A diferencia del plano cartesiano tradicional que usamos en matemáticas, en Processing el origen de coordenadas `(0, 0)` se encuentra en la **esquina superior izquierda** de la ventana. 
- El eje `X` positivo va hacia la derecha.
- **El eje `Y` positivo va hacia abajo.** 

Esto significa que si quieres que un objeto "caiga" o se mueva hacia abajo en la pantalla, su valor en `Y` debe **aumentar** con el tiempo.

## El Problema
Deberás crear una clase llamada `Circulo`. 

La clase debe de tener, como mínimo, los siguientes atributos:
- `x`: La posición en el eje horizontal.
- `y`: La posición en el eje vertical.
- `l`: El tamaño del círculo (diámetro o radio).

Además, la clase debe contemplar dos comportamientos principales (métodos):
1. **Función para actualizar la posición**: Un método (por ejemplo, `actualizar()`) donde apliques la lógica de la gravedad o movimiento. ¿Cómo cambia la posición `y` en cada cuadro (frame)? ¿Necesitas alguna variable adicional como "velocidad" para lograr un efecto realista o de aceleración?
2. **Función para dibujar**: Un método (por ejemplo, `dibujar()`) que utilice las funciones de Processing (`ellipse()` o `circle()`) para mostrar el círculo en la pantalla utilizando sus atributos `x`, `y` y `l`.

## Tu tarea
1. **Propón la implementación** de la clase `Circulo` con sus atributos, su constructor y las funciones para actualizar y dibujar.
2. **Propón la forma de probarlo**: Escribe el código principal (`setup()` y `draw()`) necesario para crear una instancia (un objeto) de tu clase `Circulo` y hacer que se vea cayendo en la pantalla al ejecutar el programa.
