#!/bin/bash

set -eu

output=$0.md

### Event Information ###
nth=29
date="07/01(土)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="jus共催 第29回激しいシェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/61406"

osaka_url="https://atnd.org/events/88848"
fukuoka_url1="https://atnd.org/events/88850"
fukuoka_url2="http://papiro.hatenablog.jp/entry/2017/07/02/020652"

starting_slide=
question_url1="https://blog.ueda.tech/?p=9906"
question_url2="https://blog.ueda.tech/?p=9870"
togetter_url="https://togetter.com/li/1125585"

tokyo_LT="https://www.youtube.com/watch?v=781cEwIQX-w"

### Main Text ###
bef_place_url1="https://twitter.com/grethlen/status/880948812818268160"

text_sankasya="今回の参加者は、私も含めて17人、うち、初参加は8名くらいでした。\\n
初参加の人も増えてきて、とても良い感じです。また今回は東京から、ぐれさんが~~プリティストアへ行くついでに~~大阪サテライトに参加してくださいました。"


# 午前1
am1_title="鳥海秀一さん(@hid_tori)「Perlワンライナー入門」"
am1_txet="Perlワンライナーの書き方や代表的なオプションなどの説明でした。ちなみに次回は「Perl正規表現入門」だそうです。"
am1_url="https://www.youtube.com/watch?v=-0DltBwo_5k"
am1_url2="[https://umidori.github.io/shellgei-29th-am/index.html:embed]"
am1_url3="[https://twitter.com/grethlen/status/880955828802539520:embed]"
am1_url4="[https://twitter.com/ryuichiueda/status/880957777455177728:embed]"
am1_url5="[https://twitter.com/ryuichiueda/status/880965890405048321:embed]"

# 午前2
am2_title=""
am2_txet=""
am2_url=""
am2_url2=""
am2_url3=""
am2_url4=""
am2_url5=""


# 昼休み
lunch_text="3人のキュアシェル芸人が集結していました！"

lunch_url1="https://twitter.com/kunst1080/status/880998843541630977"
lunch_url2=
lunch_url3=
lunch_url4=
lunch_url5=
lunch_url6=

# 午後
pm_text1="今回は最近で一番むずかしいというかゴリゴリな感じでした。(毎回難しくなっていっている気がする)"
pm_url1="https://twitter.com/kunst1080/status/881000849891246080"
pm_url2="https://twitter.com/kunst1080/status/881001224388071424"
pm_url3="https://twitter.com/ryuichiueda/status/881009191489384449"
pm_url4="https://twitter.com/kunst1080/status/881023577557934081"

pm_text2="今回はじめて使った「datamash」コマンド、なかなか使いやすそうです。データに対してSQLのようにsum,max,count等の集計ができます。"

# 追記的な
epilogue="二次会のようす [https://twitter.com/grethlen/status/881084021895188481:embed]"


### LT ###
LT_summary="今回はYoutubeで配信していただけました！ 録画もあります！ [https://www.youtube.com/watch?v=27iG0E0Rty0:embed]"

# LT0_user=""
# LT0_title=""
# LT0_slide_url=""
# LT0_explain=""
# LT0_twitter_url1=""

LT1_user="いとす(@itosue) さん"
LT1_title="sortのマルチコア対応状況について"
LT1_slide_url=
LT1_explain="コアやOSなどの条件を変えてみて、sortコマンドの実行速度を計測した結果の発表でした。"
LT1_twitter_url1="https://twitter.com/kunst1080/status/881056130486616064"
LT1_twitter_url2="https://twitter.com/xztaityozx_001/status/881055536996798464"
LT1_twitter_url3="https://twitter.com/kunst1080/status/881056479674941440"
LT1_twitter_url4="https://twitter.com/grethlen/status/881056680267571200"

LT2_user="たいちょー(@xztaityozx_001) さん"
LT2_title="みんなで！　日本語base63難読化シェル芸"
LT2_slide_url="https://www.slideshare.net/xztaityozx/base64-77639861"
LT2_explain="base64コマンドを使った、難読化シェル芸の話です。わかりやすくて面白い発表でした！"
LT2_twitter_url1="https://twitter.com/ryuichiueda/status/881058567989608448"
LT2_twitter_url2="https://twitter.com/ryuichiueda/status/881058610549108736"
LT2_twitter_url3="https://twitter.com/Wslash/status/881059659976552451"
LT2_twitter_url4="https://twitter.com/3socha/status/881059714171154432"

