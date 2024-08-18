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
      "text-gray-700 active:text-gray-800 hover:bg-gray-50 active:bg-gray-100"
    end
  end

  def nav_item_classes(item, current_page)
    if item.eql?(current_page)
      "text-gray-700 underline cursor-default active"
    else
      "text-blue-600 hover:text-blue-700 active:text-blue-800 transition-colors duration-200 hover:underline active:underline"
    end
  end

  def nav_item_label(item, current_page)
    if item.eql?(current_page)
      I18n.t("nav.#{item}")
    else
      link_to I18n.t("nav.#{item}"), :"#{item}"
    end
  end
end
