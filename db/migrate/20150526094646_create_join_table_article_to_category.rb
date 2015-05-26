class CreateJoinTableArticleToCategory < ActiveRecord::Migration
  def change
    create_join_table :artikels, :themas do |t|
      # t.index [:artikel_id, :thema_id]
      # t.index [:thema_id, :artikel_id]
    end
  end
end
