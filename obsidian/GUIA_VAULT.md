---
id: guia-vault
tags:
  - sistema
  - obsidian
  - organizacion
tipo: guia
---

# Guia de la vault

## Objetivo
Esta vault esta pensada como un segundo cerebro simple, escalable y sostenible en el tiempo. La organizacion prioriza enlaces internos, MOCs, dashboards y notas pequenas antes que una estructura rigida de carpetas.

## Estructura principal
- `00 captura`: entrada rapida de ideas, tareas, enlaces y notas sin procesar.
- `01 proyectos`: resultados con inicio y fin.
- `02 areas`: responsabilidades continuas que se sostienen en el tiempo.
- `03 conocimiento`: ideas, conceptos y aprendizajes en notas atomicas.
- `04 recursos`: material de apoyo y referencia.
- `05 archivo`: contenido inactivo o cerrado.
- `10 diarios`: notas diarias y revisiones.
- `11 adjuntos`: archivos externos.
- `12 dashboards`: puertas de entrada y navegacion del sistema.
- `templates`: base reutilizable para crear notas consistentes.

## Como colocar cada tipo de nota

### 1. Captura
Todo lo nuevo entra primero por `00 captura`. Si aun no sabes donde va, dejalo ahi. Durante la revision, procesalo y muevelo a su lugar definitivo o descartalo.

### 2. Proyectos
Una nota va en `01 proyectos` cuando representa un resultado concreto con inicio y fin. Ejemplos:
- `Migrar configuracion de Neovim`
- `Lanzar landing de empresa`
- `Montar sistema base de Linux`

Cada proyecto deberia tener:
- objetivo
- estado
- fecha de inicio
- fecha de finalizacion si aplica
- siguiente accion
- enlaces a recursos y notas relacionadas

#### Estructura de proyectos
Dentro de `01 proyectos` se permite usar subcarpetas operativas cuando aporten claridad real. La estructura actual recomendada es:

- `01 proyectos/activos`
- `01 proyectos/en espera`
- `01 proyectos/cerrados`

Cada proyecto debe tener su propia carpeta dentro de uno de esos estados.

Ejemplo:

- `01 proyectos/activos/2026-03-conocimiento-obsidian/`

Dentro de esa carpeta pueden vivir:
- la nota principal del proyecto
- un kanban del proyecto
- canvases si hacen falta
- notas auxiliares del mismo proyecto

Ejemplo de contenido interno:
- `01 proyectos/activos/2026-03-conocimiento-obsidian/Configuracion de Obsidian.md`
- `01 proyectos/activos/2026-03-conocimiento-obsidian/Configuracion de Obsidian kanban.md`

#### Regla de nombre para carpetas de proyecto
- Formato: `AAAA-MM-area-nombre_proyecto`
- `AAAA-MM` indica ano y mes de inicio del proyecto.
- `area` identifica el contexto principal del proyecto.
- `nombre_proyecto` describe el resultado o tema principal del proyecto.
- Usa minusculas y separa palabras con guiones.

Ejemplos:
- `2026-03-conocimiento-obsidian`
- `2026-04-empresa-landing`
- `2026-05-linux-sistema-base`

#### Regla practica
- Si el proyecto esta activo, su carpeta vive en `01 proyectos/activos`.
- Si esta pausado pero sigue vigente, vive en `01 proyectos/en espera`.
- Si ya termino o dejo de estar en movimiento, vive en `01 proyectos/cerrados`.
- Cuando cambie de estado, se mueve la carpeta completa del proyecto.
- La carpeta del proyecto es la unidad principal de organizacion del trabajo del proyecto.

#### Nota sobre Kanban
- Si un proyecto necesita seguimiento operativo por tareas, puede tener un archivo Kanban dentro de su carpeta.
- El Kanban complementa la nota principal del proyecto; no la reemplaza.
- La nota principal define contexto, objetivo, estado y enlaces.
- El Kanban sirve para mover tareas entre columnas como `Backlog`, `En curso`, `En espera` y `Hecho`.
- En Obsidian, la visualizacion tipo Kanban requiere el plugin comunitario `Kanban`.

