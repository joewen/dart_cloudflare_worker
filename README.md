# Dart Cloudflare Worker

A demonstration project showing how to compile Dart code to JavaScript and run it on Cloudflare Workers.

## Overview

This project demonstrates how to use Dart's JavaScript interop capabilities to create a Cloudflare Worker. The Dart code is compiled to JavaScript and integrated with Cloudflare Workers' runtime environment.

## Project Structure

```
.
├── lib/
│   └── main.dart          # Main Dart source code
├── index.js               # Cloudflare Worker entry point
├── pubspec.yaml           # Dart package configuration
├── package.json           # Node.js package configuration
└── wrangler.toml          # Cloudflare Workers configuration
```

## Prerequisites

- [Dart SDK](https://dart.dev/get-dart) (>=3.0.0)
- [Node.js](https://nodejs.org/) (for Cloudflare Workers)
- [Wrangler CLI](https://developers.cloudflare.com/workers/wrangler/) (Cloudflare Workers CLI)

## Setup

1. Install Dart dependencies:
```bash
dart pub get
```

2. Install Node.js dependencies (if any):
```bash
npm install
```

## Development

1. Compile your Dart code:
```bash
dart compile js -O2 --server-mode lib/main.dart -o dart.js
```

2. Login to Cloudflare (if not already logged in):
```bash
npx wrangler login
```

3. Deploy to Cloudflare Workers:
```bash
npx wrangler deploy index.js
```

## Configuration

### `wrangler.toml`

The Cloudflare Workers configuration file:
- `name`: Worker name (currently "hello-dart-worker")
- `type`: Set to "javascript" for JavaScript-based workers
- `compatibility_date`: Specifies the compatibility date for the Worker runtime

## Notes

- Make sure to recompile Dart code (`dart compile js lib/main.dart -o dart.js`) whenever you make changes to `lib/main.dart`
- The compiled `dart.js` file is required for the Worker to run
- The project uses Dart 3.0+ with JavaScript interop features
- Generated files (`dart.js`, `dart.js.deps`, `dart.js.map`) should be added to `.gitignore` if you prefer to build them as part of your deployment process

## License

MIT
