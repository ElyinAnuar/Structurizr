workspace "RedEfectiva" {

    !identifiers hierarchical

    description "Plantilla inicial de arquitectura para RedEfectiva"

    model {
        !include ../../shared/internal/systems/redEfectiva-system.dsl
        !include ../../shared/external/User/customer.dsl
        !include ../../shared/internal/User/operator.dsl

        !element isRedEfectivaPlatform {
            !docs docs

            !include ../../shared/containers/applications/web-app.dsl
            !include ../../shared/containers/applications/api.dsl
            !include ../../shared/database/database.dsl

            !include ./internal-relationships.dsl
        }

        !include ./external-relationships.dsl
    }

    views {
        !include ../../styles/styles.dsl

        systemContext isRedEfectivaPlatform "Context" {
            title "RedEfectiva - Contexto"
            description "Sistema RedEfectiva y sus principales actores."
            include *
            autolayout
        }

        container isRedEfectivaPlatform "Containers" {
            title "RedEfectiva - Contenedores"
            description "Contenedores principales de la plataforma RedEfectiva."
            include *
            autolayout
        }
    }

    configuration {
        scope softwareSystem
    }
}
