��U S E   [ m a s t e r ]  
 G O  
 / * * * * * *   O b j e c t :     D a t a b a s e   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 C R E A T E   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]  
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   C O M P A T I B I L I T Y _ L E V E L   =   1 5 0  
 G O  
 I F   ( 1   =   F U L L T E X T S E R V I C E P R O P E R T Y ( ' I s F u l l T e x t I n s t a l l e d ' ) )  
 b e g i n  
 E X E C   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ] . [ d b o ] . [ s p _ f u l l t e x t _ d a t a b a s e ]   @ a c t i o n   =   ' e n a b l e '  
 e n d  
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A N S I _ N U L L _ D E F A U L T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A N S I _ N U L L S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A N S I _ P A D D I N G   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A N S I _ W A R N I N G S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A R I T H A B O R T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A U T O _ C L O S E   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A U T O _ S H R I N K   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S   O N    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   C U R S O R _ C L O S E _ O N _ C O M M I T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   C U R S O R _ D E F A U L T     G L O B A L    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   C O N C A T _ N U L L _ Y I E L D S _ N U L L   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   N U M E R I C _ R O U N D A B O R T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   Q U O T E D _ I D E N T I F I E R   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   R E C U R S I V E _ T R I G G E R S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T     D I S A B L E _ B R O K E R    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S _ A S Y N C   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   D A T E _ C O R R E L A T I O N _ O P T I M I Z A T I O N   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   T R U S T W O R T H Y   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A L L O W _ S N A P S H O T _ I S O L A T I O N   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   P A R A M E T E R I Z A T I O N   S I M P L E    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   R E A D _ C O M M I T T E D _ S N A P S H O T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   H O N O R _ B R O K E R _ P R I O R I T Y   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   R E C O V E R Y   S I M P L E    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T     M U L T I _ U S E R    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   P A G E _ V E R I F Y   C H E C K S U M      
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   D B _ C H A I N I N G   O F F    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   F I L E S T R E A M (   N O N _ T R A N S A C T E D _ A C C E S S   =   O F F   )    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   T A R G E T _ R E C O V E R Y _ T I M E   =   6 0   S E C O N D S    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   D E L A Y E D _ D U R A B I L I T Y   =   D I S A B L E D    
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   A C C E L E R A T E D _ D A T A B A S E _ R E C O V E R Y   =   O F F      
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T   Q U E R Y _ S T O R E   =   O F F  
 G O  
 U S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ b r a n d s ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ b r a n d s ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ c r e a t e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ l a s t _ m o d i f i e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ n a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ c a t e g o r i e s ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ c a t e g o r i e s ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ c r e a t e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ l a s t _ m o d i f i e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ n a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ i m a g e _ p r o d u c t ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ i m a g e _ p r o d u c t ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ n a m e ]   [ v a r c h a r ] ( m a x )   N U L L ,  
 	 [ p r o d u c t _ i d ]   [ b i g i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ _ i m a g e _ p r _ _ 3 2 1 3 E 8 3 F 1 6 4 0 B D D D ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ l i k e s ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ l i k e s ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ c r e a t e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ l a s t _ m o d i f i e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ p r o d u c t _ i d ]   [ b i g i n t ]   N U L L ,  
 	 [ u s e r _ i d ]   [ v a r c h a r ] ( 2 5 5 )   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ o r d e r _ a d d r e s s ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ o r d e r _ a d d r e s s ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ c r e a t e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ l a s t _ m o d i f i e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ a d d r e s s ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ e m a i l ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ f i r s t _ n a m e ]   [ n v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ l a s t _ n a m e ]   [ n v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ p h o n e ]   [ v a r c h a r ] ( 1 1 )   N O T   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ o r d e r _ d e t a i l s ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ o r d e r _ d e t a i l s ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ b a n n e r ]   [ v a r c h a r ] ( m a x )   N U L L ,  
 	 [ d i s c o u n t ]   [ f l o a t ]   N U L L ,  
 	 [ n a m e ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ p r i c e ]   [ f l o a t ]   N U L L ,  
 	 [ q u a n t i t y ]   [ i n t ]   N U L L ,  
 	 [ s i z e ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ o r d e r _ i d ]   [ b i g i n t ]   N U L L ,  
 	 [ p r o d u c t _ i d ]   [ b i g i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ o r d e r s ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ o r d e r s ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ c r e a t e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ l a s t _ m o d i f i e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ n o t e ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ p a y ]   [ i n t ]   N U L L ,  
 	 [ s h i p ]   [ i n t ]   N U L L ,  
 	 [ s t a t u s ]   [ i n t ]   N U L L ,  
 	 [ o r d e r _ a d d r e s s _ i d ]   [ b i g i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ p r o d u c t s ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ p r o d u c t s ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ c r e a t e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ l a s t _ m o d i f i e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ b a n n e r ]   [ v a r c h a r ] ( m a x )   N U L L ,  
 	 [ c o l o r ]   [ v a r c h a r ] ( 2 5 5 )   N U L L ,  
 	 [ d e s c r i p t i o n ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ d i s c o u n t ]   [ f l o a t ]   N U L L ,  
 	 [ e n d _ d a y _ d i s c o u n t ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ i n f o ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ n a m e ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ p r i c e ]   [ b i g i n t ]   N U L L ,  
 	 [ q u a n t i t y ]   [ i n t ]   N U L L ,  
 	 [ s t a r t _ d a y _ d i s c o u n t ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ v i e w s ]   [ i n t ]   N U L L ,  
 	 [ b r a n d _ i d ]   [ b i g i n t ]   N U L L ,  
 	 [ c a t e g o r y _ i d ]   [ b i g i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ _ p r o d u c t s _ _ 3 2 1 3 E 8 3 F F C 1 9 A 5 B B ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ u s e r s ]         S c r i p t   D a t e :   2 2 / 0 3 / 2 0 2 3   9 : 3 4 : 0 8   S A   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ u s e r s ] (  
 	 [ i d ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ c r e a t e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ l a s t _ m o d i f i e d _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ a d d r e s s ]   [ n v a r c h a r ] ( 2 5 5 )   N U L L ,  
 	 [ a v a t a r ]   [ v a r c h a r ] ( m a x )   N U L L ,  
 	 [ b i r t h _ d a y ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ e m a i l ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ f i r s t _ n a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ g e n d e r ]   [ b i t ]   N U L L ,  
 	 [ l a s t _ l o g i n _ d a t e ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ l a s t _ n a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ l o g i n ]   [ b i t ]   N O T   N U L L ,  
 	 [ p a s s w o r d ]   [ v a r c h a r ] ( m a x )   N O T   N U L L ,  
 	 [ r o l e ]   [ v a r c h a r ] ( 2 5 5 )   N U L L ,  
 	 [ u s e r n a m e ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ i m a g e _ p r o d u c t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K r 0 1 e v k p k 9 m s g d 6 a 4 j 5 5 h v 7 3 j a ]   F O R E I G N   K E Y ( [ p r o d u c t _ i d ] )  
 R E F E R E N C E S   [ d b o ] . [ p r o d u c t s ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ i m a g e _ p r o d u c t ]   C H E C K   C O N S T R A I N T   [ F K r 0 1 e v k p k 9 m s g d 6 a 4 j 5 5 h v 7 3 j a ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ l i k e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K 7 9 y t f m e 5 t d c 4 k 9 i 5 7 h 0 a k a a h 2 ]   F O R E I G N   K E Y ( [ p r o d u c t _ i d ] )  
 R E F E R E N C E S   [ d b o ] . [ p r o d u c t s ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ l i k e s ]   C H E C K   C O N S T R A I N T   [ F K 7 9 y t f m e 5 t d c 4 k 9 i 5 7 h 0 a k a a h 2 ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ l i k e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K n v x 9 s e e q q y y 7 1 b i j 2 9 1 p w i w r g ]   F O R E I G N   K E Y ( [ u s e r _ i d ] )  
 R E F E R E N C E S   [ d b o ] . [ u s e r s ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ l i k e s ]   C H E C K   C O N S T R A I N T   [ F K n v x 9 s e e q q y y 7 1 b i j 2 9 1 p w i w r g ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ o r d e r _ d e t a i l s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K 4 q 9 8 u t p d 7 3 i m f 4 y h t t m 3 w 0 e a x ]   F O R E I G N   K E Y ( [ p r o d u c t _ i d ] )  
 R E F E R E N C E S   [ d b o ] . [ p r o d u c t s ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ o r d e r _ d e t a i l s ]   C H E C K   C O N S T R A I N T   [ F K 4 q 9 8 u t p d 7 3 i m f 4 y h t t m 3 w 0 e a x ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ o r d e r _ d e t a i l s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K j y u 2 q b q t 8 g n v n o 9 o e 9 j 2 s 2 l d k ]   F O R E I G N   K E Y ( [ o r d e r _ i d ] )  
 R E F E R E N C E S   [ d b o ] . [ o r d e r s ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ o r d e r _ d e t a i l s ]   C H E C K   C O N S T R A I N T   [ F K j y u 2 q b q t 8 g n v n o 9 o e 9 j 2 s 2 l d k ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ o r d e r s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K t 0 e c m l 6 r x s w u 7 m o p 3 s 4 n c 7 3 i e ]   F O R E I G N   K E Y ( [ o r d e r _ a d d r e s s _ i d ] )  
 R E F E R E N C E S   [ d b o ] . [ o r d e r _ a d d r e s s ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ o r d e r s ]   C H E C K   C O N S T R A I N T   [ F K t 0 e c m l 6 r x s w u 7 m o p 3 s 4 n c 7 3 i e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ p r o d u c t s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K a 3 a 4 m p s f d f 4 d 2 y 6 r 8 r a 3 s c 8 m v ]   F O R E I G N   K E Y ( [ b r a n d _ i d ] )  
 R E F E R E N C E S   [ d b o ] . [ b r a n d s ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ p r o d u c t s ]   C H E C K   C O N S T R A I N T   [ F K a 3 a 4 m p s f d f 4 d 2 y 6 r 8 r a 3 s c 8 m v ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ p r o d u c t s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K o g 2 r p 4 q t h b t t 2 l f y h f o 3 2 l s w 9 ]   F O R E I G N   K E Y ( [ c a t e g o r y _ i d ] )  
 R E F E R E N C E S   [ d b o ] . [ c a t e g o r i e s ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ p r o d u c t s ]   C H E C K   C O N S T R A I N T   [ F K o g 2 r p 4 q t h b t t 2 l f y h f o 3 2 l s w 9 ]  
 G O  
 U S E   [ m a s t e r ]  
 G O  
 A L T E R   D A T A B A S E   [ M o l l a S h o p S p r i n g B o o t A n d T h y m e l e a f ]   S E T     R E A D _ W R I T E    
 G O  
 