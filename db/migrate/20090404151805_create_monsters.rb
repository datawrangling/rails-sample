class CreateMonsters < ActiveRecord::Migration
  def self.up
    create_table :monsters do |t|
      t.string :name
      t.timestamps
    end
    
    Monster.create(:name => "loch ness monster")
    Monster.create(:name => "purple tentacle")
    Monster.create(:name => "pinhead")
    Monster.create(:name => "cookie monster")
  end

  def self.down
    drop_table :monsters
  end
end
