#!/bin/sh

set -eu

output=$0.md

### Event Information ###
nth=25
date="10/29(土)"
title="「第${nth}回シェル芸勉強会　大阪サテライト」レポート"

org_title="jus共催 第7回初心者の定義で大揉め午前のシェル勉強会/第25回もう4年もやってんのかシェル芸勉強会"
org_url="https://usptomo.doorkeeper.jp/events/52333"

osaka_url="https://atnd.org/events/82228"
fukuoka_url1="https://atnd.org/events/81515"
fukuoka_url2="http://papiro.hatenablog.jp/entry/2016/10/29/225423"

starting_slide="https://blog.ueda.asia/?presenpress=%E7%AC%AC25%E5%9B%9E%E3%82%82%E3%81%864%E5%B9%B4%E3%82%82%E3%82%84%E3%81%A3%E3%81%A6%E3%82%93%E3%81%AE%E3%81%8B%E3%82%B7%E3%82%A7%E3%83%AB%E8%8A%B8%E5%8B%89%E5%BC%B7%E4%BC%9A#/"
question_url1="https://blog.ueda.asia/?p=8764"
question_url2="https://blog.ueda.asia/?p=8737"
togetter_url="http://togetter.com/li/1042203"

### Main Text ###
bef_place_url1="https://twitter.com/nmrmsys/status/792165812962332672"

text_sankasya="今回の参加者は、私も含めて9人、うち、初参加は2名でした。\\n
9人……9人！？　……いえ、なんでもないです。"

# 午前1
am1_title="@ryuichiueda さん 「man grep」"
am1_txet="前回のawk(1)に引き続き、今回はgrep(1)のマニュアルを読む会でした。普段は同じようなオプションばかり使うのでこういうのはありがたいです。\\n
特にgrep -mオプションは、ログの調査のときなどなかなか使える場面が多そうです。"
am1_url="https://linuxjm.osdn.jp/html/GNU_grep/man1/grep.1.html"
am1_url2="[https://twitter.com/kunst1080/status/792184047141203968:embed]"

# 午前2
am2_title=
am2_txet=
am2_url=
am2_url2=

# 昼休み
lunch_text="昼休み、参加者全員のOS環境・使用シェルのアンケートを取りました。結果はこんな感じです。

## OS環境
* Mac: 4人
  * そのまま: 2人
  * Ubuntu on Mac: 2人 (Veertu, VirtualBox)
* Windows: 3人
  * PowerShell
  * Cygwin
  * Ubuntu on Docker on Windows
* Linux:2人
  * Debian
  * ArchLinux

## 使用シェル
* Bash 7人
* Zsh 1人
* PowerShell 1人
"
lunch_url1=
lunch_url2=

# 午後
text_pm="今回もパズル回！！やったぜ！！"
text_pm_url1="https://twitter.com/kunst1080/status/792218006419939328"
text_pm_url2=

# 追記的な
epilogue_url="https://twitter.com/kunst1080/status/792333788692959233"


### LT ###
LT_summary="いつもちょっぴりおかしい大阪勢のLTです。"

# LT0_user=""
# LT0_title=""
# LT0_slide_url=""
# LT0_explain=""
# LT0_twitter_url1=""

