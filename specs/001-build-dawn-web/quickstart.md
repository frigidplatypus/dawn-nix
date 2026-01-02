# Quickstart: Build dawn Web Package

## Building the Web Package

1. Ensure Nix is installed with flakes enabled
2. Clone or navigate to the repository
3. Run the build command:

```bash
nix build .#dawn-web
```

This will build the web version of dawn using Emscripten.

## Running the Web Application

After successful build, the web files will be available at `./result/`

- `index.html`: Main HTML file
- `dawn.js`: JavaScript runtime
- `dawn.wasm`: WebAssembly binary

Serve the files with a web server:

```bash
python -m http.server 8000 -d result/
```

Then open http://localhost:8000 in a browser.

## Supported Browsers

- Chrome/Chromium
- Firefox
- Safari (with WebAssembly support)
- Edge