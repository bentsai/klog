# klog

A minimal script for keeping timestamped notes. The name "klog" is short for "work log." The format is inspired by
Brett Terpstra's [`doing`](https://github.com/ttscoff/doing/) tool, which outputs in
[Taskpaper](https://www.taskpaper.com/) format. My use is slightly different, and I don't need the Taskpaper-ness, but
I do appreciate that it renders nicely in [Markdown](http://daringfireball.net/projects/markdown/).

## Usage

### Writing

```
./k↩️
<Note here>↩️
```

This will append a line to `~/Dropbox/Notes/Log.md` in the format:

```
- <timestamp> | <Note here>
```

For example,

```
- `2016-06-12 17:42:02` | Hello world! This is a really simply logger.
```

### Reading

#### See today's log

```
grep `date +%F` ~/Dropbox/Notes/Log.md
```

#### See yesterday's log

```
grep `date -r $((\`date +%s\` - 86400)) '+%F'` ~/Dropbox/Notes/Log.md
```
