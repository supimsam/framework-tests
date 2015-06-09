require 'article'

describe Article do 
	let(:article) {Article.new}
	let(:filled_article) {Article.new(title: "book", body: "blah", author: "mr.blah")}

	context "empty title" do
			it '#title' do
				expect(article.title?).to eq(false)
		end
	end

	context "filled title" do
		it "#title" do 
			expect(filled_article.title?).to eq(true)
		end

	end

	context "empty body" do 
		it '#body' do
		expect(article.body?).to eq(false)
	end
end

	context "filled body" do
		it '#body' do
			expect(filled_article.body?).to eq(true)
		end
	end

	context "string is filled" do
		it '#string_empty' do 
			expect(article.string_empty).to eq(false)
		end
	end


	context "string is not empty" do
		it '#string_empty' do
			expect(article.string_empty).to eq(true)
		end
	end

end


































# 		it 'correct title' do
# 			expect(article.title).to eq(string.nil)
# 	end

# 	context "body" do
		
# 		it 'correct body' do
# 			expect(article.body).to eq(nil)
# 		end
# 	end

# 		context "author" do
		
# 		it 'correct author' do
# 			expect(article.author).to eq(nil)
# 		end
# 	end
# end

		