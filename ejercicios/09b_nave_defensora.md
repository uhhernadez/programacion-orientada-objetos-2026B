# Ejercicio 09b: La Nave Defensora (Colisiones y ArrayList)

## Objetivo
Agregar un jugador (Nave) que se mueva en la parte inferior de la pantalla y que destruya a los enemigos al tocarlos. Aprenderemos a eliminar objetos de un `ArrayList` de forma segura.

## Requisitos

### Paso 1: Crear la clase `Nave`
1. Crea una nueva pestaña llamada `Nave.pde`.
2. Define la clase `Nave` con los atributos: `x`, `y` y `radio`.
3. Crea su constructor. La nave siempre debe iniciar en la parte inferior de la pantalla, por lo que su `y` será algo como `height - 30`.
4. Crea el método `dibujar()` para mostrar la nave (puede ser un rectángulo, un círculo o un triángulo).
5. Crea el método `mover()` vacío (sin parámetros) que lea el estado del teclado (usando la variable `keyPressed` y `keyCode == LEFT` o `RIGHT`) para sumar o restar a `x`.

### Paso 2: Detección de Colisiones
Dentro de la misma clase `Nave`, necesitamos un método que verifique si la nave está tocando a un enemigo.
1. Crea un método que devuelva un booleano: `boolean colision(Enemigo e)`
2. Usando la función `dist(x1, y1, x2, y2)`, calcula la distancia entre el centro de la nave y el centro del enemigo (`e.x` y `e.y`).
3. Si la distancia es menor a la suma de sus radios (o la mitad de su tamaño), significa que chocaron. ¡Devuelve `true`! De lo contrario, devuelve `false`.

### Paso 3: Actualizar el Sketch Principal
Ahora debemos juntar todo en el sketch principal.
1. Crea una variable global para tu nave: `Nave jugador;` y un inicialízala en el `setup()`.
2. En el `draw()`, dibuja y mueve la nave: `jugador.dibujar(); jugador.mover();`.
3. **El gran reto (Eliminar del ArrayList):** 
   Cuando eliminas un objeto de una lista mientras la recorres desde el principio (de 0 al tamaño final), los índices se recorren y el programa se puede "saltar" enemigos o fallar. 
   Para evitarlo, **debes recorrer la lista al revés** (desde el final hasta el 0):
   
   ```java
   // Bucle al revés
   for (int i = enemigos.size() - 1; i >= 0; i--) {
     Enemigo e = enemigos.get(i);
     e.dibujar();
     e.mover();
     
     // Verificar colisión
     if (jugador.colision(e)) {
       enemigos.remove(i); // ¡Destruye al enemigo!
     }
   }
   ```

## Reto Extra
Haz que cada vez que destruyas un enemigo, se sume 1 punto a una variable `puntuacion` y muéstrala en la pantalla usando la función `text()`.