#### Estructura minima recomendada por proyecto
Cada proyecto deberia tener al menos dos archivos principales dentro de su carpeta:

- `Nombre del Proyecto.md`: documento principal con contexto, metadatos y enlaces.
- `Nombre del Proyecto kanban.md`: tablero operativo para tareas generales del proyecto.

El objetivo de esta separacion es que la nota principal conserve el conocimiento estable del proyecto y el Kanban concentre el trabajo cambiante.

#### Interconexion recomendada en proyectos
Para que la vault sea navegable y luego sea mas facil indexarla o consultarla, cada proyecto deberia enlazar al menos con:

- su propio Kanban
- el dashboard `[[Proyectos activos]]` o el dashboard equivalente segun estado
- recursos reutilizables relacionados
- notas de conocimiento relacionadas
- una nota diaria de inicio y, si aplica, una nota diaria de cierre
- revisiones periodicas como `[[Revision semanal]]`

Si una nota diaria existe, conviene enlazarla explicitamente desde el cuerpo de la nota del proyecto con formato `[[YYYY-MM-DD]]`.

### 3. Areas
Una nota va en `02 areas` cuando representa una responsabilidad continua. Ejemplos:
- desarrollo
- empresa
- psicologia
- aprendizaje
- personal

Las areas no se terminan; se mantienen.

### 4. Conocimiento
Una nota va en `03 conocimiento` cuando contiene una idea reutilizable, un concepto, una explicacion, una decision o un aprendizaje. Debe ser pequena, clara y facil de enlazar.

Buenos ejemplos:
- `Arquitectura hexagonal`
- `Sesion de shell interactiva`
- `Sesgos cognitivos en decisiones`
- `Patron container presentational en Angular`

### 5. Recursos
Una nota va en `04 recursos` cuando describe material de apoyo externo: libros, articulos, herramientas, snippets, referencias o cursos. No guardes recursos por acumular; guarda solo lo que quieras reutilizar.

### 6. Archivo
Todo lo inactivo, cerrado o que ya no necesitas consultar con frecuencia se mueve a `05 archivo`. Archivar limpia el sistema sin perder informacion.

## Reglas practicas
- Todo entra primero por captura.
- Si algo tiene principio y fin, es proyecto.
- Si algo requiere mantenimiento continuo, es area.
- Si algo explica una idea, es conocimiento.
- Si algo sirve como apoyo o referencia, es recurso.
- Si deja de estar activo, va a archivo.
- Si dudas entre carpeta o enlace, elige enlace.
- En proyectos, una subcarpeta extra si se justifica por operacion real si vale la pena.
- Cada proyecto vive en su propia carpeta con formato `AAAA-MM-area-nombre_proyecto`.
- Cada proyecto tiene una nota principal y, si requiere seguimiento operativo, un archivo Kanban propio.
- Si quieres maxima interconexion, enlaza proyectos con dashboards, recursos, conocimiento y notas diarias.
- Si una sesion de estudio o documentacion empieza a crecer demasiado, dividela en notas independientes enlazadas desde un MOC en lugar de seguir acumulando contenido en un solo archivo.
- Prioriza notas cortas, enfocadas y faciles de reutilizar antes que notas largas con muchos temas mezclados.

## Jerarquia de navegacion
La vault no se organiza solo por carpetas. La navegacion principal sigue esta jerarquia:

1. `[[Inicio]]` como dashboard raiz del sistema.
2. Dashboards operativos en `12 dashboards` para revisar estado, proyectos, areas y rutinas.
3. MOCs contenedores en `03 conocimiento/mapas de contenido` para agrupar grandes zonas del sistema.
4. MOCs tematicos en `03 conocimiento/mapas de contenido` para agrupar dominios concretos.
5. Notas de conocimiento en `03 conocimiento` para ideas reutilizables.
6. Recursos en `04 recursos` como apoyo y referencia enlazados desde MOCs, proyectos o notas.

### Regla clave
- La carpeta sirve para guardar.
- El enlace sirve para navegar.
- El dashboard orienta.
- El MOC agrupa por tema.
- La jerarquia semantica da contexto.

