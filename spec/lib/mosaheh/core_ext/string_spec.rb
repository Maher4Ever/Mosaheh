# encoding: UTF-8
require File.expand_path('../../../../spec_helper', __FILE__)

describe String, '#shift!' do
  let(:string) { 'abc' }

  it 'should remove the first charecter' do
    string.shift!
    string.should == 'bc' 
  end
  
  it 'should return the removed charecter' do
    string.shift!.should == 'a'
  end
end
