Mach4
=====

Requirements
^^^^^^^^^^^^

* ``Mach4 Control Software``
* ``Made With CNC Mach4 Plugin``
* ``1 free USB Port``

.. note:: 
    If you have multiple devices that need to connect via USB, please use a powered USB hub.

Default Functionality
^^^^^^^^^^^^^^^^^^^^^

Override Knobs
--------------

* Feed
    * This controls the speed when executing feed rate moves with a range of 0% - 200%.
* Speed
    * This controls the RPM of the spindle motor with a range of 0% - 200%.
* Velocity
    * This controls the maximum speed when executing any axis movement with a range of range 0% - 100%.

Buttons
-------
* Start
    * This button will execute a  ``Cycle Start`` command and is used to start a gcode program or resume a gcode program that has been paused with the Hold button.
* Hold
    * This button will execute a ``Feed Hold`` command and is used to pause a running program.
* Stop
    * This button will execute a ``Stop`` command and is used to stop a running program.
* Aux
    * This button  will execute a ``Coolant Toggle`` command and is used to turn on or off your coolant system.


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
        * R2 (B Axis)
* Increments
    The increments work as a divisor to the base increment.

    * X1 = :math:`base`
    * X10 = :math:`[\frac{base}{10}]`
    * X100 = :math:`[\frac{base}{100}]`

* Base Increments
    * Imperial - 0.01 inches
    * Metric   - 1mm

.. note:: 
   The buttons are highly configurable within the plugin settings.
   See :ref:`mach4-configuration` for more information on configuring the behavior of your hand-held console. 
 

Initial Setup
^^^^^^^^^^^^^

.. note:: 
   The hand-held console needs to be connected to usb before loading the Mach4 control software.

Deploying and enabling the plugin
---------------------------------

#. Copy the 2 plugin files ``madewithcnc.m4pw`` and ``madewithcnc.sig``
#. Paste them into the Mach4 plugin directory.
#. Start the Mach4 control software.
#. Click the ``Configure`` menu at the top of the screen, then ``Control`` then ``Plugins``
#. Click the ``Red X`` next to Made With CNC Pendant to enable the plugin, turning the icon into a green check mark.
#. Click Ok
#. Restart Mach4

.. _mach4-configuration:

Console Configuration
^^^^^^^^^^^^^^^^^^^^^

The default behavior all 4 buttons can be customized to perform a number of functions, including executing custom gcode.


Opening the configuration dialog
--------------------------------
#. Click the ``Configure`` menu at the top of the screen, then ``Plugins`` then ``Made With CNC Pendant``

That will open the configuration dialog.

.. figure:: /images/mach4-config-dialog.png
   :align: center
   :alt: Mach4 configuration dialog

   Mach4 configuration dialog.


Available Button Options
-----------------------------

* No Function
* RESET
* Cycle Stop
* Cycle Start
* Feed Hold
* Coolant Toggle
* Rewind File
* Toggle Single Block
* Toggle Block Delete
* Spindle CW Toggle
* Spindle CCW Toggle
* User G code 1
* User G code 2
* User G code 3
* User G code 4

.. note:: 
   You can edit the User G code 1-4 on the G Code tab of the configuration dialog.


