# Ejercicio 11: Recolector de Power-Ups (Interacción entre Clases)

## Objetivo
Utilizar la herencia para crear lógicas y mecánicas de un videojuego. Aprenderemos a hacer que distintos objetos apliquen diferentes efectos (métodos) sobre un mismo personaje principal.

## Descripción
Tomando como inspiración el ejercicio de la "Nave" y los "Cometas", crearemos un juego donde el Jugador (la nave) debe recoger distintos "Power-Ups" o ítems que aparecen distribuidos por la pantalla, cada uno con un efecto único.

## Requisitos
1. **Clase `Jugador`:**
   - Atributos: `x`, `y`, `puntuacion` (inicia en 0), `velocidad` (inicia en 3).
   - Métodos: `mover()` (con las teclas WASD o flechas) y `dibujar()`.
2. **Clase Base (`Item`):**
   - Atributos: `x`, `y`, `radio`.
   - Métodos: `dibujar()`, `verificarColision(Jugador j)`, y un método vacío (que no hace nada) llamado `aplicarEfecto(Jugador j)`.
3. **Subclases de Items:**
   - `ItemMoneda`: 
     - Hereda de `Item`.
     - Sobrescribe `aplicarEfecto(Jugador j)` para sumar 100 puntos a la `puntuacion` del jugador (`j.puntuacion += 100;`). 
     - Sobrescribe `dibujar()` para que sea un círculo amarillo.
   - `ItemVelocidad`: 
     - Hereda de `Item`.
     - Sobrescribe `aplicarEfecto(Jugador j)` para aumentar permanentemente o temporalmente la `velocidad` del jugador (`j.velocidad += 2;`). 
     - Sobrescribe `dibujar()` para que sea un círculo azul claro.
4. **Sketch Principal:**
   - Crea un `Jugador`.
   - Crea un `ArrayList<Item>` y llénalo de forma aleatoria con `ItemMoneda` e `ItemVelocidad` en posiciones aleatorias de la pantalla.
   - En el `draw()`, dibuja el texto de la puntuación en pantalla y recorre la lista de ítems. Si el jugador colisiona con el ítem, llama a `item.aplicarEfecto(jugador)` y luego elimina el ítem recolectado de la lista.

## Reto Extra
Crea un `ItemTrampa` (de color rojo brillante) que en lugar de un beneficio, reste 50 puntos o reduzca la velocidad del jugador si lo toca por error.
