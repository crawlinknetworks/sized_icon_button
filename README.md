# sized_icon_button

Create different size of Icon Buttons

## Getting Started

![](https://github.com/crawlinknetworks/sized_icon_button/blob/master/screenshots/screen1.png?raw=true)

## Install

```
sized_icon_button: <version>
```

## Usage

#### Basic Usage
```
 SizedIconButton(
    icon: Icon(
    Icons.alarm,
    ),
    onPressed: () {
    print("onPressed");
    },
),
```

#### Advanced

```
SizedIconButton(
    color: Colors.blue.shade100,
    padding: EdgeInsets.all(24),
    tooltip: 'Alarm',
    icon: Icon(
    Icons.alarm,
    color: Colors.black,
    size: 48,
    ),
    onPressed: () {
    print("onPressed");
    },
),
```

## Options

```
final Icon icon;
final Function()? onPressed;
final EdgeInsets? padding;
final bool autofocus;
final Color? splashColor;
final Color? focusColor;
final Color? hoverColor;
final Color? color;
final FocusNode? focusNode;
final String? tooltip;
final Decoration? tooltipDecoration;
```


