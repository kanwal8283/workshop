rm -rf group*html
echo "Please enter the environment (ci01, ci02, cs-ws-030)"
read inputline
echo "Running tests for $inputline"

echo "Running Acceptance Tests in Parallel, please wait "
time cucumber -p group-1 features/main/*.feature ENVIRONMENT="$inputline" BROWSER="chrome" && echo "Group Test Suite 1 Completed. Please look in group1.html" &
time cucumber -p group-2 features/main/*.feature ENVIRONMENT="$inputline" BROWSER="chrome" && echo "Group Test Suite 2 Completed. Please look in group2.html" &
time cucumber -p group-3 features/main/*.feature ENVIRONMENT="$inputline" BROWSER="chrome" && echo "Group Test Suite 3 Completed. Please look in group3.html" &
time cucumber -p group-4 features/main/*.feature ENVIRONMENT="$inputline" BROWSER="chrome" && echo "Group Test Suite 4 Completed. Please look in group4.html" &
time cucumber -p group-5 features/main/*.feature ENVIRONMENT="$inputline" BROWSER="chrome" && echo "Group Test Suite 5 Completed. Please look in group5.html" &
time cucumber -p group-6 features/main/*.feature ENVIRONMENT="$inputline" BROWSER="chrome" && echo "Group Test Suite 6 Completed. Please look in group6.html" &
time cucumber -p group-7 features/main/*.feature ENVIRONMENT="$inputline" BROWSER="chrome" && echo "Group Test Suite 7 Completed. Please look in group7.html" &