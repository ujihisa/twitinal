$: << File.dirname(__FILE__) + '/..'
require 'lib/twitinal'

def internet_connected
  @internet_connected ||= system('ping -c 1 -t 1 google.ca >&/dev/null')
end

describe 'Twitinal.get' do
  it 'attempts to access twitter' do
    if internet_connected
      a = Twitinal.get('ujm')
      a.should be_instance_of Array
      a.size.should == 20
    else
      pending
    end
  end
end
