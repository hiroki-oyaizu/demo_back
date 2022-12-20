class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string  :instrument_name, null: false,                   comment: "楽器名"
      t.string  :image,           null: false,                   comment: "画像"
      t.text    :explanation,     null: false,                   comment: "説明"
      t.integer :price,           null: false,                   comment: "値段"
      t.boolean :vintage,         null: false,  default: false,  comment: "ビンテージ"
      t.timestamps
    end
  end
end
