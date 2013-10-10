#puppet-ygrpms [![Build Status](https://travis-ci.org/Spredzy/puppet-ygrpms.png)](https://travis-ci.org/Spredzy/puppet-ygrpms)

=============

A Puppet module that installs and configure (ygrpms repo)[http://yum.yanisguenane.fr]

# Parameters

* enabled (0|1)

Indicate if the `ygrpms` repo should be enabled (default: 1)

# Usage

    Class['ygrpms']

or

    class {'ygrpms' :
      enabled => 0,
    }

# Compatibility

This module work exclusively on Fedora and RedHat (and its derivative) platforms, for both 32 Bits and 64 Bits platforms.
