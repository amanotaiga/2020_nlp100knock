set |grep LANG
export LANG=ja_JP.utf8

grep "^する\s" neko_aux.txt | sort | uniq --count | sort --numeric-sort --reverse > "neko_aux_suru.txt"
grep "^見る\s" neko_aux.txt | sort | uniq --count | sort --numeric-sort --reverse > "neko_aux_miru.txt"
grep "^与える\s" neko_aux.txt | sort | uniq --count | sort --numeric-sort --reverse > "neko_aux_ataeru.txt"