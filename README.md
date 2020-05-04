# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## pokemoncardテーブル
|Column|Type|Options|
|------|----|-------|
|card_name|string|null: false|
|image|string|---|
|detail|text|---|
|box_category_id|references|---|
|genre_category_id|references|---|
|sales_area_id|references|---|
|card_rarity_id|references|---|

## Association
belogns_to  :box_category
belogns_to  :genre_category
belogns_to  :card_rarity
belogns_to  :sales_area

## box_categoryテーブル
|Column|Type|Options|
|------|----|-------|
|release_date|date|null: false|
|box_name|string|null: false|

## Association
has_many  :pokemoncard

## genre_categoryテーブル
|Column|Type|Options|
|------|----|-------|
|genre|string|null: false|

## Association
has_many  :pokemoncard

## card_rarityテーブル
|Column|Type|Options|
|------|----|-------|
|rarity|string|null: false|

## Association
has_many  :pokemoncard

## sales_areaテーブル
|Column|Type|Options|
|------|----|-------|
|area|string|null: false|

## Association
has_many  :pokemoncard