# -*- coding: utf-8 -*-
module Admin::SharedHelper
  def required_input text
    raw('<span class="required">' + t('form.input.required') + '</span>') + text
  end
end
