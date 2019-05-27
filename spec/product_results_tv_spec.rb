describe "SerpApi Product JSON" do

  describe "Product results for Sceptre X505BV-FSR - 50 LED TV - 1080p" do

    before :all do
      @response = HTTP.get 'https://serpapi.com/search.json?engine=google_product&product_id=16618293882053925702&source=test'
      @json = @response.parse
    end

    it "returns http success" do
      expect(@response.code).to be(200)
    end

    it "contains Product results hash" do
      expect(@json["product_results"]).to be_a(Hash)
    end

    describe "have correct Product results" do

      before :all do
        @result = @json["product_results"]
        p @result
      end

      it "product_id is 16618293882053925702" do
         expect(@result["product_id"]).to eql(16618293882053925702)
      end
  
      it "title is Sceptre X505BV-FSR - 50 LED TV - 1080p" do
        expect(@result["title"]).to eql("Sceptre X505BV-FSR - 50\" LED TV - 1080p")
      end

      it "has a title" do
        expect(@result["title"]).to_not be_empty
      end

      it "has a price" do
        expect(@result["prices"]).to_not be_empty
      end

      it "has reviews" do
        expect(@result["reviews"]).to be_an(Integer)
      end

      it "has a rating" do
        expect(@result["rating"]).to be_an(Integer)
      end
      
      it "has extensions" do
        expect(@result["extensions"]).to_not be_empty
      end

      it "has a description" do
        expect(@result["description"]).to_not be_empty
      end
      
      it "has media" do
        expect(@result["media"]).to be_a(Hash)
      end

    end

  end

end