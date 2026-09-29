# Repaso en Equipos - Reto: La Infección

## Requisitos Generales de la Actividad
Todos los programas de esta actividad deben incluir obligatoriamente:
1. Una clase **Jugador** controlada por teclado o ratón.
2. **Herencia:** Una clase padre (Base) y al menos dos subclases (Hijas).
3. Uso de **`ArrayList`** para manejar los elementos del juego.
4. Lógica de **colisiones** utilizando `dist()` u otra comprobación.
5. **Borrado seguro:** Recorrer el `ArrayList` al revés para eliminar objetos tras una colisión.

---

## Instrucciones del Proyecto: La Infección (Cambio de estado al chocar)

**Concepto:** Curar células enfermas antes de tocar a las sanas.

*   **Jugador:** Una `CelulaAnticuerpo` (blanca) controlada por las flechas del teclado.
*   **Herencia:** Una clase base `Celula`.
    *   **Subclase 1:** `CelulaSana` (de color verde). Flotan lentamente rebotando en las paredes.
    *   **Subclase 2:** `CelulaInfectada` (de color rojo). Persiguen lentamente al jugador o se mueven de forma caótica.
*   **Mecánica Principal:** 
    *   Todas las células (sanas e infectadas) están guardadas en un mismo `ArrayList<Celula>`.
    *   Si el Anticuerpo (Jugador) colisiona con una `CelulaInfectada`, **la elimina de la lista** (simulando que la curó) y suma 10 puntos a un marcador.
    *   Sin embargo, si el Jugador colisiona por accidente con una `CelulaSana`, le resta 5 puntos por "daño colateral" y la célula también es eliminada (o, como reto opcional, la empuja).
    *   Deberán usar el bucle inverso (`for` al revés) en el `draw()` para verificar cada célula, moverla, dibujarla y decidir si la eliminan al chocar con el jugador.
