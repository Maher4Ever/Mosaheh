# encoding: UTF-8
require File.expand_path('../../../spec_helper', __FILE__)

describe Mosaheh::Encoder do
  let(:encoder) { Mosaheh::Encoder.new }

  describe '#repair' do
    it 'should repair the whole Arabic unicode codeblock' do
      # Arabic: U+0060 - U+06FF
      good_ar = (0..255).map{|i| eval '"\u06' + ("%02x" %  i) + '"'}.join ' '
      broken_ar = load_misencoded_ar
      encoder.repair(broken_ar).should == good_ar
    end

    it 'should not change ASCII chars' do
      text = [*0..127].map(&:chr).join
      encoder.repair(text).should == text
    end

    it 'should not change correctly encoded Arabic chars' do
      text = 'إختبار'
      encoder.repair(text).should == text
    end
  end
end
