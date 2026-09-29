# Repaso en Equipos - Reto: La Cosecha

## Requisitos Generales de la Actividad
Todos los programas de esta actividad deben incluir obligatoriamente:
1. Una clase **Jugador** controlada por teclado o ratón.
2. **Herencia:** Una clase padre (Base) y al menos dos subclases (Hijas).
3. Uso de **`ArrayList`** para manejar los elementos del juego.
4. Lógica de **colisiones** utilizando `dist()` u otra comprobación.
5. **Borrado seguro:** Recorrer el `ArrayList` al revés para eliminar objetos tras una colisión.

---

## Instrucciones del Proyecto: La Cosecha (Atrapar objetos)

**Concepto:** Un juego de atrapar objetos que caen del cielo.

*   **Jugador:** Una `Cesta` en la parte inferior de la pantalla que se mueve a la izquierda y derecha usando las flechas del teclado.
*   **Herencia:** Una clase base `ObjetoCaida`.
    *   **Subclase 1:** `Manzana` (de color verde o rojo). Si la cesta la atrapa, suma 1 punto.
    *   **Subclase 2:** `Roca` (de color gris). Si la cesta la atrapa, resta 1 punto o quita 1 vida.
*   **Mecánica Principal:** Los objetos caen constantemente desde la parte superior de la pantalla. En tu sketch principal, utiliza un bucle `for` inverso para verificar dos cosas:
    1. Si la cesta colisiona con el objeto (aplica el efecto y **se elimina de la lista**).
    2. Si el objeto sale por la parte inferior de la pantalla sin ser atrapado (también **debe eliminarse de la lista** para liberar memoria).
