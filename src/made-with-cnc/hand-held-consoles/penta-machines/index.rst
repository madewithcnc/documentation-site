Penta Machines Kinetic Control UI
=================================

Requirements
^^^^^^^^^^^^

* ``Kinetic Control UI version 5.3.0 or newer``
* ``1 free USB Port``

.. note:: 
    If you have multiple devices that need to connect via USB, please use a powered USB hub.

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
    * This button is equivalent to the ``CYCLE/START`` button on the Kinectic Control UI and is used to start a gcode program or resume a gcode program that has been paused with the Hold button.
* Hold
    * This button is equivalent to the ``FEED HOLD`` button on the Kinectic Control UI and is used to pause a running program.
* Stop
    * This button is equivalent to the ``RESET`` button on the Kinectic Control UI and is used to stop a running program.
* Aux
    * This button is currently not configured for functionality on Pocket NC machines. However, it is configurable within Kinetic Control UI and available for possible future functionality.


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
    * Linear Axis - 0.01
    * Rotary Axis - 1°

.. note:: 
   The base increment is configurable, you can use this to change the increment range to match your preference for your machine units.
       * ``LINEAR_JOG_INCR_BASE`` - the variable to change the base increment for linear axes
       * ``ROTARY_JOG_INCR_BASE`` - the variable to change the base increment for rotary axes
 

Initial Setup
^^^^^^^^^^^^^

To enable the hand held console functionality in Kinetic Control UI you will need to edit the machine's configuration INI.

Editing Your Machine Config
---------------------------

#. Click on ``CONFIG`` on the top menu
#. Scroll down to ``MACHINE CONFIG``
#. Click on ``EDIT OVERLAY`` in the lower right hand corner.


Adding a PENTA_FEATURES section
-------------------------------

If you do not already have a ``PENTA_FEATURES`` section in your ``MACHINE CONFIG`` ``INI OVERLAY`` you will need to add one.

#. Click the ``+`` under ``INI OVERLAY``
#. Name the section ``PENTA_FEATURES``

.. figure:: /images/kinetic-control-ui-add-penta-features.png
   :align: center
   :alt: Add Penta_Features

   Add Penta_Features section


Adding a HANDHELD_CONSOLE configuration entry
---------------------------------------------

To enable the Handheld Console functionality in Kinetic UI you need to add a config entry to the ``PENTA_FEATURES`` 

#. Click on the ``PENTA_FEATURES`` section to select it
#. Click the ``+`` under ``Name`` in the panel to the right of ``PENTA_FEATURES``
#. Name the entry ``HANDHELD_CONSOLE``
#. Enter the value of ``1``
#. Click ``Save``

.. figure:: /images/kinetic-control-ui-hand-held-console-setting.png
   :align: center
   :alt: Add HANDHELD_CONSOLE

   Add Handheld_Console configuration entry


Console Configuration
^^^^^^^^^^^^^^^^^^^^^

The default behavior of the buttons and step increments can be changed to better suit the requirements of the user.

.. note:: 
    You only need to add a ``HANDHELD_CONSOLE`` section and add configuration entries if you want to change the default behavior. 
    Using the handheld console with the default behavior only requires enabling the feature in the ``PENTA_FEATURES`` configuration section.

Adding a HANDHELD_CONSOLE section
---------------------------------

If you do not already have a ``HANDHELD_CONSOLE`` section in your ``MACHINE CONFIG`` ``INI OVERLAY`` you will need to add one.

#. Click the ``+`` under ``INI OVERLAY``
#. Name the section ``HANDHELD_CONSOLE``

.. figure:: /images/kinetic-control-ui-add-handheld-console-features.png
   :align: center
   :alt: Add HANDHELD_CONSOLE

   Add Handheld_Console section

Valid configuration variables
-----------------------------

* BUTTON_0_SIGNAL
    * This entry controls the behavior of the ``Hold`` button.
* BUTTON_1_SIGNAL
    * This entry controls the behavior of the ``Start`` button.
* BUTTON_2_SIGNAL
    * This entry controls the behavior of the ``Aux`` button.
* BUTTON_3_SIGNAL
    * This entry controls the behavior of the ``Stop`` button.
* LINEAR_JOG_INCR_BASE
    * This entry controls the jog increments for the linear axes.
* ROTARY_JOG_INCR_BASE
    * This entry controls the jog increments for the rotary axes.

Examples
########

Jogging in mm increments
************************

#. Click on the ``HANDHELD_CONSOLE`` section to select it
#. Click the ``+`` under ``Name`` in the panel to the right of ``HANDHELD_CONSOLE``
#. Name the entry ``LINEAR_JOG_INCR_BASE``
#. Enter the value of ``0.03937``
#. Click ``Save``

.. figure:: /images/kinetic-control-ui-hand-held-console-mm-jogging.png
   :align: center
   :alt: Jogging in mm increments

   Jogging in mm increments


AUX Home All
************************

#. Click on the ``HANDHELD_CONSOLE`` section to select it
#. Click the ``+`` under ``Name`` in the panel to the right of ``HANDHELD_CONSOLE``
#. Name the entry ``BUTTON_2_SIGNAL``
#. Enter the value of ``home-all``
#. Click ``Save``

.. figure:: /images/kinetic-control-ui-hand-held-console-home-all.png
   :align: center
   :alt: AUX Home All

   AUX Home All






   