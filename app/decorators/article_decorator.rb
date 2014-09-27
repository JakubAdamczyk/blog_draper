class ArticleDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def publication_status
    if published? 
     "Published at #{published_at}" 
    else 
     "Unpublished" 
    end
   end 

   def published_at 
    object.updated_at.strftime("%A, %B %e") 
  end

end
