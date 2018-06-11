# Welcome!

Let's say we have a small and simple piece of software to control a time machine. The main components are a flux capacitor and a time display.

The software has the following architecture:
```
 +---------------+           +----------------+
 | <<component>> |           | <<component>>  |
 |               |---------->|                |
 | time_machine  |           | flux_capacitor |
 +---------------+           +----------------+
         |                           |
         |                     <<implements>>
         |                           |
         V                           V
 +---------------+        +-----------------------+
 | <<component>> |        | <<component>>         |
 |               +---Co---+                       |
 | time_display  |        | time_travel_interface |
 +---------------+        +-----------------------+
```

The component `time_machine` is the main controller. The `time_travel_interface` is implemented by the `flux_capacitor` and used by the `time_display`.

The source code is organized in the following file structure:
```
project/
+--- flux_capacitor/
|    +--- include/
|    |    +--- flux_capacitor/
|    |         +--- flux_capacitor.h
|    +--- src/
|         +--- capacitor.cpp
|         +--- capacitor.h
|         +--- flux_capacitor.cc
|         +--- flux.cc
|         +--- flux.h
|
+--- time_display/
|    +--- include/
|    |    +--- time_display/
|    |         +--- display.h
|    +--- src/
|         +--- colors.cc
|         +--- colors.h
|         +--- display.cc
|         +--- numbers.cc
|         +--- numbers.h
|
+--- time_machine/
|    +--- src/
|         +--- main.cc
|         +--- time_machine.cc
|         +--- time_machine.h
|
+--- time_travel_interface/
     +--- include/
          +--- time_travel/
               +--- time_travel.h
```
