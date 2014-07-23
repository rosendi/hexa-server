module Grid
  extend ActiveSupport::Concern

  included do
    field :w, type: Integer
    field :h, type: Integer

    embeds_many :plots, as: :grid, class_name: "Cell"
    embeds_many :units, as: :grid, class_name: "Cell"

    validates :w, numericality: { only_integer: true }
    validates :h, numericality: { only_integer: true }
  end
end