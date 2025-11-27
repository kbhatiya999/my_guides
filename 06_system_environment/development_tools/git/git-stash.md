---
# Git Stash Commands - Stashing Changes, Including Untracked Files, Workflow Management
# Git Stash, Stashing Changes, Staged Files, Unstaged Files, Untracked Files, Ignored Files, Git Workflow, Temporary Storage
# Category: System Environment > Development Tools > Git > Stash
# Complexity: Intermediate - requires Git basics and understanding of working directory states
# Prerequisites: Git fundamentals, command line usage, understanding of tracked vs untracked files, staged vs unstaged changes
# Keywords: git-stash, stashing-changes, staged-files, unstaged-files, untracked-files, ignored-files, git-workflow, temporary-storage, git-commands, git-stash-all
# Last Updated: 2024-12-19
---

## Quick Reference
- **Technology**: Git, version control, command line
- **Use Case**: Temporarily saving changes (including untracked files) to switch branches or pull updates
- **Complexity**: Intermediate - requires understanding of Git working directory states
- **Prerequisites**: Git basics, command line familiarity, understanding of tracked vs untracked files
- **Estimated Time**: 2-5 minutes to understand and apply

# Git Stash Commands

## Introduction

Git stash allows you to temporarily save changes in your working directory without committing them. This is useful when you need to switch branches, pull updates, or work on something else without losing your current work. This guide covers various stash commands, including how to handle different file states: staged, unstaged, untracked, and ignored files.

## Understanding File States in Git

Before diving into stash commands, it's crucial to understand the different file states in Git:

### File State Categories

1. **Staged Files** (Index/Staging Area)
   - Files that have been modified and added with `git add`
   - Ready to be committed
   - Show as "Changes to be committed" in `git status`

2. **Unstaged Files** (Working Directory)
   - Files that have been modified but NOT added with `git add`
   - Changes exist in working directory but not staged
   - Show as "Changes not staged for commit" in `git status`

3. **Untracked Files**
   - New files that have never been added to Git
   - Not in Git's index at all
   - Show as "Untracked files" in `git status`

4. **Ignored Files**
   - Files listed in `.gitignore`
   - Git completely ignores these files
   - Don't appear in `git status` unless using `git status --ignored`

### Example: All File States

```bash
# Initial state
$ git status
On branch main
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)
        modified:   staged_file.py        # STAGED

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
        modified:   unstaged_file.py     # UNSTAGED

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        new_file.txt                     # UNTRACKED
        config.local.json                # UNTRACKED

# Ignored files (shown with --ignored flag)
$ git status --ignored
Ignored files:
  (use "git add -f <file>..." to include in what will be committed)
        node_modules/                    # IGNORED
        .env.local                       # IGNORED
        dist/                            # IGNORED
```

## How Stash Commands Handle Different File States

### Complete File State Reference

| File State | `git stash` | `git stash -u` | `git stash --all` | Notes |
|------------|-------------|----------------|-------------------|--------|
| **Staged files** | ✅ Stashed | ✅ Stashed | ✅ Stashed | Always stashed by default |
| **Unstaged files** | ✅ Stashed | ✅ Stashed | ✅ Stashed | Always stashed by default |
| **Untracked files** | ❌ Not stashed | ✅ Stashed | ✅ Stashed | Requires `-u` or `--all` |
| **Ignored files** | ❌ Not stashed | ❌ Not stashed | ✅ Stashed | Only with `--all` |

### Detailed Breakdown

#### 1. Stashing Staged Files

**Default behavior**: Staged files are ALWAYS stashed by all stash commands.

```bash
# You have staged changes
$ git status
Changes to be committed:
        modified:   src/main.py

# Any stash command will include staged files
$ git stash
Saved working directory and index state WIP on main: abc1234

# Staged files are now in the stash
$ git status
nothing to commit, working tree clean
```

**Key Points**:
- Staged files are included in ALL stash operations
- When you pop/apply the stash, staged files return to staged state
- This preserves your staging area exactly as it was