### Capas recomendadas de navegacion
La estructura recomendada queda asi:

```text
[[Inicio]]
-> dashboards operativos
-> MOCs contenedores
-> MOCs tematicos
-> notas y recursos
```

### MOCs contenedores sugeridos
Los MOCs contenedores no reemplazan carpetas, pero ayudan a agrupar zonas grandes de la vault y a dar contexto semantico.

Ejemplos recomendados:
- `[[MOC conocimiento]]`
- `[[MOC recursos]]`
- `[[MOC herramientas]]`

### MOCs tematicos sugeridos
Los MOCs tematicos agrupan dominios concretos y enlazan conocimiento y recursos de ese tema.

Ejemplos:
- `[[MOC linux]]`
- `[[MOC git]]`
- `[[MOC angular]]`
- `[[MOC nvim]]`

### Ejemplo practico
- `[[Inicio]]` apunta a dashboards y MOCs principales.
- `[[MOC recursos]]` puede agrupar zonas como herramientas, lecturas, referencias y snippets.
- `[[MOC herramientas]]` puede agrupar herramientas concretas como Git o Linux.
- `[[MOC linux]]` agrupa el tema Linux.
- `04 recursos/herramientas/LINUX/Fundamentos de Linux.md` y `04 recursos/herramientas/LINUX/Terminal.md` viven como recursos y enlazan a `[[MOC linux]]`.
- Lo mismo aplica para Git: el nodo tematico vive como `[[MOC git]]` y las guias practicas viven en `04 recursos/herramientas/GIT/`.

### Ejemplo de jerarquia completa

```text
[[Inicio]]
-> [[MOC conocimiento]]
-> [[MOC recursos]]

[[MOC recursos]]
-> [[MOC herramientas]]
-> [[MOC lecturas]]
-> [[MOC referencias]]
-> [[MOC snippets]]

[[MOC herramientas]]
-> [[MOC linux]]
-> [[MOC git]]

[[MOC linux]]
-> notas de conocimiento de Linux
-> recursos Linux en 04 recursos
```

### Que no hacer
- No usar carpetas como unica forma de navegacion.
- No duplicar un mismo nodo tematico en varias carpetas.
- No convertir `04 recursos` en un sustituto de `03 conocimiento`.
- No crear MOCs dentro de carpetas de recursos si el tema ya tiene un MOC en `03 conocimiento`.
- No crear un MOC por carpeta solo porque la carpeta existe.
- No romper la jerarquia semantica con enlaces aislados sin nodo padre claro.

## Navegacion del sistema
- Usa `[[Inicio]]` como panel principal.
- Usa los dashboards para operar el sistema.
- Usa los MOCs para navegar por temas.
- Usa busqueda y backlinks para recuperar contexto.

### Distincion entre dashboard, MOC y recurso
- `dashboard`: puerta de entrada operativa. Sirve para revisar, decidir y moverte por el sistema. Vive normalmente en `12 dashboards`.
- `MOC`: mapa de contenido. Puede ser contenedor o tematico. Sirve para agrupar notas y recursos relacionados con una zona o un tema. Vive normalmente en `03 conocimiento/mapas de contenido`.
- `recurso`: material de apoyo o referencia. Vive en `04 recursos` y se enlaza desde MOCs, proyectos o notas.

### Criterio de ubicacion rapido
- Si la nota ayuda a operar el sistema, probablemente es dashboard.
- Si la nota agrupa una zona grande o un tema, probablemente es MOC.
- Si la nota explica una idea, probablemente es conocimiento.
- Si la nota sirve como apoyo practico o referencia, probablemente es recurso.

### Regla de enlace minimo
Cada nota importante deberia enlazar al menos a uno de estos niveles:
- su MOC tematico
- su MOC contenedor si aplica
- un dashboard o proyecto que le de contexto operativo

El objetivo es que ninguna nota relevante quede aislada.

