use "covid_uninstalled.dta"

logistic uninstall hamagen_attitude cellular_attitude hamagen_privacy hamagen_utility covid_concern hamagen_battery hamagen_wrong_location hamagen_errors tech i.gender_numeric ib(first).age_group ib(frequent).education_numeric ib(last).religion_numeric i.corona_positive_numeric ib(last).socio_economy_numeric

//asdoc -- creating a word report

estimates store m1

margins, dydx(*) predict(pr) post

coefplot (m1), drop(_cons) xline(0)


margins gender_numeric, at(hamagen_attitude = (1(0.5)5))
margins , at(hamagen_battery = (1(1)5))
marginsplot
