## Network Interface Controller Offloading in Linux

This is my master thesis at Charles University in Prague.

### Abstract

Modern network interface controllers allow the host to offload packet
processing to hardware in order to improve performance. At the present
time, the advanced features are utilized in the Linux kernel by offloading
the Traffic Control subsystem. Since this subsystem has been designed for
a completely different purpose, its usage for hardware offloading is
impractical and unreliable. Furthermore, in its current state the subsystem
is not capable of utilizing all hardware features, which are often poorly
documented.

The presented work adopts a different approach to the problem. Five
high-end controllers and their packet-processing pipelines were examined in
detail. Accounting for their projected future development, common traits
and features were identified. The researched information was used to draft
a proposal for a new Linux subsystem, more compatible with hardware
offloading than the current solution. The proposed subsystem defines
a sufficiently descriptive interface to utilize the majority of
hardware-offloaded features while avoiding common problems caused by
excessively generalized approach of Traffic Control.

