#!/bin/bash

set -eu

output=$0.md

### Event Information ###
nth=28
date="04/22(土)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="jus共催 第10回初心者向けなのかと百条委員会化する午前のシェル勉強会/第28回基準値を超えるシェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/58658"

osaka_url="https://atnd.org/events/86778"
fukuoka_url1="https://atnd.org/events/87216"
fukuoka_url2=""

starting_slide=
question_url1="https://blog.ueda.asia/?p=9602"
question_url2="https://blog.ueda.asia/?p=9575"
togetter_url="https://togetter.com/li/1103388"

tokyo_LT="https://www.youtube.com/watch?v=uRElj5X0S7k"

### Main Text ###
bef_place_url1="https://twitter.com/nmrmsys/status/855583414866419713"

text_sankasya="今回の参加者は、私も含めて16人、うち、初参加は3名でした。\\n
徐々に平均年齢が下がってきてなかなか良い感じです♪"


# 午前1
am1_title="今泉光之さん「シグナルについて」 ※後半は @ryuichiueda さん"
am1_txet="SIGNALの種類や役割について体系的に学んだり、trapして確かめたりなど。"
am1_url="https://www.youtube.com/watch?v=TPzFICWp-sA"
am1_url2="[https://twitter.com/grethlen/status/855587839098052608:embed]"
am1_url3="[https://twitter.com/hisaharu/status/855588196729536512:embed]"
am1_url4="[https://twitter.com/t_motooka/status/855588267420401664:embed]"
am1_url5=""

# 午前2
am2_title=""
am2_txet=""
am2_url=""
am2_url2=""
am2_url3=""
am2_url4=""
am2_url5=""


# 昼休み
lunch_text=

lunch_url1=
lunch_url2=
lunch_url3=
lunch_url4=
lunch_url5=
lunch_url6=

# 午後
pm_text1="sed地獄と思いきやawkゴリゴリな感じでした。"
pm_url1="https://twitter.com/msr386/status/855632997344608257"
pm_url2="https://twitter.com/gin_135/status/855633161463537664"
pm_url3="https://twitter.com/nmrmsys/status/855633908636856320"
pm_url4="https://twitter.com/msr386/status/855677226414620673"

pm_text2="今回はなんというか……非常に疲れました……死屍累々"

# 追記的な
epilogue="[https://twitter.com/nmrmsys/status/855775981121830912:embed]"


### LT ###
LT_summary="今回もUstreamで配信して頂けました！(録画はナシです)"

# LT0_user=""
# LT0_title=""
# LT0_slide_url=""
# LT0_explain=""
# LT0_twitter_url1=""

LT1_user="@KoharaKazuya さん"
LT1_title="シェル芸による git rev-list"
LT1_slide_url="https://www.slideshare.net/reflectresults/git-revlist"
LT1_explain="gitコマンドを使わず無理やりワンライナーでgitのログを閲覧するというシェル芸。
ダミーのgzipヘッダーを付けるのは他の処理でもたまにやるという声もありました。こわい。"
LT1_twitter_url1="https://twitter.com/kunst1080/status/855688296176918528"
LT1_twitter_url2="https://twitter.com/nmrmsys/status/855688938291208192"
LT1_twitter_url3="https://twitter.com/Iruyan_Zak/status/855689021783105536"

LT2_user="@msr386 さん"
LT2_title="FORK爆弾 密着24時"
LT2_slide_url="https://speakerdeck.com/msr_i386/discover-fork-bomb"
LT2_explain="みんな大好きFork爆弾。
それによってサーバが停止したときのクラッシュダンプを見るという、危険シェル芸から一歩踏み込んだ内容の発表でした。
リソースが枯渇して死亡というイメージはあると思いますが、
やはり実際に計測して何が起こっているのか確認するということは大事ですね！（しろめ"
LT2_twitter_url1="https://twitter.com/kunst1080/status/855689966461911040"
LT2_twitter_url2="https://twitter.com/kunst1080/status/855690778927964161"
LT2_twitter_url3="https://twitter.com/kunst1080/status/855691564047253504"
LT2_twitter_url4="https://twitter.com/nmrmsys/status/855693196118052865"
LT2_twitter_url5="https://twitter.com/msr386/status/855707583142703104"

LT3_user="@kunst1080"
LT3_title="Ubuntu on Bash on Ubuntu on Windows"
LT3_slide_url="https://www.slideshare.net/kunst1080/28lt-ubuntu-on-bash-on-ubuntu-on-windows"
LT3_explain="Bash on Ubuntu on Windows上でchrootを使い、別のUbuntuのコンテナを動かす……ということで実際に作成した環境をデモしました。
コンテナ内からコンテナ外のプロセスをkillできるのはいかがなものかと……"
LT3_twitter_url1="https://twitter.com/nmrmsys/status/855696678103298048"
LT3_twitter_url2="https://twitter.com/nmrmsys/status/855697583976480768"
LT3_twitter_url3="https://twitter.com/Iruyan_Zak/status/855698943056859136"

LT4_user="@nmrmsys さん"
LT4_title="SIerでもできる！　シェル芸？"
LT4_slide_url="https://dl.dropboxusercontent.com/u/54939588/slides/Shell-Arts-Can-Also-Be-The-SIer.html"
LT4_explain="とあるSIer向けの勉強会でシェル芸をやりたいという話があり、
それに向けてブラウザでbashを動かす環境はないか探してみたという内容でした。
他所様の環境でFork爆弾を投げるのはマジほんとやめてくださいね…… > 某参加者s(複数形)
"
LT4_twitter_url1="https://twitter.com/kunst1080/status/855699445186347008"
LT4_twitter_url2="https://twitter.com/kunst1080/status/855701386318684160"
LT4_twitter_url2="https://twitter.com/kunst1080/status/855701708478926849"

LT5_user="@3socha さん"
LT5_title="SSM Run Command で遊ぶ"
LT5_slide_url="https://horo17.github.io/aws-nest-call-slide/#/"
LT5_explain="「Windows ホストの PowerShell からイベントログに書き込む SSM Run Command を実行する Lambda Function を Linux ホストのシェルから実行する SSM Run Command」のワンライナーの説明でした。ネストしゅごい……(ぐるぐる～"
LT5_twitter_url1="https://twitter.com/kunst1080/status/855703616950108160"
LT5_twitter_url2="https://twitter.com/nmrmsys/status/855704483103293440"

# まとめ
LT_maeome="今回も濃ゆい発表をありがとうございましたm(_ _)m 大阪のLTはジャンルを問わないので、ネタさえあれば大丈夫！　どしどし発表しちゃって下さい～"

matome="上田会長、東京・福岡・大阪の皆様、お疲れ様でした。\\n
フェンリル様、いつも会場を使わせていただきましてありがとうございます！\\n

次回もまたよろしくお願いします！！
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
