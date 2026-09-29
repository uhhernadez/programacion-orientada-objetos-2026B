# Repaso en Equipos - Reto: Cruce Peligroso

## Requisitos Generales de la Actividad
Todos los programas de esta actividad deben incluir obligatoriamente:
1. Una clase **Jugador** controlada por teclado o ratón.
2. **Herencia:** Una clase padre (Base) y al menos dos subclases (Hijas).
3. Uso de **`ArrayList`** para manejar los elementos del juego.
4. Lógica de **colisiones** utilizando `dist()` u otra comprobación.
5. **Borrado seguro:** Recorrer el `ArrayList` al revés para eliminar objetos tras una colisión.

---

## Instrucciones del Proyecto: Cruce Peligroso (Esquivar obstáculos)

**Concepto:** Un mini-juego estilo *Frogger* donde el jugador debe cruzar la calle sin ser atropellado.

*   **Jugador:** Un personaje (ej. una rana) que inicia en la parte inferior de la pantalla y debe moverse en **las 4 direcciones** (arriba, abajo, izquierda, derecha) usando las flechas del teclado.
*   **Herencia:** Una clase base `Vehiculo`.
    *   **Subclase 1:** `Coche` (corto y muy rápido).
    *   **Subclase 2:** `Camion` (largo y más lento).
*   **Mecánica Principal:** 
    *   Los vehículos se mueven horizontalmente (de izquierda a derecha). Todos los vehículos están en un `ArrayList<Vehiculo>`.
    *   Cuando un vehículo sale por el lado derecho de la pantalla, debe ser **eliminado de la lista** y debes generar uno nuevo al inicio de la calle (izquierda).
    *   Si el Jugador **colisiona** con cualquier vehículo de la lista, ha perdido el intento y su posición `y` se reinicia a la parte inferior de la pantalla (inicio). 
    *   El objetivo del juego es llevar al personaje hasta la parte superior de la pantalla.
