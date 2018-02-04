#!/bin/sh
echo "output: no stem no stop words using rawtf"
../trec_eval qrel result_rawtf_nostopw

echo "output: no stem have stop words using rawtf"
../trec_eval qrel result_rawtf

echo "output: krovetz stemmer no stopw using rawtf"
../trec_eval qrel result_rawtf_stemmed_krovetz_nostopw

echo "output: krovetz stemmer have stopw using rawtf"
../trec_eval qrel result_rawtf_stemmed_krovetz

echo "output: porter stemmer no stopw using rawtf"
../trec_eval qrel result_rawtf_stemmed_nostopw

echo "output: porter stemmer have stopw using rawtf"
../trec_eval qrel result_rawtf_stemmed

