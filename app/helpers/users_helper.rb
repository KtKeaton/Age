module UsersHelper
  def birthday(date)
    # "民國"+(date.year - 1911)+"年" + (date.month)+"月"+ (date.day)+"日"
    "民國#{date.year - 1911}年#{date.month}月#{date.day}日"
  end
end
