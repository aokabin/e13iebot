module.exports = (robot) ->
#robot.hear /^.*(@channel)/i, (msg) ->
#		msg.send "だめじゃん？"

#	robot.hear /(.*)(?!@channel:)/i, (msg) ->
#		msg.send "てすとじゃん？"

	robot.hear /(.*)/i, (msg) ->
		if ///^@channel: ///i.test(msg.match[1])
			return
		else
			msg.send "＜君ぃ･･･連絡事項は文頭に@channel: をつけないとダメじゃないか。それ以外の話は #random でやりたまえ。"
