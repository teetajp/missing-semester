#!/usr/bin/env bash

find . -name "*.html" | xargs tar czf html.tar.gz
