#!/bin/sh

../trec_eval qrel result_rawtf
../trec_eval qrel result_rawtf_nostopw
../trec_eval qrel result_rawtf_stemmed_nostopw
../trec_eval qrel result_rawtf_stemmed_krovetz_nostopw