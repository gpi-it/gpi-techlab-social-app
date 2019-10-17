### DART DOCUMENTATION
* Object is the root class of the Dart class hierarchy, and every other class in Dart is a sub-class of Object — including “primitive” types like int, double, or bool.

* Everything in Dart is stored and located thanks to the addressing system. So Flutter will know where to locate data according to its address.

* State is the information that can be read synchronously when the widget is built and might change during the lifetime of the widget. State objects are created by the framework. In order to change your widget, you need to update the state object which can be done using setState() function available for Stateful widgets. 

* A widget that contains other widgets is called parent Widget (or Widget container). Widgets which are contained in a parent Widget are called children Widgets.

* You should have a MaterialApp near the root of your app. And then use widgets that introduce a Material instance (Such a Scaffold, Appbar, Dialog, ...) when you want to use Text or InkWell.  
