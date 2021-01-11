---
title: "Vue Gridsome에 google analytics 적용하기"
slug: gridsome-google-analytics
date: 2021-01-04
published: false
tags: ['web', 'gridsome', 'vue', 'frontend', 'google-analytics']
series: false
canonical_url: false
description: "Vue Gridsome 에 google analytics 적용하는 법 정리"
---

## commands

```sh
npm install @gridsome/plugin-google-analytics
```

## configs

`gridsome.config.js`

```js
module.exports = {
  plugins: [
    {
      use: '@gridsome/plugin-google-analytics',
      options: {
        id: 'UA-XXXXXXXXX-X' // GA4는 UA prefix가 없으니 다 지우고 숫자로만 이루어진 id를 넣으시면 됩니다.
      }
    }
  ]
}
```

## References

- [@gridsome/plugin-google-analytics - Gridsome](https://gridsome.org/plugins/@gridsome/plugin-google-analytics)
