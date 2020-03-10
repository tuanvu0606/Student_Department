json.extract! blog, :id, :name, :descrition, :content, :final_date, :comment, :final_comment_date, :created_at, :updated_at
json.url blog_url(blog, format: :json)
