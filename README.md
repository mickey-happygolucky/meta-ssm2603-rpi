meta-ssm2603-rpi support to work UMB-SSM2603 on RPi/RPi2

UMB-SSM2603 is ADC/DAC module for audio. For details see below URL.
http://dsps.shop-pro.jp/?pid=91857895


This layer depends on:

URI: git://git.yoctoproject.org/poky.git
branch: fido
revision: HEAD

URI: git://git.yoctoproject.org/meta-raspberrypi
branch: master
revision: HEAD


To enable the rpi-ssm260x driver, add the line as follows in your local.conf.

```
RPI_SSM260x = "1"
```


Main layer maintainers:
  Yusuke Mitsuki <mickey.happygolucky@gmail.com>
