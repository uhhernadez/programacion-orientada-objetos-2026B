# Ejercicio 4: El Disco de Hockey (Fricción)

## Objetivo
Implementar la mecánica de fricción (desaceleración gradual) manipulando la velocidad dentro del método de actualización.

## Contexto y Precedente
En el mundo real, si deslizas un disco sobre hielo, no se mueve para siempre. El hielo aplica una fuerza de fricción que poco a poco reduce la velocidad del disco hasta detenerlo. En programación, podemos simular esto multiplicando la velocidad por un número ligeramente menor a 1 (por ejemplo, `0.98`) en cada cuadro (frame).

## El Problema
Crea una clase `Disco`. 
El disco debe iniciar en la parte izquierda de la pantalla (`x = 0`) con una **velocidad inicial alta** hacia la derecha (por ejemplo, `vx = 20`).

Tu clase debe tener un método `actualizar()` donde:
1. Le sumes la velocidad a la posición `x` (para que se mueva).
2. Apliques la **fricción**: multiplica la velocidad `vx` por `0.98`.

## Tu tarea
1. **Propón la implementación** de la clase `Disco` con sus atributos `x`, `y` y `vx`, además de su constructor.
2. Escribe el método `actualizar()` aplicando la lógica de movimiento y fricción.
3. **Propón la forma de probarlo**: En tu archivo principal, crea el disco y llama a sus métodos. Deberías ver cómo el disco sale disparado muy rápido y se va frenando poco a poco hasta casi detenerse.
