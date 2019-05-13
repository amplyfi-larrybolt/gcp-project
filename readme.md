# Data analysis
What keys do we have?
```
$ jq -r 'keys[]' JSON/*.JSON | sort | uniq -c
9212 m_BiCnt
9212 m_BiGrams
9212 m_Companies
9212 m_Industry
9212 m_People
9212 m_Places
9212 m_SocialTags
9212 m_Technology
9212 m_Topics
9212 m_TriCnt
9212 m_TriGrams
9212 m_iDocBodyWordCnt
9212 m_szDocBody
9212 m_szDocID
9212 m_szDocSumamry
9212 m_szDocTitle
9212 m_szGeo1
9212 m_szSourceType
9212 m_szSrcUrl
9212 m_szYear
```



What do they contain, and how often across all files

```
jq -r '.m_BiGrams[]' JSON/*.JSON | sort | uniq -c | sort | tail -n20

 426 nuclear power
 427 control system
 428 power source
 442 energy source
 475 negative electrode
 492 positive electrode
 507 secondary battery
 534 current collector
 593 climate change
 642 active material
 656 lithium ion
 672 power plant
 712 united state
 745 fossil fuel
 798 energy storage
 828 natural gas
 964 electric car
 980 renewable energy
1304 fuel cell
1386 electric vehicle

$ jq -r '.m_Companies[]' JSON/*.JSON | sort | uniq -c | sort | tail -n20
 694 Eu
 697 Guess
 764 Ball
 776 Volt
 811 Bmw
 843 Facebook
 862 Seat
 863 Universal
 877 Prior Art
 879 Apple
 934 Matrix
 961 Gap
 968 Revolution
 991 Twitter
1118 Indeed
1511 Signal
1520 Diesel
1995 Target
2063 Path
2343 Google
$ jq -r '.m_Industry[]' JSON/*.JSON | sort | uniq -c   



```



```
$ jq -r '.m_SocialTags[]' JSON/*.JSON | sort | uniq -c          
   1 American people of German descent
   1 Ammunition
   1 Ballistic coefficient
   1 Ballistics
   1 Business
   1 Computer hardware
   1 Computing
   1 Donald Trump presidential campaign
   1 Head-mounted displays
   1 Photo sharing
   1 Social media
   2 Software
   2 Virtual reality
```



```
$ jq -r '.m_BiGrams[]' JSON/*.JSON | sort | uniq -c | wc -l           
  154364
$ ls JSON/ | wc -l
  9212
$ expr 154364 / 9212
16
```

