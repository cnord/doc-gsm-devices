#!/bin/sh

echo "nord-eng.pdf"
START=$(date +%s)

pandoc --template tex/template.latex -V title-source=tex/nord-title.tex -o nord-eng.pdf nord/01-01-purpose.md nord/01-02-power.md nord/01-03-channels.md nord/01-04-features.md nord/01-05-specification.md nord/01-06-package.md nord/03-01-arm-general.md common/03-02-arm-tm-key.md nord/03-03-arm-k14.md nord/03-04-arm-k16-lcd.md common/03-05-arm-wrl-keyfob.md common/03-06-arm-myalarm.md nord/04-01-install-general.md nord/04-02-install-zones.md common/04-04-install-smoke.md nord/04-05-install-temp.md common/04-06-install-wze-12.md common/04-07-install-wze-8.md nord/04-08-install-gsm.md nord/04-09-install-tm.md common/04-10-install-keyboard.md common/05-01-firmware-general.md common/05-02-firmware-driver.md common/05-03-firmware-update.md common/06-01-config-info.md nord/06-02-config-toolbar.md nord/06-03-config-zones.md common/06-03-01-config-zones.md nord/06-04-config-wireless.md nord/06-05-config-users.md nord/06-06-config-parts.md nord/06-07-01-config-misc-header.md nord/06-07-02-config-misc-interval.md nord/06-07-03-config-misc-siren.md nord/06-07-04-config-misc-battery.md nord/06-07-05-config-misc-arm-disarm.md nord/06-07-07-config-misc-control-indication.md nord/06-07-08-config-misc-config-protection.md common/06-08-config-sc-nord.md nord/06-09-config-radio.md common/06-10-config-cloud-nord.md common/06-11-config-eth.md common/06-12-config-csp.md nord/06-13-config-automation.md common/06-15-config-history.md nord/06-16-config-dashboard.md common/07-01-remote-intro-nord.md common/07-02-remote-setup.md common/07-03-remote-config.md common/07-04-remote-firmware.md common/08-01-codes-latex.md 

END=$(date +%s)
DIFF=$(( $END - $START ))
echo "nord-eng.pdf – $DIFF seconds"

echo "mini-eng.pdf"
START=$(date +%s)

pandoc --template tex/template.latex -V title-source=tex/mini-title.tex -o mini-eng.pdf mini/01-01-purpose.md common/01-02-power-mini.md common/01-03-channels-mini.md mini/01-04-features.md mini/01-05-specification.md mini/01-06-package.md mini/03-01-arm-general.md common/03-02-arm-tm-key.md common/03-04-arm-keypad-mini.md common/03-06-arm-myalarm.md mini/04-01-install-general.md mini/04-02-install-zones.md mini/04-05-install-temp.md mini/04-08-install-gsm.md mini/04-09-install-tm.md common/05-01-firmware-general.md common/05-02-firmware-driver.md common/05-03-firmware-update.md common/06-01-config-info.md mini/06-02-config-toolbar.md mini/06-03-config-zones.md common/06-03-01-config-zones.md mini/06-05-config-users.md mini/06-06-config-parts.md mini/06-07-01-config-misc-header.md mini/06-07-02-config-misc-interval.md mini/06-07-03-config-misc-siren.md mini/06-07-04-config-misc-battery.md mini/06-07-05-config-misc-arm-disarm.md mini/06-07-07-config-misc-control-indication.md mini/06-07-08-config-misc-config-protection.md common/06-08-config-sc-mini.md common/06-10-config-cloud-mini.md common/06-11-config-eth.md common/06-12-config-csp.md mini/06-13-config-automation.md common/06-15-config-history.md mini/06-16-config-dashboard.md common/07-01-remote-intro-mini.md common/07-02-remote-setup.md common/07-03-remote-config.md common/07-04-remote-firmware.md common/08-01-codes-latex.md 

END=$(date +%s)
DIFF=$(( $END - $START ))
echo "mini-eng.pdf – $DIFF seconds"

echo "mini-eng.pdf"
START=$(date +%s)

pandoc --template tex/template.latex -V title-source=tex/air-title.tex -o air-eng.pdf air/01-01-purpose.md common/01-02-power-mini.md common/01-03-channels-mini.md air/01-04-features.md air/01-05-specification.md air/01-06-package.md air/03-01-arm-general.md common/03-02-arm-tm-key.md common/03-04-arm-keypad-mini.md common/03-05-arm-wrl-keyfob.md common/03-06-arm-myalarm.md air/04-01-install-general.md mini/04-02-install-zones.md air/04-05-install-temp.md air/04-08-install-gsm.md air/04-09-install-tm.md common/05-01-firmware-general.md common/05-02-firmware-driver.md common/05-03-firmware-update.md common/06-01-config-info.md air/06-02-config-toolbar.md air/06-03-config-zones.md common/06-03-01-config-zones.md air/06-05-config-users.md air/06-06-config-parts.md air/06-07-01-config-misc-header.md air/06-07-02-config-misc-interval.md air/06-07-03-config-misc-siren.md air/06-07-04-config-misc-battery.md air/06-07-05-config-misc-arm-disarm.md air/06-07-07-config-misc-control-indication.md air/06-07-08-config-misc-config-protection.md common/06-08-config-sc-mini.md common/06-10-config-cloud-mini.md common/06-11-config-eth.md common/06-12-config-csp.md air/06-13-config-automation.md common/06-15-config-history.md air/06-16-config-dashboard.md common/07-01-remote-intro-mini.md common/07-02-remote-setup.md common/07-03-remote-config.md common/07-04-remote-firmware.md common/08-01-codes-latex.md 

END=$(date +%s)
DIFF=$(( $END - $START ))
echo "mini-eng.pdf – $DIFF seconds"


