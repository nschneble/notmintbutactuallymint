# Helper methods for accounts
module AccountsHelper
  def all_accounts
    Account.sorted.to_a.unshift(Account.all_accounts_placeholder)
  end

  def selected_account_name(selected_account)
    return I18n.t("home.select.all") if selected_account.blank? || selected_account.eql?("all")

    Account.find_by(slug: selected_account).name
  end

  def selected_account?(account, selected_account)
    return account.slug.eql?("all") if selected_account.blank?

    account.slug.eql?(selected_account)
  end

  def account_option_button_classes(account, selected_account)
    if selected_account?(account, selected_account)
      "cursor-default w-full px-5 py-2 text-left hover:text-white active:text-white hover:bg-blue-600 active:bg-blue-700 active"
    else
      "cursor-default w-full px-5 py-2 text-left hover:text-white active:text-white hover:bg-blue-600 active:bg-blue-700"
    end
  end

  def account_option_name_classes(account, selected_account)
    if selected_account?(account, selected_account)
      "font-medium"
    else
      ""
    end
  end

  def account_option_icon_classes(account, selected_account)
    if selected_account?(account, selected_account)
      "font-medium float-right pl-5 opacity-100"
    else
      "font-medium float-right pl-5 opacity-0"
    end
  end
end
