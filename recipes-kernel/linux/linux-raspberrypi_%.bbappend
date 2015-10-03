FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://support_rpi_ssm2603.patch \
	"

do_defconfig_ssm260x() {
    if ! grep "CONFIG_SND_BCM2708_SOC_RPI_SSM260x=m" ${WORKDIR}/defconfig ; then
       echo 'CONFIG_SND_BCM2708_SOC_RPI_SSM260x=m' >> ${WORKDIR}/defconfig
    fi
}

addtask defconfig_ssm260x before do_configure after do_kernel_configme

# KERNEL_DEVICETREE += "rpi-ssm260x-overlay.dtb"