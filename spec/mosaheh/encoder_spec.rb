# encoding: UTF-8
require File.expand_path('../../spec_helper', __FILE__)

describe Mosaheh::Encoder do
  let(:encoder) { Mosaheh::Encoder.new }

  describe '#repair' do
    it 'should repair the whole Arabic unicode codeblock' do
      encoder.repair(Mosaheh::Encoder::BROKEN_AR).unpack('C*').should eq Mosaheh::Encoder::AR.unpack('C*')
    end

    it 'should not change ASCII chars' do
      text = [*0..127].map(&:chr).join
      encoder.repair(text).should == text
    end
  end
end