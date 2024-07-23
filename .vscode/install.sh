# bierner.markdown-mermaid
# biomejs.biome
# charliermarsh.ruff
# christian-kohler.path-intellisense
# cweijan.dbclient-jdbc
# cweijan.vscode-database-client2
# davidanson.vscode-markdownlint
# dineug.vuerd-vscode
# dorzey.vscode-sqlfluff
# doublebot.doublebot
# figma.figma-vscode-extension
# github.copilot
# github.copilot-chat
# gruntfuggly.todo-tree
# humao.rest-client
# jnoortheen.nix-ide
# mark-wiemer.vscode-autohotkey-plus-plus
# mhutchie.git-graph
# mosapride.zenkaku
# ms-azuretools.vscode-docker
# ms-ceintl.vscode-language-pack-ja
# ms-python.debugpy
# ms-python.python
# ms-python.vscode-pylance
# nkosakul.copy-cat
# oderwat.indent-rainbow
# plievone.vscode-template-literal-editor
# pucelle.run-on-save
# redhat.vscode-yaml
# statelyai.stately-vscode
# tamasfe.even-better-toml
# yzhang.markdown-all-in-one
# ziglang.vscode-zig

# uninstall these with `code --uninstall-extension <extension-name>`
#!/bin/bash

extensions=(
        "adpyke.vscode-sql-formatter"
        "alexshen.classdiagram-ts"
        "ckolkman.vscode-postgres"
        "clemenspeters.format-json"
        "corschenzi.mermaid-graphical-editor"
        "folke.vscode-monorepo-workspace"
        "hiro256ex.a5erpreview"
        "jock.svg"
        "matangover.mypy"
        "ms-vscode.live-server"
        "ryanluker.vscode-coverage-gutters"
        "tomoyukim.vscode-mermaid-editor"
        "vitest.explorer"
        "young-vform.copy-hover-type"
)

for extension in "${extensions[@]}"; do
    code --uninstall-extension $extension
donee