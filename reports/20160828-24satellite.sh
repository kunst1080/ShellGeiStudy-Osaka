#!/bin/sh

set -eu

output=$0.md

### Event Information ###
nth=24
date="8/27(土)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="第6回もう初心者向けでないなんて言わないよ絶対午前のシェル勉強会/第24回◯◯o◯裏番組シェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/49381"

osaka_url="https://atnd.org/events/80501"
fukuoka_url1="https://atnd.org/events/80324"
fukuoka_url2="http://papiro.hatenablog.jp/entry/2016/08/28/135036"

starting_slide="https://blog.ueda.asia/?presenpress=%E7%AC%AC24%E5%9B%9E%E2%97%AF%E2%97%AFo%E2%97%AF%E8%A3%8F%E7%95%AA%E7%B5%84%E3%82%B7%E3%82%A7%E3%83%AB%E8%8A%B8%E5%8B%89%E5%BC%B7%E4%BC%9A#/"
question_url1="https://blog.ueda.asia/?p=8639"
question_url2="https://blog.ueda.asia/?p=8592"
togetter_url="http://togetter.com/li/1017163"

### Main Text ###
bef_place_url1="https://twitter.com/nmrmsys/status/743966533349564416"
bef_place_url2="https://twitter.com/kunst1080/status/743971235273400320"

text_sankasya="今回の参加者は、私も含めて12人でした。\\n
うち、初参加は3名。\\n
Twitterで見て気になっていて……とか、仕事仲間に誘われて、みたいな流れで増えていってる印象があります。よいですね。"

# 午前1
am1_title="@ryuichiueda さん 「man gawk」"
am1_txet="GAWK(1)のマニュアルを読む会でした。知らないオプションをいろいろ見つけて面白かったです。\\n
特に -W は面白かったですね。"
am1_url=""
am1_url2="[https://twitter.com/kunst1080/status/769359036626063360:embed]"

# 午前2
am2_title="@grethlen さん 「毎日叩けるシェル芸を覚えよう！」"
am2_txet="意外(失礼)に初心者向けの内容になってましたｗ\\n
日常の中で手になじませていくアプローチ、非常によいですね。"
am2_url="https://speakerdeck.com/greymd/mei-ri-kou-keru-sieruyun-wojue-eyou"
am2_url2="[https://twitter.com/ryuichiueda/status/769364597413335046:embed]"

# 昼休み
lunch_text="昼休みはまったりコンビニ弁当を食べつつ午前の復習をしたりLTの準備したり、若干危険な話もしたり。\\n
まったりしてました。"
lunch_url1="https://twitter.com/kunst1080/status/769391854894850048"
lunch_url2=""

# 午後
text_pm="パズル回。やばい。👆楽しい👆"
text_pm_url1="https://twitter.com/msr386/status/769400949290983424"
text_pm_url2="https://twitter.com/midokokemaru/status/769401193818980352"

# 追記的な
epilogue_url="https://twitter.com/kunst1080/status/769469511992954881"


### LT ###
LT_summary="笑いの絶えない楽しいLT！！"

# LT0_user=""
# LT0_title=""
# LT0_slide_url=""
# LT0_explain=""
# LT0_twitter_url1=""

