# homebrew-tap

A Homebrew tap for personal CLI tools.

## Installation

```bash
brew tap theoryzhenkov/homebrew-tap
brew install <tool-name>
```

## Available Formulas

- fig: That is fig: the stupid file manager

## Development

To add a new formula:

1. Create a new `.rb` file in the `Formula/` directory
2. Follow the [Homebrew formula guidelines](https://docs.brew.sh/Formula-Cookbook)
3. Test locally with `brew install ./Formula/your-formula.rb`
