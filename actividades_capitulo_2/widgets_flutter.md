# Investigación de widgets fundamentales en Flutter

**Nombre del estudiante:** Cristian Styven Ibarguen Castro  
**Curso:** LEGUAJES DE COMPUTACION PARA MOVILES (201) - 2026-1P3P4  
**Fecha:** 17 de mayo de 2026  

---

# 1. `Container`

## Descripción
El widget `Container` es uno de los widgets más importantes y utilizados dentro de Flutter. Su función principal es actuar como una caja visual que permite organizar y personalizar otros widgets dentro de la interfaz.

Este widget se utiliza frecuentemente para diseñar secciones de una pantalla, crear tarjetas, aplicar colores de fondo, agregar márgenes, espacios internos y controlar tamaños específicos.

Gracias a su flexibilidad, `Container` ayuda a construir interfaces más ordenadas y visualmente atractivas.

## Ejemplo de código

```dart
Container(
  width: 220,
  height: 100,
  color: Colors.indigo,
  alignment: Alignment.center,
  child: Text(
    'Bienvenido a Flutter',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  ),
)
```

## Explicación del ejemplo
En este ejemplo se crea un `Container` con un ancho de 220 píxeles y una altura de 100 píxeles. El contenedor tiene un fondo color índigo y dentro de él se encuentra un widget `Text` centrado.

La propiedad `alignment` permite ubicar el contenido exactamente en el centro del contenedor.

## Personalización

| Propiedad | Función |
|---|---|
| `width` | Define el ancho del contenedor |
| `height` | Define la altura |
| `color` | Cambia el color de fondo |
| `padding` | Agrega espacio interno |
| `margin` | Agrega espacio externo |
| `alignment` | Permite alinear el contenido |
| `child` | Inserta otro widget |
| `decoration` | Agrega bordes, sombras y estilos |

## Ejemplo con personalización

```dart
Container(
  width: 260,
  height: 130,
  margin: EdgeInsets.all(15),
  padding: EdgeInsets.all(20),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: Colors.deepPurple,
    borderRadius: BorderRadius.circular(18),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 8,
        offset: Offset(3, 5),
      )
    ],
  ),
  child: Text(
    'Container personalizado',
    style: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
)
```

## Conclusión breve
El widget `Container` es esencial porque permite estructurar y personalizar elementos visuales fácilmente. Su uso ayuda a crear interfaces más organizadas, modernas y agradables para el usuario.

---

# 2. `Text`

## Descripción
El widget `Text` se utiliza para mostrar texto dentro de una aplicación Flutter. Es uno de los componentes más básicos e indispensables, ya que prácticamente todas las aplicaciones necesitan mostrar información escrita.

Este widget permite modificar colores, tamaños, alineación, estilos y diferentes características visuales del texto.

## Ejemplo de código

```dart
Text(
  'Flutter facilita el desarrollo móvil',
)
```

## Explicación del ejemplo
El código muestra una frase simple en pantalla utilizando el estilo predeterminado de Flutter.

Aunque el ejemplo es sencillo, demuestra cómo el widget `Text` puede utilizarse rápidamente para mostrar mensajes dentro de la interfaz.

## Personalización

| Propiedad | Función |
|---|---|
| `style` | Modifica el diseño del texto |
| `textAlign` | Cambia la alineación |
| `maxLines` | Limita el número de líneas |
| `overflow` | Controla el desbordamiento |
| `softWrap` | Permite ajuste automático |

## Ejemplo con personalización

```dart
Text(
  'Aplicación desarrollada en Flutter',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.teal,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  ),
)
```

## Conclusión breve
El widget `Text` es fundamental porque permite mostrar información clara al usuario y mejorar la comunicación visual dentro de la aplicación.

---

# 3. `Row`

## Descripción
El widget `Row` se utiliza para organizar widgets horizontalmente dentro de una fila.

Es muy útil para construir menús, barras de navegación, filas de botones o cualquier diseño donde los elementos deban mostrarse uno al lado del otro.

## Ejemplo de código

