require 'spec_helper'

describe 'VCR' do 

	let(:vcr) {Vcr.new("hello")}
	
	it 'should meta-program' do
		vcr.length
		vcr.strip
		expect(vcr.playback!).to eq([5,"hello"])
	end
 
end