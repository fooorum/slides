---
marp: true
theme: uncover
class: invert
math: mathjax
---

# Fooorum

Ein simples Internetforum.

---

## Code

```ts
const Forum = defineTable({
  columns: {
    id: column.number({ primaryKey: true }),
    name: column.text({ unique: true }),
    description: column.text({ optional: true }),
    createdAt: column.date({ default: NOW }),
  },
});
```
