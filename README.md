# Plantilla Structurizr para Paynau y RedEfectiva

Este repositorio contiene una plantilla base para documentar arquitecturas de software con el enfoque C4 usando Structurizr.

## Propósito

La finalidad de esta plantilla es servir como punto de partida para crear y documentar sistemas digitales con una estructura clara y reutilizable. Está pensada para proyectos que necesitan:

- describir el contexto del negocio,
- definir actores y sistemas principales,
- modelar contenedores y dependencias,
- documentar decisiones de arquitectura,
- mantener una base coherente entre múltiples workspaces.

## ¿Qué incluye esta plantilla?

La estructura está organizada para separar responsabilidades y facilitar la extensión:

- `workspace/`: workspaces independientes por proyecto
- `shared/`: artefactos reutilizables compartidos
- `syles/`: estilos visuales para los diagramas
- `docs/`: documentación funcional y técnica
- `adrs/`: decisiones de arquitectura registradas

## Estructura principal

```text
Structurizr/
├── README.md
├── syles/
│   └── styles.dsl
├── shared/
│   ├── database/
│   │   └── database.dsl
│   ├── containers/
│   │   ├── applications/
│   │   │   ├── web-app.dsl
│   │   │   └── api.dsl
│   ├── external/
│   │   └── User/
│   │       └── customer.dsl
│   ├── internal/
│   │   ├── User/
│   │   │   └── operator.dsl
│   │   └── systems/
│   │       ├── paynau-system.dsl
│   │       └── redEfectiva-system.dsl
├── workspace/
│   ├── paynau/
│   │   ├── workspace.dsl
│   │   ├── internal-relationships.dsl
│   │   ├── external-relationships.dsl
│   │   ├── docs/
│   │   └── adrs/
│   └── RedEfectiva/
│       ├── workspace.dsl
│       ├── internal-relationships.dsl
│       ├── external-relationships.dsl
│       ├── docs/
│       └── adrs/
└──
```

## Cómo se usa esta plantilla

Cada workspace representa un sistema o solución concreta. Por ejemplo:

- `Paynau`: workspace principal para la solución Paynau
- `RedEfectiva`: workspace independiente con la misma estructura base

Cada workspace contiene:

1. El sistema principal
2. Los actores involucrados
3. Los contenedores principales
4. Las relaciones internas y externas
5. Las vistas C4 de contexto y contenedores
6. Su documentación y ADRs

## Modelado base

La plantilla reutiliza un patrón común:

- `softwareSystem`: define el sistema
- `person`: define actores como cliente y operador
- `container`: define contenedores como web app y API
- `relationship`: define conexiones entre componentes
- `views`: exponen las vistas de contexto y contenedores

## Ejemplo de conceptos incluidos

### Actores

- Cliente
- Operador

### Contenedores

- Aplicación web
- API principal
- Base de datos

## Filosofía de organización

La estructura está diseñada para separar:

- lo que es compartido (`shared`),
- lo que es específico del proyecto (`workspace/<nombre>`),
- y lo que es documentación (`docs`, `adrs`).

Esto permite escalar la plantilla a varios proyectos sin duplicar por completo la definición base.

## Cómo adaptar esta plantilla a otro proyecto

1. Crear un nuevo workspace dentro de `workspace/`
2. Definir el `softwareSystem` propio
3. Importar actores reutilizables desde `shared`
4. Definir contenedores compartidos o específicos
5. Añadir relaciones internas y externas
6. Configurar las vistas `Context` y `Containers`
7. Documentar decisiones con ADRs

## ¿Cuándo usar esta plantilla?

Es útil cuando se requiere:

- iniciar un proyecto sin perder una base estructurada,
- mantener documentación arquitectónica consistente,
- trabajar con varios sistemas que comparten patrones comunes,
- evolucionar del contexto inicial hacia un diseño más detallado.

## Recomendación

Esta plantilla no pretende ser una solución final rígida, sino una base inicial que debe evolucionar a medida que el negocio y la solución se hagan más concretos.

La idea es comenzar con una vista clara y ampliable, y luego refinarla con información real de negocio, tecnologías, integración y despliegue.
