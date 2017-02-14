#!/bin/sh

set -eu

output=$0.md

### Event Information ###
nth=26
date="12/25(日)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="jus共催 第8回初心者の方角に向いて講師が喋るシェル勉強会（初心者向けとは言ってない）/第26回シェル芸勉強会及びエクシェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/54573"

osaka_url="https://atnd.org/events/83966"
fukuoka_url1="https://atnd.org/events/83997"
fukuoka_url2="http://papiro.hatenablog.jp/entry/2016/12/26/011307"

starting_slide="https://blog.ueda.asia/?presenpress=%E7%AC%AC26%E5%9B%9E%E3%82%B7%E3%82%A7%E3%83%AB%E8%8A%B8%E5%8B%89%E5%BC%B7%E4%BC%9A%E5%8F%8A%E3%81%B3%E3%82%A8%E3%82%AF%E3%82%B7%E3%82%A7%E3%83%AB%E8%8A%B8%E5%8B%89%E5%BC%B7%E4%BC%9A#/"
question_url1="https://blog.ueda.asia/?p=9226"
question_url2="https://blog.ueda.asia/?p=8833"
togetter_url="https://togetter.com/li/1063223"

### Main Text ###
bef_place_url1=""

text_sankasya="すみません、年末年始忙しすぎ＆インフルエンザで更新がめっちゃ遅れました……"


# 午前1
am1_title=
am1_txet="今回、午前の部は私用で欠席していたので、午前の内容については他の方のレポを見てくださいです。"
am1_url=
am1_url2=

# 午前2
am2_title=
am2_txet=
am2_url=
am2_url2=

# 昼休み
lunch_text="昼休みから参加しました。大阪サテライトでは、@t_motookaさんによって、「CVE番号クイズ」「バイナリを詠む会」「エクシェル芸の予習」などがゲリラ実行されました！\\n
特に予習は、午後の部の問題を特に当たって非常に役立ちました。ありがとうございます！"

lunch_url1="https://twitter.com/kunst1080/status/812859526936301568"
lunch_url2="https://twitter.com/nmrmsys/status/812861445708709888"
lunch_url3="https://twitter.com/kunst1080/status/812862135659134976"
lunch_url4="https://twitter.com/t_motooka/status/812867240877924352"
lunch_url5="https://twitter.com/kunst1080/status/812870294364749824"
lunch_url6="https://twitter.com/t_motooka/status/812871680796200960"



# 午後
text_pm="エクシェル芸（泡を吹いて死亡"
text_pm_url1="https://twitter.com/t_motooka/status/812872021637885953"
text_pm_url2="https://twitter.com/ryuichiueda/status/812918105705877504"

# 追記的な
epilogue_url=


