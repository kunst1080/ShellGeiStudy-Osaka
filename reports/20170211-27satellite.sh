#!/bin/bash

set -eu

output=$0.md

### Event Information ###
nth=27
date="02/11(土)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="jus共催 第9回初心者満足度ナンバーワン（当社調べ・調べてないけど）シェル勉強会/第27回sedこわいシェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/56744"

osaka_url="https://atnd.org/events/85597"
fukuoka_url1="https://atnd.org/events/85463"
fukuoka_url2="http://papiro.hatenablog.jp/entry/2017/02/12/162647"

starting_slide="https://blog.ueda.asia/?post_type=presenpress&p=9312#/"
question_url1="https://blog.ueda.asia/?p=9309"
question_url2="https://blog.ueda.asia/?p=9283"
togetter_url="https://togetter.com/li/1080314"

tokyo_LT="https://www.youtube.com/watch?v=JBax4En3EeM"

### Main Text ###
bef_place_url1="https://twitter.com/nmrmsys/status/830215577239117825"

text_sankasya="今回の参加者は、私も含めて12人、うち、初参加は1名でした。\\n
じわじわ初心者が増えてきてよいですね。\\n
\\n
また今回、西日本では大雪の心配があったので、前日にメールとTwitterで注意喚起の告知を行いました。
[https://twitter.com/kunst1080/status/830016175849381888:embed]
(@t_motookaさん、促して下さってありがとうございました！)"


# 午前1
am1_title="鳥海秀一さん「黒い画面と戯れよう」"
am1_txet="sttyコマンドやtputコマンドを使って、ターミナルにエスケープシーケンスを送って遊ぶという感じの内容でした。\\n
ターミナル生活をしていく上で、この辺のことを知っていると思わぬところで救われそうな感じですね。"
am1_url="https://www.youtube.com/watch?v=oeNFq5t_frc"
am1_url2="[https://twitter.com/t_motooka/status/830228032795217920:embed]"

# 午前2
am2_title="石井久治さん(@hisaharu)「シェル芸入門 日常会話編」"
am2_txet="シェル・コマンド・パイプなどについて、図解でわかりやすく解説した講義でした。初心者の方は必見だと思います！"
am2_url="https://www.youtube.com/watch?v=cDt2Olr0x84"
am2_url2="[https://twitter.com/obknnt/status/830238613497475073:embed]"

# 昼休み
lunch_text="大阪はお昼ごはんを食べつつ、午後に向けてsedの予習をしておりました。嵐の前の静けさとはこのこと――"

lunch_url1="https://twitter.com/kunst1080/status/830251969235148800"
lunch_url2=
lunch_url3=
lunch_url4=
lunch_url5=
lunch_url6=

# 午後
pm_text1="sedこわい（こわい"
pm_url1="https://twitter.com/kunst1080/status/830267156793208834"
pm_url2="https://twitter.com/kunst1080/status/830282631652663296"
pm_url3="https://twitter.com/kunst1080/status/830305632615936000"
pm_text2="sedで置換以外のことをする方法や、コマンドを並べて各方法、ループの使い方など、置換以外の基本的な機能を使い倒した感じです。\\n
ループはあとでもう一回復習しよう……"

# 追記的な
epilogue="危険な派生物が誕生してしまったようです…\\n
[https://togetter.com/li/1080646:embed]"


### LT ###
LT_summary="今回はちょっと少なめですが、今回もUstreamで配信して頂けました！(録画はナシです)"

# LT0_user=""
# LT0_title=""
# LT0_slide_url=""
# LT0_explain=""
# LT0_twitter_url1=""

LT1_user="日柳 光久(@mikkun_jp) さん"
LT1_title="Q7の解説"
LT1_slide_url="https://twitter.com/mikkun_jp/status/830297680937000960"
LT1_explain="Q7で「縛り1: 使うコマンドはseq、cp、sedだけ」と「縛り2: ワンライナー中で数字を使わない」という縛りがあったのですが、
その両方の条件を満たす解とその解説です。\\n
カジュアルに\`/etc/passwd\`を使うことに若干の危険なかほりを感じますｗ"
LT1_twitter_url1="https://twitter.com/mikkun_jp/status/830301542225829888"

LT2_user="@t_motooka さん"
LT2_title="sedで知る 矢印キーのキーコード"
LT2_slide_url="https://speakerdeck.com/motooka/seddezhi-ru-shi-yin-kifalse-kikodo"
LT2_explain="\`sed -n l\`してからキー入力し、Enterを押すと、ターミナル上に矢印キーのキーコードが表示されます。やってみましょう！"
LT2_twitter_url1="https://twitter.com/kunst1080/status/830324962300813312"
LT2_twitter_url2="https://twitter.com/kunst1080/status/830325926831411200"
LT2_twitter_url3="https://twitter.com/msr386/status/830326083069186049"

LT3_user="@nmrmsys さん"
LT3_title="我は放つ、危険のシェル芸！！(誤爆)"
LT3_slide_url="https://dl.dropboxusercontent.com/u/54939588/slides/I-Will-Release-Dangerous-Shell-Arts.html"
LT3_explain="「[スター・ウォーズ Force Band™ by Sphero](https://www.amazon.co.jp/%E3%82%B9%E3%82%BF%E3%83%BC%E3%83%BB%E3%82%A6%E3%82%A9%E3%83%BC%E3%82%BA-Force-Sphero-%E3%80%90%E6%97%A5%E6%9C%AC%E6%AD%A3%E8%A6%8F%E4%BB%A3%E7%90%86%E5%BA%97%E5%93%81%E3%80%91-AFB01JPN/dp/B01L8GHXSQ)」というガジェットを使って、スターウォーズのジェスチャーで危険シェル芸を放つ！という実演でした。普通の危険シェル芸だと一気にサーバがダウンしてしまうのですが、今回は徐々にダウンしていく状況を確認するべく「マイルドな危険シェル芸」を仕込んで来ていただきました！\\n
\\n
今回はサーバ側のトラブルで不発でした……ので、できれば次回にリベンジしていただければと！　よろしくお願いします！"
LT3_twitter_url1="https://twitter.com/kunst1080/status/830329641902563330"
LT3_twitter_url2="https://twitter.com/kunst1080/status/830331105463062528"
LT3_twitter_url3="https://twitter.com/kunst1080/status/830342697428750336"
LT3_twitter_url4="https://twitter.com/kunst1080/status/830343561644158979"
LT3_twitter_url5="https://twitter.com/kunst1080/status/830344331856793602"


# まとめ
LT_maeome=

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

$LT_maeome

# まとめ
$matome

$([ "$epilogue" != "" ] && echo "### 追記")
$([ "$epilogue" != "" ] && echo "${epilogue}")

++EOS
