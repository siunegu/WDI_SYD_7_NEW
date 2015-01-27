require 'rails_helper'

RSpec.describe Apartment, :type => :model do
	describe ".book" do
		it "makes the apartment unavailable" do
			apartment = Apartment.new
			apartment.available = true
			tenant = Tenant.new

			apartment.book(tenant)
			expect(apartment.available).to eq(false)			
		end
	end
end
