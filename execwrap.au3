#cs ----------------------------------------------------------------------------
	Script Function:
	このスクリプトの目的は実行環境のキック
	- ランタイムへのPATH環境変数をセット（実行時のみ有効）
	- その他事前に立ち上げ必要なもののキックスタートと終了処理。

#ce ----------------------------------------------------------------------------

;; 実行環境設定

$env_path = EnvGet("PATH")
EnvSet("PATH", $env_path & ";c:\opt\local\ruby\bin")
;
;;; 以下キックスタート
RunWait(@ComSpec & " /c " & 'ruby c:\opt\init.rb', "", @SW_HIDE)
;
;;; 以下終了処理
;;MsgBox features: Title=Yes, Text=Yes, Buttons=OK, Icon=Info
MsgBox(64, "infomation:", "全てのプロセスを終了しました。")
