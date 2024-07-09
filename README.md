# adv_flutter_ch1

A new Flutter project.

<h2 align="center">1. Switch Dark Theme to Light Theme </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/Adv_Flutter_Ch1/assets/148859956/e87e6727-3fd3-4f0f-9114-6be7d6232677" />
</div>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/Adv_Flutter_Ch1/assets/148859956/7f6f4207-abc8-4be5-be06-b22a79b11382" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/Adv_Flutter_Ch1/blob/master/lib/Task/theme_change.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

<h2 align="center">2. Stepper Widget </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/Adv_Flutter_Ch1/assets/148859956/7eda1dc0-813d-41ee-8d6d-74f3d9db9d64" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/Adv_Flutter_Ch1/blob/master/lib/Task/stepper_example.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/Adv_Flutter_Ch1/assets/148859956/69392dbe-0e3a-42e4-b04b-aad5bcb87f90" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/Adv_Flutter_Ch1/blob/master/lib/Task/stepper_example_2.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

<h2 align="center">1. Information of Provider With State Management </h2>

## ⚫ State Management :

- ```State management in Flutter is crucial for building responsive and dynamic applications.```

## ⚫ State :

- ```A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.```

## ⚫ SetState :

- ```Rebuild the our stateful or stateless widget build method.```

## ⚫ Provider State Management :

- ```Provider is a powerful state management solution in Flutter, offering a simple way to manage and share state across your application.```

## ⚫ Provider package :

```
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0  # Check for the latest version
```

## ⚫ ChangeNotifier Class :

- ```ChangeNotifier is a simple class, which provides change notification to its listeners.```
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes.
- In this, we only use the notifyListener() method to inform the listeners.

## ⚫ ChangeNotifierProvider Widget :

- ```ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. It comes from the provider package.```
- The following code snippets help to understand the concept of ChangeNotifierProvider.

## ⚫ Consumer Widget :

- ```It is a type of provider that does not do any fancy work.```
- It just calls the provider in a new widget and delegates its build implementation to the builder.
