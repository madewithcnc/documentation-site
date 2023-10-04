Tormach Path Pilot
=========================

CNC Control Pendant that functions as a hand held console for Tormach Path Pilot CNC machines. 

It is 100% plug and play, requiring no modifications to the Path Pilot controller software. It connects to Path Pilot via a USB cable.


Requirements
^^^^^^^^^^^^

* ``Path Pilot``
    The hand held console requires Path Pilot version 2.51 or newer, it is **not** compatible with Mach3.
* ``1 free USB Port``

.. note:: 
    Our handheld console communicates with Path Pilot using the same protocol as the Tormach Operators Consoles.
    
    As such, it is not compatible with machines that have a Tormach Operators Console connected.

Features
^^^^^^^^

Override Knobs
--------------

* Feed
    * This dial corresponds to the Feed Rate slider with a range of 0% - 200%.
    * It controls the speed of the machine when executing feed rate moves.
* Speed
    * This dial corresponds to the Spindle Rate slider with a range of 0% - 200%.
    * It controls the RPM of the spindle motor.
* Velocity
    * This dial corresponds to the Max Velocity slider with a range of range 0% - 100%.
    * It controls the maximum speed of the machine when executing any axis movement.


Buttons
-------
* Start
    * This button is equivalent to the ``CYCLE/START`` button on the Path Pilot UI and is used to start a gcode program or resume a gcode program that has been paused with the Hold button.
* Hold
    * This button is equivalent to the ``FEED HOLD`` button on the Path Pilot UI and is used to pause a running program.
* Stop
    * This button is equivalent to the ``RESET`` button on the Path Pilot UI and is used to stop a running program.
* Aux
    * This button is equivalent to the ``COOLANT`` button on the Path Pilot UI and is used to turn your coolant on and off.

.. note:: 
    For machines without coolant, the Coolant On/Off button is non-operational

Jogging
-------
* Encoder Wheel
    * The wheel has 100 detents per revolution and will affect 1 jog step per detent for the selected axis and increment.
* Axis Selection
    * Linear Axes
        * X
        * Y
        * Z
    * Rotary Axis
        * R1 (A Axis)
        * R2 - Not supported on Path Pilot, will select the same as R1
* Increments
    The increments work as a divisor to the base increment.

    * X1 = :math:`base`
    * X10 = :math:`[\frac{base}{10}]`
    * X100 = :math:`[\frac{base}{100}]`

* Base Increments
    * Imperial - 0.01 inches
    * Metric   - 1mm

.. note:: 
    Made With CNC products are not tested, sponsored, endorsed, nor approved by Tormach Inc. 

 
\ :sub:`Tormach and Path Pilot are registered trademarks of Tormach Inc.`