atom_feed do |feed|
	feed.title("Fitness")
	feed.updated(@posts.first.created_at)
	
	@posts.each do |posts|
		feed.entry(post) do |entry|
			entry.title(post.title)
			entry.content(post.body, :type => 'html')
		end
	end
end