## Convenciones de nombres
- Notas: titulo natural y directo. Ejemplo: `Flujo de trabajo en Neovim`.
- MOCs: `MOC tema`.
- Proyectos: cada proyecto vive en su propia carpeta con formato `AAAA-MM-area-nombre_proyecto`. Dentro de esa carpeta, la nota principal puede usar un titulo natural por resultado. Ejemplo: carpeta `2026-03-conocimiento-obsidian`, nota `Configuracion de Obsidian`.
- Areas: nombre corto y estable. Ejemplo: `desarrollo`.
- Plantillas: `Plantilla de ...`.
- Diarias: fecha en formato `YYYY-MM-DD`.

## Frontmatter recomendado
Usa un bloque YAML al inicio solo cuando aporte valor real. En esta vault si lo vamos a usar como estandar ligero para mejorar busqueda, consistencia y futuras consultas.

## Compatibilidad con Obsidian

### Nativo de Obsidian
- Archivos Markdown `.md`
- Enlaces internos `[[...]]`
- `aliases` en el frontmatter
- `tags` en el frontmatter o dentro de la nota
- Carpetas, backlinks y busqueda

### Convencion de esta vault
- `id`
- `tipo`
- `estado`
- `area`
- `fecha_inicio`
- `fecha_fin`
- `fuente`
- uso de dashboards y MOCs como estructura principal de navegacion

### Que significa esto
- Obsidian entiende de forma nativa `aliases`, `tags`, enlaces y Markdown.
- Campos como `id`, `tipo` o `estado` no son obligatorios para Obsidian, pero son totalmente validos y nos ayudan a escalar, consultar y exportar la informacion.
- Campos como `fecha_inicio` y `fecha_fin` se guardan en formato `YYYY-MM-DD` para mantener compatibilidad con el ecosistema de Obsidian y facilitar consultas futuras.
- Esto mantiene la vault portable: sigue siendo Markdown normal, solo con metadatos utiles.

Estructura base:

```md
---
id: ejemplo-id-con-guiones
aliases:
  - nombre alternativo
tags:
  - tema
  - categoria
tipo: nota
---
```

### Regla de `id`
- El `id` va siempre en minusculas y separado por guiones.
- Debe ser estable, legible y corto.
- Ejemplos: `arquitectura-hexagonal`, `migrar-configuracion-neovim`, `moc-linux`.
- Si una plantilla no genera el `id` automaticamente, remplazalo a mano al crear la nota.

### Regla de `aliases`
- `aliases` son nombres alternativos o frases clave por las que podrias buscar esa nota.
- Sirven para sinonimos, nombres en otro idioma o variantes comunes.
- No son obligatorios.
- Usa entre 0 y 3 por nota.

Ejemplos de `aliases`:
- `ports and adapters`
- `patron hexagonal`
- `hexagonal architecture`

### Regla de `tags`
- `tags` son palabras clave para agrupar notas relacionadas.
- Deben ser cortos, estables y reutilizables.
- No uses frases largas como tags.
- Usa entre 2 y 4 por nota en la mayoria de los casos.

Ejemplos de `tags`:
- `desarrollo`
- `angular`
- `psicologia`
- `aprendizaje`

### Diferencia rapida
- Si sirve para encontrar una nota por otro nombre, va en `aliases`.
- Si sirve para agrupar varias notas por tema, va en `tags`.

### Campos sugeridos por tipo de nota
- Nota atomica: `id`, `aliases` opcional, `tags`, `tipo`.
- Proyecto: `id`, `aliases` opcional, `tags`, `tipo`, `estado`, `area`, `fecha_inicio`, `fecha_fin` opcional.
- Kanban de proyecto: `id`, `tags`, `tipo`, `estado`, `area`, `fecha_inicio`, `fecha_fin` opcional, `kanban-plugin`.
- Recurso: `id`, `aliases` opcional, `tags`, `tipo`, `fuente`.
- Reunion: `id`, `tags`, `tipo`, `fecha`.
- Dashboard: `id`, `tags`, `tipo`.
- MOC: `id`, `aliases` opcional, `tags`, `tipo`.
- Area: `id`, `tags`, `tipo`.

### Convencion adicional para recursos tematicos
- Si un recurso pertenece claramente a un tema grande como `linux`, `git` o `angular`, puede vivir dentro de una subcarpeta tematica en `04 recursos` si eso aporta claridad real.
- Esa subcarpeta no reemplaza al MOC del tema.
- El MOC del tema sigue viviendo en `03 conocimiento/mapas de contenido`.
- Cada recurso tematico deberia enlazar al MOC correspondiente en una seccion como `## Notas relacionadas`.

