namespace :import_csv do

  desc 'Questionsデータをインポートするタスク'
  task questions_data: :environment do
    #データベースのQuestionデータを消去
    Question.destroy_all
    # 現在のアニマルデータをインポートした配列を作成
    question_list = Import.csv_data(path: 'db/csv_data/questions.csv')
    # Questionsをデータベースに投入
    Question.create!(question_list)
    puts 'Questionsデータの投入に成功しました'
  end

  desc 'カタカナデータをインポートするタスク'
  task katakana_data: :environment do
    #データベースのカタカナデータを消去
    Katakana.destroy_all
    # 現在の平仮名データをインポートした配列を作成
    katakana_list = Import.csv_data(path: 'db/csv_data/katakana.csv')
    # 平仮名データをデータベースに投入
    Katakana.create!(katakana_list)
    puts 'カタカナデータの投入に成功しました'
  end

  desc 'サウンドデータをインポートするタスク'
  task sounds_data: :environment do
    #データベースのサウンドデータを消去
    Sound.destroy_all
    # 現在のサウンドデータをインポートした配列を作成
    sounds_list = Import.csv_data(path: 'db/csv_data/sounds.csv')
    # サウンドデータをデータベースに投入
    Sound.create!(sounds_list)
    puts 'サウンドデータの投入に成功しました'
  end
end
