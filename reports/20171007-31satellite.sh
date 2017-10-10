#!/bin/bash

set -eu

output=$0.md

### Event Information ###
nth=31
date="10/07(土)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="jus共催 第31回朝からだと疲れるから午後からでええじゃろシェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/65176"

osaka_url="https://atnd.org/events/91496"
fukuoka_url1="https://atnd.org/events/91308"
fukuoka_url2=""

starting_slide="https://www.slideshare.net/ryuichiueda/31-80547362/1"
question_url1="https://b.ueda.tech/?post=shellgei_31_q"
question_url2="https://b.ueda.tech/?post=shellgei_31"
togetter_url="https://togetter.com/li/1158869"

tokyo_LT="https://www.youtube.com/watch?time_continue=100&v=CagbHIMM55M"

### Main Text ###
bef_place_url1=

text_sankasya="今回もさくらインターネット様から会場をお借りしできました。
募集期間が短かったり他のイベントと被ったりで、今回の参加者は8名。初めましての方は1名でした。若者が増えるで、結構うれしかったりしますｗ\\n
今回は前回の教訓を活かして机を囲んで、相談……とまではいけませんでしたが、難しい問題で少しアイデアを出し合う感じのはできたかなあという感じです。"


# 午前1
am1_title=
am1_txet=
am1_url=
am1_url2=
am1_url3=
am1_url4=
am1_url5=

# 午前2
am2_title=
am2_txet=
am2_url=
am2_url2=
am2_url3=
am2_url4=
am2_url5=


# 昼休み
lunch_text=

lunch_url1=
lunch_url2=
lunch_url3=
lunch_url4=
lunch_url5=
lunch_url6=

# 午後
pm_text1="今回はパズル回ということで、ゴリゴリ系の問題が多かった感じです。"
pm_url1="https://www.youtube.com/watch?time_continue=340&v=IGW9tMAwhCc"
pm_url2="https://www.youtube.com/watch?time_continue=60&v=WVh0HZStClE"
pm_url3="https://www.youtube.com/watch?time_continue=100&v=CagbHIMM55M"
pm_url4="https://twitter.com/3socha/status/916514660592971776"
pm_url5="https://twitter.com/msr386/status/916516110756757504"
pm_url6="https://twitter.com/xztaityozx_001/status/916521181888397312"
pm_url7="https://twitter.com/Iruyan_Zak/status/916542574768226304"
pm_url8="https://twitter.com/tonepainting/status/916543913879465984"
pm_url9="https://twitter.com/neunetneucom/status/916544132239069184"
pm_url10="https://twitter.com/toshi__ya/status/916544459025690624"
pm_url11="https://twitter.com/ryuichiueda/status/916564022463311872"
pm_url12="https://twitter.com/ryuichiueda/status/916564280954122240"

pm_text2="次回、恐ろしいですね……！(wktk"

# 追記的な
epilogue=""


### LT ###
LT_summary="今回もYoutubeで配信していただけました！ 録画はコチラ　↓　[https://www.youtube.com/watch?v=LUPflFuV_2I:embed]"

# LT0_user=""
# LT0_title=""
# LT0_slide_url=""
# LT0_explain=""
# LT0_twitter_url1=""

LT1_user="くんすと(@kunst1080)"
LT1_title="rmコマンドチキンレース！"
LT1_slide_url="https://www.slideshare.net/kunst1080/31lt-rm"
LT1_explain="以前のサイゼリヤミートアップで話題(https://twitter.com/kunst1080/status/912293867596111872)になった「rmコマンドチキンレース」の解説と実演です！\\\\\n
いずれ単独イベントやりたいですね。"
LT1_twitter_url1="https://twitter.com/3socha/status/916569827447160832"
LT1_twitter_url2="https://twitter.com/grethlen/status/916570041952301056"
LT1_twitter_url3="https://twitter.com/mikkun_jp/status/916570674520506368"
LT1_twitter_url4="https://twitter.com/ryuichiueda/status/916571635599077376"
LT1_twitter_url5="https://twitter.com/Iruyan_Zak/status/916571936603258880"
LT1_twitter_url6="https://twitter.com/t_motooka/status/916573053793923072"
LT1_twitter_url7="https://twitter.com/grethlen/status/916573296866365440"

