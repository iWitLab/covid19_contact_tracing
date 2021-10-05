use "covid_install.dta"

logistic installed hamagen_attitude cellular_attitude hamagen_privacy hamagen_limited_utility covid_concern solve_computer_problems tech ib(1).gender_numeric ib(first).age_group ib(frequent).education_numeric ib(last).religion_numeric

estimates store m1

margins, dydx(*) predict(pr) post

coefplot (m1), drop(_cons) xline(1)


margins gender_numeric, at(hamagen_attitude = (1(0.5)5))
margins , at(cellular_attitude = (1(0.5)5))
margins , at(hamagen_privacy = (1(0.5)5))
marginsplot

