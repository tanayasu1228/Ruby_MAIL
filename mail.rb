# メールの送信プログラム
# 好きなテキストを入力できるようにする

require 'mail'

print "メールに送信したい件名を入力してください:"
text = gets

print "メールに送信したい本文を入力してください:"
texts = gets

mail = Mail.new do
    # 送信元メールアドレス
    from     '送信元メールアドレスを入力'
    # 送信先メールアドレス
    to       '送信先メールアドレスを入力'
    # 件名を入力
    subject  text
    # 本文を入力
    body     texts
end

options = { :address               => 'smtp.gmail.com',
            :port                  => 587,
            :domain                => 'gmail.com',
            :user_name             => '送信元メールアドレスを入力',
            :password              => 'パスワードを入力',
            :authentication        => :plain,
            :enable_starttls_auto  => true  }

mail.charset = 'utf-8'
mail.delivery_method(:smtp, options)
mail.deliver
