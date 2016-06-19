#!/bin/sh

set -eu

output=$0.md

### Event Information ###
nth=23
date="6/18(土)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="jus共催、第5回初心者向けとは言うものの午前のシェル勉強会/第23回梅雨でモワッとしたシェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/44975"

osaka_url="https://5f01b3bc1d81c1fae2378cdc89.doorkeeper.jp/events/45741"
fukuoka_url1="https://atnd.org/events/77677"
fukuoka_url2="http://papiro.hatenablog.jp/entry/2016/06/19/012906"

starting_slide="https://blog.ueda.asia/?presenpress=第23回梅雨でモワッとしたシェル芸勉強会#/"
question_url1="https://blog.ueda.asia/?p=8465"
question_url2="https://blog.ueda.asia/?p=8381"
togetter_url="http://togetter.com/li/989099"

### Main Text ###
bef_place_url1="https://twitter.com/nmrmsys/status/743966533349564416"
bef_place_url2="https://twitter.com/kunst1080/status/743971235273400320"

text_sankasya="今回は20人で募集しましたが、いろいろあって参加者は13人だった模様です。\n
経験者と初心者の割合はざっくり半々くらいって感じでしょうかね。"

# 午前1
am1_title="FreeBSDのブートプロセス"
am1_txet="FreeBSDのブートプロセスの概要と、loader.confや/etc/rcなどに関するお話でした。"
am1_url="https://github.com/freebsd/freebsd/blob/master/etc/rc"

# 午前2
am2_title="シェル芸入門"
am2_txet="シェル芸について、入門者にわかりやすく解説された発表でした。無茶苦茶よかったと思います！！\n
初心者も経験者も必読って感じです。"
am2_url="https://twitter.com/hisaharu/status/743992510414913536"

# 昼休み
lunch_text="なぜか「エクストリーム謝罪」の話になりましたw\n
0x20歳のオジサマたちに囲まれてジェネレーションギャップを感じましたね。"
lunch_url1="http://ja.uncyclopedia.info/wiki/エクストリーム・謝罪"
lunch_url2=

# 午後
text_pm="今回はオープンデータ処理など、かなり実用的な内容でとてもわかり易かったです。\n
シェル芸を知らない人への紹介にも使えそうだなぁと思います。"
text_pm_url1="https://twitter.com/kunst1080/status/744057356275843072"
text_pm_url2=

# 追記的な
epilogue_url="https://twitter.com/mikkun_jp/status/744112511469813760"


### LT ###
LT_summary="大阪は今回もフリーダム！！"

# LT0_user=""
# LT0_title=""
# LT0_slide_url=""
# LT0_explain=""
# LT0_twitter_url1=""

LT1_user="MSR(@msr386) さん"
LT1_title="買い切りVPS最新情報 CloudAtCost (2)"
LT1_slide_url="https://speakerdeck.com/msr_i386/cloudatcost-2"
LT1_explain="前回のLTで紹介して頂いたCloudAtCostに関する新ネタ3つ！"
LT1_twitter_url1="https://twitter.com/nmrmsys/status/744087514923704320"

LT2_user="田窪 さん"
LT2_title="sedスクリプトのリモートデバッガ"
LT2_slide_url="https://twitter.com/kunst1080/status/744089574775754752"
LT2_explain="sedスクリプトをawkスクリプトからリモートデバッグする話です。やばいｗ"
LT2_twitter_url1="https://twitter.com/t_motooka/status/744089114367004673"
LT2_twitter_url2="https://twitter.com/nmrmsys/status/744089104917266432"
LT2_twitter_url3="https://twitter.com/3socha/status/744089239097204736"
LT2_twitter_url4="https://twitter.com/nmrmsys/status/744089549693845504"
LT2_twitter_url5="https://twitter.com/3socha/status/744089701695397891"

LT3_user="くんすと(@kunst1080)"
LT3_title="コマンドプロンプト芸"
LT3_slide_url="http://www.slideshare.net/kunst1080/20160618-23lt-63197413"
LT3_explain="Windowsでも、コマンドプロンプトを使ってCLI生活ができるよ！という話でした。"
LT3_twitter_url1="https://twitter.com/3socha/status/744092370849792000"
LT3_twitter_url2="https://twitter.com/nmrmsys/status/744091944108752896"

