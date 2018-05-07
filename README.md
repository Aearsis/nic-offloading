## Network Interface Controller Offloading in Linux

This is my master thesis at Charles University in Prague.

### Abstract

Network interface controllers offer features that assist the host with
packet processing. For modern controllers, these features include
increasingly flexible classification and modification of packets. The Linux
kernel utilizes these features only by offloading the work of the Traffic
Control subsystem, which was designed for a completely different purpose,
making the offload inconvenient and unreliable.

We propose a new subsystem that would allow utilization of features of
modern conrollers, while avoiding the problems that come with offloading
Traffic Control. To have a solid base, we examined five high-end
controllers and determined their capabilities in detail. The information
about these controllers, extracted from datasheets and source codes, is
also included in the thesis. Finally, as there is no extensive up-to-date
overview of the current hardware offloading techniques, we start by
introducing the reader to them in general.

### PDF version

Hopefully, the thesis in PDF is be available [for download.](http://eideo.cz/master-thesis.pdf).

Otherwise, you can always build it yourself, but don't forget the build system
git submodule:

```bash
$ git clone --recurse-submodules git://github.com/Aearsis/nic-offloading
$ cd nic-offloading
$ make
```
