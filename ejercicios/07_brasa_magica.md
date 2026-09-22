# Ejercicio 7: La Brasa (Tiempo de Vida)

## Objetivo
Manejar el "tiempo de vida" (ciclo de vida) de un objeto como un atributo interno que se desgasta y utilizarlo para controlar su aspecto visual (opacidad).

## Contexto y Precedente
En efectos visuales (como humo, chispas o fuego), las partículas no existen para siempre. Nacen, se desvanecen lentamente y desaparecen. 

En Processing, la función `fill(r, g, b, alpha)` recibe un cuarto parámetro de opacidad (o transparencia) que va de `0` (invisible) a `255` (sólido).

## El Problema
Diseña una clase `Brasa`.
Sus atributos deben ser `x`, `y` y un nuevo atributo llamado `vida`.

En su constructor, la brasa debe posicionarse donde tú quieras, pero su `vida` debe inicializarse al máximo: `255`.

Crea un método `envejecer()`. En cada frame, este método debe restar un poco a la `vida` (por ejemplo, `vida = vida - 2`).
En su método `dibujar()`, utiliza el atributo `vida` como el nivel de transparencia del color.

Finalmente, dentro de `envejecer()`, revisa: si la `vida` llega a ser menor o igual a `0`, reposiciona la brasa en otra parte y reinicia su `vida` a `255` para que vuelva a brillar.

## Tu tarea
1. **Propón la implementación** de la clase `Brasa` con su atributo `vida` rigiendo su transparencia.
2. Implementa la lógica de envejecimiento y "reencarnación" (reseteo).
3. **Propón la forma de probarlo**: En tu `draw()`, instancia una brasa y observa cómo parpadea o se desvanece y reaparece.
