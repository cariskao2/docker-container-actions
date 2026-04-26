# entrypoint.sh
#!/bin/sh -l

echo "Hello $1" # $1是傳遞進來的第一個參數
time=$(date) # 獲取當前時間

# 把當前時間echo到$GITHUB_OUTPUT變數中，這裡就是對應action.yml的outputs
echo "time=$time" >> $GITHUB_OUTPUT