LT3_user="たいちょー(@xztaityozx_001) さん"
LT3_title="シェル芸で使いたくてLINQが使えるコマンド作ったらawkでよかった話"
LT3_slide_url="https://www.slideshare.net/xztaityozx/linqawk"
LT3_explain="(2つ発表して頂きました)
シェルでLINQが書けるツール「ShelLINQ」(https://github.com/xztaityozx/shellinq)を作った話と、awkとの速度比較でした。
awkの方が早いという結果が出ましたが、慣れたツールを使って書けるというのは重要なので需要はありそうです。"
LT3_twitter_url1="https://twitter.com/blacknon_/status/881060090035425280"
LT3_twitter_url2="https://twitter.com/grethlen/status/881060939511898112"

LT4_user="ぐれさん(@grethlen)"
LT4_title="狂気！　端末細胞分裂！"
LT4_slide_url="https://hackmd.io/p/S1c1qsTfZ#/"
LT4_explain="tmux-xpanes(http://qiita.com/greymd/items/8744d1c4b0b2b3004147)を使って再帰的にウィンドウを分割し、細胞分裂みたいにして遊ぼう！という発表でした。うにょうにょしてた。"
LT4_twitter_url1="https://twitter.com/3socha/status/881064405873508352"
LT4_twitter_url2="https://twitter.com/ryuichiueda/status/881066457840312320"
LT4_twitter_url3="https://twitter.com/xztaityozx_001/status/881067315323850752"
LT4_twitter_url4="https://twitter.com/kunst1080/status/881067371539996676"
LT4_twitter_url5="https://twitter.com/grethlen/status/882073819493482496"

LT5_user="so(@3socha) さん"
LT5_title="AWS Windows のパスワード"
LT5_slide_url="https://horo17.github.io/aws-windows-password/#/"
LT5_explain="AWS Windowsのパスワードは通常、マネジメントコンソールのブラウザ上で複合する手順なのですが、不安なので手元で復号化しよう -> CLIでやろう -> シェル芸だ！　という流れの発表です。AWSをシェル芸で使い倒している感じがします。"
LT5_twitter_url1="https://twitter.com/kunst1080/status/881068611787345920"
LT5_twitter_url2="https://twitter.com/vvanitter82/status/881069123542802432"
LT5_twitter_url2="https://twitter.com/kunst1080/status/881069160200941568"

LT6_user="小原　一哉(KoharaKazuya) さん"
LT6_title="画像シェル芸入門"
LT6_slide_url="https://www.slideshare.net/reflectresults/image-shellgei"
LT6_explain="iTerm2のimgcatを使って、imagemagickなどで作成した画像をターミナルに表示するシェル芸の紹介でした。中間ファイルがいらなくなるので、画像処理の各種パラメータ値の確認とかで意外と使えそうです。"
LT6_twitter_url1="https://twitter.com/kunst1080/status/881069762251440128"
LT6_twitter_url2="https://twitter.com/kunst1080/status/881070086445977600"
LT6_twitter_url3="https://twitter.com/kunst1080/status/881070376909918210"
LT6_twitter_url4="https://twitter.com/kunst1080/status/881070673774362624"

LT7_user="日柳 光久(@mikkun_jp) さん"
LT7_title="帰ってきたバナー芸＋手書きSVG"
LT7_slide_url=
LT7_explain="コマンド: [https://gist.github.com/mikkun/c21bb32dc8ee8a82db24c57176ecc522:embed]\\n
「Windows ホストの PowerShell からイベントログに書き込む SSM Run Command を実行する Lambda Function を Linux ホストのシェルから実行する SSM Run Command」のワンライナーの説明でした。ネストしゅごい……(ぐるぐる～"
LT7_twitter_url1="https://twitter.com/3socha/status/881072226673479680"
LT7_twitter_url2="https://twitter.com/kunst1080/status/881072371683086336"
LT7_twitter_url3="https://twitter.com/grethlen/status/881072404759322624"
LT7_twitter_url4="https://twitter.com/kunst1080/status/881072908809809920"
LT7_twitter_url5="https://twitter.com/Carol_815/status/881073485614694400"

# まとめ
LT_maeome="今回も濃ゆい発表をありがとうございましたm(_ _)m 今回は初参加の方も多く、初参加で発表してくださる方もいて非常によかったです。数回ぶりの方もありがとうございました。また都合がつけばお気軽にご参加くださいー"

matome="上田会長、東京・福岡・大阪の皆様、お疲れ様でした。\\n
フェンリル様、いつも会場を使わせていただきましてありがとうございます！\\n

次回もまたよろしくお願いします！！\\n

ちなみに、次は会場をさくらさんにお願いするのもアリかも？　みたいな話もしています。ただいま検討中です。
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
			[ "$(eecho ${LT}_slide_url)" != "" ] && echo "スライド: [$(eecho ${LT}_slide_url):embed]\n"
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
