# Push to GitHub (run these yourself)

The repo on your machine is not updating on GitHub because **push** needs to run in **your** terminal so you can sign in and see any errors.

## Option 1: Double-click the batch file

1. Open File Explorer and go to this folder:  
   `c:\Users\rohit.jinsiwale\skills and agents\cursor-agent-skills-tutorial`
2. Double-click **PUSH_TO_GITHUB.bat**
3. A Command Prompt window will open. It will:
   - Add all files, create a commit, set the remote, and run **git push**
4. When Git asks for **password**, paste your **Personal Access Token** (not your GitHub password).  
   Create one: https://github.com/settings/tokens (enable **repo** scope).
5. Leave the window open until you see "Done" or an error. If push fails, the window will show the error.

---

## Option 2: Run commands in Command Prompt or PowerShell

1. Open **Command Prompt** (cmd) or **PowerShell**.
2. Go to the tutorial folder:
   ```bat
   cd "c:\Users\rohit.jinsiwale\skills and agents\cursor-agent-skills-tutorial"
   ```
3. Add and commit any new changes:
   ```bat
   git add .
   git commit -m "Update tutorial"
   ```
   (If it says "nothing to commit", that’s fine — you already have commits.)
4. Set the remote (only needed once):
   ```bat
   git remote remove origin 2>nul
   git remote add origin https://github.com/beejak/cursor-agent-skills.git
   ```
5. Push:
   ```bat
   git push -u origin main
   ```
6. When prompted:
   - **Username:** `beejak`
   - **Password:** your **Personal Access Token** (from https://github.com/settings/tokens)

You should see something like `Writing objects: 100%` and then the push will finish. Check https://github.com/beejak/cursor-agent-skills — your commits should be there.

---

## If push still fails

- **"Authentication failed"** → Use a Personal Access Token as the password, not your GitHub password. Create a token with **repo** scope.
- **"src refspec main does not match any"** → You have no commits. Run:  
  `git add .` then `git commit -m "Initial commit"` then `git branch -M main` then `git push -u origin main`.
- **"failed to push some refs"** → Someone else may have pushed first. Run:  
  `git pull origin main --rebase` then `git push origin main`.
