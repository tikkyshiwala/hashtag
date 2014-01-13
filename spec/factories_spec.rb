require 'spec_helper'

factories_that_are_never_built = [:homepage_item]

describe FactoryGirl do
  FactoryGirl.factories.map(&:name).each do |factory_name|
    if factories_that_are_never_built.include?(factory_name)
      next
    end
    subject { build(factory_name) }
    
    describe "The #{factory_name} factory", factories: true do
      it { should be_valid }
    end
  end
end
