#!/bin/sh

curl --output kanjidic2.xml.gz http://nihongo.monash.edu/kanjidic2/kanjidic2.xml.gz
gzip -d kanjidic2.xml.gz
xq . kanjidic2.xml > kanjidic2.json

echo "Sorting by radicals"
jq --argjson radicals '{
  "1": { "radical": "一", "strokes": "1" },
  "2": { "radical": "丨", "strokes": "1" },
  "3": { "radical": "丶", "strokes": "1" },
  "4": { "radical": "丿", "strokes": "1" },
  "5": { "radical": "乙(乚)", "strokes": "1" },
  "6": { "radical": "亅", "strokes": "1" },
  "7": { "radical": "二", "strokes": "2" },
  "8": { "radical": "亠", "strokes": "2" },
  "9": { "radical": "人(亻𠆢)", "strokes": "2" },
  "10": { "radical": "儿", "strokes": "2" },
  "11": { "radical": "入(𠆢)", "strokes": "2" },
  "12": { "radical": "八", "strokes": "2" },
  "13": { "radical": "冂", "strokes": "2" },
  "14": { "radical": "冖", "strokes": "2" },
  "15": { "radical": "冫", "strokes": "2" },
  "16": { "radical": "几", "strokes": "2" },
  "17": { "radical": "凵", "strokes": "2" },
  "18": { "radical": "刀(刂)", "strokes": "2" },
  "19": { "radical": "力", "strokes": "2" },
  "20": { "radical": "勹", "strokes": "2" },
  "21": { "radical": "匕", "strokes": "2" },
  "22": { "radical": "匚", "strokes": "2" },
  "23": { "radical": "匸", "strokes": "2" },
  "24": { "radical": "十", "strokes": "2" },
  "25": { "radical": "卜", "strokes": "2" },
  "26": { "radical": "卩(⺋)", "strokes": "2" },
  "27": { "radical": "厂", "strokes": "2" },
  "28": { "radical": "厶", "strokes": "2" },
  "29": { "radical": "又", "strokes": "2" },
  "30": { "radical": "口", "strokes": "3" },
  "31": { "radical": "囗", "strokes": "3" },
  "32": { "radical": "土", "strokes": "3" },
  "33": { "radical": "士", "strokes": "3" },
  "34": { "radical": "夂", "strokes": "3" },
  "35": { "radical": "夊", "strokes": "3" },
  "36": { "radical": "夕", "strokes": "3" },
  "37": { "radical": "大", "strokes": "3" },
  "38": { "radical": "女", "strokes": "3" },
  "39": { "radical": "子", "strokes": "3" },
  "40": { "radical": "宀", "strokes": "3" },
  "41": { "radical": "寸", "strokes": "3" },
  "42": { "radical": "小(⺌)", "strokes": "3" },
  "43": { "radical": "尢(尣兀)", "strokes": "3" },
  "44": { "radical": "尸", "strokes": "3" },
  "45": { "radical": "屮", "strokes": "3" },
  "46": { "radical": "山", "strokes": "3" },
  "47": { "radical": "巛(川)", "strokes": "3" },
  "48": { "radical": "工", "strokes": "3" },
  "49": { "radical": "己(巳已)", "strokes": "3" },
  "50": { "radical": "巾", "strokes": "3" },
  "51": { "radical": "干", "strokes": "3" },
  "52": { "radical": "幺", "strokes": "3" },
  "53": { "radical": "广", "strokes": "3" },
  "54": { "radical": "廴", "strokes": "3" },
  "55": { "radical": "廾", "strokes": "3" },
  "56": { "radical": "弋", "strokes": "3" },
  "57": { "radical": "弓", "strokes": "3" },
  "58": { "radical": "彐(彑)", "strokes": "3" },
  "59": { "radical": "彡", "strokes": "3" },
  "60": { "radical": "彳", "strokes": "3" },
  "61": { "radical": "心(忄㣺)", "strokes": "4" },
  "62": { "radical": "戈", "strokes": "4" },
  "63": { "radical": "戸(戶)", "strokes": "4" },
  "64": { "radical": "手(扌)", "strokes": "4" },
  "65": { "radical": "支(⺙)", "strokes": "4" },
  "66": { "radical": "攴(攵)", "strokes": "4" },
  "67": { "radical": "文", "strokes": "4" },
  "68": { "radical": "斗", "strokes": "4" },
  "69": { "radical": "斤", "strokes": "4" },
  "70": { "radical": "方", "strokes": "4" },
  "71": { "radical": "无(旡)", "strokes": "4" },
  "72": { "radical": "日", "strokes": "4" },
  "73": { "radical": "曰", "strokes": "4" },
  "74": { "radical": "月", "strokes": "4" },
  "75": { "radical": "木", "strokes": "4" },
  "76": { "radical": "欠", "strokes": "4" },
  "77": { "radical": "止", "strokes": "4" },
  "78": { "radical": "歹(歺)", "strokes": "4" },
  "79": { "radical": "殳", "strokes": "4" },
  "80": { "radical": "毋(母毌)", "strokes": "4" },
  "81": { "radical": "比", "strokes": "4" },
  "82": { "radical": "毛", "strokes": "4" },
  "83": { "radical": "氏", "strokes": "4" },
  "84": { "radical": "气", "strokes": "4" },
  "85": { "radical": "水(氵氺)", "strokes": "4" },
  "86": { "radical": "火(灬)", "strokes": "4" },
  "87": { "radical": "爪(爫⺤)", "strokes": "4" },
  "88": { "radical": "父", "strokes": "4" },
  "89": { "radical": "爻", "strokes": "4" },
  "90": { "radical": "爿", "strokes": "4" },
  "91": { "radical": "片", "strokes": "4" },
  "92": { "radical": "牙", "strokes": "4" },
  "93": { "radical": "牛(牜)", "strokes": "4" },
  "94": { "radical": "犬(犭)", "strokes": "4" },
  "95": { "radical": "玄", "strokes": "5" },
  "96": { "radical": "玉(王𤣩)", "strokes": "5" },
  "97": { "radical": "瓜", "strokes": "5" },
  "98": { "radical": "瓦", "strokes": "5" },
  "99": { "radical": "甘", "strokes": "5" },
  "100": { "radical": "生", "strokes": "5" },
  "101": { "radical": "用", "strokes": "5" },
  "102": { "radical": "田", "strokes": "5" },
  "103": { "radical": "疋(𤴔)", "strokes": "5" },
  "104": { "radical": "疒", "strokes": "5" },
  "105": { "radical": "癶", "strokes": "5" },
  "106": { "radical": "白", "strokes": "5" },
  "107": { "radical": "皮", "strokes": "5" },
  "108": { "radical": "皿", "strokes": "5" },
  "109": { "radical": "目(罒)", "strokes": "5" },
  "110": { "radical": "矛", "strokes": "5" },
  "111": { "radical": "矢", "strokes": "5" },
  "112": { "radical": "石", "strokes": "5" },
  "113": { "radical": "示(礻)", "strokes": "5" },
  "114": { "radical": "禸", "strokes": "5" },
  "115": { "radical": "禾", "strokes": "5" },
  "116": { "radical": "穴", "strokes": "5" },
  "117": { "radical": "立", "strokes": "5" },
  "118": { "radical": "竹(⺮)", "strokes": "6" },
  "119": { "radical": "米", "strokes": "6" },
  "120": { "radical": "糸(糹)", "strokes": "6" },
  "121": { "radical": "缶", "strokes": "6" },
  "122": { "radical": "网(罒㓁)", "strokes": "6" },
  "123": { "radical": "羊(𦍌)", "strokes": "6" },
  "124": { "radical": "羽", "strokes": "6" },
  "125": { "radical": "老(耂)", "strokes": "6" },
  "126": { "radical": "而", "strokes": "6" },
  "127": { "radical": "耒", "strokes": "6" },
  "128": { "radical": "耳", "strokes": "6" },
  "129": { "radical": "聿", "strokes": "6" },
  "130": { "radical": "肉(⺼)", "strokes": "6" },
  "131": { "radical": "臣", "strokes": "6" },
  "132": { "radical": "自", "strokes": "6" },
  "133": { "radical": "至", "strokes": "6" },
  "134": { "radical": "臼", "strokes": "6" },
  "135": { "radical": "舌", "strokes": "6" },
  "136": { "radical": "舛", "strokes": "6" },
  "137": { "radical": "舟", "strokes": "6" },
  "138": { "radical": "艮", "strokes": "6" },
  "139": { "radical": "色", "strokes": "6" },
  "140": { "radical": "艸(艹⺿)", "strokes": "6" },
  "141": { "radical": "虍", "strokes": "6" },
  "142": { "radical": "虫", "strokes": "6" },
  "143": { "radical": "血", "strokes": "6" },
  "144": { "radical": "行", "strokes": "6" },
  "145": { "radical": "衣(衤)", "strokes": "6" },
  "146": { "radical": "襾(西覀)", "strokes": "6" },
  "147": { "radical": "見", "strokes": "7" },
  "148": { "radical": "角", "strokes": "7" },
  "149": { "radical": "言", "strokes": "7" },
  "150": { "radical": "谷", "strokes": "7" },
  "151": { "radical": "豆", "strokes": "7" },
  "152": { "radical": "豕", "strokes": "7" },
  "153": { "radical": "豸", "strokes": "7" },
  "154": { "radical": "貝", "strokes": "7" },
  "155": { "radical": "赤", "strokes": "7" },
  "156": { "radical": "走", "strokes": "7" },
  "157": { "radical": "足(𧾷)", "strokes": "7" },
  "158": { "radical": "身", "strokes": "7" },
  "159": { "radical": "車", "strokes": "7" },
  "160": { "radical": "辛", "strokes": "7" },
  "161": { "radical": "辰", "strokes": "7" },
  "162": { "radical": "辵(⻍)", "strokes": "7" },
  "163": { "radical": "邑(阝)", "strokes": "7" },
  "164": { "radical": "酉", "strokes": "7" },
  "165": { "radical": "釆", "strokes": "7" },
  "166": { "radical": "里", "strokes": "7" },
  "167": { "radical": "金", "strokes": "8" },
  "168": { "radical": "長(镸)", "strokes": "8" },
  "169": { "radical": "門", "strokes": "8" },
  "170": { "radical": "阜(阝)", "strokes": "8" },
  "171": { "radical": "隶", "strokes": "8" },
  "172": { "radical": "隹", "strokes": "8" },
  "173": { "radical": "雨(⻗)", "strokes": "8" },
  "174": { "radical": "青(靑)", "strokes": "8" },
  "175": { "radical": "非", "strokes": "8" },
  "176": { "radical": "面", "strokes": "9" },
  "177": { "radical": "革", "strokes": "9" },
  "178": { "radical": "韋", "strokes": "9" },
  "179": { "radical": "韭", "strokes": "9" },
  "180": { "radical": "音", "strokes": "9" },
  "181": { "radical": "頁", "strokes": "9" },
  "182": { "radical": "風", "strokes": "9" },
  "183": { "radical": "飛", "strokes": "9" },
  "184": { "radical": "食(𩙿飠)", "strokes": "9" },
  "185": { "radical": "首", "strokes": "9" },
  "186": { "radical": "香", "strokes": "9" },
  "187": { "radical": "馬", "strokes": "10" },
  "188": { "radical": "骨", "strokes": "10" },
  "189": { "radical": "高", "strokes": "10" },
  "190": { "radical": "髟", "strokes": "10" },
  "191": { "radical": "鬥", "strokes": "10" },
  "192": { "radical": "鬯", "strokes": "10" },
  "193": { "radical": "鬲", "strokes": "10" },
  "194": { "radical": "鬼", "strokes": "10" },
  "195": { "radical": "魚", "strokes": "11" },
  "196": { "radical": "鳥", "strokes": "11" },
  "197": { "radical": "鹵", "strokes": "11" },
  "198": { "radical": "鹿", "strokes": "11" },
  "199": { "radical": "麥(麦)", "strokes": "11" },
  "200": { "radical": "麻", "strokes": "11" },
  "201": { "radical": "黃(黄)", "strokes": "12" },
  "202": { "radical": "黍", "strokes": "12" },
  "203": { "radical": "黑(黒)", "strokes": "12" },
  "204": { "radical": "黹", "strokes": "12" },
  "205": { "radical": "黽", "strokes": "13" },
  "206": { "radical": "鼎", "strokes": "13" },
  "207": { "radical": "鼓", "strokes": "13" },
  "208": { "radical": "鼠", "strokes": "13" },
  "209": { "radical": "鼻", "strokes": "14" },
  "210": { "radical": "齊(斉)", "strokes": "14" },
  "211": { "radical": "齒(歯)", "strokes": "15" },
  "212": { "radical": "龍(竜)", "strokes": "16" },
  "213": { "radical": "龜(亀)", "strokes": "16" },
  "214": { "radical": "龠", "strokes": "17" }
}' \
'[.kanjidic2.radicals, (.kanjidic2.character[]|({ kanji: .literal, radical: (.radical.rad_value|(if type == "array" then .[0]."#text" else ."#text" end)),
strokes: .misc.stroke_count|(if type == "array" then .[0] else . end),
onyomi: [.reading_meaning.rmgroup.reading|(if type == "array" then .[]|(select(."@r_type"=="ja_on")|."#text") else (if ."@r_type"=="ja_on" then ."#text" else null end) end)],
kunyomi: [.reading_meaning.rmgroup.reading|(if type == "array" then .[]|(select(."@r_type"=="ja_kun")|."#text") else (if ."@r_type"=="ja_kun" then ."#text" else null end) end)],
nanori: .reading_meaning.nanori,
variants: .misc.variant,
cps: .codepoint.cp_value,
kokuji: ([(.reading_meaning.rmgroup.meaning|(if type == "array" then .[] == "(kokuji)" else . == "(kokuji)" end))]|contains([true])),
korean: [.reading_meaning.rmgroup.reading|(if type == "array" then .[]|(select(."@r_type"=="korean_h")|."#text") else (if ."@r_type"=="korean_h" then ."#text" else null end) end)]}))]|
{characters: .[1:], radicals: .[0]}|[(.characters[] as $chars| $chars|(.radical as $rad | .radical= ($radicals."\($rad)") ))]| group_by(.radical)|[.[]|sort_by(.strokes)]|.[]|={radical: .[0].radical.radical,strokes: .[0].radical.strokes,list: .}' kanjidic2.json>kanji-sakuin.json

