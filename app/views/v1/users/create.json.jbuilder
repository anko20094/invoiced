# frozen_string_literal: true

json.data do
  json.user do
    json.id @user.id
    json.email @user.email
  end
end