### LT ###
LT_summary="いつもな感じのやばい大阪勢のLTです。今回はUstreamで配信もして頂けました！(録画はナシです)\\n
[https://twitter.com/kunst1080/status/812919757800292353:embed]"

# LT0_user=""
# LT0_title=""
# LT0_slide_url=""
# LT0_explain=""
# LT0_twitter_url1=""

LT1_user="nmrmsys(@nmrmsys) さん"
LT1_title="Excelでもコマンド実行がしたい！"
LT1_slide_url="http://qiita.com/nmrmsys/items/0c814efcf4461e45f758"
LT1_explain="いつもの「ExSQell」のお話ですね。今回は新機能として「セル範囲リダイレクト」が追加されたようです。リポジトリはこちら → [https://github.com/mikkun/gnucash-util-jp:title]"
LT1_twitter_url1="https://twitter.com/t_motooka/status/812933386322919424"

LT2_user="くんすと(@kunst1080)"
LT2_title="Hyper™でエキサイティングなシェル芸ライフ"
LT2_slide_url="http://www.slideshare.net/kunst1080/hyper-70428553"
LT2_explain="Hyperというターミナルエミュレータを使って楽しくシェル芸しましょう、という話です。Hyperの公式サイトはこちら → [https://hyper.is/:title]"
LT2_twitter_url1="https://twitter.com/3socha/status/812934789426593792"
LT2_twitter_url2="https://twitter.com/nmrmsys/status/812935122752184321"

LT3_user="so(@3socha) さん"
LT3_title="FUSE で繋がる世界"
LT3_slide_url="https://horo17.github.io/calfs-slide/"
LT3_explain="FUSEを使ってGoogleカレンダーのファイルシステムを実装したという話です。予定を探すときにfindとかgrepとかが使えて便利そう！"
LT3_twitter_url1="https://twitter.com/nmrmsys/status/812936781955932160"
LT3_twitter_url2="https://twitter.com/nmrmsys/status/812938765501014016"
LT3_twitter_url3="https://twitter.com/kunst1080/status/812939056237527040"
LT3_twitter_url4="https://twitter.com/t_motooka/status/812939217051394049"
LT3_twitter_url5="https://twitter.com/nmrmsys/status/812939316997390336"

LT4_user="MSR(@msr386) さん"
LT4_title="漢字バナー芸"
LT4_slide_url="https://speakerdeck.com/msr_i386/kanji-banner"
LT4_explain="toliet(1)で、漢字を表示するために漢字フォントを作るという話です。実際の手順の説明と、デモを見せて頂きました。"
LT4_twitter_url1="https://twitter.com/kunst1080/status/812942898471661568"
LT4_twitter_url2="https://twitter.com/3socha/status/812942930059005952"
LT4_twitter_url3="https://twitter.com/mikkun_jp/status/812944071614283776"

LT5_user="社畜(9か月)(@null_ref_eng) さん ※延長線"
LT5_title="画面を\(^o^)/で埋め尽くす謎のワンライナー"
LT5_slide_url="https://twitter.com/null_ref_eng/status/812983458469249024"
LT5_explain="滅茶苦茶面白いことをされていたので、半ば強引に発表していただきましたｗ　無理言ってすみませんでした…"
LT5_twitter_url1="https://twitter.com/t_motooka/status/812945261576089600"
LT5_twitter_url2="https://twitter.com/kunst1080/status/812945742574723072"
LT5_twitter_url3="https://twitter.com/nmrmsys/status/812946099363119104"
LT5_twitter_url3="https://twitter.com/kunst1080/status/812947076166209541"

# まとめ
LT_maeome="今回も面白いLTをたくさん発表していただいてありがとうございました！！　次回もモリモリ発表してくださいねっ！"

matome="上田会長、東京・福岡・大阪の皆様、お疲れ様でした。\\n
フェンリル様、会場使わせて下さってありがとうございました！\\n

次回もまたよろしくお願いします！！"

#########################################################################################
eecho() {
	eval echo -e \$$1
}
writeLT() {
	for iii in 1 2 3 4 5 6 7 8 9 10
	do
		LT=LT${iii}
		if [ -v ${LT}_user ]
		then
			echo "### $(eecho ${LT}_user) 「$(eecho ${LT}_title)」"
			[ "$(eecho ${LT}_slide_url)" != "" ] && echo "[$(eecho ${LT}_slide_url):embed]\n"
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

$([ "$bef_place_url1" != "" ] && echo "[${bef_place_url1}:embed]")

## 福岡サテライト
[${fukuoka_url1}:embed:cite]
$([ "$fukuoka_url2" != "" ] && echo "[https://twitter.com/papiron:title=ぱぴろん(@papiron)]さんによるまとめ")
$([ "$fukuoka_url2" != "" ] && echo "[${fukuoka_url2}:embed:cite]")


# 大阪サテライトレポート
## 参加者
${text_sankasya}


## 会場のようす
### 午前
$([ "$am1_url" != "" ] && echo "#### ${am1_title}")
$([ "$am1_url" != "" ] && echo "[${am1_url}:embed]\\n")
$([ "$am1_txet" != "" ] && echo "${am1_txet}\\n")
$([ "$am1_url2" != "" ] && echo "${am1_url2}\\n")

$([ "$am2_url" != "" ] && echo "#### ${am2_title}")
$([ "$am2_url" != "" ] && echo "[${am2_url}:embed]\\n")
$([ "$am2_txet" != "" ] && echo "${am2_txet}\\n")
$([ "$am2_url2" != "" ] && echo "${am2_url2}\\n")


$([ "$lunch_text" != "" ] && echo "### おひる")
$([ "$lunch_text" != "" ] && echo "$lunch_text  ")
$([ "$lunch_url1" != "" ] && echo "[${lunch_url1}:embed]\\n")
$([ "$lunch_url2" != "" ] && echo "[${lunch_url2}:embed]\\n")
$([ "$lunch_url3" != "" ] && echo "[${lunch_url3}:embed]\\n")
$([ "$lunch_url4" != "" ] && echo "[${lunch_url4}:embed]\\n")
$([ "$lunch_url5" != "" ] && echo "[${lunch_url5}:embed]\\n")
$([ "$lunch_url6" != "" ] && echo "[${lunch_url6}:embed]\\n")


### 午後
${text_pm}
$([ "$text_pm_url1" != "" ] && echo "[${text_pm_url1}:embed]")
$([ "$text_pm_url2" != "" ] && echo "[${text_pm_url2}:embed]")

※詳細はtogetterの方を参照です。


## LTのようす
${LT_summary}

$(writeLT)

$LT_maeome

# まとめ
$matome

$([ "$epilogue_url" != "" ] && echo "### 追記")
$([ "$epilogue_url" != "" ] && echo "[${epilogue_url}:embed]")

++EOS
