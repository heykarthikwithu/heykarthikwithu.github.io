# I'm Karthik Kumar D K

This is a [demo](wiki/helloworld.md) of git-wiki theme for jekyll.

---
data: [
  [ "apple", "red", "round" ],
  [ "banana", "yellow", "long" ],
  [ "potato", "brown", "bumpy" ]
]
---

<h1>Hello</h1>

<table>
  {% for row in page.data %}
    <tr>
    {% for item in row %}
      <td>
        {{ item }}
      </td>
    {% endfor %}
    </tr>
  {% endfor %}
</table>
