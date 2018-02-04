#!/bin/sh

#clean up index
rm eval_data_* result_*

#build_param index (no stem, have stop words)
../app/obj/BuildIndex build_param database.sgml

#build no stem no stop words
../app/obj/BuildIndex build_nostopw_param database.sgml

#build porter stemm no stopw
../app/obj/BuildIndex build_stemmed_nostopw_param database.sgml

#build krovetz stemm no stopw
../app/obj/BuildIndex build_stemmed_krovetz_nostopw_param database.sgml


#evaluate no stem, have stop words using rawtf
../app/obj/RetrievalEval eval_rawtf_param query

#evaluate no stem no stopw
../app/obj/RetrievalEval eval_rawtf_nostopw_param query


#evaluate porter stem, no stopw using rawtf
../app/obj/RetrievalEval eval_rawtf_stemmed_nostopw_param query

#evaluate krovetz stem no stopw
../app/obj/RetrievalEval eval_rawtf_stemmed_krovetz_nostopw_param query_stemmed_nostopw







