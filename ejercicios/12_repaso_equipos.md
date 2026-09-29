# Guía de la Sesión: Repaso en Equipos (Computación Creativa)

## Objetivo de la Sesión
Diseñar y programar un mini-juego funcional trabajando de forma colaborativa. Esta sesión está diseñada explícitamente utilizando el marco de la **Computación Creativa**, buscando que los estudiantes desarrollen aprendizaje en tres dimensiones:
1. **Conceptos:** Aplicar Clases, Herencia, ArrayLists y Colisiones.
2. **Prácticas:** Iterar, probar, reutilizar código previo y abstraer/modularizar.
3. **Perspectivas:** Expresar ideas a través del código y conectar (trabajar en equipo y exponer a la comunidad).

## Dinámica de la Actividad (120 minutos)
* **Tamaño de los equipos:** De 2 a 4 personas.
* **Material de apoyo:** Los códigos desarrollados previamente en clase (para reutilizar) y los archivos de retos específicos (`12_la_cosecha.md`, `12_defensa_antiaerea.md`, etc.).

---

## Cronograma de la Sesión (Basado en Prácticas Computacionales)

### Fase 1: Reutilizar y Diseñar (15 minutos)
*   **Conformación y Elección:** Formar equipos y elegir uno de los 5 retos disponibles.
*   **Reutilización (*Remixing*):** Los equipos abren sus proyectos anteriores (como la Nave de clases pasadas) para identificar qué partes del código pueden reciclar.
*   **Abstracción (Diseño):** Planifican en papel o en un documento cómo será su jerarquía de clases (¿Qué datos lleva la Clase Padre? ¿Qué sobrescriben las clases Hijas?).

### Fase 2: Iterar, Probar y Modularizar (75 minutos)
*   **Iteración 1 (Lo Básico):** Programar el Jugador y lograr que se mueva e interactúe en la pantalla.
*   **Iteración 2 (Modularidad y Herencia):** Programar las clases Padre e Hijas, y lograr instanciarlas dentro del `ArrayList`.
*   **Iteración 3 (Colisiones y Depuración):** Implementar la lógica matemática (`dist()`) y el borrado seguro con el **bucle `for` inverso**.
*   *Nota pedagógica:* Los errores (bugs) son esperados. El objetivo de esta fase es la *práctica* de probar y depurar código colaborativamente.

### Fase 3: Conectar y Expresar (Presentaciones - 30 minutos)
Para garantizar la metacognición, cada equipo basará su exposición en este guión, demostrando sus *Perspectivas* frente a la tecnología:
1. **Expresión (1 min):** Demostración visual del juego.
2. **Abstracción (1 min):** "Nuestro mapa de herencia es... La clase padre define esto, y sobrescribimos (override) este método en la hija."
3. **Lógica Compleja (1 min):** "¿Cómo funciona nuestra eliminación en el `ArrayList` y por qué el ciclo `for` es inverso?"
4. **Práctica de Depuración (1 min):** "¿Cuál fue nuestro mayor *bug* o dificultad técnica y cómo lo resolvimos en equipo?"

---

## El Panorama del Aprendizaje (Fundamento Pedagógico)
Esta actividad ha sido estructurada combinando las teorías fundamentales del desarrollo cognitivo con los enfoques más modernos de la didáctica de la informática (*Computer Science Education*):

### Los Clásicos (Las Bases del Aprendizaje)
* **Construccionismo (Seymour Papert, 1980):** Postula que aprendemos mejor "haciendo" y construyendo objetos tangibles. El código abstracto se materializa en un artefacto interactivo. *(Referencia: Papert, S. Mindstorms: Children, Computers, and Powerful Ideas).*
* **Constructivismo Social (Lev Vygotsky, 1978):** El aprendizaje profundo ocurre en la interacción social (Zona de Desarrollo Próximo). Resolver errores complejos de código se logra más rápido negociando la lógica con los compañeros. *(Referencia: Vygotsky, L. S. Mind in Society).*

### Los Enfoques Modernos (Didáctica de la Informática Actual)
* **Pensamiento Computacional (Jeannette Wing, 2006):** La meta no es aprender la sintaxis de un lenguaje, sino desarrollar habilidades universales de resolución de problemas, como la **Abstracción** (modelar Clases) y la **Descomposición** (dividir el juego en iteraciones). *(Referencia: Wing, J. M. Computational thinking).*
* **Computación Creativa (Brennan y Resnick, MIT, 2012):** Marco que moderniza el Construccionismo. El aprendizaje se evalúa en 3 dimensiones: dominar **Conceptos**, desarrollar **Prácticas** (iterar, reutilizar código, depurar) y adoptar **Perspectivas** (conectarse con otros, explicar código y expresarse creativamente). *(Referencia: Brennan, K., & Resnick, M. New frameworks for studying and assessing the development of computational thinking).*
* **Modelo PRIMM (Sue Sentance, 2017):** Metodología estructurada (Predict, Run, Investigate, Modify, Make). En esta sesión, los estudiantes se encuentran en la fase cumbre: **Make (Crear)**, donde aplican de forma libre y creativa todo lo investigado y modificado en las semanas previas. *(Referencia: Sentance, S., et al. PRIMM: A structured approach to teaching programming).*
