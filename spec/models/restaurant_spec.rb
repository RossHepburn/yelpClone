require 'spec_helper'

describe Restaurant do
  describe '#average_score' do
  	let(:restaurant) {Restaurant.create(name: 'McDonalds')}

  	context 'no reviews' do
  		it 'returns "No reviews"' do
  			expect(restaurant.average_score).to eq 'No reviews'
  		end
  	end
  	
  	context 'multiple reviews' do
  		it 'returns the score of that review' do
  			restaurant.reviews.create(rating: 4)
  			restaurant.reviews.create(rating: 2)

  			expect(restaurant.average_score).to eq 3
  		end
  	end
  end
end
