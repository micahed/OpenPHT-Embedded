# OpenPHT-Embedded

OpenPHT-Embedded is OpenPHT running on [OpenELEC](http://www.openelec.tv)

**Notes**

* SSH login details are user: "root" password: "openpht"

**Build**

* `DISTRO=OpenPHT PROJECT=Generic ARCH=x86_64 make image`
* `DISTRO=OpenPHT PROJECT=Nvidia_Legacy ARCH=x86_64 make image`
* Use `OPENPHT_REPO` and `OPENPHT_BRANCH` to change what repository and branch of OpenPHT to build

# OpenELEC

**Source code**

* https://github.com/OpenELEC/OpenELEC.tv

**License**

* OpenELEC is released under [GPLv2](http://www.gnu.org/licenses/gpl-2.0.html). Please refer to the "licenses" folder and 
  source code for clarification on upstream licensing.

**Copyright**

* Since OpenELEC includes code from many up stream projects it includes many 
  copyright owners. OpenELEC makes NO claim of copyright on any upstream code. 
  However all OpenELEC authored code is copyright openelec.tv.
  For a complete copyright list checkout the source code to examine the headers.
  Unless expressly stated otherwise all code submitted DIRECTLY to the OpenELEC 
  project (in any form) is licensed under [GPLv2](http://www.gnu.org/licenses/gpl-2.0.html) and the Copyright is donated to 
  openelec.tv.
  This allows the project to stay manageable in the long term by giving us the
  freedom to maintain the code as part of the whole without the management 
  overhead of preserving contact with every submitter ever e.g. move to GPLv3.
  You are absolutely free to retain copyright. To retain copyright simply add a 
  copyright header to every submitted code page.
  If you are submitting code that is not your own work it is the submitters 
  responsibility to place a header stating the copyright. 
