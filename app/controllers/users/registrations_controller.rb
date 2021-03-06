class User::SessionsController < Devise::RegistrationsController
  before_action :check_guest, only: %i[update destroy]

  def check_guest
    if resource.email == 'guest@example.com'
      redirect_to new_user_registration_path, alert: 'ゲストユーザーの変更・削除はできません。'
    end
  end
