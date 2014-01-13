require 'spec_helper'

factories_that_are_never_built = [:homepage_item]

FactoryGirl.factories.map(&:name).each do |factory_name|
  if factories_that_are_never_built.include?(factory_name)
    next
  end

  describe "The #{factory_name} factory", factories: true do
    subject { build(factory_name) }
    it { should be_valid }
  end
end
