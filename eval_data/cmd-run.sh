#!/bin/sh

#clean up index
rm eval_data_* result_*

#build no stem no stop words
../app/obj/BuildIndex build_nostopw_param database.sgml

#build no stem have stop words
../app/obj/BuildIndex build_param database.sgml

#build krovetz stemmer no stopw
../app/obj/BuildIndex build_stemmed_krovetz_nostopw_param database.sgml

#build krovetz stemmer have stopw
../app/obj/BuildIndex build_stemmed_krovetz_param database.sgml

#build porter stemmer no stopw
../app/obj/BuildIndex build_stemmed_nostopw_param database.sgml

#build porter stemmer have stopw
../app/obj/BuildIndex build_stemmed_param database.sgml




#evaluate no stem no stop words using rawtf
../app/obj/RetrievalEval eval_rawtf_nostopw_param query

#evaluate no stem have stop words using rawtf
../app/obj/RetrievalEval eval_rawtf_param query

#evaluate krovetz stemmer no stopw using rawtf
../app/obj/RetrievalEval eval_rawtf_stemmed_krovetz_nostopw_param query

#evaluate krovetz stemmer have stopw using rawtf
../app/obj/RetrievalEval eval_rawtf_stemmed_krovetz_param query

#evaluate porter stemmer no stopw using rawtf
../app/obj/RetrievalEval eval_rawtf_stemmed_nostopw_param query

#evaluate porter stemmer have stopw using rawtf
../app/obj/RetrievalEval eval_rawtf_stemmed_param query


#evaluate no stem no stop words using rawtfidf
../app/obj/RetrievalEval eval_rawtfidf_nostopw_param query

#evaluate no stem have stop words using rawtfidf
../app/obj/RetrievalEval eval_rawtfidf_param query

#evaluate porter stemmer no stopw using rawtfidf
../app/obj/RetrievalEval eval_rawtfidf_stemmed_nostopw_param query

#evaluate porter stemmer have stopw using rawtfidf
../app/obj/RetrievalEval eval_rawtfidf_stemmed_param query


#evaluate no stem no stop words using logtfidf
../app/obj/RetrievalEval eval_logtfidf_nostopw_param query

#evaluate no stem have stop words using logtfidf
../app/obj/RetrievalEval eval_logtfidf_param query

#evaluate porter stemmer no stopw using logtfidf
../app/obj/RetrievalEval eval_logtfidf_stemmed_nostopw_param query

#evaluate porter stemmer have stopw using logtfidf
../app/obj/RetrievalEval eval_logtfidf_stemmed_param query


#evaluate no stem no stop words using okapi
../app/obj/RetrievalEval eval_okapi_nostopw_param query

#evaluate no stem have stop words using okapi
../app/obj/RetrievalEval eval_okapi_param query

#evaluate porter stemmer no stopw using okapi
../app/obj/RetrievalEval eval_okapi_stemmed_nostopw_param query

#evaluate porter stemmer have stopw using okapi
../app/obj/RetrievalEval eval_okapi_stemmed_param query


