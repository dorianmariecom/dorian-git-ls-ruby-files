# `dorian-git-ls-ruby-files`

List Ruby-looking files tracked by git.

## Install

```bash
gem install dorian-git-ls-ruby-files
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
git-ls-ruby-files
```

Run `git-ls-ruby-files -h` for generated option details and `git-ls-ruby-files -v` for the installed version.

## Notes

- Uses git, file extensions, Ruby file names, and Ruby shebangs to decide what to print.

## Examples

### Format tracked Ruby files

```bash
git-ls-ruby-files | xargs ruby -c
```
