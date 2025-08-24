#!/bin/bash

# 🚀 Setup Script for Your Forked Snowpark Repository
# This script helps you set up your forked repository with CI/CD

echo "🚀 Setting up your forked Snowpark repository..."
echo ""

# Check if we're in the right directory
if [ ! -f ".github/workflows/ci.yml" ]; then
    echo "❌ Error: Please run this script from the root of your forked repository"
    echo "   Expected: .github/workflows/ci.yml"
    exit 1
fi

echo "✅ Repository structure verified"
echo ""

# Check git status
if [ -z "$(git status --porcelain)" ]; then
    echo "✅ Working directory is clean"
else
    echo "⚠️  Working directory has uncommitted changes"
    echo "   Consider committing or stashing them first"
    echo ""
fi

echo ""
echo "🔧 Next Steps:"
echo ""

echo "1. 📝 Configure Repository Secrets:"
echo "   Go to: https://github.com/$(git remote get-url origin | sed 's/.*github.com[:/]\([^/]*\)\/\([^.]*\).*/\1\/\2/')/settings/secrets/actions"
echo "   Add these secrets:"
echo "   - SNOWFLAKE_PASSWORD"
echo "   - SNOWFLAKE_USER"
echo "   - SNOWFLAKE_ACCOUNT"
echo "   - SNOWFLAKE_ROLE"
echo "   - SNOWFLAKE_WAREHOUSE"
echo "   - SNOWFLAKE_DATABASE"
echo "   - SNOWFLAKE_SCHEMA"
echo ""

echo "2. 🛡️  Set Up Branch Protection:"
echo "   Go to: https://github.com/$(git remote get-url origin | sed 's/.*github.com[:/]\([^/]*\)\/\([^.]*\).*/\1\/\2/')/settings/branches"
echo "   Add rule for 'main' branch with:"
echo "   - Require pull request before merging"
echo "   - Require status checks to pass"
echo "   - Require branches to be up to date"
echo ""

echo "3. 🧪 Test the Pipeline:"
echo "   Make a small change and push:"
echo "   echo '# Test CI/CD' >> README.md"
echo "   git add README.md"
echo "   git commit -m 'test: trigger CI/CD pipeline'"
echo "   git push origin main"
echo ""

echo "4. 📊 Monitor Progress:"
echo "   Check Actions tab: https://github.com/$(git remote get-url origin | sed 's/.*github.com[:/]\([^/]*\)\/\([^.]*\).*/\1\/\2/')/actions"
echo ""

echo "🎯 Your CI/CD pipelines will run automatically on:"
echo "   - Every push to main/develop"
echo "   - Every pull request"
echo "   - Weekly dependency updates"
echo "   - Scheduled security scans"
echo ""

echo "📚 For detailed instructions, see: SETUP_INSTRUCTIONS.md"
echo "📖 For CI/CD documentation, see: CI_CD_README.md"
echo ""

echo "🚀 Happy coding with Snowpark and CI/CD!"
