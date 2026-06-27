# Workshop Guide

> 🇪🇸 A Spanish version of this guide is available below / Una versión en español de esta guía está disponible a continuación.

---

## Premises

- App for a coffee shop
- Unlimited resources (💵💶💷💴) – no payment processing needed
- Infinite products can be added to the cart
- No user profile customisation
- Everything runs locally – no data is persisted between sessions

## Getting the starter project

**With Git:**

```bash
git clone https://github.com/Beelzenef/workshop_flutter.git
cd workshop_flutter
git checkout workshop
```

**Without Git:**

Download the starter project directly from [download-directory.github.io](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fzelonware%2Fworkshop_flutter%2Ftree%2Fworkshop%2Fapp).

## Running the project

Open the `app/` folder with **Visual Studio Code** or **Android Studio**, then run:

```bash
flutter pub get
flutter run
```

## Enable additional platforms

Add web support:

```bash
flutter create --platforms=web .
```

Add Linux support:

```bash
flutter create --platforms=linux .
```

## Step-by-step guide

### 1. Explore `coffee_manager.dart`

Open `lib/coffee_manager.dart`. This file contains the `CoffeeManager` class which acts as a simple in-memory data store for the app. It holds:

- The logged-in `User`
- The list of `Product` items currently in the cart (`productsInCart`)
- The list of completed `Order` objects (`orders`)
- A running cart `total`

Feel free to customise the default user data.

### 2. Remove the debug banner

In `lib/main.dart`, notice the `MaterialApp` widget. Set `debugShowCheckedModeBanner: false` to hide the red *DEBUG* ribbon. Use **hot reload** (press `r` in the terminal, or save the file in your editor) to see the change instantly.

### 3. Add the page files

Create the following files inside `lib/pages/`:

| File | Purpose |
|------|---------|
| `catalog.dart` | Lists available coffee products |
| `cart.dart` | Shows items currently in the cart |
| `profile.dart` | Displays user information |

Each file should contain a `StatefulWidget` subclass with the matching name (e.g. `CatalogPage`).

### 4. Implement `BottomNavigationBar`

In `lib/main.dart`, update `HomePage` to include a `BottomNavigationBar` with three tabs:

- **Catalog** – navigates to `CatalogPage`
- **Cart** – navigates to `CartPage`
- **Profile** – navigates to `ProfilePage`

Use a `switch` statement (or `if/else`) to return the correct page widget based on the currently selected tab index.

### 5. Add the data models

Create the following files inside `lib/models/`:

| File | Class | Fields |
|------|-------|--------|
| `product.dart` | `Product` | `name` (String), `price` (int), `pic` (String) |
| `user.dart` | `User` | `name` (String), `mail` (String), `phone` (String) |
| `order.dart` | `Order` | `products` (int), `total` (int), `orderedAt` (DateTime) |

### 6. Wire everything together

- In `CatalogPage`, read the product list and call `CoffeeShopApp.manager.addToCart(product)` when a tile is tapped.
- In `CartPage`, display `CoffeeShopApp.manager.productsInCart` and provide **PAY** and **REMOVE** buttons that call `manager.makeOrder()` and `manager.clearCart()`.
- In `ProfilePage`, show the user's name, email, and phone. If there are completed orders, show a button that navigates to an `OrdersPage`.

---

---

# Guía (Español)

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

