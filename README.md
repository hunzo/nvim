# my nvim config

## install

- golang
- python
- python-venv
- nvm

### shell install

```bash
./clean-install.sh
```

### install

```bash
git clone https://github.com/hunzo/nvim ~/.config/nvim && nvim
```

## CheckHealth

```
:checkheakth <plugin-name>
```

## Update Treesitter

```
:TSUpdate
```

## prettier singleQuote no semi-colon

- create file .prettierrc

```json
{
  "singleQuote": true,
  "semi": false
}
```

## eslint

- create file .eslintrc.json

```json
{
  "env": {
    "browser": true,
    "es6": true
  },
  "parserOptions": {
    "ecmaVersion": "latest"
  }
}
```

## install fonts in Ubuntu

- mkdir -p /usr/share/fonts/nerdfonts
- copy fonts to /usr/share/fonts/nerdfonts
- exec sudo fc-cache -f -v
