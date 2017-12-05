class UserConfirmEmailJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
  end
end

# queue_as 方法是指這件工作急不急，預設值是 :default，如果這件工作不急，可把 :default 改成 :low_priority，如果是急件則可設定成 :urgent。
