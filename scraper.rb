#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

fr_names = WikiData::Category.new( 'Catégorie:Personnalité politique togolaise', 'fr').member_titles
en_names = WikiData::Category.new( 'Category:Members of the National Assembly (Togo)', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en_names, fr: fr_names }, output: false)

