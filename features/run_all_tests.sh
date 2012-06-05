echo "Getting latest version of test scripts"

bundle install

[ -d output ] || mkdir output
rm -rf output/*
echo "Please enter the environment (ci01, ci02, cs-ws-030)"
read inputline
echo "Running tests for $inputline on firefox"

echo "Running Acceptance Tests in Parallel, please wait "
cucumber -p group-1 features/main/*.feature ENVIRONMENT="$inputline" && echo "Suite 1 Completed. Please look in group1.html" &
cucumber -p group-2 features/main/*.feature ENVIRONMENT="$inputline" && echo "Suite 2 Completed. Please look in group2.html" &
cucumber -p group-3 features/main/*.feature ENVIRONMENT="$inputline" && echo "Suite 3 Completed. Please look in group3.html" &
cucumber -p group-4 features/main/*.feature ENVIRONMENT="$inputline" && echo "Suite 4 Completed. Please look in group4.html" &
cucumber -p group-5 features/main/*.feature ENVIRONMENT="$inputline" && echo "Suite 5 Completed. Please look in group5.html" &
cucumber -p group-6 features/main/*.feature ENVIRONMENT="$inputline" && echo "Suite 6 Completed. Please look in group6.html" &
cucumber -p group-7 features/main/*.feature ENVIRONMENT="$inputline" && echo "Suite 7 Completed. Please look in group7.html" &