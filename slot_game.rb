class Slot
  
  @@coin = 100
  @@point = 0
  
  def self.slot_main(cost)
    
    puts "エンターを3回押しましょう"
    
#最初のスロット
    slot_lefts = Array.new(3){rand 10}
    
    puts gets

    puts "--------------------"
    puts "|#{slot_lefts[0]}|||"
    puts "|#{slot_lefts[1]}|||"
    puts "|#{slot_lefts[2]}|||"



#二個目のスロット
 
    slot_centers = Array.new(3){rand 10}
    
    puts gets
 
    puts "--------------------"
    puts "|#{slot_lefts[0]}|#{slot_centers[0]}||"
    puts "|#{slot_lefts[1]}|#{slot_centers[1]}||"
    puts "|#{slot_lefts[2]}|#{slot_centers[2]}||"
 
  
#三番目のスロット

   
    slot_rights = Array.new(3){rand 10}
    
    puts gets
  
    puts "--------------------"
    puts "|#{slot_lefts[0]}|#{slot_centers[0]}|#{slot_rights[0]}|"
    puts "|#{slot_lefts[1]}|#{slot_centers[1]}|#{slot_rights[1]}|"
    puts "|#{slot_lefts[2]}|#{slot_centers[2]}|#{slot_rights[2]}|"
  
#真ん中の値が揃った時の処理  
  
    if [slot_lefts[1],slot_rights[1],slot_centers[1]].uniq.length == 1
      
      if cost == 1
          add_coin = 20
          add_point = 50
          @@coin += add_coin
          @@point += add_point
      
      elsif cost == 2
          
          add_coin = 60
          add_point = 150
          @@coin += add_coin
          @@point += add_point
      else
          add_coin = 100
          add_point = 500
          @@coin += add_coin
          @@point += add_point
          
      end
      
      puts "--------------------"
      puts "真ん中に#{slot_lefts[0]}が揃いました！"
      
      puts "#{add_point}ポイント獲得！"
      puts "#{add_coin}コイン獲得！"
      
    end
  
  
  
  end
  
  
  loop do
  
    if @@coin <= 0
        puts "コインがありません。スロットを終了します"
        break
    end
    
    puts "--------------------"
    puts "残りコイン数#{@@coin}"
    puts "ポイント#{@@point}"
    puts "何コイン入れますか？"
    puts "1(10コイン) 2(30コイン) 3(50コイン) 4(やめとく)"
    puts "--------------------"
    
    while user_select = gets.to_i
     break if (user_select >= 1)&&(user_select <= 4)
     puts "1~4の数字を入力してください"
    end
    
   
    
    if user_select == 4
        puts "スロットを終了します"
        break
    end
        
    if user_select == 1 
        
         if @@coin < 10
            puts "コインがありません"
            break
         end
        #コインの支払い
        @@coin -= 10
        #slot開始処理
        slot_main(user_select)
        
    elsif user_select == 2
        if @@coin < 30
            puts "コインがありません"
            break
         end
        #コインの支払い
        @@coin -= 30
        #slot開始処理
        slot_main(user_select)
        
    else #user_seloct == 3
        if @@coin < 50
            puts "コインがありません"
            break
         end
        #コインの支払い
        @@coin -= 50
        #slot開始処理
        slot_main(user_select)
        
    end
    
  end


end