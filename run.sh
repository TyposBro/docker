#!/bin/bash

java --version
mvn --version
git clone https://github.com/typosbro/cse364.git
cd cse364/
mvn package
java -jar target/cse364-project-1.0-SNAPSHOT.jar