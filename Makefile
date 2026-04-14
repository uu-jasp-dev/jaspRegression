# -*- Makefile -*-

all: renv

## Build and install the package via renv:
renv:
	Rscript ./renv_build.R

## Update the packages in the renv project library:
update:
	Rscript -e "renv::update()"

## Update the state of the lockfile to match the renv library state:
snapshot:
	Rscript -e "renv::snapshot()"

## Update the NAMESPACE and help files:
roxygen:
	Rscript --vanilla -e "roxygen2::roxygenize(clean = TRUE)"

.PHONY: renv update snapshot roxygen 
