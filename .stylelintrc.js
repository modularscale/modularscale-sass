module.exports = {
  "extends": [
    "stylelint-config-sass-guidelines",
  ],
  rules: {
    'scss/at-function-pattern': "^_?[a-z]+([a-z0-9-]+[a-z0-9]+)?$",
    'scss/at-mixin-pattern': "^_?[a-z]+([a-z0-9-]+[a-z0-9]+)?$",
    'scss/dollar-variable-pattern': "^_?[a-z0-9]+(-[a-z0-9]+)*(__[a-z0-9]+(-[a-z0-9]+)*)?(--[a-z0-9]+(-[a-z0-9]+)*)?$",
    "at-rule-empty-line-before": [
      "always", {
        "except": [
          "blockless-after-same-name-blockless",
          "first-nested"
        ],
        "ignore": [
          "after-comment"
        ],
        "ignoreAtRules": [
          "else",
          "forward",
          "use"
        ]
      }
    ],
    "order/properties-alphabetical-order": null,
    "selector-pseudo-element-case": "lower",
    "color-hex-case": "lower",
    "color-hex-length": "long",
    "at-rule-name-space-after": "always",
    "at-rule-no-vendor-prefix": true,
    "at-rule-semicolon-space-before": "never",
    "block-closing-brace-empty-line-before": null,
    "block-closing-brace-newline-after": null,
    "block-opening-brace-space-before": "always",
    "block-opening-brace-space-after": "never-single-line",
    "block-no-empty": null,
    "color-named": "never",
    "declaration-colon-space-before": "never",
    "declaration-colon-space-after": "always",
    "selector-combinator-space-after": "always",
    "declaration-block-semicolon-newline-after": "always-multi-line",
    "declaration-block-semicolon-newline-before": "never-multi-line",
    "declaration-block-semicolon-space-after": "always-single-line",
    // "declaration-empty-line-before": [
    //   "always", {
    //     "except": [
    //       "first-nested",
    //       "after-comment",
    //       "after-declaration"
    //     ]
    //   }
    // ],
    "declaration-empty-line-before": null,
    "declaration-no-important": true,
    "font-family-name-quotes": "always-where-recommended",
    "function-parentheses-space-inside": "never-single-line",
    "function-url-no-scheme-relative": true,
    "function-url-quotes": "always",
    "length-zero-no-unit": true,
    "max-empty-lines": 2,
    "max-line-length": null,
    // increasing max nesting because Sass-True already needs3
    "max-nesting-depth": 4,
    "media-feature-name-no-vendor-prefix": true,
    "media-feature-parentheses-space-inside": "never",
    "media-feature-range-operator-space-after": "always",
    "media-feature-range-operator-space-before": "never",
    "no-descending-specificity": null,
    "no-duplicate-selectors": true,
    "number-leading-zero": "always",
    "property-no-vendor-prefix": true,
    // "rule-empty-line-before": [
    //   "always", {
    //     "except": [
    //       "first-nested"
    //     ],
    //     "ignore": [
    //       "after-comment"
    //     ]
    //   }
    // ],
    "selector-attribute-quotes": "always",
    "selector-class-pattern": [
      "^_?[a-z0-9]+(-[a-z0-9]+)*(__[a-z0-9]+(-[a-z0-9]+)*)?(--[a-z0-9]+(-[a-z0-9]+)*)?$",
      {
        "message": "Class names should match the BEM naming convention"
      }
    ],
    "selector-list-comma-newline-after": "always",
    "selector-list-comma-newline-before": "never-multi-line",
    "selector-list-comma-space-after": "always-single-line",
    "selector-list-comma-space-before": "never-single-line",
    "declaration-colon-newline-after": null,
    "selector-max-attribute": 2,
    "selector-max-class": 4,
    "selector-max-combinators": 4,
    "selector-max-compound-selectors": 4,
    "selector-max-empty-lines": 1,
    "selector-max-id": 0,
    "selector-max-specificity": null,
    "selector-max-universal": 2,
    "selector-no-qualifying-type": [
      true,
      {
        "ignore": [
          "attribute"
        ]
      }
    ],
    "selector-no-vendor-prefix": true,
    "string-quotes": "single",
    "value-keyword-case": "lower",
    "value-list-comma-newline-after": "never-multi-line",
    "value-list-comma-newline-before": "never-multi-line",
    "value-list-comma-space-after": "always",
    "value-no-vendor-prefix": true
  }
};
