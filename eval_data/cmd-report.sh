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


echo "output: no stem no stop words using rawtfidf"
../trec_eval qrel result_rawtfidf_nostopw

echo "output: no stem have stop words using rawtfidf"
../trec_eval qrel result_rawtfidf

echo "output: porter stemmer no stopw using rawtfidf"
../trec_eval qrel result_rawtfidf_stemmed_nostopw

echo "output: porter stemmer have stopw using rawtfidf"
../trec_eval qrel result_rawtfidf_stemmed


echo "output: no stem no stop words using logtfidf"
../trec_eval qrel result_logtfidf_nostopw

echo "output: no stem have stop words using logtfidf"
../trec_eval qrel result_logtfidf

echo "output: porter stemmer no stopw using logtfidf"
../trec_eval qrel result_logtfidf_stemmed_nostopw

echo "output: porter stemmer have stopw using logtfidf"
../trec_eval qrel result_logtfidf_stemmed


echo "output: no stem no stop words using okapi"
../trec_eval qrel result_okapi_nostopw

echo "output: no stem have stop words using okapi"
../trec_eval qrel result_okapi

echo "output: porter stemmer no stopw using okapi"
../trec_eval qrel result_okapi_stemmed_nostopw

echo "output: porter stemmer have stopw using okapi"
../trec_eval qrel result_okapi_stemmed