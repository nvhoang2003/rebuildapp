class ReaderSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :age, :address, :convert_gender
  # , :readergifts
  # def convert_gender
  #   if :gender == "1"
  #     return "male"
  #   elsif :gender == "0"
  #     return "female"
  #   end
  # end
  # has_many :readergifts
end
