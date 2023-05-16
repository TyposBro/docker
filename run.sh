#!/bin/bash

java --version
mvn --version
git clone https://github.com/typosbro/cse364.git
cd cse364/
git checkout milestone2
mvn jacoco:report
mvn package
java -jar target/cse364-project-1.0-SNAPSHOT.jar