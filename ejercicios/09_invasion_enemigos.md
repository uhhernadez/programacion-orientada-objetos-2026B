# Ejercicio 09: Invasión de Enemigos (Herencia Básica)

## Objetivo
Comprender la sintaxis básica de la herencia (`extends` y `super()`) creando variantes de un enemigo común que reutilizan código.

## Descripción
Vamos a crear un videojuego sencillo donde caen enemigos desde la parte superior de la pantalla. En lugar de escribir el código de movimiento y dibujo desde cero para cada tipo de enemigo, crearemos una clase base `Enemigo` y haremos que otras clases hereden de ella.

## Requisitos
1. **Clase Base (`Enemigo`):**
   - Atributos: `x`, `y`, `velocidad`, `colorEntidad`.
   - Métodos: `mover()` (aumenta la `y` según la velocidad para que caiga) y `dibujar()`.
2. **Subclase 1 (`EnemigoRapido`):**
   - Hereda de `Enemigo` usando `extends`.
   - En su constructor, utiliza `super()` y define una `velocidad` mucho mayor a la normal y un color distintivo (ej. rojo).
3. **Subclase 2 (`EnemigoNervioso`):**
   - Hereda de `Enemigo`.
   - Sobrescribe (hace un override) del método `mover()` para que, además de caer hacia abajo, sume un valor aleatorio pequeño a `x` en cada fotograma (`x += random(-3, 3);`), simulando que tiembla al caer.
4. **Sketch Principal:**
   - Crea un `ArrayList<Enemigo>`.
   - Instancia objetos tanto de `Enemigo`, como de `EnemigoRapido` y `EnemigoNervioso`, y mételos todos en la misma lista.
   - En tu ciclo `draw()`, recorre la lista llamando a `mover()` y `dibujar()` de cada uno. ¡Nota cómo cada objeto se mueve como le corresponde aunque todos estén en una lista de tipo `Enemigo`!

## Reto Extra
Haz que si un enemigo sale por la parte inferior de la pantalla (su `y` es mayor a la altura de la ventana), vuelva a aparecer en la parte superior en una posición `x` aleatoria.
