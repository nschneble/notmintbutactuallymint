# Helper methods for wallets
module WalletsHelper
  def page_title(filter = nil, search = nil)
    if filter.present? && !filter.eql?("sorted")
      I18n.t("app.filter_title") + I18n.t("home.tabs.#{filter}")
    elsif search.present?
      I18n.t("app.search_title") + search
    else
      I18n.t("app.title")
    end
  end

  def filter_nav_classes(item, filter = nil, search = nil)
    if (filter.present? && filter.eql?(item)) ||
       (filter.nil? && search.nil? && item.eql?("sorted"))
      "text-white bg-blue-600 cursor-default active"
    else
      "text-gray-700 active:text-gray-800 hover:bg-gray-100 active:bg-gray-200"
    end
  end
end
