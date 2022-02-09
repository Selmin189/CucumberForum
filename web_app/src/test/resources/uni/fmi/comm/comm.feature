Feature: Публикуване на коментари като не се допуска коментар без съдържание

Background: 
		Given отваря полето за коментари
 
  Scenario: регистиран потребителят иска да напише коментар
    
    And  потребител e регистриран "User" 
    And напише нешто "Wow"
    When натисне бутона за публиковане на коментар
    Then вижда сьобштение за успех "Успешно публикувахте коментар!"
    
  Scenario: не регистиран потребителят иска да напише коментар
    And  потребител e не регистриран "Anonymous"
    And напише нешто "Wow"
    When натисне бутона за публиковане на коментар
    Then вижда сьобштение за неуспех "Не можете да публикувате коментар!"
    
   Scenario: иска да публикува коментар без съдържание
    And  потребител e регистриран "User"
    And не напише ништо 
    When натисне бутона за публиковане на коментар
    Then вижда сьобштение "коментар без съдържание не е позволен!"
    
  Scenario: потребителят иска да публикува обиден коментар
    And  потребител e регистриран "User"
    And напише обиден коментар "****"
    When натисне бутона за публиковане на коментар
    Then вижда сьобштение за неуспех "Не можете да публикувате коментар!"
      
  