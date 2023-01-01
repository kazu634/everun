---
title: "Stravaで振り返る今年のランニング・サイクリング"
date: 2022-12-31
summary: "Stravaの記録で今年一年の運動を振り返ってみました"
topics: "雑記"
authors:
  - "武蔵一弘"
---

イブランOBの武蔵です。今年も大晦日になりましたの、一年を振り返ってみます。

## はじめに
今年最大の変化は、

- Runkeeperから[Strava](https://www.strava.com/)に利用するアプリを変えた
- Apple Watchを利用し始めた

でした。Apple Watchはお散歩でも活動記録として記録してくれて、Stravaに自動登録してくれます。今年一年はあまり運動できなかったのですが、これでだいぶ距離を稼げた気がします。

## Stravaの記録を振り返る
[Strava](https://www.strava.com/)の記録をグラフ化すると、このようになりました。

{{< chart >}}
type: 'bar',
data: {
  labels: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
  datasets: [
    {
      label: 'ランニング',
      data: [105.06, 89, 65, 45, 63.13, 9.84, 0, 29.44, 24, 44.68, 49.31, 28.93, ],
    },
    {
      label: 'サイクリング',
      data: [35.94, 0, 0, 0, 0, 27.08, 0, 0, 0, 22.7, 22.78, 0, ],
    },
    {
      label: 'ウォーキング',
      data: [0, 0, 0, 0, 6.87, 19.08, 20, 18.56, 0, 1.62, 33.91, 58.07, ],
    }
  ]
},
options: {
  scales: {
    x: {
      stacked: true
    },
    y: {
      stacked: true
    }
  }
}
{{< /chart >}}

### ランニングについて
3月くらいから忙しくなり始め、7月がどん底だったのが、はっきりとランニングの距離に反映されています。。来年はもう少しゆっくり仕事したいです。

### サイクリングについて
ランニングすらできていないのに、サイクリングをする元気もあるはずもなく、かなり低空飛行でした。。来年はもっと運動したいです。

### ウォーキングについて
これではいかんということで、自宅から蒲田のサテライトオフィスまでウォーキングし始めたというのと、Apple Watchで記録してStrava連携できることに気づいたことにより、年の後半はウォーキングの距離が伸びています。

ウォーキングがなかったら、あんまり運動できていないですね。

## 2023年に向けて
ランニングの時間を増やすというのと、もう少しサイクリングの時間を増やしていきたいです。