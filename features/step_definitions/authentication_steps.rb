#!/bin/env ruby
# encoding: utf-8

Given /ˆa user visits the signin page$/ do
	visit signin path
end

When /^he submits invalid signin information$/ do
	click_button "Sign in"
end

Then /^he should see an error message$/ do
	page.should have_selector('div.alert.alert-error')
end