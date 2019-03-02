json.extract! article, :id, :name, :descrition, :content, :final_date, :comment, :final_comment_date, :created_at, :updated_at
json.url article_url(article, format: :json)
