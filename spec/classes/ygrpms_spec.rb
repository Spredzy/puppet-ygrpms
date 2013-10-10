require 'spec_helper'

describe 'ygrpms' do

  context 'Fedora Distribution' do

      let(:facts) do
        {'osfamily'                  => 'RedHat',
         'architecture'              => 'x86_64',
         'operatingsystem'           => 'Fedora',
         'operatingsystemmajrelease' => '18',}
      end

      let(:params) do
        {'enabled'  => '1',}
      end

      it 'install ygrpms repo ' do
        should contain_yumrepo('ygrpms').with({
          'baseurl'         => 'http://yum.yanisguenane.fr/fedora/f18/x86_64/',
          'failovermethod'  => 'priority',
          'enabled'         => '1',
          'gpgcheck'        => '0',
          'descr'           => 'Yanis Guenane\'s YUM repository for Fedora and EL linux based distributions',
        })
      end

  end

  context 'RHEL6 Based Distributions' do

      let(:facts) do
        {'osfamily'                  => 'RedHat',
         'architecture'              => 'i386',
         'operatingsystem'           => 'CentOS',
         'operatingsystemmajrelease' => '6',}
      end

      let(:params) do
        {'enabled'  => '1',}
      end

      it 'install ygrpms repo ' do
        should contain_yumrepo('ygrpms').with({
          'baseurl'         => 'http://yum.yanisguenane.fr/el/6/i386/',
          'failovermethod'  => 'priority',
          'enabled'         => '1',
          'gpgcheck'        => '0',
          'descr'           => 'Yanis Guenane\'s YUM repository for Fedora and EL linux based distributions',
        })
      end

  end

  context 'RHEL6 Based Distributions - ygrpms repo disabled' do

      let(:facts) do
        {'osfamily'                  => 'RedHat',
         'architecture'              => 'i386',
         'operatingsystem'           => 'CentOS',
         'operatingsystemmajrelease' => '6',}
      end

      let(:params) do
        {'enabled'  => '0', }
      end

      it 'DO NOT install ygrpms repo ' do
        should contain_yumrepo('ygrpms').with({
          'baseurl'         => 'http://yum.yanisguenane.fr/el/6/i386/',
          'failovermethod'  => 'priority',
          'enabled'         => '0',
          'gpgcheck'        => '0',
          'descr'           => 'Yanis Guenane\'s YUM repository for Fedora and EL linux based distributions',
        })
      end

  end

end