#### 2. Stashing Unstaged Files

**Default behavior**: Unstaged files are ALWAYS stashed by all stash commands.

```bash
# You have unstaged changes
$ git status
Changes not staged for commit:
        modified:   src/utils.py

# Any stash command will include unstaged files
$ git stash
Saved working directory and index state WIP on main: abc1234

# Unstaged files are now in the stash
$ git status
nothing to commit, working tree clean
```

**Key Points**:
- Unstaged files are included in ALL stash operations
- When you pop/apply the stash, unstaged files return as unstaged
- This preserves your working directory changes

#### 3. Stashing Untracked Files

**Requires flag**: Untracked files require `-u` or `--include-untracked` flag.

```bash
# You have untracked files
$ git status
Untracked files:
        new_file.txt
        config.local.json

# Regular stash does NOT include untracked files
$ git stash
Saved working directory and index state WIP on main: abc1234

$ git status
Untracked files:
        new_file.txt        # Still here!
        config.local.json   # Still here!

# Use -u flag to include untracked files
$ git stash -u
Saved working directory and index state WIP on main: abc1234

$ git status
nothing to commit, working tree clean  # Now they're stashed!
```

**Key Points**:
- Untracked files are NOT stashed by default
- Use `git stash -u` or `git stash --include-untracked` to include them
- When you pop/apply, untracked files are restored

#### 4. Stashing Ignored Files

**Requires `--all` flag**: Ignored files require `--all` flag.

```bash
# You have ignored files
$ git status --ignored
Ignored files:
        node_modules/
        .env.local
        dist/

# Regular stash and -u do NOT include ignored files
$ git stash -u
Saved working directory and index state WIP on main: abc1234

$ ls -la
node_modules/   # Still here!
.env.local     # Still here!

# Use --all flag to include ignored files
$ git stash --all
Saved working directory and index state WIP on main: abc1234

$ ls -la
# Ignored files are now stashed (temporarily removed)
```

**Key Points**:
- Ignored files are NOT stashed by default (even with `-u`)
- Use `git stash --all` to include ignored files
- Be careful: ignored files are usually ignored for good reasons!

### Complete Example: All File States Together

```bash
# Starting state with all file types
$ git status
On branch main
Changes to be committed:
        modified:   staged_file.py        # STAGED

Changes not staged for commit:
        modified:   unstaged_file.py     # UNSTAGED

Untracked files:
        new_file.txt                     # UNTRACKED

$ git status --ignored
Ignored files:
        .env.local                       # IGNORED

# Test 1: Regular stash (default)
$ git stash
Saved working directory and index state WIP on main: abc1234

$ git status
Untracked files:
        new_file.txt                     # UNTRACKED still here
# Staged and unstaged are stashed, untracked and ignored remain

# Restore and test 2: With -u flag
$ git stash pop
$ git stash -u
Saved working directory and index state WIP on main: abc1234

$ git status
nothing to commit, working tree clean
# But ignored files are still here
$ ls .env.local
.env.local  # Still exists

# Restore and test 3: With --all flag
$ git stash pop
$ git stash --all
Saved working directory and index state WIP on main: abc1234

$ git status
nothing to commit, working tree clean
$ ls .env.local
ls: .env.local: No such file or directory  # Now it's stashed!
```

## Stashing with Untracked Files

### Basic Command

```bash
git stash --include-untracked
```

### What This Does

- **Stashes tracked changes**: Saves all modified tracked files
- **Includes untracked files**: Also stashes new files that haven't been added to Git yet
- **Cleans working directory**: Leaves your working directory clean (matching the last commit)
- **Creates stash entry**: Saves changes in a stash entry that can be restored later

### When to Use

- You have both modified tracked files AND new untracked files
- You want to switch branches but have uncommitted work
- You need to pull updates but have local changes
- You want to temporarily save everything and start fresh

### Example Scenario

