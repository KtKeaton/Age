class UserDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  # def date
  #   model.date
  # end

  def birthday(date)
    "民國#{date.year - 1911}年#{date.month}月#{date.day}日"
  end

  def birthday_sino(date)
    "民國#{date.year - 1911}年#{date.month}月#{date.day}日"
  end

  def anotherday(date)
    "朝鮮主體#{date.year - 1911}年#{date.month}月#{date.day}日"
  end

end
