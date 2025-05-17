# 🍽️ Restaurant Web Java App

Aplicación web con función de reservas para un restaurante. Desarrollada en Java utilizando Servlets, JSP y MariaDB, desplegada en Tomcat.

---

## 🚀 Tecnologías utilizadas

- ☕ Java 17
- ⚙️ Maven
- 🐬 MariaDB
- 🌐 HTML / CSS / JS

---

## 📁 Estructura del proyecto

```plaintext
Restaurant/
├── pom.xml
├── README.md
└── src/
    └── main/
        ├── java/
        │   └── com/
        │       └── svalero/
        │           └── restaurants/
        │               ├── dao/             # Clases para acceso a datos (JDBC)
        │               ├── database/        # Clase de conexión a MariaDB
        │               ├── exception/       # Excepciones personalizadas
        │               ├── model/           # Clases POJO (Restaurant, Booking, etc.)
        │               └── servlet/         # Servlets para lógica web (HTTP)
        ├── resources/
        │   └── db/
        │       └── init.sql                 # Script SQL para crear estructura inicial
        └── webapp/
            ├── css/
            │   └── styles.css              # Estilos CSS personalizados
            ├── js/
            ├── img/
            ├── index.jsp
            ├── CreateRestaurant.jsp
            ├── restaurants.jsp
            ├── list_bookings.jsp
            └── WEB-INF/
                ├── web.xml                 # Configuración de servlets
                └── context.xml             # Configuración de contexto (Tomcat)
```

## Como iniciar y ejecutrar la applicaión 


#Requisitos previos
- Java 17 o superior
- Maven 3.6+
- Mariadb (Run)
- Tomcat 
- Intellij IDEA

## Inicialización del proyecto
 ### Clonar el repositorio
```bash
git clone https://github.com/tu_usuario/restaurant.git
cd restaurant