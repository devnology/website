require 'spec_helper'

describe FetchPodcasts do

  VCR.use_cassette('podcasts') do

    describe 'podcasts' do
      it 'should fetch podcasts' do
        subject.podcasts.size.should > 0
      end
    end

    describe 'podcast' do
      
    end

  end

end
