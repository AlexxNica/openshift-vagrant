require 'spec_helper'

###############################################################################
# Tests verifying system state and services
###############################################################################
describe interface('eth0') do
  it { should be_up }
end

describe interface('eth0') do
  let(:disable_sudo) { false }
  it { should have_ipv4_address("10.0.2.15") }
end

describe interface('eth1') do
  it { should be_up }
end

describe interface('eth1') do
  let(:disable_sudo) { false }
  it { should have_ipv4_address("#{ENV['TARGET_IP']}") }
end

describe interface('docker0') do
  it { should be_up }
end

describe file(ENV['HOME']) do
  it { should be_directory }
end