Ejemplo:
- `03 conocimiento/mapas de contenido/MOC linux.md` como nodo tematico.
- `04 recursos/herramientas/LINUX/Fundamentos de Linux.md` como recurso.
- `04 recursos/herramientas/LINUX/Terminal.md` como recurso.

La idea es separar claramente:
- `MOC linux` organiza el tema.
- las notas en `04 recursos/herramientas/LINUX/` aportan material de apoyo.

## Arquitectura para indexacion vectorial
Como esta vault puede terminar en una base de datos vectorial, la estructura no debe depender solo del contenido textual. Tambien conviene que exista contexto explicito en enlaces y metadatos.

### Objetivo
- facilitar recuperacion semantica con contexto
- mejorar agrupacion por tema y por tipo de nota
- reducir ambiguedad entre notas parecidas
- permitir reconstruir relaciones padre-hijo entre notas

### Principio central
Para indexacion futura, cada nota deberia poder responder de forma implicita o explicita a estas preguntas:
- de que trata
- que tipo de nota es
- a que tema pertenece
- desde que nodo principal se llega a ella
- en que zona de la vault vive

### Contexto recomendado por nota
Idealmente cada nota importante deberia tener:
- `id`
- `tipo`
- `tags`
- al menos un enlace a su MOC padre
- si aplica, enlace a un proyecto, dashboard o MOC contenedor

### Metadatos adicionales recomendados
No son obligatorios para Obsidian, pero pueden ser utiles si mas adelante se indexa la vault en una base de datos vectorial.

Campos sugeridos:
- `moc_padre`
- `zona`
- `subzona`

Ejemplo:

```md
---
id: terminal
tags:
  - linux
  - terminal
  - herramientas
tipo: recurso
fuente: propia
moc_padre: moc-linux
zona: recursos
subzona: herramientas
---
```

### Significado sugerido de estos campos
- `moc_padre`: identifica el nodo tematico principal al que pertenece la nota.
- `zona`: indica la gran zona del sistema, por ejemplo `conocimiento`, `recursos`, `proyectos` o `dashboards`.
- `subzona`: indica una subdivision mas especifica cuando aporte valor, por ejemplo `herramientas`, `lecturas` o `referencias`.

### Regla practica para vector DB
- la carpeta aporta ubicacion fisica
- el frontmatter aporta metadata estructurada
- los enlaces aportan relaciones semanticas
- los MOCs aportan contexto padre

### Beneficio esperado
Con esta combinacion sera mas facil recuperar notas por:
- similitud semantica
- tema
- tipo de nota
- zona de la vault
- relacion con un MOC o dashboard

### Regla de fechas en proyectos
- Usa `fecha_inicio` y `fecha_fin` en formato `YYYY-MM-DD`.
- `fecha_fin` puede quedar vacio mientras el proyecto siga activo.
- El nombre de la carpeta usa `AAAA-MM`, pero los metadatos internos usan fecha completa.
- Si existe una nota diaria asociada al inicio o cierre, enlazala tambien en el cuerpo de la nota con `[[YYYY-MM-DD]]`.

## Flujo recomendado
1. Capturar rapido.
2. Procesar durante el dia o en revision semanal.
3. Si algo es proyecto, crear su carpeta propia en `01 proyectos` con formato `AAAA-MM-area-nombre_proyecto`.
4. Convertir ideas importantes en notas atomicas.
5. Enlazar esas notas a un MOC o dashboard.
6. Archivar lo que ya no este activo.

## Temas principales ya contemplados
- desarrollo
- nvim
- linux
- angular
- psicologia
- empresa
- aprendizaje
- proyectos personales

## Mantenimiento minimo
- Revisar `00 captura` varias veces por semana.
- Revisar proyectos y areas una vez por semana.
- Crear MOCs nuevos solo cuando un tema crezca de verdad.
- Evitar subcarpetas nuevas salvo que haya friccion real.