```bash
# You have modified files and new untracked files
$ git status
On branch feature-branch
Changes not staged for commit:
  modified:   src/main.py
Untracked files:
  new_file.txt
  config.local.json

# Stash everything including untracked files
$ git stash --include-untracked

# Working directory is now clean
$ git status
On branch feature-branch
nothing to commit, working tree clean

# Switch branches or pull updates
$ git checkout main
$ git pull

# Later, restore your stashed changes
$ git stash pop
```

## Alternative: Short Form

```bash
git stash -u
```

The `-u` flag is a shorthand for `--include-untracked` and works exactly the same way.

## Stashing Everything Including Ignored Files

### Command

```bash
git stash --all
```

### What This Does

- **Stashes tracked changes**: Saves all modified tracked files
- **Includes untracked files**: Also stashes new files that haven't been added to Git yet
- **Includes ignored files**: Also stashes files that are in `.gitignore` (this is the key difference!)
- **Cleans working directory completely**: Leaves your working directory completely clean, including ignored files
- **Creates stash entry**: Saves everything in a stash entry that can be restored later

### When to Use

- You need to stash files that are in `.gitignore` (like build artifacts, local configs, etc.)
- You want to completely clean your working directory for testing or deployment
- You're switching contexts and want to save absolutely everything
- You need to test a completely clean repository state

### ⚠️ Important Warnings

- **Ignored files are typically ignored for a reason**: They're usually build artifacts, local configs, or temporary files
- **Can create large stashes**: Ignored files can be large (like `node_modules/`, build outputs, etc.)
- **May include sensitive data**: Local config files might contain secrets or personal settings
- **Use sparingly**: Only when you really need to stash ignored files

### Example Scenario

```bash
# You have modified files, untracked files, AND ignored files
$ git status
On branch feature-branch
Changes not staged for commit:
  modified:   src/main.py
Untracked files:
  new_file.txt
  config.local.json

# But you also have ignored files (like build artifacts)
$ ls -la
node_modules/          # ignored
dist/                  # ignored
.env.local            # ignored

# Stash EVERYTHING including ignored files
$ git stash --all

# Working directory is now completely clean
$ git status
On branch feature-branch
nothing to commit, working tree clean

# Even ignored files are gone (temporarily)
$ ls -la
# node_modules, dist, .env.local are all stashed

# Later, restore everything
$ git stash pop
```

### Comparison with Other Stash Options

| Aspect | `git stash` | `git stash -u` | `git stash --all` |
|--------|-------------|----------------|-------------------|
| Tracked modified files | ✅ | ✅ | ✅ |
| Staged files | ✅ | ✅ | ✅ |
| Untracked files | ❌ | ✅ | ✅ |
| Ignored files (`.gitignore`) | ❌ | ❌ | ✅ |
| Use case | Standard stashing | Include new files | Complete cleanup |

### When NOT to Use `--all`

- **Don't use for regular workflow**: `-u` is usually sufficient
- **Don't use with large ignored directories**: Like `node_modules/` or `dist/` folders
- **Don't use if you want to keep ignored files**: They'll be removed from working directory
- **Don't use without understanding**: Make sure you know what ignored files exist

### Best Practices for `--all`

1. **Check what will be stashed first**:
   ```bash
   # See what ignored files exist
   git status --ignored
   
   # Then decide if you need --all
   ```

2. **Use with caution on large projects**: Large ignored directories can make stashes huge

3. **Consider alternatives**: Maybe you just need to commit ignored files temporarily or use a different approach

4. **Document why**: If you use `--all`, note why in your stash message:
   ```bash
   git stash --all -m "Complete cleanup: including build artifacts for testing"
   ```

## Related Stash Commands

### View Stash List

```bash
git stash list
```

Shows all your stashes with their messages and timestamps.

### Apply Stash (Keep Stash)

```bash
git stash apply
```

Applies the most recent stash but keeps it in the stash list.

### Pop Stash (Remove After Applying)

```bash
git stash pop
```

Applies the most recent stash and removes it from the stash list.

