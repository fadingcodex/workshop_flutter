# Guía

## Premisas

- App para una cafetería
- Recursos (💵💶💷💴) ilimitados
- Se pueden añadir productos infinitos
- No hay personalización de *user profile*

---

- Todo ocurre en local
- No estamos almacenando *state* o datos

## Git o no Git

Si no sabes o no quieres usar Git, puedes descargar el proyecto [desde esta web](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fzelonware%2Fworkshop_flutter%2Ftree%2Fworkshop%2Fapp).

## Enable other project kinds

Añade soporte para web:

```
flutter create --platforms=web .
```

Añade soporte para Linux:

```
flutter create --platforms=linux .
```

## Paso a paso

Si usas git:

- Clona el proyecto en local
- Cambia a la *branch* `workshop`

Abre con Visual Studio Code o Android Studio, a tu elección.

- Revisamos `coffee_manager.dart` (y si queremos personalizamos contenido)
- Eliminamos `demo mode` banner, ¡es fácil implementar cambios con `hot reload`!

Añadimos páginas:

- Cart
- Catalog
- Profile

Ahora podemos implementar `BottomNavigationBar`. Así podemos ver la navegación, modificamos la página para ver que podemos crear cositas.

Añadimos modelos:

- User
- Order
- Product