```dart
Row(
  children: [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.person),
  ],
)
```

## Explicación del ejemplo
En este ejemplo se muestran tres íconos alineados horizontalmente dentro de una misma fila.

Cada ícono representa una opción diferente dentro de la interfaz.

## Personalización

| Propiedad | Función |
|---|---|
| `children` | Lista de widgets hijos |
| `mainAxisAlignment` | Distribuye el espacio horizontal |
| `crossAxisAlignment` | Alinea verticalmente |
| `mainAxisSize` | Define el tamaño de la fila |

## Ejemplo con personalización

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.favorite, size: 40, color: Colors.red),
    Icon(Icons.music_note, size: 40, color: Colors.blue),
    Icon(Icons.camera_alt, size: 40, color: Colors.green),
  ],
)
```

## Conclusión breve
El widget `Row` ayuda a organizar elementos de manera horizontal y facilita la creación de diseños dinámicos y ordenados.

---

# 4. `Column`

## Descripción
El widget `Column` organiza widgets verticalmente dentro de una aplicación Flutter.

Se utiliza frecuentemente para formularios, listas simples, menús y pantallas donde los elementos deben aparecer uno debajo del otro.

## Ejemplo de código

```dart
Column(
  children: [
    Text('Nombre'),
    Text('Correo electrónico'),
    Text('Contraseña'),
  ],
)
```

## Explicación del ejemplo
El ejemplo organiza tres textos verticalmente. Cada widget aparece debajo del anterior gracias al funcionamiento del widget `Column`.

## Personalización

| Propiedad | Función |
|---|---|
| `children` | Widgets contenidos |
| `mainAxisAlignment` | Distribuye el espacio vertical |
| `crossAxisAlignment` | Alinea horizontalmente |
| `mainAxisSize` | Ajusta el tamaño de la columna |

## Ejemplo con personalización

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      'Usuario',
      style: TextStyle(fontSize: 22),
    ),
    SizedBox(height: 10),
    Text(
      'Contraseña',
      style: TextStyle(fontSize: 22),
    ),
  ],
)
```

## Conclusión breve
El widget `Column` es importante porque permite organizar contenido verticalmente y construir interfaces más limpias y fáciles de entender.

---

# 5. `ElevatedButton`

## Descripción
El widget `ElevatedButton` se utiliza para crear botones interactivos con diseño Material Design.

Estos botones permiten ejecutar acciones cuando el usuario los presiona, por ejemplo guardar información, iniciar sesión o enviar formularios.

## Ejemplo de código

```dart
ElevatedButton(
  onPressed: () {
    print('Botón presionado');
  },
  child: Text('Ingresar'),
)
```

## Explicación del ejemplo
El botón muestra el texto “Ingresar” y ejecuta una acción cuando el usuario hace clic sobre él.

La función `onPressed` es la encargada de definir lo que sucederá al presionar el botón.

## Personalización

| Propiedad | Función |
|---|---|
| `onPressed` | Ejecuta una acción |
| `child` | Contenido interno del botón |
| `style` | Permite cambiar la apariencia |
| `icon` | Agrega íconos |

## Ejemplo con personalización

```dart
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange,
    padding: EdgeInsets.symmetric(
      horizontal: 35,
      vertical: 18,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
  child: Text(
    'Guardar cambios',
    style: TextStyle(
      fontSize: 18,
      color: Colors.white,
    ),
  ),
)
```

## Conclusión breve
El widget `ElevatedButton` es esencial porque permite la interacción directa con el usuario y facilita la ejecución de acciones importantes dentro de la aplicación.

---

# Conclusión general

Flutter utiliza widgets como base principal para construir interfaces móviles modernas. Widgets como `Container`, `Text`, `Row`, `Column` y `ElevatedButton` permiten desarrollar aplicaciones organizadas, dinámicas y visualmente atractivas.

Comprender el funcionamiento y la personalización de estos widgets es fundamental para cualquier desarrollador móvil, ya que representan la estructura principal de las aplicaciones creadas con Flutter.