LT1_user="日柳 光久(@mikkun_jp)さん"
LT1_title="シェルスクリプトでGnuCashを使いやすく"
LT1_slide_url="https://speakerdeck.com/mikkun/about-gnucash-util-jp"
LT1_explain="GnuCashを使って、日本でちゃんと使える請求書フォーマットで出力するCLIツールの紹介でした。本格的です！\\\\n\n
リポジトリはこちらです。 → [https://github.com/mikkun/gnucash-util-jp:title]"
LT1_twitter_url1="https://twitter.com/kunst1080/status/792264874449473537"
LT1_twitter_url2="https://twitter.com/nmrmsys/status/792266019226066944"
LT1_twitter_url3="https://twitter.com/mikkun_jp/status/792268127056699392"

LT2_user="くんすと(@kunst1080)"
LT2_title="バイナリをbase64してからgzipするとファイルサイズは小さくなるのか？？？？？？"
LT2_slide_url="http://www.slideshare.net/kunst1080/20161029-25lt-base64gzip"
LT2_explain="テキスト・バイナリ・画像ファイルを、base64->gzip->base64...と続けていったときにファイルサイズがどうなっているのか、数字を取って確認する企画です。気になりますよね？？"
LT2_twitter_url1="https://twitter.com/kunst1080/status/792267274874871808"
LT2_twitter_url2="https://twitter.com/3socha/status/792267744699781120"

LT3_user="MSR(@msr386) さん"
LT3_title="アスキーアートワンライナー"
LT3_slide_url="https://speakerdeck.com/msr_i386/ascii-art-oneliner-1"
LT3_explain="突然の死！やslなどのアスキーアートを、ワンライナーで出力するというヤバイやつです。"
LT3_twitter_url1="https://twitter.com/kunst1080/status/792268825785868288"
LT3_twitter_url2="https://twitter.com/t_motooka/status/792269443564834816"
LT3_twitter_url3="https://twitter.com/nmrmsys/status/792270134467375105"
LT3_twitter_url4="https://twitter.com/kunst1080/status/792270656301703168"
LT3_twitter_url5="https://twitter.com/kunst1080/status/792271048863461376"
LT3_twitter_url6="https://twitter.com/nmrmsys/status/792271856300544000"
LT3_twitter_url7="https://twitter.com/nmrmsys/status/792273460001067008"
LT3_twitter_url8="https://twitter.com/kunst1080/status/792274307036569600"
LT3_twitter_url9="https://twitter.com/kunst1080/status/792274874924359681"
LT3_twitter_url10="https://twitter.com/nmrmsys/status/792275135038312448"

LT4_user="T.Motooka(@t_motooka) さん"
LT4_title="パイプを通るPDF"
LT4_slide_url=
LT4_explain="CLIでPDFを作ってパイプに渡してごにょごにょする話です(語彙力)　まだ作成中とのことで、次回の発表が楽しみでもあります！"
LT4_twitter_url1="https://twitter.com/kunst1080/status/792275535841800192"
LT4_twitter_url2="https://twitter.com/nogiro_iota/status/792277037570338816"
LT4_twitter_url3="https://twitter.com/asterisk9101/status/792277457583808512"
LT4_twitter_url4="https://twitter.com/kunst1080/status/792277596541030400"
LT4_twitter_url5="https://twitter.com/nmrmsys/status/792277759422631938"
LT4_twitter_url6="https://twitter.com/nogiro_iota/status/792278200852164608"
LT4_twitter_url7="https://twitter.com/asterisk9101/status/792278996192862208"
LT4_twitter_url8="https://twitter.com/kunst1080/status/792279143710793729"

LT5_user="@nmrmsys さん"
LT5_title="tmuxチートシート 10,000ビュー突破記念の大幅加筆修正エントリ！ ※トリだけに"
LT5_slide_url="http://qiita.com/nmrmsys/items/03f97f5eabec18a3a18b"
LT5_explain="Qiitaエントリ「tmuxチートシート」の紹介でした。view数がすんごいことになってるらしい。"
LT5_twitter_url1="https://twitter.com/kunst1080/status/792279576122490880"
LT5_twitter_url2="https://twitter.com/mikkun_jp/status/792282889282916354"
LT5_twitter_url3="https://twitter.com/nmrmsys/status/792283116064772096"

LT6_user="MSR(@msr386) さん ※延長線"
LT6_title="ターミナル画面をぐちゃぐちゃに"
LT6_slide_url=
LT6_explain="ターミナル画面をぐちゃぐちゃにするシェル芸です。打ち込んで遊んでみよう！ ※資料はスライドの47枚目からです"
LT6_twitter_url1="https://twitter.com/3socha/status/792283699945414657"
LT6_twitter_url2="https://twitter.com/nmrmsys/status/792285695532347392"
LT6_twitter_url3="https://twitter.com/msr386/status/792285420306313216"
LT6_twitter_url4="https://twitter.com/nmrmsys/status/792285917864079360"
LT6_twitter_url5="https://twitter.com/msr386/status/792287060862251008"
LT6_twitter_url6="https://twitter.com/ryuichiueda/status/792289738468134913"
LT6_twitter_url7="https://twitter.com/nogiro_iota/status/792287068097351680"
LT6_twitter_url8="https://twitter.com/nogiro_iota/status/792287831955615744"

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

[${bef_place_url1}:embed]

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

$([ "$am2_url" != "" ] && echo "#### ${am2_title}")
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

$([ "$epilogue_url" != "" ] && echo "### 追記")
$([ "$epilogue_url" != "" ] && echo "[${epilogue_url}:embed]")

++EOS
