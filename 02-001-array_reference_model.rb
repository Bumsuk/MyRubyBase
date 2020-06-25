cattle = "yahoo"
p container = [cattle, cattle] #=> ["yahoo", "yahoo"]
cattle[2] = '🤡'                # 文字列オブジェクトを更新 당연히 문자열 객체 cattle을 참조할 뿐이니, cattle이 변경되면 배열의 요소도 변경된다.
p cattle
p container                    #=> ["yapoo", "yapoo"]
