npx browserify -d -s GIF -t coffeeify src/gif.coffee | npx exorcist dist/_gif.js.map > dist/_gif.js
npx uglifyjs dist/_gif.js    --preamble "// gif.js $VERSION - $URL"    --in-source-map dist/_gif.js.map    --source-map dist/gif.js.map    --source-map-url gif.js.map    > dist/gif.js
npx browserify -d -t coffeeify --bare src/gif.worker.coffee | npx exorcist dist/_gif.worker.js.map > dist/_gif.worker.js
npx uglifyjs dist/_gif.worker.js    --preamble "// gif.worker.js $VERSION - $URL"    --in-source-map dist/_gif.worker.js.map    --source-map dist/gif.worker.js.map    --source-map-url gif.worker.js.map    > dist/gif.worker.js
rm dist/_*