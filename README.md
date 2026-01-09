PAD-linter (Preventive Architecture of Documents Linter)
Vision
文書（特に科学論文や技術記事）における**「スパゲッティ構造」**を未然に防ぐための、予防的設計（Preventive Architecture）支援ツールです。

The Problem
文書が「密結合」になると、情報の更新が困難になり、読者の認知負荷が増大します。

Concept: Docs as Code & Architecture
疎結合 (Loose Coupling): 各セクションを独立したオブジェクトとして扱う。

一方向の依存: 循環参照や論理の矛盾を自動検知する。

DRY (Don't Repeat Yourself): 概念の重複を排除する。

Road Map (WIP)
Markdownのパースとセクション抽出

セクション間の依存関係（リンク、キーワード）の可視化

Mermaid記法によるアーキテクチャ図の自動生成

This is a project by a Ph.D. who loves architecture. Contributions and ideas are welcome!
