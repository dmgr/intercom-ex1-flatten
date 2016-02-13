require 'intercom/ex1'

RSpec.describe Intercom::Ex1, '.flatten' do
  context "given a flat array of integers" do
    it { expect(Intercom::Ex1.flatten( [1,2,3] )).to eq( [1,2,3] ) }
  end

  context "given an array of arbitrarily nested arrays of integers" do
    it { expect(Intercom::Ex1.flatten( [[1,2,[3]],4] )).to eq( [1,2,3,4] ) }
  end

  context "given an empty array" do
    it { expect(Intercom::Ex1.flatten([])).to eq([]) }
  end

  context "given nil" do
    it "raises ArgumentError" do
      expect { Intercom::Ex1.flatten(nil) }.to raise_error ArgumentError
    end
  end

  context "given an integer" do
    it "raises ArgumentError" do
      expect { Intercom::Ex1.flatten 3 }.to raise_error ArgumentError
    end
  end

  context "given a string" do
    it "raises ArgumentError" do
      expect { Intercom::Ex1.flatten 'text' }.to raise_error ArgumentError
    end
  end

  context "given an array that includes non-integers" do
    it "raises ArgumentError" do
      expect { Intercom::Ex1.flatten [[1,2,[3,:noninteger]],4] }.to raise_error ArgumentError
    end
end
end
