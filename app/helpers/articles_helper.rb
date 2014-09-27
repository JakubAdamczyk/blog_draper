module ArticlesHelper

  def publication_status(article) 
 if article.published? 
 "Published at #{article.updated_at.strftime('%A, %B %e')}" 
 else 
 "Unpublished" 
 end 
end

end
