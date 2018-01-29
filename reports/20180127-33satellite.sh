#!/bin/bash

set -eu

output=$0.md

### Event Information ###
nth=33
date="01/27(土)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="jus共催 第33回めでたいシェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/69438"

osaka_url="https://atnd.org/events/94017"
fukuoka_url1="https://atnd.org/events/94082"
fukuoka_url2=""

tokyo_report="問題・解答例・東京LT・togetterなどは本家の方にまとまっています。

[https://b.ueda.tech/?post=20180128_shellgei_33_summary:title]"

### Main Text ###
text_maeoki="※レポート、ちょっと省力化してます"
text_sankasya="今回はフェンリルさんに会場をお願いしました。  
OSCと被ってしまったため来られない方もいらっしゃり、今回の参加者は8名で、初めましての方は1名でした。"

# 追記的な
epilogue=""

### LT ###
LT_summary="今回もYoutubeで配信していただけました！ 録画はコチラ↓
  
[https://www.youtube.com/watch?v=V-t_qNvBezs:embed]"

LT1_user="MSR(@msr386) さん"
LT1_title="Amazon Dash Hack"
LT1_slide_url="[https://speakerdeck.com/msr_i386/amazon-dash-hack:embed]"

LT2_user="so(@3socha) さん"
LT2_title="Contributions Graph芸"
LT2_slide_url="※資料お待ちしてますー"

LT3_user="くんすと(@kunst1080)"
LT3_title="Dockerを使ったクライアントハイパーバイザー"
LT3_slide_url="※作成中のため、今回はスライドの公開は無しです"

LT4_user="小原　一哉(@KoharaKazuya) さん"
LT4_title="macOS 濁点問題にシェル芸で挑んだ話"
LT4_slide_url="[https://www.slideshare.net/reflectresults/macos-86746675:embed]"


# まとめ
LT_maeome=""

matome="お疲れ様でした！　次回もよろしくお願いします！"

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
			[ -v ${LT}_slide_url ] && eecho "${LT}_slide_url\n"
			[ -v ${LT}_explain ] && eecho "${LT}_explain"
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

$text_maeoki

# イベント情報
## 東京(本家)
[${org_url}:embed:cite]

## 大阪サテライト
[${osaka_url}:embed:cite]

## 福岡サテライト
[${fukuoka_url1}:embed:cite]

# イベントのようす

## まとめ
$tokyo_report

$([ "$fukuoka_url2" != "" ] && echo "## 福岡サテライトレポート: [https://twitter.com/papiron:title=ぱぴろん(@papiron)]さんによるまとめ")
$([ "$fukuoka_url2" != "" ] && echo "[${fukuoka_url2}:embed:cite]")

## 大阪サテライトレポート
### 参加者
${text_sankasya}

### LTのようす
${LT_summary}

$(writeLT)

<hr>

$LT_maeome

# まとめ
$matome

$([ "$epilogue" != "" ] && echo "### 追記")
$([ "$epilogue" != "" ] && echo "${epilogue}")

++EOS
