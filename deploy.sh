#!/bin/bash

npm run build
cp ./dist/sitemap.xml ./dist/sitemap_index.xml
gh-pages -d dist
