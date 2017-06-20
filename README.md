# Elementary Config

**Elementary Config** is a set of resources and instructions I follow to set up a new development and working environment on  [elementary OS](https://elementary.io) powered machine.

![elementary OS Version](https://img.shields.io/badge/-0.4.1%20Loki-64b9f1.svg?logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAABjUlEQVQ4T13SPcjPYRTG8c%2BFwWuJsJiYJCLEyqIICSmSSGGgDDIwCIW8FLJTYvESJvUYngkZKINVGURSSo9SnqNb91%2F%2F3NPvdzrfc65znRNDr6rm4igW9%2FAvTMR73EjyZZCewUdV7cBenMcntP%2FpeIQJOIU7Se435i%2FYobW922HMw8Ve9DJa8nNcw2iD0%2BXdwmbsajKTnBhSMqN32lJVrXNTcKCB5%2FAMb%2FESK5P8HALbjE%2BSbOzqVmFTAx8nadV2Yk2SY%2F8Ztg7Lk1zp4Hw8bOCjJFur6jQ%2BJGmy%2F76qmoJ7zbQk33vsLhY28EGSbVV1HGNJbvaEybiNq0le9VgzbjaWNvBpkk1VtQKXkqyrqkW4gHNJXndoDzZgNx408CxGkoxW1Qja0n%2FgSJLPVTULZzANh7CsFRiso%2B2oSWuujmE93mAmpnYl96uqOdzWsX9wANt78sEk41XVdrcAH5N861IbdL0dQpKHwyfX4H19rhf%2FrWQ1TuJWg%2F6d3JD9c9psWILfGMckvOtH%2FnWQ%2BwddkrYPQjXONwAAAABJRU5ErkJggg%3D%3D)

## Download and Unpack

```bash
cd /tmp && \
curl -LOk https://github.com/spodin/elementary-config/archive/master.zip && \
unzip master.zip && \
rm master.zip
```

## Checklist

1. [OS](#1-prep-elementary-os)
2. [IntelliJ IDEA](#3-prep-intellij-idea)
3. [Google Chrome](#4-prep-google-chrome)
4. [Double Commander](#5-customize-double-commander)

---

### 1. Prep elementary OS

- `./install.sh`
- `./appearance.sh`
- `./terminal/ocean-theme.sh`

### 2. Prep IntelliJ IDEA

- [Download](https://www.jetbrains.com/idea/specials/idea/idea.html) Linux-related distribution (.tar.gz)
- Appearance & behavior customizations (Appearance ⯈ UI Options):
  - Theme: Darcula
  - Override default fonts by: SF UI Text (size: 12)
- Editor customizations (Colors & Fonts ⯈ Font ⯈ Editor Font):
  - Primary font: Monospaced or [FiraCode](https://github.com/tonsky/FiraCode) (size: 14)
- Code style (Code Style ⯈ Java ⯈ Wrapping and Braces ⯈ Chained method calls):
  - Align when multiline: `true`
- Enable zero latency typing by appending `editor.zero.latency.typing=true` to `idea.properties`
- Install plugins:
  - [SonarLint](https://plugins.jetbrains.com/plugin/7973)
  - [Key Promoter](https://plugins.jetbrains.com/plugin/4455)
  - [CodeGlance](https://plugins.jetbrains.com/plugin/7275)
  - [CheckStyle-IDEA](https://plugins.jetbrains.com/plugin/1065)
  - [GitLab Projects](https://plugins.jetbrains.com/plugin/7975)
  - [Lombok Plugin](https://plugins.jetbrains.com/plugin/6317)

### 3. Prep Google Chrome

- Install extensions:
  - [AdBlock](https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom?utm_source=chrome-app-launcher-info-dialog)
  - [AdBlock Plus](https://chrome.google.com/webstore/detail/adblock-plus/cfhdojbkjhnklbpkdaibdccddilifddb?utm_source=chrome-app-launcher-info-dialog)
  - [Checker Plus for Gmail™](https://chrome.google.com/webstore/detail/checker-plus-for-gmail/oeopbcgkkoapgobdbedcemjljbihmemj?utm_source=chrome-app-launcher-info-dialog)
  - [Evernote Web Clipper](https://chrome.google.com/webstore/detail/evernote-web-clipper/pioclpoplcdbaefihamjohnefbikjilc?utm_source=chrome-app-launcher-info-dialog)
  - [OneTab](https://chrome.google.com/webstore/detail/onetab/chphlpgkkbolifaimnlloiipkdnihall?utm_source=chrome-app-launcher-info-dialog)
  - [Save to Pocket](https://chrome.google.com/webstore/detail/save-to-pocket/niloccemoadcdkdjlinkgdfekeahmflj?utm_source=chrome-app-launcher-info-dialog)
  - [TLDRify](https://chrome.google.com/webstore/detail/tldrify/dbphpdgmhigmaepjklmklmlcoinihjdo?utm_source=chrome-app-launcher-info-dialog)
  - [Lingvo Translator+](https://chrome.google.com/webstore/detail/lingvo-translator%20/gjceecgpmolmpdeidmfehcfepdfmmffl?utm_source=chrome-app-launcher-info-dialog)
  - [Papier](https://chrome.google.com/webstore/detail/papier/hhjeaokafplhjoogdemakihhdhffacia) or [Momentum](https://chrome.google.com/webstore/detail/momentum/laookkfknpbbblfpciffpaejjkokdgca?utm_source=chrome-app-launcher-info-dialog)
  - [SmoothScroll](https://chrome.google.com/webstore/detail/smoothscroll/nbokbjkabcmbfdlbddjidfmibcpneigj?utm_source=chrome-app-launcher-info-dialog)
  - [PostMan](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?utm_source=chrome-app-launcher-info-dialog)
  - [Octotree](https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc?utm_source=chrome-app-launcher-info-dialog)
- Install [Apple Gray PixelPerfect Mac OS Match](https://chrome.google.com/webstore/detail/apple-gray-pixelperfect-m/oknopifggnllajnlkbomjflgbgjhpaej) theme.

### 4. Customize Double Commander

- Change fonts:

| Property        | Name       | Weight  | Size |
|-----------------|------------|---------|------|
| Main font       | SF UI Text | Regular | 11   |
| Editor font     | SF Mono    | Regular | 10   |
| Viewer font     | SF Mono    | Regular | 10   |
| ViewerBook font | SF UI Text | Regular | 10   |
| Log font        | SF Mono    | Regular | 10   |
| Console font    | SF Mono    | Regular | 10   |

- Command for running terminal: `pantheon-terminal -w %u`

## Final View Screenshot

![screenshot](final-view.png)

## Thanks To

- [yarik-vv](https://github.com/yarik-vv) / [OS-X-buttons](https://github.com/yarik-vv/OS-X-buttons)
