# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140505080019) do

  create_table "blog_categories", force: :cascade do |t|
    t.integer  "user_id",                                         null: false
    t.integer  "blog_category_id"
    t.string   "title",                 limit: 60,                null: false
    t.integer  "blogs_count",                      default: 0,    null: false
    t.integer  "blog_categories_count",            default: 0,    null: false
    t.boolean  "enable",                           default: true, null: false
    t.boolean  "leaf",                             default: true
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.index ["blog_category_id"], name: "index_blog_categories_on_blog_category_id"
    t.index ["title"], name: "index_blog_categories_on_title", unique: true
    t.index ["user_id"], name: "index_blog_categories_on_user_id"
  end

  create_table "blog_comments", force: :cascade do |t|
    t.integer  "blog_id",                       null: false
    t.integer  "user_id"
    t.string   "title",              limit: 60, null: false
    t.string   "name",               limit: 60
    t.string   "encrypted_password", limit: 40
    t.string   "salt",               limit: 40
    t.text     "content",                       null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["blog_id"], name: "index_blog_comments_on_blog_id"
    t.index ["user_id"], name: "index_blog_comments_on_user_id"
  end

  create_table "blog_contents", force: :cascade do |t|
    t.text "content"
  end

  create_table "blogs", force: :cascade do |t|
    t.integer  "user_id",                                        null: false
    t.integer  "blog_category_id",                               null: false
    t.string   "title",               limit: 60,                 null: false
    t.string   "description",         limit: 255,                null: false
    t.string   "photo"
    t.integer  "blog_comments_count",             default: 0,    null: false
    t.integer  "count",                           default: 0,    null: false
    t.boolean  "enable",                          default: true, null: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["blog_category_id"], name: "index_blogs_on_blog_category_id"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "contact_categories", force: :cascade do |t|
    t.integer  "user_id",                                  null: false
    t.string   "title",          limit: 60,                null: false
    t.integer  "contacts_count",            default: 0,    null: false
    t.boolean  "enable",                    default: true, null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "contact_contents", force: :cascade do |t|
    t.text "content", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "contact_category_id",                           null: false
    t.string   "name",                limit: 60,                null: false
    t.string   "phone",               limit: 40,                null: false
    t.string   "address",                                       null: false
    t.boolean  "enable",                         default: true, null: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.integer  "user_id",                                        null: false
    t.integer  "gallery_category_id",                            null: false
    t.string   "title",               limit: 60,                 null: false
    t.string   "content",             limit: 255,                null: false
    t.string   "location",            limit: 255
    t.string   "photo",                                          null: false
    t.integer  "count",                           default: 0,    null: false
    t.boolean  "enable",                          default: true, null: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["gallery_category_id"], name: "index_galleries_on_gallery_category_id"
    t.index ["user_id"], name: "index_galleries_on_user_id"
  end

  create_table "gallery_categories", force: :cascade do |t|
    t.integer  "user_id",                                   null: false
    t.string   "title",           limit: 60,                null: false
    t.integer  "galleries_count",            default: 0,    null: false
    t.boolean  "enable",                     default: true, null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["title"], name: "index_gallery_categories_on_title", unique: true
    t.index ["user_id"], name: "index_gallery_categories_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "title",       limit: 60,                null: false
    t.integer  "users_count",            default: 0,    null: false
    t.boolean  "enable",                 default: true, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "histories", force: :cascade do |t|
    t.integer  "user_id",                              null: false
    t.string   "year",       limit: 40,                null: false
    t.string   "title",      limit: 60,                null: false
    t.text     "content",                              null: false
    t.integer  "count",                 default: 0,    null: false
    t.boolean  "enable",                default: true, null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["user_id"], name: "index_histories_on_user_id"
  end

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type", limit: 100
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name",     limit: 60
    t.string   "action_name",         limit: 60
    t.string   "view_name",           limit: 60
    t.string   "request_hash",        limit: 130
    t.string   "ip_address",          limit: 60
    t.string   "session_hash",        limit: 100
    t.text     "message"
    t.text     "referrer"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "notice_contents", force: :cascade do |t|
    t.text "content", null: false
  end

  create_table "notices", force: :cascade do |t|
    t.integer  "user_id",                              null: false
    t.string   "title",      limit: 60,                null: false
    t.boolean  "enable",                default: true, null: false
    t.integer  "count",                 default: 0,    null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["user_id"], name: "index_notices_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.string   "tagger_type"
    t.integer  "tagger_id"
    t.string   "context",       limit: 128
    t.datetime "created_at"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
  end

  create_table "user_photos", force: :cascade do |t|
    t.integer  "user_id",                               null: false
    t.string   "photo",                                 null: false
    t.string   "alt",        limit: 60,                 null: false
    t.boolean  "default",               default: false, null: false
    t.boolean  "enable",                default: true,  null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["user_id"], name: "index_user_photos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "group_id",                                          null: false
    t.string   "email",                                             null: false
    t.string   "name",                   limit: 60,                 null: false
    t.string   "encrypted_password",                                null: false
    t.string   "photo",                                             null: false
    t.string   "description"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "user_photos_count",                 default: 0,     null: false
    t.boolean  "admin",                             default: false, null: false
    t.boolean  "enable",                            default: true,  null: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["group_id"], name: "index_users_on_group_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
