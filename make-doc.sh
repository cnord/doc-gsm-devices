#!/bin/sh

echo "Start to make Nord GSM manual"

pandoc --latex-engine=/Library/TeX/texbin/pdflatex --template tex/nord-template.latex -V lang=russian -o nord-gsm-manual.pdf nord/01-01-purpose.md common/01-02-power.md common/01-03-channels.md common/01-04-nord-features.md nord/01-05-specification.md nord/01-06-package.md nord/01-07-components.md nord/01-08-frame.md nord/03-01-arm-general.md common/03-02-nord-arm-tm-key.md common/03-03-nord-arm-rx-6.md common/03-04-nord-arm-k16-lcd.md nord/04-01-install-general.md common/04-02-install-zones.md common/04-04-install-smoke.md common/04-05-install-wze-8.md nord/04-06-install-gsm.md common/05-01-config-general.md common/05-02-config-driver.md common/05-03-config-version.md common/05-04-config-info.md common/05-05-nord-config-toolbar.md common/05-06-nord-config-zones.md nord/05-07-config-wireless.md nord/05-08-config-users.md nord/05-09-config-parts.md nord/05-10-config-misc.md common/05-11-config-sc.md nord/05-12-config-radio.md nord/05-13-config-cloud.md common/05-14-config-eth.md nord/05-15-config-csp.md common/05-16-config-history.md common/07-01-remote-intro.md common/07-02-remote-setup.md common/07-03-remote-config.md common/07-04-remote-firmware.md nord/08-01-codes-latex.md 

# pandoc --latex-engine=/Library/TeX/texbin/pdflatex --template tex/nord-template.latex -V lang=russian -o nord-gsm-manual.pdf nord/08-01-codes-latex.md 

echo "Stop to make Nord GSM manual"

# open -a preview nord-gsm-manual.pdf

# echo "Start to make Nord RF manual"

# pandoc --latex-engine=/Library/TeX/texbin/pdflatex --template tex/nord-rf-template.latex -V lang=russian -o nord-rf-manual.pdf nord-rf/01-01-purpose.md common/01-02-power.md nord-rf/01-03-channels.md common/01-04-nord-features.md nord-rf/01-05-specification.md nord-rf/01-06-package.md nord-rf/01-07-components.md nord-rf/01-08-frame.md nord-rf/03-01-arm-general.md common/03-02-nord-arm-tm-key.md common/03-03-nord-arm-rx-6.md common/03-04-nord-arm-k16-lcd.md nord-rf/04-01-install-general.md common/04-02-install-zones.md common/04-04-install-smoke.md common/04-05-install-wze-8.md common/05-01-config-general.md common/05-02-config-driver.md common/05-03-config-version.md common/05-04-config-info.md common/05-05-nord-config-toolbar.md common/05-06-nord-config-zones.md nord-rf/05-11-config-sc.md nord-rf/05-12-config-radio.md common/05-14-config-eth.md common/05-16-config-history.md common/07-01-remote-intro.md common/07-02-remote-setup.md common/07-03-remote-config.md common/07-04-remote-firmware.md 

# echo "Stop to make Nord RF manual"

# open -a preview nord-rf-manual.pdf

# echo "Start to make Sergeant manual"

# pandoc --latex-engine=/Library/TeX/texbin/pdflatex --template tex/sergeant-template.latex -V lang=russian -o sergeant-gsm-manual.pdf sergeant/01-01-purpose.md common/01-02-power.md common/01-03-channels.md sergeant/01-04-specification.md sergeant/01-05-package.md sergeant/01-06-composition.md sergeant/01-07-function.md

# echo "Stop to make Sergeant manual"

# open -a preview sergeant-gsm-manual.pdf




