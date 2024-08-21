# Helper methods for wallets
module WalletsHelper
  def page_title(search, select)
    if search.blank? && select.present?
      I18n.t("titles.select") + select
    elsif search.present? && select.blank?
      I18n.t("titles.search") + search
    elsif search.present? && select.present?
      I18n.t("titles.selsea").sub("{{select}}", select) + search
    else
      I18n.t("titles.default")
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
