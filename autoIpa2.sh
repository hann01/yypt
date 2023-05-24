    echo "~~~~~~~~~~~~选择完成是否上传fir(输入序号)~~~~~~~~~~~~~~~"
    echo "  1 上传"
    echo "  2 不上传"

    read uploadPara
    sleep 0.5
    upload="$uploadPara"

    # 判读用户是否有输入
    if [ -n "$upload" ]
    then
    if [ "$upload" = "1" ]
    then

    echo "~~~~~~~~~~~~即将进行上传fir~~~~~~~~~~~~~~~"

    echo "****** 开始上传IPA包到fir ******"
    #fir token ebeaedc4170b1f6353f24f3bedb9c805
    ipaName="yypt-prod"
        
    echo "1 钱大掌柜"
    echo "2 yypt-prod"
    read ipaTitle
    sleep 0.5
    
    # 判读用户是否有输入
    if [ -n "$ipaTitle" ]
    then
    if [ "$ipaTitle"="1" ]
    then
    ipaName="钱大掌柜"
    filePath=$1/${ipaName}.ipa
    
    echo "~~~~~~~~~~~~filePath为 $filePath~~~~~~~~~~~~"
    
    commit_msg="$1"
    
    U_key="your u_key"
    APP_KEY="your app_key"
    if [ -e "${filePath}" ]; then
    echo "进入上传"
        fir publish ${filePath} -T "ebeaedc4170b1f6353f24f3bedb9c805" -c "${commit_msg}"
    echo "****** IPA包上传到fir成功 ******"
    else
    echo "IPA包不存在 上传fir失败"
    fi
    fi
    fi
    
    elif [ "$upload" = "2" ]
    then
    echo "~~~~~~~~~~~~打包结束~~~~~~~~~~~~~~~"
    fi
    fi
