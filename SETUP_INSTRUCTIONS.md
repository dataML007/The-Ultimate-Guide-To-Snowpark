# 🚀 Setup Instructions for Your Forked Repository

## ✅ **What You Need to Do**

### 1. **Fork the Repository** (Already Done)
- ✅ Repository forked to your account
- ✅ Repository cloned locally

### 2. **Configure Repository Secrets**
Go to your forked repository → Settings → Secrets and variables → Actions

Add these secrets:
```bash
SNOWFLAKE_PASSWORD=your_actual_password
SNOWFLAKE_USER=your_actual_username
SNOWFLAKE_ACCOUNT=your_actual_account
SNOWFLAKE_ROLE=your_actual_role
SNOWFLAKE_WAREHOUSE=your_actual_warehouse
SNOWFLAKE_DATABASE=your_actual_database
SNOWFLAKE_SCHEMA=your_actual_schema
```

### 3. **Set Up Branch Protection**
Go to Settings → Branches → Add rule for `main`:

- ✅ **Require a pull request before merging**
- ✅ **Require status checks to pass before merging**
  - Select: `CI Pipeline`, `Code Quality`, `Test Matrix`
- ✅ **Require branches to be up to date before merging**
- ✅ **Require pull request reviews before merging**
- ✅ **Restrict pushes that create files that use the gitignore pattern**

### 4. **Enable GitHub Actions**
- Go to Actions tab
- Click "Enable Actions" if prompted
- All workflows should be automatically enabled

### 5. **Test the Pipeline**
Make a small change and push to trigger the CI/CD:

```bash
# Make a small change
echo "# Test CI/CD" >> README.md

# Commit and push
git add README.md
git commit -m "test: trigger CI/CD pipeline"
git push origin main
```

## 🔍 **What Happens Next**

### **On Every Push/PR:**
1. **CI Pipeline** runs automatically
2. **Code Quality** checks run
3. **Test Matrix** executes across Python versions
4. **Security scans** are performed

### **On Successful Merge to Main:**
1. **CD Pipeline** creates a release
2. **Documentation** is updated
3. **Assets** are packaged and distributed

### **Weekly (Scheduled):**
1. **Dependency updates** are checked
2. **Security vulnerabilities** are scanned
3. **Update PRs** are created automatically

## 🚨 **Troubleshooting**

### **If CI Fails:**
1. Check the Actions tab for error details
2. Verify all secrets are set correctly
3. Check that branch protection rules are configured
4. Ensure your Snowflake credentials are valid

### **If Actions Don't Run:**
1. Go to Actions tab and click "Enable Actions"
2. Check repository permissions
3. Verify workflows are in `.github/workflows/` directory

### **If Secrets Are Missing:**
1. Go to Settings → Secrets and variables → Actions
2. Add missing secrets
3. Re-run failed workflows

## 📊 **Monitor Your Pipelines**

- **Actions Tab**: View all workflow runs
- **Insights**: Check pipeline performance
- **Security Tab**: Review security alerts
- **Dependabot**: Monitor dependency updates

## 🔗 **Useful Links**

- **Your Repository**: `https://github.com/YOUR_USERNAME/The-Ultimate-Guide-To-Snowpark`
- **Actions Tab**: `https://github.com/YOUR_USERNAME/The-Ultimate-Guide-To-Snowpark/actions`
- **Settings**: `https://github.com/YOUR_USERNAME/The-Ultimate-Guide-To-Snowpark/settings`

## 🎯 **Next Steps**

1. ✅ Complete the setup above
2. 🧪 Test with a small change
3. 📚 Start learning Snowpark with the notebooks
4. 🔄 Watch your CI/CD pipelines run automatically

---

**Need Help?** Check the Actions tab for detailed logs or create an issue in your repository.
