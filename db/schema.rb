# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130328020657) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "anunciantes", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "endereco_id"
    t.string   "nome",         :limit => 80, :null => false
    t.string   "razao_social"
    t.string   "cnpj"
    t.string   "telefone"
    t.string   "url_website"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "anunciantes", ["endereco_id"], :name => "index_anunciantes_on_endereco_id"
  add_index "anunciantes", ["usuario_id"], :name => "index_anunciantes_on_usuario_id"

  create_table "cidades", :force => true do |t|
    t.integer  "estado_id"
    t.string   "nome",         :limit => 80, :null => false
    t.string   "sigla"
    t.string   "area"
    t.string   "populacao"
    t.string   "densidade"
    t.string   "altitude"
    t.string   "clima"
    t.string   "fuso_horario"
    t.string   "url_website"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "cidades", ["estado_id"], :name => "index_cidades_on_estado_id"

  create_table "enderecos", :force => true do |t|
    t.integer  "cidade_id"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.float    "latitude"
    t.string   "longitude"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "estados", :force => true do |t|
    t.integer  "pais_id"
    t.string   "nome",                    :null => false
    t.string   "sigla",      :limit => 2
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "estados", ["pais_id"], :name => "index_estados_on_pais_id"

  create_table "pais", :force => true do |t|
    t.string   "nome",                :limit => 80, :null => false
    t.string   "sigla",               :limit => 4
    t.string   "url_imagem_bandeira"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

  create_table "visitante_credenciados", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "nome",       :limit => 75, :null => false
    t.string   "sobrenome",  :limit => 80
    t.string   "sexo"
    t.date     "nascimento"
    t.string   "telefone"
    t.string   "cpf"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "visitante_credenciados", ["usuario_id"], :name => "index_visitante_credenciados_on_usuario_id"

end
