# アニマルデータをデータベースに投入
system 'rake import_csv:questions_data'
# 平仮名データをデータベースに投入
system 'rake import_csv:katakana_data'
# サウンドデータをデータベースに投入
system 'rake import_csv:sounds_data'