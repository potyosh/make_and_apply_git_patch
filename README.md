# make_and_apply_git_patch
gitの複数のコミットを一気にpatchにして適用するshellscriptを書いてみました。

使い方は以下

**makePatchを編集しpatchを作成する**

1. distDirにpatch保存法のディレクトリを指定する

2. targetDirにpatchを作りたいgitリポジトリのディレクトリを指定する

3. commits配列にコミットのHashを左からコミットの古い順に指定する

4. ターミナルで./makePatchを実行するとcommitsで指定したpatchが出来上がる

**applyPatch編集を編集しpatchを適用する**

1. patchDirにパッチの有るディレクトリを指定する

2. targetDirにパッチを適用したいgitリポジトリのディレクトリを指定する

3. commitsにmakePatchで指定した値と同じものを入れる

4. ターミナルで./applyPatchを実行するとpatchが適用される
