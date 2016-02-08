require 'spec_helper'
set :backend, :exec

describe command('date') do
  its(:stdout) { should match /JST/ }
end

describe command('strings /etc/localtime') do
  its(:stdout) { should match /JST-9/ }
end

describe file('/etc/timezone') do
  its(:content) { should match /Asia\/Tokyo/ }
end
