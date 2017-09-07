class CreateLinksReports < ActiveRecord::Migration[4.2]
  def change
    create_table :links_reports do |t|
      t.text       :links
      t.text       :broken_links
      t.string     :status
      t.string     :link_reportable_type
      t.integer    :link_reportable_id
      t.timestamp  :completed_at
      t.timestamps
    end

    add_index :links_reports, [:link_reportable_id, :link_reportable_type], name: 'link_reportable_index'
  end
end