#jq '[.[]|select(.kanji==.radical[0:1])]|sort|[.[]|{(.radical):(.strokes)}]|reduce .[] as $m ({}; . + $m)' temp.json>radicals-strokes.json
#jq --slurpfile rads radicals-strokes.json 'group_by(.radical)|[.[]|sort_by(.strokes)]|.[]|={radical: .[0].radical,strokes: ($rads[]."\(.[0].radical)"),list: .}' temp.json>kanji-sakuin.json

echo "adding variants to each kanji"
raku -MJSON::Fast -e 'my $file = "kanji-sakuin.json".IO.slurp or die "cant open kanji-sakuin.json";

my $radicals = from-json($file);

# collect all variants for a all kanji in a hash
my %variants;
for $radicals.kv -> $i, $rads {
	for $rads{"list"}.kv -> $j, $kanji {
		for $kanji{"cps"}.kv -> $k, $cp {
			#say $kanji{"kanji"}, $k, $cp;
			%variants{$cp{"@cp_type"}}{$cp{"#text"}} = $kanji{"kanji"};
		}
	}
}
# redistribute the variants from the hash back into the json
for $radicals.kv -> $i, $rads {
	for $rads{"list"}.kv -> $j, $kanji {
		my @vars;
		if $kanji{"variants"} ~~ Array {
			for $kanji{"variants"}.kv -> $k, $cp {
				 @vars.append: $_ if $_ given %variants{$cp{"@var_type"}}{$cp{"#text"}};
			}
		} elsif $kanji{"variants"} {
				@vars.append:  $_ if $_ given %variants{$kanji{"variants"}{"@var_type"}}{$kanji{"variants"}{"#text"}};
		}
		$kanji{"variants"} = @vars;
		$kanji{"cps"}:delete;
		$kanji{"radical"}:delete;
	}
}
say to-json $radicals
' kanji-sakuin.json | sponge kanji-sakuin.json

echo "generating the html files"
echo "use chromium to generate the pdf"
raku ./kanji-sakuin.raku > kanji-rakuin-byside.html
raku ./kanji-sakuin-inside.raku > kanji-rakuin-inside.html
