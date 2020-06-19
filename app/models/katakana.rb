class Katakana < ApplicationRecord

  MAX_CHAR_NUM = 8
  KATAKANA = [*"ァ".."ヶ"] - ["ァ", "ィ", "ゥ", "ェ", "ォ", "ヮ", "ヱ", "ヰ", "ヲ", "ヴ", "ヵ", "ヶ"]

  def self.view(question)
    #名前を一文字ずつ分割して配列としてname_arrayに代入
    name_array = question[:name].chars.uniq

    # 重複を防ぐためにKATAKANAからname_arrayを除く
    unique_katakana_ary = KATAKANA - name_array

    # 正解の文字とランダムな文字をlistsに代入
    random_char_num = MAX_CHAR_NUM - name_array.length
    lists = name_array + unique_katakana_ary.sample(random_char_num)

    # Katakanaモデルから画像urlのリンクを取得
    katakana_list = Katakana.where(name: lists)

    # shuffleでランダムに並び替え
    katakana_list.shuffle
  end
end
