# frozen_string_literal: true

json.array! @items, partial: 'tackle_box_items/item', as: :item
