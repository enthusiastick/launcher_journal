require 'spec_helper'

describe Entry do
  let(:blank_values) { [nil, ''] }

  it { should have_valid(:title).when('foo') }
  it { should_not have_valid(:title).when(*blank_values) }

  it { should have_valid(:body).when('stuff') }
  it { should_not have_valid(:body).when(*blank_values) }

  it { should belong_to(:category) }

end
