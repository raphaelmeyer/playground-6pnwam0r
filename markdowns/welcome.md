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
