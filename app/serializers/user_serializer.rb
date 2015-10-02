class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  def name
    names = object.name.split(" ")
    "#{names[0].first}. #{names.last}"
  end
end
