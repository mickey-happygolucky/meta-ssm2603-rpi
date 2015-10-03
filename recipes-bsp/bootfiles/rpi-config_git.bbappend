do_deploy_ssm260x() {

# hifiberry DAC
    if [ -n "${RPI_SSM260x}" ]; then
        echo "# Enable rpi-ssm260x DAC" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
        echo "dtoverlay=rpi-ssm260x" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
    fi
}

addtask deploy_ssm260x before do_package after do_deploy
