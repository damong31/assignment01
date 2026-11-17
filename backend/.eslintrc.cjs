module.exports = {
  root: true,
  env: { browser: true, es2020: true, node: true, es6: true },
  extends: [
    'eslint:recommended',
    'prettier',
  ],
  ignorePatterns: ['dist', '.eslintrc.cjs'],
  parserOptions: { ecmaVersion: 'latest', sourceType: 'module' },
}
  
