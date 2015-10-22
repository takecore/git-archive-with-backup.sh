# git-archive-with-backup.sh
make git archive files and backup files.

リリース差分ファイルの抽出とバックアップファイルの作成を目的としたスクリプトです。

### 配置場所

- 任意のbin フォルダ等に配置して下さい


例えば以下のようなディレクトリ

```sh
$ /Uses/your_user_name/bin/git-archive-with-backup.sh
```

### 使い方

gitの作業ディレクトリ直下にて実行してください。使用例は以下になります。

```
# make revision_hash to HEAD diff archive
$ ~/bin/git-archive-with-backup.sh <from_revision_hash>
# or
$ ~/bin/git-archive-with-backup.sh <from_revision_hash> <to_revision_hash>
```

```
$ cd /Users/your_user_name/dev/git_repository
$ ~/bin/git-archive-with-backup.sh a88bfca3abbaffd69d16a3b71bb8eec210e27f67
```

### 差分ファイルとバックアップファイルの出力先

以下のディレクトリに.zipファイルが生成されます。出力場所は任意に書き換えてください。

```
~/Desktop/release_{from_revision_hash}.zip
~/Desktop/backup_{from_revision_hash}.zip
```

