module.exports = (robot) ->
#robot.hear /^.*(@channel)/i, (msg) ->
#		msg.send "だめじゃん？"

#	robot.hear /(.*)(?!@channel:)/i, (msg) ->
#		msg.send "てすとじゃん？"

	robot.hear /(.*)/i, (msg) ->
		if ///^@channel: ///i.test(msg.match[1])
			return
		else
			msg.send "ここは連絡事項を書くためのチャンネルです、連絡事項は文頭に@channel: をつけて発言しましょう。"
