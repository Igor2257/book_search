enum IsTabletPhonePC {
  smallPhone,
  phone,
  semiTablet,
  tablet,
  semiPc,
  quarterPc,
  pc;

  bool isSmallPhone() {
    if (this == IsTabletPhonePC.smallPhone) {
      return true;
    }
    return false;
  }

  bool isPhone() {
    if (this == IsTabletPhonePC.phone || this == IsTabletPhonePC.semiTablet) {
      return true;
    }
    return false;
  }

  bool isTablet() {
    if (this == IsTabletPhonePC.tablet) {
      return true;
    }
    return false;
  }
}

class ResponsiveLayout {
  static IsTabletPhonePC getIsTabletPhonePC(double deviceWidth) {
    if (deviceWidth < 400) {
      return IsTabletPhonePC.smallPhone;
    } else if (deviceWidth < 680) {
      return IsTabletPhonePC.phone;
    } else if (deviceWidth >= 680 && deviceWidth <= 900) {
      return IsTabletPhonePC.semiTablet;
    } else if (deviceWidth > 900 && deviceWidth <= 1100) {
      return IsTabletPhonePC.tablet;
    } else if (deviceWidth > 1100 && deviceWidth < 1400) {
      return IsTabletPhonePC.semiPc;
    } else if (deviceWidth >= 1400 && deviceWidth < 1600) {
      return IsTabletPhonePC.quarterPc;
    } else {
      return IsTabletPhonePC.pc;
    }
  }

  static int getItemsPerRow(double deviceWidth) {
    final isTabletPhonePC = getIsTabletPhonePC(deviceWidth);
    if (isTabletPhonePC.isSmallPhone()) {
      return 1;
    } else if (isTabletPhonePC == IsTabletPhonePC.phone ) {
      return 2;
    } else if (isTabletPhonePC == IsTabletPhonePC.tablet ||
        isTabletPhonePC == IsTabletPhonePC.semiPc|| isTabletPhonePC == IsTabletPhonePC.semiTablet) {
      return 3;
    } else if (isTabletPhonePC == IsTabletPhonePC.pc) {
      return 5;
    } else {
      return 4;
    }
  }
}
