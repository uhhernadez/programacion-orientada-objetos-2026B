# Repaso en Equipos - Reto: Defensa Antiaérea

## Requisitos Generales de la Actividad
Todos los programas de esta actividad deben incluir obligatoriamente:
1. Una clase **Jugador** controlada por teclado o ratón.
2. **Herencia:** Una clase padre (Base) y al menos dos subclases (Hijas).
3. Uso de **`ArrayList`** para manejar los elementos del juego.
4. Lógica de **colisiones** utilizando `dist()` u otra comprobación.
5. **Borrado seguro:** Recorrer el `ArrayList` al revés para eliminar objetos tras una colisión.

---

## Instrucciones del Proyecto: Defensa Antiaérea (Eliminar con clic)

**Concepto:** Defender una base estática de misiles que caen desde el cielo.

*   **Jugador:** Una `Base` fija en la parte inferior central de la pantalla con una "barra de salud" o un contador de vidas.
*   **Herencia:** Una clase base `Misil`.
    *   **Subclase 1:** `MisilBasico` (cae a velocidad normal y recta).
    *   **Subclase 2:** `MisilRapido` (más pequeño y cae el doble de rápido).
*   **Mecánica Principal:** Los misiles aparecen arriba de forma constante y caen hacia abajo. 
    *   El jugador debe usar el **ratón** y hacer clic. 
    *   En la función `mousePressed()` (o evaluando la variable `mousePressed` dentro del draw), debes recorrer el `ArrayList` al revés. 
    *   Si haces clic y el cursor está dentro del radio de un misil (midiendo la distancia entre `mouseX, mouseY` y el misil), el misil **es destruido (eliminado de la lista)**.
    *   Si no lo logras y el misil colisiona con tu Base, se resta salud a la base y el misil explota (se elimina).
