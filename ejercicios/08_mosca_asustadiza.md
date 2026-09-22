# Ejercicio 8: La Mosca Asustadiza (Repulsión)

## Objetivo
Implementar un método que calcule distancias para detonar una acción defensiva (o reactiva) alterando radicalmente el estado del objeto.

## Contexto y Precedente
Al intentar atrapar una mosca, esta reacciona solo si acercas tu mano a cierta distancia crítica. Si estás lejos, la mosca no hace nada.

## El Problema
Diseña una clase `Mosca`.
Su constructor la posicionará en el centro de la pantalla.

Crea un método `huir(float amenazaX, float amenazaY)`.
En este método, debes calcular la distancia entre la mosca y la "amenaza" usando la función `dist(x, y, amenazaX, amenazaY)`. 

Si esa distancia es **menor** a un radio de pánico (por ejemplo, `80` píxeles), la mosca se asusta y debes teletransportarla inmediatamente a una nueva posición aleatoria de la pantalla (`random(width)`, `random(height)`). Si la distancia es mayor, la mosca se queda tranquila donde está.

## Tu tarea
1. **Propón la implementación** de la clase `Mosca` con la lógica de repulsión por distancia en su método `huir()`.
2. **Propón la forma de probarlo**: En el bloque `draw()`, envía las coordenadas del cursor (`mouseX, mouseY`) al método de la mosca: `miMosca.huir(mouseX, mouseY)`. Intenta tocar la mosca con tu mouse; no deberías poder hacerlo.