### Stash with Message

```bash
git stash save "descriptive message"
```

Creates a stash with a custom message for easier identification.

### Stash Specific Files

```bash
git stash push -m "message" -- file1.txt file2.txt
```

Stashes only specific files instead of everything.

### Drop Stash

```bash
git stash drop stash@{0}
```

Removes a specific stash without applying it.

### Clear All Stashes

```bash
git stash clear
```

Removes all stashes permanently.

## Quick Comparison: Stash Options

| Command | Staged Files | Unstaged Files | Untracked Files | Ignored Files |
|---------|--------------|----------------|-----------------|---------------|
| `git stash` | ✅ Stashed | ✅ Stashed | ❌ Not stashed | ❌ Not stashed |
| `git stash -u` or `--include-untracked` | ✅ Stashed | ✅ Stashed | ✅ Stashed | ❌ Not stashed |
| `git stash --all` | ✅ Stashed | ✅ Stashed | ✅ Stashed | ✅ Stashed |

**Key Points**:
- **Staged and unstaged files**: Always stashed by default (all commands)
- **Untracked files**: Require `-u` or `--include-untracked` flag
- **Ignored files**: Require `--all` flag (only option that includes `.gitignore` files)

## Best Practices

1. **Use descriptive messages**: When stashing, add a message to remember what you were working on
   ```bash
   git stash save -u "WIP: feature authentication"
   ```

2. **Review before stashing**: Check what will be stashed with `git status` first

3. **Pop vs Apply**: Use `pop` when you're done with the stash, `apply` when you might need it again

4. **Clean up old stashes**: Regularly review and drop old stashes you no longer need

5. **Be careful with untracked files**: Remember that stashing untracked files removes them from your working directory

6. **Use `--all` sparingly**: Only when you specifically need to stash ignored files - it can create large stashes and may include sensitive data

## Common Use Cases

### Switching Branches with Uncommitted Work

```bash
# Stash everything
git stash -u

# Switch branches
git checkout other-branch

# Do work on other branch...

# Return and restore
git checkout original-branch
git stash pop
```

### Pulling Updates with Local Changes

```bash
# Stash local changes
git stash -u

# Pull latest updates
git pull

# Restore your changes
git stash pop

# Resolve any conflicts if they occur
```

### Testing Clean State

```bash
# Stash everything to test clean state
git stash -u

# Run tests or build
npm test

# Restore changes
git stash pop
```

## Troubleshooting

### Stash Conflicts on Pop

If `git stash pop` results in conflicts:
1. Resolve conflicts in the affected files
2. Stage the resolved files: `git add <file>`
3. The stash is automatically dropped after successful pop

### Lost Stash

Stashes are stored in Git's reflog, so you can recover them:
```bash
# Find lost stash
git fsck --unreachable | grep commit | cut -d" " -f3 | xargs git log --merges --no-walk --grep=WIP

# Recover specific stash
git stash apply <stash-commit-hash>
```

### Stash Not Including Expected Files

- **Untracked files not stashed**: Use `git stash -u` or `--include-untracked`
- **Ignored files not stashed**: Use `git stash --all` (but be careful - see warnings above)
- **Check file status first**: Use `git status` and `git status --ignored` to see what will be stashed
- **Verify `.gitignore`**: Files in `.gitignore` require `--all` flag to be stashed

## Related Resources

- **Git Basics**: Understanding Git fundamentals is essential
- **Git Branching**: See branching guides for context on when stashing is useful
- **Git Configuration**: See `eof.md` and `https_store_credentials.md` for other Git configurations
- **Development Workflow**: See `../../workflow/` for workflow optimization tips

## Search Keywords

git-stash, stashing-changes, staged-files, unstaged-files, untracked-files, ignored-files, git-workflow, temporary-storage, git-commands, git-stash-include-untracked, git-stash-u, git-stash-all, version-control, git-basics, working-directory, git-branching, gitignore, file-states, staging-area, index

