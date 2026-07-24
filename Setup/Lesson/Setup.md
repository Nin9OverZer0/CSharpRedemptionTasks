s# Lesson Setup

This guide will walk you through setting up your first lesson project correctly.

You only need to follow these steps once per lesson (or when starting a new lesson folder).

---

## Step 1: Create a GitHub Repository

1. Go to [https://github.com](https://github.com) and sign in.

![Create GitHub repository](./Images/001.png)

2. Click the **+** button in the top right → **New repository**.

3. Fill in the details:
   - **Repository name**: Use a clear name so I can identify it  
     (example: `YourName-Module101-Lesson1`)
   - **Description**: Optional
   - Set the repository to **Public** (so I can view your work)

![Create GitHub repository](./Images/002.png)

4. **Do not** tick “Add a README file”.
5. Click **Create repository**.

Copy the HTTPS link that GitHub shows you  
(it looks like `https://github.com/YourUsername/YourRepoName`).  
You will need this link shortly.

![Create GitHub repository](./Images/011.png)

---

## Step 2: Create a C# Console Application

1. Open **Visual Studio**.
2. Click **Create a new project**.

![Create GitHub repository](./Images/012.png)

3. Search for and select **Console App (.NET Framework)**  
   (Make sure it says **.NET Framework**, not just .NET).
4. Click **Next**.

![Create GitHub repository](./Images/013.png)

5. Configure the project:
   - **Project name**: `ProjectWork`  
     *(On a real project you would name this the actual title of your project)*
   - **Location**: Browse to  
     `Projects\CSharpTutorials\Module101\Lesson1`
6. Click **Create**.

![Create GitHub repository](./Images/016.png)

Your project should now look like this:

![Create GitHub repository](./Images/017.png)

7. **Close Visual Studio** completely before continuing.

---

## Step 3: Run the First Git Setup (GITCommand.bat)

1. Open File Explorer and go to the lesson folder you are working on:  
   ```
   Projects\CSharpTutorials\Module101\Lesson1
   ```

![Create GitHub repository](./Images/018.png)

2. Double-click the file called **GITCommand.bat**.

![Create GitHub repository](./Images/019.png)

The script will now ask you for information.

### Paste the GitHub link

Copy the HTTPS link from your GitHub repository:

![Create GitHub repository](./Images/020.png)

Paste it into the command window (`Ctrl + V`) and press **Enter**:

![Create GitHub repository](./Images/021.png)

![Create GitHub repository](./Images/022.png)

### Enter a commit message

A **commit message** is a short note that describes what you just did.  
It helps you (and me) understand the history of your work later.

For the very first commit, type something like:

```text
Setting up the blank project for Lesson 1
```

![Create GitHub repository](./Images/023.png)

Press **Enter**.

![Create GitHub repository](./Images/024.png)

When it finishes, press any key to close the window.

---

### Important Notes

**You must create a new GitHub repository for each lesson** and use the `GITCommand.bat` file that is located inside that specific lesson folder if you want me to be able to review your work.

**If you see red text in the command window**, you probably forgot to close Visual Studio. Close it and try again.

---

## Opening Your Project Again

You can now open your project and start the lesson.  
There are several easy ways to do this:

1. Open Visual Studio and choose it from **Recent projects**.

![Create GitHub repository](./Images/025.png)

2. Click **Open a project or solution** after opening Visual Studio, then browse to the project.

![Create GitHub repository](./Images/026.png)

![Create GitHub repository](./Images/027.png)

3. Simply double-click the `.sln` file inside File Explorer.

![Create GitHub repository](./Images/028.png)

---

## Step 4: Committing Your Work From Now On

After the first setup, you no longer need to provide the GitHub link every time.

At the end of **every programming session**, double-click **GITCommit.bat** in the same lesson folder.

You should run `GITCommit.bat` whenever:

- You have finished for the day
- You have finished watching the tutorial video
- You have finished the homework
- You have made important changes and want to save your progress

The script will ask you for a commit message, then commit and push your work automatically.

![Run GITCommit.bat](./Images/031.png)
![Run GITCommit.bat](./Images/029.png)
![Run GITCommit.bat](./Images/030.png)

---

## Done

Your lesson is now correctly set up and connected to GitHub.

**Remember:**
- Always commit your work regularly using `GITCommit.bat`
- Keep your repository **Public** so I can view it
- Use clear commit messages

← **[Return to Preparation](../../README.md#preparation--install-the-tools-first)**