LT1_user="@nmrmsys さん"
LT1_title="シェル芸でもIoTがしたい！"
LT1_slide_url=
LT1_explain="SpheroをCLIから動かすツールの紹介でした。\\\\n\n
リポジトリはこちらですね。→[https://github.com/nmrmsys/sphero-cli:title]"
LT1_twitter_url1="https://twitter.com/kunst1080/status/769452496657928192"
LT1_twitter_url2="https://twitter.com/kunst1080/status/769454033887039488"

LT2_user="T.Motooka(@t_motooka) さん"
LT2_title="お気軽！お手軽！スクレイピング！"
LT2_slide_url="https://speakerdeck.com/motooka/oqi-qing-oshou-qing-sukureipingu"
LT2_explain="PhantomJSでスクレイピングして好みの形のテキストで扱うという内容。実際に動かしているところを見せていただきました。"
LT2_twitter_url1="https://twitter.com/kunst1080/status/769459079693557761"

LT3_user="@KoharaKazuya さん"
LT3_title="UTF-8テキストからUnicodeのコードポイントを求める @シェル芸"
LT3_slide_url=""
LT3_explain="UTF-8テキストからxxdとsedやdcを使ってUnicodeのコードポイントを求めるシェル芸の紹介でした。"
LT3_twitter_url1="https://twitter.com/kunst1080/status/769459523320881152"

LT4_user="MSR(@msr386) さん"
LT4_title="QRコードシェル芸"
LT4_slide_url="https://speakerdeck.com/msr_i386/qr-code-shell"
LT4_explain="QRコードに危険シェル芸を埋め込むという斬新なテクニックの登場です！"
LT4_twitter_url1="https://twitter.com/kunst1080/status/769462350524981248"
LT4_twitter_url2="https://twitter.com/kunst1080/status/769463052550807552"
LT4_twitter_url3="https://twitter.com/ryuichiueda/status/769463566722150401"
LT4_twitter_url4="https://twitter.com/kunst1080/status/769464742020644864"
LT4_twitter_url5="https://twitter.com/grethlen/status/769465605137182720"
LT4_twitter_url6="https://twitter.com/ryuichiueda/status/769465606605185024"

LT5_user="くんすと(@kunst1080)"
LT5_title="Bash on Windows 環境非破壊ハンズオン"
LT5_slide_url="http://www.slideshare.net/kunst1080/20160827-24lt-bash-on-windows"
LT5_explain="先日やっていた、「Bash on Windowsをどこまで破壊しても大丈夫か？」という実験の成果を発表しました。環境破壊楽しいですよ(ﾆｯｺﾘ\\\\n\n
若干ハプニングもありましたが、安全です。"
LT5_twitter_url1="https://twitter.com/kunst1080/status/769465970893086720"
LT5_twitter_url2="https://twitter.com/ryuichiueda/status/769466852456091650"
LT5_twitter_url3="https://twitter.com/3socha/status/769466880947912704"
LT5_twitter_url4="https://twitter.com/ryuichiueda/status/769466935511613440"
LT5_twitter_url5="https://twitter.com/t_motooka/status/769468150056353796"
LT5_twitter_url6="https://twitter.com/ryuichiueda/status/769468416994320384"

# まとめ
LT_maeome="### LT配信について
今回、会場(フェンリル様)のご好意で、急遽LTの途中からUstream配信をして頂くことができました。\\n
無理言ってすみません、本当にありがとうございます。\\n
[https://twitter.com/3socha/status/769459783887826944:embed]"

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


## 福岡サテライト
[${fukuoka_url1}:embed:cite]
$([ "$fukuoka_url2" != "" ] && echo "[https://twitter.com/papiron:title=ぱぴろん(@papiron)]さんによるまとめ")
$([ "$fukuoka_url2" != "" ] && echo "[${fukuoka_url2}:embed:cite]")


# 大阪サテライトレポート
## 参加者
${text_sankasya}


## 会場のようす
### 午前
#### ${am1_title}
$([ "$am1_url" != "" ] && echo "[${am1_url}:embed]\\n")
$([ "$am1_txet" != "" ] && echo "${am1_txet}\\n")
$([ "$am1_url2" != "" ] && echo "${am1_url2}\\n")

#### ${am2_title}
$([ "$am2_url" != "" ] && echo "[${am2_url}:embed]\\n")
$([ "$am2_txet" != "" ] && echo "${am2_txet}\\n")
$([ "$am2_url2" != "" ] && echo "${am2_url2}\\n")


$([ "$lunch_text" != "" ] && echo "### おひる")
$([ "$lunch_text" != "" ] && echo "$lunch_text  ")
$([ "$lunch_url1" != "" ] && echo "[${lunch_url1}:embed]\\n")
$([ "$lunch_url2" != "" ] && echo "[${lunch_url2}:embed]\\n")


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

$([ "$epilogue_url" != "" ] && echo "[${epilogue_url}:embed]")

++EOS
