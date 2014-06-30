# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Exam.create(:title => 'TAMA VIVANT Ⅱ 2010',:discription => '多摩美術大学芸術学科 海老塚孝一ゼミによる展覧会のニュースサイト。コーディング担当。',:c_at => '2010-08-01',:url => 'http://www.tamabi.ac.jp/geigaku/tamavivant/2010/2010.html')
Exam.create(:title => 'Matsunaga Miharu',:discription => '知人、松永美春のポートフォリオサイト。コーディングを担当。',:c_at => ' 2011-01-01',:url => 'http://miharumatsunaga.com/')
Exam.create(:title => 'TAMA VIVANT Ⅱ 2011',:discription => '一年前に引き続き、展覧会のニュースサイトを制作。コーディングに加え、2011年はjQueryの導入も担当。',:c_at => '2011-08-01',:url => 'http://www.tamabi.ac.jp/geigaku/tamavivant/2011/index.html')
Exam.create(:title => 'YoshinoMomo',:discription => '作家、吉野もものポートフォリオサイト。コーディング、トップページのテンプレート編集・設計を担当。',:c_at => '2012-11-01',:url => 'http://yoshinomomo.com/')
Exam.create(:title => 'SHINOBI CART',:discription => '海外向け買い物代行の独自サービス。注文フォーム・管理にWordPressを使用。',:c_at => '2013-04-01')
Exam.create(:title => 'climb.rock',:discription => 'フリークライミングポータルサイト。データベース、動的コンテンツにWordPressを使用。データ収集が進まず、未だ開始できず。',:c_at =>'2013-07-01') 
Exam.create(:title => 'HAPPY SPACE',:discription => 'SNS型マッチングアプリのパイロット版制作。WordPressプラグイン"buddypress"をベースに制作。',:c_at => '2013-12-01')
Exam.create(:title => 'ポートフォリオ専門CMS',:discription => 'サーバーサイド言語を勉強する為、ポートフォリオサイト構築用のCMSを開発。',:c_at =>'2014-05-01')
Exam.create(:title => 'SuzukiHiromu',:discription => '自身のポートフォリオサイト。',:c_at => '2014-06-01',:url => 'http://hiromu-portfolio.herokuapp.com')
Exam.create(:title => 'out of web',:discription => 'web以外でも、作れそう、面白そうと思えば何でもまず作ってみる。')
Skil.create(:name => 'HTML5', :level => '5', :sors => 'skill', :discription => 'HTMLは中学の頃に習得。HTML5特有のタグの理解。canvasとCreate.jsを使った描写。')
Skil.create(:name => 'CSS3', :level => '5', :sors => 'skill', :discription => 'HTMLに同じく中学の頃に習得。transform等の理解。レスポンシブCSSの理解。')
Skil.create(:name => 'jQuery', :level => '4', :sors => 'skill', :discription => '大学在学時に習得。プラグインを改良出来る程度の理解。')
Skil.create(:name => 'WordPress', :level => '3', :sors => 'skill', :discription => '大学在学中に習得。プラグインが改良できる程度のレベル。')
Skil.create(:name => 'php', :level => '1', :sors => 'skill', :discription => 'WordPress改良程度の理解度。')
Skil.create(:name => 'MySQL', :level => '2', :sors => 'skill', :discription => 'WordPressでの使用。Ruby on Railsでの使用。クエリを多少理解。')
Skil.create(:name => 'Ruby on Rails', :level => '2', :sors => 'skill', :discription => '使用暦2ヶ月。webアプリの制作。MVCフレームワークの使用。')
Skil.create(:name => 'illustrator', :level => '5', :sors => 'soft', :discription => '使用歴６年。イラスト、ポスター、DM、リリースの制作。')
Skil.create(:name => 'Photoshop', :level => '5', :sors => 'soft', :discription => '使用歴5年。写真合成、補正。webパーツの作成。')
Skil.create(:name => 'FireWorks', :level => '2', :sors => 'soft', :discription => 'webパーツの制作。')
Skil.create(:name => 'InDesign', :level => '3', :sors => 'soft', :discription => '大学で書物設計ゼミに所属。独自出版を行なう。エディトリアルデザイン担当としてInDesignを習得。')
Skil.create(:name => 'CINEMA 4D', :level => '2', :sors => 'soft', :discription => '在学時、3DCGの授業で習得。モデリング、レンダリングの基礎知識あり。')
Skil.create(:name => 'Final Cut Pro', :level => '3', :sors => 'soft', :discription => '大学在学時、映像の授業で習得。私的に映像制作を行なう。')
Skil.create(:name => 'AfterEffects', :level => '1', :sors => 'soft', :discription => '大学在学中に習得。基本的な使い方の理解。')