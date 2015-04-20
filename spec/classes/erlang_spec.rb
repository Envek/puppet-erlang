require 'spec_helper'

describe 'erlang' do

  context 'on Debian' do
    let(:facts) { {
      osfamily: 'Debian',
      lsbdistid: 'debian',
      lsbdistcodename: 'wheezy'
    } }

    context 'with no parameters' do
      it { should compile.with_all_deps }
      it { should contain_package('erlang').with_ensure('installed') }
      it { should contain_apt__source('erlang-solutions').with(
        'key_source' => 'http://packages.erlang-solutions.com/debian/erlang_solutions.asc',
        'key'        => '434975BD900CCBE4F7EE1B1ED208507CA14F4FCA',
        ) }
    end

    context 'with a custom version' do
      let(:params) { {'version' => 'R16B03' } }
      it { should contain_package('erlang').with_ensure('R16B03') }
    end

    context 'with a custom package name' do
      let(:params) { {'package' => 'erlang-hipe' } }
      it { should contain_package('erlang-hipe').with_ensure('installed') }
    end

  end

  context 'on RedHat 6' do
    let(:facts) { {
      osfamily: 'RedHat',
      operatingsystemrelease: '6.2'
    } }

    context 'with no parameters' do
      it { should contain_package('erlang').with_ensure('installed') }
      it { should contain_yumrepo('erlang-solutions').with(
        'gpgkey' => 'http://packages.erlang-solutions.com/rpm/erlang_solutions.asc',
      ) }
    end

    context 'with a custom version' do
      let(:params) { {'version' => 'R16B03' } }
      it { should contain_package('erlang').with_ensure('R16B03') }
    end

    context 'with a custom package name' do
      let(:params) { {'package' => 'erlang-hipe' } }
      it { should contain_package('erlang-hipe').with_ensure('installed') }
    end

  end

end
