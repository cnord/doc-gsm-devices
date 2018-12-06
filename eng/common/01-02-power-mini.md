## Power Supply

The main power source of the product is a DC power adapter with (10÷14) V.

The following can be used as a backup power source:

* sealed lead-acid battery (battery), corresponding to the standard IEC 1056-1, with a rated voltage of (12.6±0.6) V. The battery is installed inside the product body;
* external uninterruptible power supply (UPS), with a rated nominal output voltage of 12 V and permissible current load of at least 1.5 A with the installed battery of the required chemical system. The external UPS shall be connected to the product _instead_ of the battery.

The permissible voltage range of the backup source when the product is started in the absence of the main source is from 10.0 V to 14.4 V.

The recommended capacity of the battery installed inside the product plastic case is 1.2 or 2.2 (Ah), for example, DELTA DTM 12022.

The product provides automatic maintenance of the installed battery, which includes the following:

* stage of a "sparing" charge of a deeply discharged battery with a current of (100±20) mA before reaching the voltage of (11.5±0.2) V;
* subsequent charge of the battery at the second stage with a current of (230±25) mA;
* final voltage on the battery at the end of its charging cycle at (14.0±0.2) V and then keeping it in the range of (13.6÷14.0) V to compensate the current of its self-discharge;
* ability to automatically turn off the discharged battery in the absence of the main power supply when the voltage on it reaches (9.0±0.3) V;
* 25 mA limitation of the current consumed by the product from the automatically disconnected battery;
* stability to both the break and short circuit in the battery circuit is unlimited in time, while the product will be powered from the main source;
* protection against "reverse polarity" in case of wrong connection to the battery terminals or external UPS;
* automatic periodic testing of the battery and evaluation of its state by several parameters with subsequent sending of the corresponding notices to the panel program. The option can be disabled while configuring the product;
* automatic "training" of the battery by periodic short-term sampling of the current pulse into the low-resistance load built into the product. This procedure implements the charge algorithm with an asymmetric current with alternating signs current that favorably affects both the completeness of the charge and the lifetime of the battery operated in the buffer mode. The option can be disabled while configuring the product.

If an external UPS is used as a backup power source, the product continues to periodically monitor the fact of its connection, but does not monitor the following:

* charge of an external source;
* its periodic testing with an evaluation of the current charge level and value of internal resistance.
