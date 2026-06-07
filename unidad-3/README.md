# Actividad Evaluativa - Unidad 3

**Nombre:** Cristian Styven Ibarguen Castro
**Asignatura:** Lenguaje de Computación para Móviles
**Unidad:** Unidad 3 – Desarrollo web multiplataforma orientado a dispositivos móviles
**Fecha:** 06/06/2026

---

# 1. Descripción del problema

La institución educativa requiere una aplicación móvil que permita a los estudiantes consultar actividades académicas, recibir notificaciones, registrar evidencias mediante fotografías y acceder a información incluso cuando no dispongan de conexión a internet.

Actualmente la información académica se distribuye por diferentes medios de comunicación, lo que genera pérdida de mensajes, falta de seguimiento y dificultades para los estudiantes que tienen conectividad limitada. Además, muchos usuarios utilizan dispositivos Android de gama media o baja, por lo que la solución debe ser ligera, eficiente y de bajo costo de mantenimiento.

El público objetivo son estudiantes de la institución educativa que necesitan acceder constantemente a información académica desde sus dispositivos móviles.

---

# 2. Historias de Usuario

## HU1

Como estudiante, quiero consultar mis actividades académicas pendientes para organizar mejor mi tiempo.

## HU2

Como estudiante, quiero recibir notificaciones cuando se publique una nueva actividad para mantenerme informado.

## HU3

Como estudiante, quiero tomar fotografías como evidencia de una actividad para demostrar su realización.

## HU4

Como estudiante, quiero acceder a mis actividades sin conexión a internet para continuar consultando información cuando no tenga acceso a datos móviles.

## HU5

Como estudiante, quiero registrar mi ubicación al enviar una evidencia para validar el lugar donde fue realizada.

## HU6

Como estudiante, quiero visualizar información actualizada obtenida desde una API REST para conocer cambios o novedades académicas.

## HU7

Como estudiante, quiero utilizar una interfaz sencilla y rápida para acceder fácilmente a la aplicación desde mi dispositivo móvil.

---

# 3. Matriz Comparativa de Enfoques Técnicos

| Criterio                             | PWA                        | Híbrida (Capacitor/Cordova) | Nativa Android/iOS   | Flutter               |
| ------------------------------------ | -------------------------- | --------------------------- | -------------------- | --------------------- |
| Costo de desarrollo                  | Bajo                       | Bajo                        | Alto                 | Medio                 |
| Reutilización de código              | Alta                       | Alta                        | Baja                 | Muy alta              |
| Acceso a cámara y GPS                | Limitado                   | Bueno                       | Excelente            | Excelente             |
| Funcionamiento offline               | Bueno                      | Bueno                       | Excelente            | Excelente             |
| Rendimiento en dispositivos modestos | Medio                      | Bueno                       | Excelente            | Excelente             |
| Facilidad de mantenimiento           | Alta                       | Alta                        | Media                | Alta                  |
| Publicación e instalación            | Limitada                   | Sí                          | Sí                   | Sí                    |
| Curva de aprendizaje                 | Baja                       | Media                       | Alta                 | Media                 |
| Escalabilidad                        | Media                      | Alta                        | Alta                 | Muy alta              |
| Limitaciones principales             | Acceso limitado a hardware | Dependencia de plugins      | Mayor tiempo y costo | Aplicación más pesada |

## Decisión Final

Después de analizar los diferentes enfoques, se selecciona Flutter debido a que ofrece un equilibrio adecuado entre rendimiento, reutilización de código, acceso a funcionalidades nativas y facilidad de mantenimiento. Además, permite desarrollar una única aplicación para múltiples plataformas reduciendo costos y tiempo de desarrollo.

---

# 4. Selección Tecnológica

## Tecnología seleccionada: Flutter

Flutter es un framework desarrollado por Google que permite crear aplicaciones móviles multiplataforma utilizando un único código fuente.

### Justificación de la selección

**Reutilización de código:** Permite desarrollar una sola aplicación para Android e iOS.

