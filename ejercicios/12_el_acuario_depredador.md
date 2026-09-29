# Repaso en Equipos - Reto: El Acuario Depredador

## Requisitos Generales de la Actividad
Todos los programas de esta actividad deben incluir obligatoriamente:
1. Una clase **Jugador** controlada por teclado o ratón.
2. **Herencia:** Una clase padre (Base) y al menos dos subclases (Hijas).
3. Uso de **`ArrayList`** para manejar los elementos del juego.
4. Lógica de **colisiones** utilizando `dist()` u otra comprobación.
5. **Borrado seguro:** Recorrer el `ArrayList` al revés para eliminar objetos tras una colisión.

---

## Instrucciones del Proyecto: El Acuario Depredador (Auto-interacción)

**Concepto:** Una simulación donde el "jugador" es un depredador que se come a otros peces.

*   **Jugador:** Un `Tiburon` grande que sigue las coordenadas del ratón (`mouseX`, `mouseY`).
*   **Herencia:** Una clase base `CriaturaMarina`.
    *   **Subclase 1:** `PezComun` (nada en línea recta lentamente y rebota al tocar los bordes de la pantalla).
    *   **Subclase 2:** `PezAsustadizo` (nada más rápido y cambia de dirección constantemente de forma errática).
*   **Mecánica Principal:** 
    *   La pantalla inicia llena de peces que se mueven solos, almacenados en un único `ArrayList<CriaturaMarina>`.
    *   En el bucle `draw()`, recorre la lista al revés para mover y dibujar a los peces.
    *   En ese mismo bucle, revisa si el `Tiburon` colisiona con alguno de los peces. Si la distancia entre el tiburón y el pez es suficientemente pequeña, el pez **es devorado (eliminado del ArrayList)**.
    *   Agreguen un contador en la pantalla (usando la función `text()`) que indique cuántos peces se ha comido el tiburón.
