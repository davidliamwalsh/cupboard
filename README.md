model

cupboard
has_many :assets


assets
belongs_to cupboard

=====================

view

admin

static
  index modal with button link

======================

controller

admin
  cupboard
    index
    new
    create
    edit
    update
    destroy
    cupboard_params = params.require(:cupboard).permit(:title)

  asset
    index
    new
    create
    edit
    update
    destroy

panel
  index

static
  index
=======================

routes

static

:admin do
  resources cupboard
  resources assets

=======================

db
string title, null: false
has_many :assets
datetime created, null: false


assets
  string title, null: false
  string sku, null: false
  belongs_to :cupboard, foreign_key: true
  datetime created, null: false


========================

spec

==========================




