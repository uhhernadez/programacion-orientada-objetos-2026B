# Ejercicio 6: El Zombi (Lógica de Persecución)

## Objetivo
Utilizar parámetros en los métodos para recibir las coordenadas de un objetivo, logrando que el objeto tome decisiones direccionales.

## Contexto y Precedente
En los videojuegos, los enemigos básicos suelen moverse directamente hacia el jugador. Para lograr esto, el enemigo debe saber dónde está el jugador en todo momento y decidir si tiene que dar un paso hacia la izquierda, derecha, arriba o abajo.

## El Problema
Diseña una clase `Zombi`. 
Su constructor debe colocar al zombi en una posición aleatoria de la pantalla.

Crea un método llamado `perseguir(float objetivoX, float objetivoY)`. 
Dentro de este método, usa condiciones `if`:
- Si la `x` del zombi es menor que `objetivoX`, el zombi debe sumar un poco a su `x` (moverse a la derecha).
- Si la `x` del zombi es mayor, debe restar a su `x` (moverse a la izquierda).
- Repite la misma lógica para el eje `y`.

## Tu tarea
1. **Propón la implementación** de la clase `Zombi` y su método `perseguir()`.
2. **Propón la forma de probarlo**: Crea el zombi en tu archivo principal. En el bloque `draw()`, haz que el zombi te persiga pasándole la posición actual de tu mouse: `miZombi.perseguir(mouseX, mouseY)`.
