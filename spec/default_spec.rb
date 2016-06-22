# encoding: utf-8
require 'spec_helper'

describe 'golang::default' do
  context 'centos-7.1' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'centos', version: '7.1.1503') do |node|
        node.set['go']['package_install'] = true
      end.converge(described_recipe)
    end

    it 'installs a package `golang`' do
      expect(chef_run).to install_package('golang')
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
