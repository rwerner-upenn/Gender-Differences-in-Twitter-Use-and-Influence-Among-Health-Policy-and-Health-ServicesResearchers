use twitter2018_Werner_JAMAIM_publicuse.dta

*****FOR TABLE

*CONFERENCE PARTICIPANTS
	tab female
	tab twitter
	tab female twitter, row chi2
	 
	tab female twitter if  (asstprof==1 | assocprof==1 | prof==1), row chi2
	tab female twitter if  (asstprof==1), row chi2
	tab female twitter if  (assocprof==1), row chi2
	tab female twitter if  (prof==1), row chi2

keep if twitter==1

**ENGAGEMENT ON TWITTER
	*years on twitter
	table female, c(mean yrs_on_twitter sd yrs_on_twitter)
		ranksum yrs_on_twitter, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean yrs_on_twitter sd yrs_on_twitter)
				ranksum yrs_on_twitter if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean yrs_on_twitter sd yrs_on_twitter)
				ranksum yrs_on_twitter if assocprof==1, by(female)
			*among  Professors
			table female if prof==1, c(mean yrs_on_twitter sd yrs_on_twitter)
				ranksum yrs_on_twitter if prof==1, by(female)

	*# original tweets
	table female, c(mean origtweets_year sd origtweets_year)
		ranksum origtweets_year, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean origtweets_year sd origtweets_year)
				ranksum origtweets_year if asstprof==1, by(female)
			*among Associate Professors
			 table female if assocprof==1, c(mean origtweets_year sd origtweets_year)
				ranksum origtweets_year if assocprof==1, by(female)
			*among  Professors
			 table female if prof==1, c(mean origtweets_year sd origtweets_year)
				ranksum origtweets_year if prof==1, by(female)

	*# following
	table female, c(mean friends_count sd friends_count)
			ranksum friends_count, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean friends_count sd friends_count)
				ranksum friends_count if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean friends_count sd friends_count)
				ranksum friends_count if assocprof==1, by(female)
			*among Assistant Professors
			table female if prof==1, c(mean friends_count sd friends_count)
				ranksum friends_count if prof==1, by(female)

	*(not in table)
	table female, c(mean friends_year sd friends_year)
		ranksum friends_year, by(female)	
			*among Assistant Professors	 	
			table female if asstprof==1, c(mean friends_year sd friends_year)
				ranksum friends_year if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean friends_year sd friends_year)
				ranksum friends_year if assocprof==1, by(female)
			*among  Professors
			table female if prof==1, c(mean friends_year sd friends_year)
				ranksum friends_year if prof==1, by(female)
		
	*%  following who are female
	table female, c(mean female_pct_friend sd female_pct_friend)
		ranksum female_pct_friend, by(female)
		

**INFLUENCE ON TWITTER
	*# of followers
	table female, c(mean followers_count sd followers_count) 
		ranksum followers_count, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean followers_count sd followers_count)
				ranksum followers_count if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean followers_count sd followers_count)
				ranksum followers_count if assocprof==1, by(female)
			*among Professors
			table female if prof==1, c(mean followers_count sd followers_count)
				ranksum followers_count if prof==1, by(female)

	*(not in table)
	table female, c(mean followers_year sd followers_year)
		ranksum followers_year, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean followers_year sd followers_year)
				ranksum followers_year if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean followers_year sd followers_year)
				ranksum followers_year if assocprof==1, by(female)
			*among  Professors
			table female if prof==1, c(mean followers_year sd followers_year)
				ranksum followers_year if prof==1, by(female)

	*% followers who are female
	table female, c(mean female_pct_follower sd female_pct_follower)
		ranksum female_pct_follower, by(female)

	*f:f ratio
	table female, c(mean ff_ratio sd ff_ratio)
		ranksum ff_ratio, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean ff_ratio sd ff_ratio)
				ranksum ff_ratio if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean ff_ratio sd ff_ratio)
				ranksum ff_ratio if assocprof==1, by(female)
			*among Assistant Professors
			table female if prof==1, c(mean ff_ratio sd ff_ratio)
				ranksum ff_ratio if prof==1, by(female)

	*# of likes of original tweets per year
	table female, c(mean orig_likes_year sd orig_likes_year)
		ranksum orig_likes_year, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean orig_likes_year sd orig_likes_year)
				ranksum orig_likes_year if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean orig_likes_year sd orig_likes_year)
				ranksum orig_likes_year if assocprof==1, by(female)
			*among Professors
			table female if prof==1, c(mean orig_likes_year sd orig_likes_year)
				ranksum orig_likes_year if prof==1, by(female)

	*# of retweets of original tweets per year
	table female, c(mean orig_rt_year sd orig_rt_year)
		ranksum orig_rt_year, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean orig_rt_year sd orig_rt_year)
				ranksum orig_rt_year if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean orig_rt_year sd orig_rt_year)
				ranksum orig_rt_year if assocprof==1, by(female)
			*among Assistant Professors
			table female if prof==1, c(mean orig_rt_year sd orig_rt_year)
				ranksum orig_rt_year if prof==1, by(female)

	*average # of likes per original tweets
	table female, c(mean avg_orig_message_likes sd avg_orig_message_likes)
		ranksum avg_orig_message_likes, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean avg_orig_message_likes sd avg_orig_message_likes)
				ranksum avg_orig_message_likes if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean avg_orig_message_likes sd avg_orig_message_likes)
				ranksum avg_orig_message_likes if assocprof==1, by(female)
			*among Assistant Professors
			table female if prof==1, c(mean avg_orig_message_likes sd avg_orig_message_likes)
				ranksum avg_orig_message_likes if prof==1, by(female)

	*average # of retweets per original tweets
	table female, c(mean avg_orig_message_retweets sd avg_orig_message_retweets)
		ranksum avg_orig_message_retweets, by(female)
			*among Assistant Professors
			table female if asstprof==1, c(mean avg_orig_message_retweets sd avg_orig_message_retweets)
				ranksum avg_orig_message_retweets if asstprof==1, by(female)
			*among Associate Professors
			table female if assocprof==1, c(mean avg_orig_message_retweets sd avg_orig_message_retweets)
				ranksum avg_orig_message_retweets if assocprof==1, by(female)
			*among Professors
			table female if prof==1, c(mean avg_orig_message_retweets sd avg_orig_message_retweets)
				ranksum avg_orig_message_retweets if prof==1, by(female)



	
