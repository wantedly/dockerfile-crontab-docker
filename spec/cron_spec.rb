require 'spec_helper'

describe process('cron') do
  it { should be_running }
end
