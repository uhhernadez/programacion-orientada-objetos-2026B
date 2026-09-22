# Ejercicio 5: El Jetpack (Aceleración interactiva)

## Objetivo
Crear un método específico que modifique la velocidad de un objeto para simular aceleración bajo demanda (propulsión).

## Contexto y Precedente
Imagina a un personaje con un jetpack (mochila propulsora). Constantemente está siendo jalado hacia abajo por la gravedad, pero cuando presiona un botón, los motores le dan un pequeño empuje hacia arriba.

## El Problema
Crea una clase `Nave`. 
Debe tener los atributos `x`, `y` y `vy` (velocidad vertical).
En su método `actualizar()`, debes sumarle un valor constante a `vy` para simular la **gravedad**, y luego sumar `vy` a `y` para que caiga.

La parte nueva es agregar un método llamado `propulsar()`. 
Este método no se llamará todo el tiempo. Solo cuando se ejecute, debe **restarle** un valor importante a la velocidad vertical `vy` (ej. `vy = vy - 5`) para que el objeto reciba un impulso hacia arriba (recuerda que hacia arriba es negativo en Processing).

## Tu tarea
1. **Propón la implementación** de la clase `Nave` con gravedad constante.
2. Implementa el método `propulsar()`.
3. **Propón la forma de probarlo**: En el archivo principal, dibuja la nave en el `draw()`. Utiliza la función nativa de Processing `keyPressed()` o `mousePressed()` para llamar al método `propulsar()` de tu nave cada vez que el usuario interactúe. Deberías poder mantener la nave en el aire a base de clics.
