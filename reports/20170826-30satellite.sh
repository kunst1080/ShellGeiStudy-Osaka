#!/bin/bash

set -eu

output=$0.md

### Event Information ###
nth=30
date="08/26(土)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="jus共催 第30回危念シェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/63082"

osaka_url="https://atnd.org/events/90102"
fukuoka_url1="https://atnd.org/events/90090"
fukuoka_url2=""

starting_slide=
question_url1="https://blog.ueda.tech/?p=10188"
question_url2="https://blog.ueda.tech/?p=10134"
togetter_url="https://togetter.com/li/1144283"

tokyo_LT="https://www.youtube.com/watch?v=0HyECsK4wSg"

### Main Text ###
bef_place_url1="https://twitter.com/kunst1080/status/901240927171125248"

text_sankasya="今回はさくらインターネット様から会場をお借りしできました。いつもの3倍くらいのサイズだったのでいろいろと持て余してしまいましたが……\\n
次回は今回を踏まえて、机の形を整えたりしてもうちょいいい感じにしたいと思います。\\n
今回の参加者は、私も含めて14人、たしか全員2回目以降の参加だったような。部屋も広くなったので、初心者の方もウェルカムですよっ！"


# 午前1
am1_title="鳥海秀一さん(@hid_tori)「Perlの正規表現（その2）」"
am1_txet="スライド→[https://umidori.github.io/shellgei-29th-am/index.html]\\n
\\n
Perlワンライナーの書き方や代表的なオプションなどの説明でした。ちなみに次回は「Perl正規表現入門」だそうです。"
am1_url="https://www.youtube.com/watch?v=4N1J4N1ZduQ"
am1_url2="[https://twitter.com/ryuichiueda/status/901237139110739968:embed]"
am1_url3="[https://twitter.com/ryuichiueda/status/901251386532179969:embed]"
am1_url4="[https://twitter.com/ryuichiueda/status/901252800503357440:embed]"
am1_url5="[https://twitter.com/ryuichiueda/status/901255966020087810:embed]"

# 午前2
am2_title=""
am2_txet=""
am2_url=""
am2_url2=""
am2_url3=""
am2_url4=""
am2_url5=""


# 昼休み
lunch_text="大阪、午前中でグロッキーになり、お昼は前回のLTを見つつ静かな感じで。。。"

lunch_url1="https://twitter.com/kunst1080/status/901280574056181760"
lunch_url2=
lunch_url3=
lunch_url4=
lunch_url5=
lunch_url6=

# 午後
pm_text1="「「「地獄」」」"
pm_url1="https://www.youtube.com/watch?v=JHjtHKlaAgk"
pm_url2="https://twitter.com/kunst1080/status/901293061430431744"
pm_url3="https://twitter.com/grethlen/status/901293278254911488"
pm_url4="https://twitter.com/kunst1080/status/901294001852080128"
pm_url5="https://twitter.com/kunst1080/status/901294332270960640"
pm_url6="https://twitter.com/grethlen/status/901294362268549120"
pm_url7="https://twitter.com/msr386/status/901294493172850688"

pm_text2="地獄　オブ　地獄"

# 追記的な
epilogue=""


### LT ###
LT_summary="今回もYoutubeで配信していただけました！ 録画はコチラ　↓　[https://www.youtube.com/watch?v=9iwrZqomKD0:embed]"

# LT0_user=""
# LT0_title=""
# LT0_slide_url=""
# LT0_explain=""
# LT0_twitter_url1=""

LT1_user="くんすと(@kunst1080)"
LT1_title="シェル芸思考"
LT1_slide_url="https://www.slideshare.net/kunst1080/30lt"
LT1_explain="シェル芸で問題を解くときに考えていることを軽くまとめました。設計だいじ。"
LT1_twitter_url1="https://twitter.com/3socha/status/901344378190352384"
LT1_twitter_url2="https://twitter.com/nogiro_iota/status/901345466972946432"
LT1_twitter_url3="https://twitter.com/3socha/status/901345531355475968"
LT1_twitter_url4="https://twitter.com/nogiro_iota/status/901345871689678848"

LT2_user="MSR(@msr386) さん"
LT2_title="fork爆弾爆発中のロードアベレージを見る"
LT2_slide_url="https://speakerdeck.com/msr_i386/cgroup"
LT2_explain="前回に引き続き、fork爆弾を計測するデモ。発表後に作成された参考動画もあるようです。[https://twitter.com/msr386/status/901798183298244608:embed]、[https://twitter.com/msr386/status/901798954873978885:embed]"
LT2_twitter_url1="https://twitter.com/3socha/status/901348977261412352"
LT2_twitter_url2="https://twitter.com/nogiro_iota/status/901349408280780800"
LT2_twitter_url3="https://twitter.com/Iruyan_Zak/status/901349606436421632"
LT2_twitter_url4="https://twitter.com/3socha/status/901350211842228226"

LT3_user="たいちょー(@xztaityozx_001) さん"
LT3_title="破壊的難読化シェル芸"
LT3_slide_url="https://www.slideshare.net/xztaityozx/ss-79171721"
LT3_explain="前回も発表して頂いた「難読化シェル芸」の、gzipを使った発展版。どんどん危険度が上がっていきますね・・・"
LT3_twitter_url1="https://twitter.com/Iruyan_Zak/status/901351618360205312"
LT3_twitter_url2="https://twitter.com/kunst1080/status/901351967481511937"
LT3_twitter_url3="https://twitter.com/kazuhito_m/status/901353094054793216"
LT3_twitter_url4="https://twitter.com/asterisk9101/status/901353244789661697"

LT4_user="so(@3socha) さん"
LT4_title="AWS API リクエストへの署名"
LT4_slide_url="https://horo17.github.io/signing-aws-api-requests/#/"
LT4_explain="AWSの特定のAPIについてSDKが用意されていないので、直接APIを叩くためにAPIリクエストを自前で署名する、という行為ををワンライナーでやるという話。
こうやって、仕様を追いかけながら動きを確認できるのがワンライナーのいいところですよね(しろめ。
正直長いのでシェルスクリプトにした方がいいと思います！"
LT4_twitter_url1="https://twitter.com/xztaityozx_001/status/901353757774012416"
LT4_twitter_url2="https://twitter.com/kunst1080/status/901354693036617728"
LT4_twitter_url3="https://twitter.com/asterisk9101/status/901357876760895489"

# まとめ
LT_maeome="### その他
LT超募集してます。ジャンルは不問ですのでお気軽に！！！
[https://twitter.com/kunst1080/status/901391237944561664:embed][https://twitter.com/kunst1080/status/901391543394631680:embed][https://twitter.com/3socha/status/901391613250813956:embed][https://twitter.com/3socha/status/901394838913859584:embed]"

matome="上田会長、東京・福岡・大阪の皆様、お疲れ様でした。\\n
さくらインターネット様、今回は会場を使わせていただきましてありがとうございます！\\n

次回もできればまたよろしくお願いします！！
"

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
$([ "$fukuoka_url2" != "" ] && echo "### [https://twitter.com/papiron:title=ぱぴろん(@papiron)]さんによるまとめ")
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
