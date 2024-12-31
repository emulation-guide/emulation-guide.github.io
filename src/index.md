---
title: Home
nav_order: 0
---
# Welcome to the Retroid Pocket 5 Emulation Hub

Your ultimate resource for setting up and optimizing **Retroid Pocket 5** emulation. This site provides a comprehensive, hand-picked database of games, emulators, and settings to help you achieve smooth, full-speed gameplay at **1080p**.

---

## 🚀 What You'll Find Here

### 🎮 **Game Database**
Explore an extensive collection of games, each meticulously tested to ensure optimal performance. Each entry includes:
- Full speed settings for 1080p gameplay.
- Emulator-specific tweaks.
- Game-specific tweaks.
- Controller configurations.

👉 [Browse Games](/games/)

---

### 🕹️ **Emulator Guides**
Detailed guides for configuring the best emulators for Retroid Pocket 5, including:
- Installation instructions.
- Performance settings.
- Compatibility tips.

👉 [View Emulator Guides](/systems/)

---

## 📋 Supported Systems

This site includes settings and optimizations for the following platforms:

<ul>
  {% for code in site.data.systems %}
    <li>
      <a href="/systems/{{ code[1].manufacturer | downcase }}/{{ code[0] }}.html">{{ code[1].title }}</a>
      (by {{ code[1].manufacturer }})
    </li>
  {% endfor %}
</ul>

---

## 🌟 Getting Started

Ready to dive in? Here’s how to begin:
1. **Set Up Your System**: [Follow our First Steps guide.](/first-steps.html)
2. **Install Emulators**: [Choose the best emulators for your needs.](/systems/)
3. **Find Your Games**: [Browse the game database for settings.](/games/)

---

## 🛡️ Stay Updated

We’re always adding new games, systems, and optimizations. Bookmark this page and check back regularly for the latest updates!

---