LT2_user="日柳 光久(@mikkun_jp) さん"
LT2_title="JavaScript製シューティングゲームをフルスクラッチで作ってみた / JavaScript Shooter Game from Scratch"
LT2_slide_url="https://speakerdeck.com/mikkun/javascript-shooter-game-from-scratch"
LT2_explain="パフォーマンスなどを考慮して、ピュアJavaScriptでゲームを作りました、というお話でした。\\n
完成品はコチラで遊べます→[https://mikkun.github.io/evade-and-destroy/]"
LT2_twitter_url1="https://twitter.com/3socha/status/916576263422189568"
LT2_twitter_url2="https://twitter.com/mikkun_jp/status/916568181854003200"

LT3_user="たいちょー(@xztaityozx_001) さん"
LT3_title="ダブルシンク難読化シェル芸"
LT3_slide_url="https://www.slideshare.net/xztaityozx/ss-80555814/1"
LT3_explain="読みにくいのか読みにくくないのかよくわからなくなってきます……(発表は超面白かったですw\\n
発表に出てきたツールはコチラです→[https://github.com/xztaityozx/shellhuffman]"
LT3_twitter_url1="https://twitter.com/msr386/status/916576717174484992"
LT3_twitter_url2="https://twitter.com/grethlen/status/916577272236195840"
LT3_twitter_url3="https://twitter.com/ryuichiueda/status/916578173302669312"
LT3_twitter_url4="https://twitter.com/xztaityozx_001/status/916579273112035329"

LT4_user="so(@3socha) さん"
LT4_title="サイゼリヤで学ぶシェル芸"
LT4_slide_url="https://horo17.github.io/saizeriya-challenge/#/"
LT4_explain="先日のサイゼリヤミートアップで得られた知見ですね。ぼくのPCは、改善前の方のシェル芸でフリーズしかけました。"
LT4_twitter_url1="https://twitter.com/grethlen/status/916579630521376768"
LT4_twitter_url2="https://twitter.com/ryuichiueda/status/916580998506147840"
LT4_twitter_url3="https://twitter.com/ryuichiueda/status/916581319349493763"
LT4_twitter_url4="https://twitter.com/kunst1080/status/916582604152770562"

LT5_user="いるやん(@Iruyan_Zak) さん"
LT5_title="sed 's/.*/sed計算機/'"
LT5_slide_url="http://iruyan-zak.hateblo.jp/entry/2017/09/24/023639"
LT5_explain="sedで計算機を作ってシェル芸の問題を解いたということで、そのソースの解説でした。「sedで計算機を作って」っていう時点で既にヤバイですｗ\\n
サンプルコードはコチラ→[https://wandbox.org/permlink/uF77pCn8QdhpfkcA]"
LT5_twitter_url1="https://twitter.com/ryuichiueda/status/916583011155533824"
LT5_twitter_url2="https://twitter.com/grethlen/status/916583060669308928"
LT5_twitter_url3="https://twitter.com/kunst1080/status/916583245805895682"
LT5_twitter_url4="https://twitter.com/xztaityozx_001/status/916583248796426240"

# まとめ
LT_maeome="### その他
LT超募集してます。ジャンルは不問ですのでお気軽に！シェル芸関係なくても大丈夫でっす！"

matome="上田会長、東京・福岡・大阪の皆様、お疲れ様でした。\\n
さくらインターネット様、今回も会場を使わせていただきましてありがとうございました！\\n

次回もできればまたよろしくお願いします！！
"

#########################################################################################
eecho() {
	eval echo -e \""\$$1"\" | sed 's/\\n/  /g'
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
$([ "$fukuoka_url2" != "" ] && echo "### [https://twitter.com/papiron:title=ぱぴろん(@papiron)]さんによるまとめ")
$([ "$fukuoka_url2" != "" ] && echo "[${fukuoka_url2}:embed:cite]")


# 大阪サテライトレポート
## 参加者
${text_sankasya}


## 会場のようす
$([ "$am1_url" != "" ] && echo "### 午前")
$([ "$am1_url" != "" ] && echo "#### ${am1_title}")
$([ "$am1_url" != "" ] && echo "[${am1_url}:embed]\\n")
$([ "$am1_txet" != "" ] && echo "${am1_txet}\\n")
$([ "$am1_url2" != "" ] && echo "${am1_url2}\\n")
$([ "$am1_url3" != "" ] && echo "${am1_url3}\\n")
$([ "$am1_url4" != "" ] && echo "${am1_url4}\\n")
$([ "$am1_url5" != "" ] && echo "${am1_url5}\\n")

$([ "$am2_url" != "" ] && echo "#### ${am2_title}")
$([ "$am2_url" != "" ] && echo "[${am2_url}:embed]\\n")
$([ "$am2_txet" != "" ] && echo "${am2_txet}\\n")
$([ "$am2_url2" != "" ] && echo "${am2_url2}\\n")
$([ "$am2_url3" != "" ] && echo "${am2_url3}\\n")
$([ "$am2_url4" != "" ] && echo "${am2_url4}\\n")
$([ "$am2_url5" != "" ] && echo "${am2_url5}\\n")

$([ "$lunch_text" != "" ] && echo "### おひる")
$([ "$lunch_text" != "" ] && echo "$lunch_text  ")
$([ "$lunch_url1" != "" ] && echo "[${lunch_url1}:embed]\\n")
$([ "$lunch_url2" != "" ] && echo "[${lunch_url2}:embed]\\n")
$([ "$lunch_url3" != "" ] && echo "[${lunch_url3}:embed]\\n")
$([ "$lunch_url4" != "" ] && echo "[${lunch_url4}:embed]\\n")
$([ "$lunch_url5" != "" ] && echo "[${lunch_url5}:embed]\\n")
$([ "$lunch_url6" != "" ] && echo "[${lunch_url6}:embed]\\n")


### 午後
${pm_text1}

$([ "$pm_url1" != "" ] && echo "[${pm_url1}:embed]")
$([ "$pm_url2" != "" ] && echo "[${pm_url2}:embed]")
$([ "$pm_url3" != "" ] && echo "[${pm_url3}:embed]")
$([ "$pm_url4" != "" ] && echo "[${pm_url4}:embed]")
$([ "$pm_url5" != "" ] && echo "[${pm_url5}:embed]")
$([ "$pm_url6" != "" ] && echo "[${pm_url6}:embed]")
$([ "$pm_url7" != "" ] && echo "[${pm_url7}:embed]")
$([ "$pm_url8" != "" ] && echo "[${pm_url8}:embed]")
$([ "$pm_url9" != "" ] && echo "[${pm_url9}:embed]")
$([ "$pm_url10" != "" ] && echo "[${pm_url10}:embed]")
$([ "$pm_url11" != "" ] && echo "[${pm_url11}:embed]")
$([ "$pm_url12" != "" ] && echo "[${pm_url12}:embed]")

$pm_text2


# LTのようす
$([ "$tokyo_LT" != "" ] && echo "## 東京")
$([ "$tokyo_LT" != "" ] && echo "[${tokyo_LT}:embed]")

## 大阪
${LT_summary}

$(writeLT)

<hr>

$LT_maeome

# まとめ
$matome

$([ "$epilogue" != "" ] && echo "### 追記")
$([ "$epilogue" != "" ] && echo "${epilogue}")

++EOS