**Acceso a capacidades nativas:** Facilita el uso de cámara, GPS, almacenamiento local y notificaciones mediante paquetes oficiales.

**Rendimiento:** Compila a código nativo, ofreciendo una experiencia fluida incluso en dispositivos de gama media o baja.

**Costo y tiempo de desarrollo:** Reduce significativamente los costos al mantener una sola base de código.

**Facilidad de mantenimiento:** Las actualizaciones pueden realizarse desde un único proyecto.

**Soporte offline:** Permite integrar bases de datos locales como SQLite para trabajar sin conexión.

**Escalabilidad:** Facilita la incorporación de nuevas funcionalidades en el futuro.

### Tecnologías complementarias

* Flutter
* Dart
* SQLite
* REST API
* Firebase Cloud Messaging
* Geolocator
* Image Picker

---

# 5. Arquitectura Mínima Viable

## Diagrama de Arquitectura

![Arquitectura](imagenes/arquitectura.png)

### Descripción de la arquitectura

La aplicación está compuesta por una interfaz desarrollada en Flutter que interactúa con diferentes módulos internos.

* Módulo de interfaz de usuario.
* Servicio de consumo de API REST.
* Módulo de almacenamiento local mediante SQLite.
* Módulo de acceso a la cámara.
* Módulo de geolocalización.
* Sistema de notificaciones.
* Backend institucional encargado de administrar la información académica.

### Representación de la arquitectura

```text
                    ┌───────────────────┐
                    │     Estudiante    │
                    └─────────┬─────────┘
                              │
                              ▼
                 ┌────────────────────────┐
                 │   Aplicación Flutter   │
                 └─────────┬──────────────┘
                           │
        ┌──────────────────┼──────────────────┐
        ▼                  ▼                  ▼
┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│ API REST     │  │ SQLite       │  │ Cámara / GPS │
│ Actividades  │  │ Datos Offline│  │ Evidencias   │
└──────┬───────┘  └──────────────┘  └──────────────┘
       │
       ▼
┌─────────────────────┐
│ Backend Institución │
│ Base de Datos       │
└─────────────────────┘
```

---

# 6. Consideraciones Móviles

## Conectividad limitada

La aplicación almacenará información localmente mediante SQLite para permitir la consulta offline.

## Bajo consumo de datos

Solo se sincronizarán los datos necesarios con el servidor para reducir el uso de internet.

## Rendimiento

Flutter permite un rendimiento adecuado incluso en dispositivos Android de gama media o baja.

## Experiencia de usuario

La interfaz será simple, intuitiva y optimizada para pantallas pequeñas.

## Permisos del dispositivo

La aplicación solicitará permisos para:

* Cámara.
* Ubicación.
* Acceso a internet.

## Seguridad

* Comunicación mediante HTTPS.
* Validación de datos.
* Almacenamiento seguro de información local.

---

# 7. Riesgos y Limitaciones

| Riesgo                               | Impacto                                                  | Estrategia de Mitigación                                    |
| ------------------------------------ | -------------------------------------------------------- | ----------------------------------------------------------- |
| Fallos de conexión a internet        | El estudiante no puede acceder a información actualizada | Implementar almacenamiento local y sincronización posterior |
| Negación de permisos del dispositivo | Algunas funcionalidades dejan de funcionar               | Solicitar permisos de forma clara y ofrecer alternativas    |
| Dispositivos de bajo rendimiento     | Lentitud en la aplicación                                | Optimización de recursos e imágenes                         |
| Caída de la API o servidor           | Información no disponible temporalmente                  | Utilizar caché local y reintentos automáticos               |

---

# 8. Conclusiones

La utilización de Flutter representa la mejor alternativa para el desarrollo de la aplicación propuesta debido a su rendimiento, capacidad multiplataforma, facilidad de mantenimiento y soporte para funcionalidades nativas. Además, permite cumplir todos los requisitos establecidos por la institución educativa manteniendo bajos costos de desarrollo y garantizando una experiencia adecuada para los estudiantes.

---

# 9. Video de Sustentación

**Enlace del video:**
https://youtu.be/42vlv-_I0Ys