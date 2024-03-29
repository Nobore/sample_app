#   B e   s u r e   t o   r e s t a r t   y o u r   s e r v e r   w h e n   y o u   m o d i f y   t h i s   f i l e .  
  
 #   Y o u r   s e c r e t   k e y   i s   u s e d   f o r   v e r i f y i n g   t h e   i n t e g r i t y   o f   s i g n e d   c o o k i e s .  
 #   I f   y o u   c h a n g e   t h i s   k e y ,   a l l   o l d   s i g n e d   c o o k i e s   w i l l   b e c o m e   i n v a l i d !  
  
 #   M a k e   s u r e   t h e   s e c r e t   i s   a t   l e a s t   3 0   c h a r a c t e r s   a n d   a l l   r a n d o m ,  
 #   n o   r e g u l a r   w o r d s   o r   y o u ' l l   b e   e x p o s e d   t o   d i c t i o n a r y   a t t a c k s .  
 #   Y o u   c a n   u s e   ` r a k e   s e c r e t `   t o   g e n e r a t e   a   s e c u r e   s e c r e t   k e y .  
  
 #   M a k e   s u r e   y o u r   s e c r e t _ k e y _ b a s e   i s   k e p t   p r i v a t e  
 #   i f   y o u ' r e   s h a r i n g   y o u r   c o d e   p u b l i c l y .  
 r e q u i r e   ' s e c u r e r a n d o m '  
  
 d e f   s e c u r e _ t o k e n  
     t o k e n _ f i l e   =   R a i l s . r o o t . j o i n ( ' . s e c r e t ' )  
     i f   F i l e . e x i s t ? ( t o k e n _ f i l e )  
         #   U s e   t h e   e x i s t i n g   t o k e n .  
         F i l e . r e a d ( t o k e n _ f i l e ) . c h o m p  
     e l s e  
         #   G e n e r a t e   a   n e w   t o k e n   a n d   s t o r e   i t   i n   t o k e n _ f i l e .  
         t o k e n   =   S e c u r e R a n d o m . h e x ( 6 4 )  
         F i l e . w r i t e ( t o k e n _ f i l e ,   t o k e n )  
         t o k e n  
     e n d  
 e n d  
  
 S a m p l e A p p : : A p p l i c a t i o n . c o n f i g . s e c r e t _ k e y _ b a s e   =   s e c u r e _ t o k e n 