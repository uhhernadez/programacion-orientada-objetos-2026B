# Ejercicio 10: Sistema de Partículas (Polimorfismo)

## Objetivo
Entender el polimorfismo: cómo una colección de objetos de la clase padre puede ejecutar comportamientos totalmente distintos dependiendo de su subclase real (su tipo específico).

## Descripción
Vamos a simular un efecto visual de chispas y humo utilizando un "sistema de partículas". Tendremos diferentes tipos de partículas que se comportarán de forma distinta, pero serán administradas por una única lista en el sketch principal.

## Requisitos
1. **Clase Base (`Particula`):**
   - Atributos: `x`, `y`, `tiempoVida`.
   - Métodos: 
     - `actualizar()`: reduce el `tiempoVida` en 1 en cada fotograma.
     - `dibujar()`: (puede dibujar un punto o un círculo básico).
     - `estaMuerta()`: devuelve `true` si el `tiempoVida` llegó a 0, de lo contrario `false`.
2. **Subclase (`ChispaFuego`):**
   - Hereda de `Particula`.
   - Sobrescribe `actualizar()`: se mueve hacia arriba y a los lados de forma errática (`x += random(-2, 2)`, `y -= random(1, 4)`). Asegúrate de llamar a `super.actualizar()` para que el tiempo de vida siga bajando.
   - Sobrescribe `dibujar()`: se dibuja como un círculo de color naranja/amarillo cuyo tamaño disminuye según el `tiempoVida` restante.
3. **Subclase (`Humo`):**
   - Hereda de `Particula`.
   - Sobrescribe `actualizar()`: se mueve muy lentamente hacia arriba de forma constante.
   - Sobrescribe `dibujar()`: se dibuja como un círculo gris oscuro que, a diferencia del fuego, se hace *más grande* y transparente conforme se acaba su `tiempoVida`.
4. **Sketch Principal:**
   - Crea un `ArrayList<Particula>`.
   - Al hacer clic y mantener presionado el ratón (`mousePressed`), añade 10 instancias de `ChispaFuego` y 2 instancias de `Humo` en la posición `mouseX`, `mouseY`.
   - En la función `draw()`, recorre la lista actualizando, dibujando y eliminando (usando un bucle al revés) las partículas que devuelvan `true` en `estaMuerta()`.

## Reto Extra
Añade una tercera subclase llamada `GotitaAgua` que en su `actualizar()` responda a una variable de gravedad, cayendo aceleradamente hacia abajo.
