# klog

A minimal script for keeping timestamped notes. The name "klog" is short for "work log." The format is inspired by
Brett Terpstra's [`doing`](https://github.com/ttscoff/doing/) tool, which outputs in
[Taskpaper](https://www.taskpaper.com/) format. My use is slightly different, and I don't need the Taskpaper-ness, but
I do appreciate that it renders nicely in [Markdown](http://daringfireball.net/projects/markdown/).

The klog entry format is such that each line begins with a timestamp. This means you can have multiple clients write
to the file in any order because it is trivial to sort the file.

## Usage

### Writing

```
./k↩️
<Note here>↩️
```

This will append a line to `~/klog.md` in the format:

```
- <timestamp> | <Note here>
```

For example,

```
- `2016-06-12 17:42:02` | Hello world! This is a really simply logger.
```

You can change the location of your klog by setting the environment variable `KLOG_FILE`.

### Reading

#### See today's log

```
grep `date +%F` $KLOG_FILE
```

#### See yesterday's log

```
grep `date -r $((\`date +%s\` - 86400)) '+%F'` $KLOG_FILE
```
