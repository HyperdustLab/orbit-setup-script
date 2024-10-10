module.exports = {
  // ... existing code ...
  rules: {
    // 禁用所有规则
    'prettier/prettier': 'off',
    'no-unused-vars': 'off',
    'prefer-const': 'off',
    'object-curly-spacing': 'off',
    // ... 其他规则禁用 ...
  },
  overrides: [
    {
      files: ['*.ts', '*.tsx'],
      rules: {
        // 禁用所有规则
        'no-empty-pattern': 'off',
        'prettier/prettier': 'off',
        '@typescript-eslint/member-delimiter-style': 'off',
        '@typescript-eslint/no-explicit-any': 'off',
        '@typescript-eslint/no-use-before-define': 'off',
        '@typescript-eslint/no-non-null-assertion': 'off',
        '@typescript-eslint/ban-ts-comment': 'off',
        '@typescript-eslint/no-unused-vars': 'off',
        'no-implicit-coercion': 'off',
        'no-constant-condition': 'off',
        'no-empty': 'off',
      },
    },
    {
      files: ['src/**/*.ts', 'src/**/*.tsx'],
      rules: {
        // 禁用所有规则
        'no-empty-pattern': 'off',
        'prettier/prettier': 'off',
        '@typescript-eslint/member-delimiter-style': 'off',
        '@typescript-eslint/no-explicit-any': 'off',
        '@typescript-eslint/no-use-before-define': 'off',
        '@typescript-eslint/no-non-null-assertion': 'off',
        '@typescript-eslint/ban-ts-comment': 'off',
        '@typescript-eslint/no-unused-vars': 'off',
        '@typescript-eslint/tslint/config': 'off',
        'no-implicit-coercion': 'off',
        '@typescript-eslint/no-shadow': 'off',
      },
    },
  ],
}
