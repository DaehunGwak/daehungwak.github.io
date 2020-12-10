---
title: youtube iframe 반응형으로 만들기
slug: youtube-reponsive-iframe
date: 2020-12-11
published: true
tags: ['html', 'css', 'web', 'frontend', 'youtube']
series: false
canonical_url: false
description: "iframe태그를 16:9 비율로 상위 요소에 100% width로 바인딩 해보기"
---

유튜브를 블로그에 아카이빙하려는데 반응형으로 만들고 싶어 남깁니다.

iframe은 css 반응형으로 구성하려면 약간의 트릭이 필요합니다.. 왜냐하면 그냥 width height 100% 로 줘버리면...

![height가 깨져버린 youtube iframe 요소..](../images/youtube-iframe.png)

위와 같이 깨진 모습을 볼 수 있습니다.. 🤯

따라서 div 요소로 padding값을 미리 채운 내부에서 iframe 의 width height를 100% 하는 방식으로 취합니다.

`html`

```html
<div class="video-container">
  <iframe src="https://www.youtube.com/embed/PZze0csQVoM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style=""></iframe>
</div>
```

`css`

```css
.video-container {
  position: relative;
  padding-bottom: 56.25%;
  margin-bottom: 20px;
  height: 0;
  overflow: hidden;
}

.video-container iframe,
.video-container object,
.video-container embed {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

```

패딩값은 왜 56.25% 일까 했는데 16:9라 그런것이라 짐작합니다.  
[샘플은 링크](/2020-12-10-didi-han/)에서 확인하실 수 있습니다.


## Reference

- https://erim1005.tistory.com/entry/Youtube-iframe-width-100-height-auto