#!/bin/bash
# this is a script to become a cron job
# it will catalogue search results on the public internet based on the advanced google queries 
# such as site:www.forum.com intitle:jacobgiberson
# this will allow me to see where my name is brought up and alows me to get notified immediately when an indexed site mentions my keywords
# 

search() {
    search=""
    for term in $@; do
        search="$search%20$term"
    done
	open "http://www.google.com/search?q=$search"
}

search site:www.stackoverflow.com intitle:seo
