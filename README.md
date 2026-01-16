# Flutter Product App - Recruitment Taks

A Flutter web application that fetches and displays products from the FakeStore API, built with Clean Architecture principles and SOLID design patterns.

## Features

- Product list with images, titles, and prices
- Product details screen
- Search functionality by product title
- Pull-to-refresh
- Responsive design (desktop and mobile)
- Error handling with retry functionality
- Loading states

## How to Run

### Prerequisites

- Flutter SDK (stable channel)
- Dart SDK (included with Flutter)

### Steps

1. Clone the repository

2. Install dependencies:
   ``` bash
   flutter pub get
   ```

3. Run the application:
   ``` bash
   flutter run -d chrome
   ```


## Architecture

This project follows **Clean Architecture** principles with clear separation of concerns across three main layers:

### Layer Structure

```
lib/
├── core/           # Shared utilities, constants, error handling
├── domain/         # Business logic (entities, use cases, repository interfaces)
├── data/           # Data sources and repository implementations
└── presentation/   # UI layer (screens, widgets, BLoC)
```

### Architecture Layers

#### 1. Domain Layer
- **Entities**: Pure business objects (`Product`)
- **Use Cases**: Business logic operations (`GetProducts`)
- **Repository Interfaces**: Contracts for data access

#### 2. Data Layer
- **Models**: Data transfer objects extending entities (`ProductModel`)
- **Data Sources**: Remote API access (`ProductRemoteDataSource`)
- **Repository Implementations**: Concrete implementations of domain interfaces

#### 3. Presentation Layer
- **BLoC**: State management (`ProductListBloc`)
- **Screens**: UI screens (`ProductListScreen`, `ProductDetailsScreen`)
- **Widgets**: Reusable UI components

#### 4. Core Layer
- **Constants**: API endpoints and configuration
- **Error Handling**: Exceptions and failures
- **Network**: HTTP client wrapper

### Data Flow

```
UI → BLoC → Use Case → Repository → Data Source → API
                ↓
UI ← BLoC ← Use Case ← Repository ← Data Source ← API
```

### SOLID Principles

- **Single Responsibility**: Each class has one clear purpose
- **Open/Closed**: Open for extension via interfaces, closed for modification
- **Liskov Substitution**: `ProductModel` extends `Product` seamlessly
- **Interface Segregation**: Focused, specific interfaces
- **Dependency Inversion**: Dependencies point toward abstractions (repository interfaces)

### State Management

The application uses **BLoC (Business Logic Component)** pattern for state management:
- Events trigger state changes
- States represent UI conditions
- BLoC handles business logic and emits states

### Error Handling

- Network errors are caught and converted to user-friendly messages
- Server errors are properly handled
- Retry functionality available on error screens

### Responsive Design

- Uses `LayoutBuilder` to detect screen size (I also thought about using responsive_builder package)
- Desktop: Grid layout with 3 columns (I know recruitment task said "list" but decided that grid will look MUCH better on desktop - hope it won't get me some negative points)
- Mobile: List layout with single column
- Adaptive padding and font sizes (For a bigger product I would create a separate class for sizing, probably create a custom theme and prepare translations keys - kind of a starter setup, but here... would be a waste of time)

## Project Structure

```
lib/
├── core/
│   ├── constants/
│   │   └── api_constants.dart
│   ├── error/
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   └── network/
│       └── api_client.dart
├── data/
│   ├── models/
│   │   └── product_model.dart
│   ├── datasources/
│   │   └── product_remote_datasource.dart
│   └── repositories/
│       └── product_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── product.dart
│   ├── repositories/
│   │   └── product_repository.dart
│   └── usecases/
│       └── get_products.dart
└── presentation/
    ├── bloc/
    │   └── product_list/
    │       ├── product_list_bloc.dart
    │       ├── product_list_event.dart
    │       └── product_list_state.dart
    ├── screens/
    │   ├── product_list_screen.dart
    │   └── product_details_screen.dart
    └── widgets/
        ├── product_card.dart
        ├── product_list_item.dart
        ├── loading_indicator.dart
        └── error_message.dart
```

## Dependencies

- `bloc`: ^8.1.3 - State management
- `flutter_bloc`: ^8.1.5 - BLoC integration with Flutter
- `http`: ^1.2.0 - HTTP requests
- `equatable`: ^2.0.5 - Value equality
- `dartz`: ^0.10.1 - Functional programming (Either type)

## API

The application uses the [FakeStore API](https://fakestoreapi.com/products) to fetch product data.
