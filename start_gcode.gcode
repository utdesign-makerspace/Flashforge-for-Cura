; **** FlashForge Creator Pro PRINTER start.gcode for using left or right extruder ****
M83 ; relative extrusion mode
M73 P0 ; enable build progress
G162 X Y F3000 ; home XY maximum
G161 Z F1200 ; home Z minimum
G92 Z-5 ; set Z to -5
G1 Z0 ; move Z to 0
G161 Z F100 ; home Z slowly
M132 X Y Z A B ; recall home offsets
M135 T0 ; load right extruder offsets
G1 X-110 Y-70 Z30 F9000 ; move to wait position left hand side of the table
G130 X20 Y20 Z20 A20 B20 ; lower stepper Vrefs while heating
M127; disable fan
M140 S{material_bed_temperature} T0 ; set bed temperature
M134 T0 ; stabilize bed temperature
M104 S{material_print_temperature_layer_0} T{initial_extruder_nr} ; set left or right extruder temperature
M133 T{initial_extruder_nr} ; stabilize left or right extruder temperature
G130 X127 Y127 Z40 A127 B127 ; default stepper Vrefs
G92 A0 B0 ; zero extruders
G1 Z0.4 ; position nozzle
M135 T{initial_extruder_nr} ; left or right tool
G1 X-140 Y-70 F9000 ; reposition nozzle
G1 X-100 Y-70 E25 F300 ; purge nozzle
G1 X-110 Y-70 Z0.15 F1200 ; slow wipe
G1 X-100 Y-70 Z0.5 F1200 ; lift
G92 A0 B0 ; zero extruders
M73 P1 ;@body (notify GPX body has started)
; **** end of start.gcode ****