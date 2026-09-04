# Ejercicio 3: Efecto Pac-Man (Movimiento Continuo)

## Objetivo
Practicar el manejo de coordenadas en el eje X y el reposicionamiento dinámico de objetos utilizando condicionales.

## Contexto y Precedente
En juegos clásicos como Pac-Man, cuando el personaje sale por un lado de la pantalla, reaparece mágicamente por el lado opuesto. Este efecto da la ilusión de un mundo continuo.

Para lograr esto, necesitamos monitorear constantemente la posición en `X` del objeto y compararla con los límites izquierdo (`0`) y derecho (`width`) de la ventana.

## El Problema
Crea una clase `Nave` o reutiliza tu clase `Circulo`.
El objeto debe moverse constantemente de izquierda a derecha. 
Sus atributos base serán (`x`, `y`, `l`).

Tu función de actualizar posición debe incrementar constantemente la `x`. Además, debe incluir una validación: si el objeto sale por completo del lado derecho de la pantalla, su posición `x` debe cambiar repentinamente para que reaparezca entrando por el lado izquierdo.

## Tu tarea
1. **Propón la implementación** de la función para actualizar la posición en el eje X con la validación de los bordes.
2. ¿Cuál debe ser la condición matemática exacta para saber si el objeto ha salido *completamente* de la pantalla por la derecha? (Pista: el tamaño `l` del objeto juega un papel importante).
3. ¿A qué valor exacto de `x` debes mover el objeto para que parezca que entra de manera fluida y suave por la izquierda?
4. **Propón la forma de probarlo** instanciando el objeto en la parte central de la pantalla y verificando su comportamiento de bucle en el `draw()`.