LT4_user="@nmrmsys さん"
LT4_title="ExSQell = Excel + SQL + Shell"
LT4_slide_url="https://github.com/nmrmsys/ExSQell"
LT4_explain="前回も発表して頂いたExcelからSQLを発行するツールに、bashコマンドを呼び出す機能が追加されました！\n
今回はこれを使って参加されていたそうです。"
LT4_twitter_url1="https://twitter.com/nmrmsys/status/744034354494640130"
LT4_twitter_url2="https://twitter.com/nmrmsys/status/744042645698281472"
LT4_twitter_url3="https://twitter.com/nmrmsys/status/744048482013556738"
LT4_twitter_url4="https://twitter.com/nmrmsys/status/744057433425850368"
LT4_twitter_url5="https://twitter.com/nmrmsys/status/744073350096445440"

LT5_user="so(@3socha) さん"
LT5_title="AWS Lambda でシェル芸"
LT5_slide_url="https://horo17.github.io/lambdash-slide/#/"
LT5_explain="AWS LambdaからLambda function使って、CLIからワンライナーのシェルコマンドを実行する実演です。
※危険シェル芸含む\n
「lambdash」というツールを利用されているようです。\n
([https://github.com/alestic/lambdash:title])"
LT5_twitter_url1="https://twitter.com/nmrmsys/status/744101435004989441"
LT5_twitter_url2="https://twitter.com/nmrmsys/status/744103655926685697"

#########################################################################################
eecho() {
	eval echo \$$1
}
writeLT() {
	for iii in 1 2 3 4 5 6 7 8 9 10
	do
		LT=LT${iii}
		if [ -v ${LT}_user ]
		then
			echo "### $(eecho ${LT}_user) 「$(eecho ${LT}_title)」"
			[ "$(eecho ${LT}_slide_url)" != "" ] && echo "[$(eecho ${LT}_slide_url):embed]"
			eecho "${LT}_explain"
			for jjj in 1 2 3 4 5 6 7 8 9 10
			do
				if [ -v ${LT}_twitter_url${jjj} ]
				then
					echo "[$(eecho ${LT}_twitter_url${jjj}):embed]"
				fi
			done
			echo
		fi
	done
}
#########################################################################################
echo ${title} 1>&2

cat<<++EOS | sed 's/\\n/  /g' | tee ${output}
${date}に東京で行われた「[${org_url}:title=${org_title}]」について、今回も大阪でサテライトしました！



# イベント情報
## 東京(本家)
[${org_url}:embed:cite]



* 問題：[${question_url1}:title]
* 模範解答付き：[${question_url2}:title]
* togetter：[${togetter_url}:title]

今回も、大阪（私達）と、福岡でサテライト会場がありました。


## 大阪サテライト
[${osaka_url}:embed:cite]

今回も、「フェンリル株式会社」様に開場を利用させていただけることになりました。\n
場所はグランフロント大阪の14階です。

[${bef_place_url1}:embed]
[${bef_place_url2}:embed]


## 福岡サテライト
[${fukuoka_url1}:embed:cite]
$([ "$fukuoka_url2" != "" ] && echo "[https://twitter.com/papiron:title=ぱぴろん(@papiron)]さんによるまとめ")
$([ "$fukuoka_url2" != "" ] && echo "[${fukuoka_url2}:embed:cite]")


# 大阪サテライトレポート
## 参加者
${text_sankasya}


## 会場のようす
### 午前
- ${am1_title}
[${am1_url}:embed]
${am1_txet}

- ${am2_title}
[${am2_url}:embed]
${am2_txet}


$([ "$lunch_text" != "" ] && echo "### おひる")
$([ "$lunch_text" != "" ] && echo "$lunch_text  ")
$([ "$lunch_url1" != "" ] && echo "[${lunch_url1}:title]\\n")
$([ "$lunch_url2" != "" ] && echo "[${lunch_url2}:title]\\n")


### 午後
${text_pm}
$([ "$text_pm_url1" != "" ] && echo "[${text_pm_url1}:embed]")
$([ "$text_pm_url2" != "" ] && echo "[${text_pm_url2}:embed]")

※詳細はtogetterの方を参照ということで……


## LTのようす
${LT_summary}

$(writeLT)


# まとめ
上田会長、東京・福岡・大阪の皆様、お疲れ様でした。\n
フェンリル様、会場使わせて下さってありがとうございました！\n

次回もまたよろしくお願いします！！

$([ "$epilogue_url" != "" ] && echo "[${epilogue_url}:embed]")

++EOS
