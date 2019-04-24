class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :heading_img, :short_description
  has_many :comments

  attribute :created_at do |object|
    object.created_at.strftime("%H:%M %Y/%m/%d")
  end

  # def serializable_json
  #   data = super
  #
  #   if data[:data].is_a? Hash
  #     data[:data][:attributes]
  #   elsif data[:data].is_a? Array
  #     data[:data].map{ |x| x[:attributes] }
  #   elsif data[:data] == nil
  #     nil
  #   else
  #     data
  #   end
  # end
end
