require_relative 'spec_helper'

# include_recipe 'scalarizr'
describe package('golang') do
  it { should be_installed }
end

describe command('/usr/lib/golang/bin/glide') do
  its(:stdout) { should contain 'glide - The lightweight vendor package manager for your Go projects.' }
end
