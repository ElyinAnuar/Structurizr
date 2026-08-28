workspace "Paynau" {

    !identifiers hierarchical

    description "Plantilla inicial de arquitectura para Paynau"

    model {
        !include ../../shared/internal/systems/paynau-system.dsl
        !include ../../shared/external/User/customer.dsl
        !include ../../shared/internal/User/operator.dsl

        !element isPaynauPlatform {
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

        systemContext isPaynauPlatform "Context" {
            title "Paynau - Contexto"
            description "Sistema Paynau y sus principales actores."
            include *
            autolayout
        }

        container isPaynauPlatform "Containers" {
            title "Paynau - Contenedores"
            description "Contenedores principales de la plataforma Paynau."
            include *
            autolayout
        }
    }

    configuration {
        scope softwareSystem
    }
}
