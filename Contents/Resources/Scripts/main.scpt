FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �{ Copyright (C) 2020 Kurita Tetsuro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	�   C o p y r i g h t   ( C )   2 0 2 0   K u r i t a   T e t s u r o 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 F o o b a r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   F o o b a r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / >     
  
 l     ��������  ��  ��        j     �� 
�� 
pnam  m        �    L a p T i m e      x    �� ����    2   ��
�� 
osax��        x    �� ����    4    �� 
�� 
frmk  m       �    F o u n d a t i o n��        x    -�� ���� 0 xlist XList  4   ' +�� 
�� 
scpt  m   ) *   �   
 X L i s t��       !   l     ��������  ��  ��   !  " # " l      �� $ %��   $	�	�!@references
Home page || http://www.script-factory.net/XModules/LapTime/en/index.html
ChangeLog || http://www.script-factory.net/XModules/LapTime/changelog.html
Repository || https://github.com/tkurita/LapTime.scptd
XList || http://www.script-factory.net/XModules/XList/en/index.html

@title LapTime Reference
* Version : 2.0
* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))
* Requirements : 
  * OS X 10.9 or later
  * ((<XList>))
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

LapTime is an AppleScript library to measure execution time of AppleScript in accurary of a few milliseconds. 
It is useful to evaluate performance of a script and to tune up the script.

You can measure execution time by using current date command which is AppleScript's built-in command. 
But time resolution of AppleScript's date class is 1 sec, which is too rough for performance measurements.
By using NSDate of Cocoa, the time resolution of LapTime is below a few msec.

The simple usage is using ((<start_timer>)) and ((<duration>)) methods. 
((<start_timer>)) generate a new LapTime instance. 
((<duration>)) method obtain elapsed time from call of ((<start_timer>)).

To evaluate required times of parts of your script,
use ((<lap>)) and ((<lap_times>)) methods.
((<lap>)) recorods the called time into the LapTime instance generaged by ((<start_timer>)).
((<lap_times>)) method outputs elapsed times between ((<lap>)).

For precise evaluations of required times of processings in your script,
use ((<lap>)) and ((<average>)).
Reapeat execuion of your script many times with repeat statement,
and record each execution time with ((<lap>)).
((<average>)) calculate an average of time diffrences between each ((<lap>)) and ((<start_timer>)).

@example
use LapTime : script "LapTime"

(*== Simple Usage ==*)
set tm to LapTime's start_timer()
delay 0.15
tm's duration() -- time from call of start_time
(*151.413917541504 [ms]*)

(*== Measure required times of parts of a script ==*)
set tm to LapTime's start_timer()
tm's lap() -- record the timming
delay 0.1
tm's lap()
delay 0.2
tm's lap()
tm's lap_times() -- pretty print elapsed times between calls of lap()
(*[Lap Times]
0.115990638733 [ms]
100.725054740906 [ms]
201.471924781799 [ms]*)

(*== Take an average of lap times to evaluate precise required time ==*)
set tm to LapTime's start_timer()
repeat 100 times
	delay 0.01
	tm's lap()
end repeat
tm's average()
(*[Average Time of Laps]
11.234790086746 [ms]*)
    % � & &F ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / L a p T i m e / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / L a p T i m e / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / L a p T i m e . s c p t d 
 X L i s t   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / e n / i n d e x . h t m l 
 
 @ t i t l e   L a p T i m e   R e f e r e n c e 
 *   V e r s i o n   :   2 . 0 
 *   A u t h o r   :   K u r i t a   T e t s u r o   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   
     *   O S   X   1 0 . 9   o r   l a t e r 
     *   ( ( < X L i s t > ) ) 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
 L a p T i m e   i s   a n   A p p l e S c r i p t   l i b r a r y   t o   m e a s u r e   e x e c u t i o n   t i m e   o f   A p p l e S c r i p t   i n   a c c u r a r y   o f   a   f e w   m i l l i s e c o n d s .   
 I t   i s   u s e f u l   t o   e v a l u a t e   p e r f o r m a n c e   o f   a   s c r i p t   a n d   t o   t u n e   u p   t h e   s c r i p t . 
 
 Y o u   c a n   m e a s u r e   e x e c u t i o n   t i m e   b y   u s i n g   c u r r e n t   d a t e   c o m m a n d   w h i c h   i s   A p p l e S c r i p t ' s   b u i l t - i n   c o m m a n d .   
 B u t   t i m e   r e s o l u t i o n   o f   A p p l e S c r i p t ' s   d a t e   c l a s s   i s   1   s e c ,   w h i c h   i s   t o o   r o u g h   f o r   p e r f o r m a n c e   m e a s u r e m e n t s . 
 B y   u s i n g   N S D a t e   o f   C o c o a ,   t h e   t i m e   r e s o l u t i o n   o f   L a p T i m e   i s   b e l o w   a   f e w   m s e c . 
 
 T h e   s i m p l e   u s a g e   i s   u s i n g   ( ( < s t a r t _ t i m e r > ) )   a n d   ( ( < d u r a t i o n > ) )   m e t h o d s .   
 ( ( < s t a r t _ t i m e r > ) )   g e n e r a t e   a   n e w   L a p T i m e   i n s t a n c e .   
 ( ( < d u r a t i o n > ) )   m e t h o d   o b t a i n   e l a p s e d   t i m e   f r o m   c a l l   o f   ( ( < s t a r t _ t i m e r > ) ) . 
 
 T o   e v a l u a t e   r e q u i r e d   t i m e s   o f   p a r t s   o f   y o u r   s c r i p t , 
 u s e   ( ( < l a p > ) )   a n d   ( ( < l a p _ t i m e s > ) )   m e t h o d s . 
 ( ( < l a p > ) )   r e c o r o d s   t h e   c a l l e d   t i m e   i n t o   t h e   L a p T i m e   i n s t a n c e   g e n e r a g e d   b y   ( ( < s t a r t _ t i m e r > ) ) . 
 ( ( < l a p _ t i m e s > ) )   m e t h o d   o u t p u t s   e l a p s e d   t i m e s   b e t w e e n   ( ( < l a p > ) ) . 
 
 F o r   p r e c i s e   e v a l u a t i o n s   o f   r e q u i r e d   t i m e s   o f   p r o c e s s i n g s   i n   y o u r   s c r i p t , 
 u s e   ( ( < l a p > ) )   a n d   ( ( < a v e r a g e > ) ) . 
 R e a p e a t   e x e c u i o n   o f   y o u r   s c r i p t   m a n y   t i m e s   w i t h   r e p e a t   s t a t e m e n t , 
 a n d   r e c o r d   e a c h   e x e c u t i o n   t i m e   w i t h   ( ( < l a p > ) ) . 
 ( ( < a v e r a g e > ) )   c a l c u l a t e   a n   a v e r a g e   o f   t i m e   d i f f r e n c e s   b e t w e e n   e a c h   ( ( < l a p > ) )   a n d   ( ( < s t a r t _ t i m e r > ) ) . 
 
 @ e x a m p l e 
 u s e   L a p T i m e   :   s c r i p t   " L a p T i m e " 
 
 ( * = =   S i m p l e   U s a g e   = = * ) 
 s e t   t m   t o   L a p T i m e ' s   s t a r t _ t i m e r ( ) 
 d e l a y   0 . 1 5 
 t m ' s   d u r a t i o n ( )   - -   t i m e   f r o m   c a l l   o f   s t a r t _ t i m e 
 ( * 1 5 1 . 4 1 3 9 1 7 5 4 1 5 0 4   [ m s ] * ) 
 
 ( * = =   M e a s u r e   r e q u i r e d   t i m e s   o f   p a r t s   o f   a   s c r i p t   = = * ) 
 s e t   t m   t o   L a p T i m e ' s   s t a r t _ t i m e r ( ) 
 t m ' s   l a p ( )   - -   r e c o r d   t h e   t i m m i n g 
 d e l a y   0 . 1 
 t m ' s   l a p ( ) 
 d e l a y   0 . 2 
 t m ' s   l a p ( ) 
 t m ' s   l a p _ t i m e s ( )   - -   p r e t t y   p r i n t   e l a p s e d   t i m e s   b e t w e e n   c a l l s   o f   l a p ( ) 
 ( * [ L a p   T i m e s ] 
 0 . 1 1 5 9 9 0 6 3 8 7 3 3   [ m s ] 
 1 0 0 . 7 2 5 0 5 4 7 4 0 9 0 6   [ m s ] 
 2 0 1 . 4 7 1 9 2 4 7 8 1 7 9 9   [ m s ] * ) 
 
 ( * = =   T a k e   a n   a v e r a g e   o f   l a p   t i m e s   t o   e v a l u a t e   p r e c i s e   r e q u i r e d   t i m e   = = * ) 
 s e t   t m   t o   L a p T i m e ' s   s t a r t _ t i m e r ( ) 
 r e p e a t   1 0 0   t i m e s 
 	 d e l a y   0 . 0 1 
 	 t m ' s   l a p ( ) 
 e n d   r e p e a t 
 t m ' s   a v e r a g e ( ) 
 ( * [ A v e r a g e   T i m e   o f   L a p s ] 
 1 1 . 2 3 4 7 9 0 0 8 6 7 4 6   [ m s ] * ) 
 #  ' ( ' l     ��������  ��  ��   (  ) * ) l      �� + ,��   + X R!@group Constructor 

@abstruct Make an instance of LapTime
@result script object
    , � - - � ! @ g r o u p   C o n s t r u c t o r   
 
 @ a b s t r u c t   M a k e   a n   i n s t a n c e   o f   L a p T i m e 
 @ r e s u l t   s c r i p t   o b j e c t 
 *  . / . i   . 1 0 1 0 I      �������� 0 start_timer  ��  ��   1 k      2 2  3 4 3 r      5 6 5  f      6 o      ���� 0 a_class   4  7�� 7 h    �� 8�� "0 laptimeinstance LapTimeInstance 8 k       9 9  : ; : j     �� <
�� 
pare < o     ���� 0 a_class   ;  = > = j   	 �� ?�� 0 _time_records   ? I  	 �� @��
�� .corecrel****      � null @ o   	 ���� 0 xlist XList��   >  A�� A j    �� B�� 0 _start_time   B n    C D C I    �������� 0 date  ��  ��   D n    E F E o    ���� 
0 NSDate   F m    ��
�� misccura��  ��   /  G H G l     ��������  ��  ��   H  I J I l      �� K L��   K  !@group Instance Methods     L � M M 2 ! @ g r o u p   I n s t a n c e   M e t h o d s   J  N O N l     ��������  ��  ��   O  P Q P l      �� R S��   R � �!@abstruct Return elapsed time form ((<start_timer>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result number
    S � T TT ! @ a b s t r u c t   R e t u r n   e l a p s e d   t i m e   f o r m   ( ( < s t a r t _ t i m e r > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   n u m b e r 
 Q  U V U i   2 5 W X W I      �������� 0 duration  ��  ��   X k      Y Y  Z [ Z r      \ ] \ ]      ^ _ ^ l    	 `���� ` c     	 a b a n     c d c n    e f e I    �������� ,0 timeintervalsincenow timeIntervalSinceNow��  ��   f o    ���� 0 _start_time   d  f      b m    ��
�� 
nmbr��  ��   _ m   	 
����� ] o      ���� 0 a_result   [  g h g I   �� i��
�� .ascrcmnt****      � **** i b     j k j l    l���� l c     m n m o    ���� 0 a_result   n m    ��
�� 
ctxt��  ��   k m     o o � p p 
   [ m s ]��   h  q�� q L     r r o    ���� 0 a_result  ��   V  s t s l     ��������  ��  ��   t  u v u i   6 9 w x w I      �������� 0 record_time  ��  ��   x I     �������� 0 record_time  ��  ��   v  y z y l     ��������  ��  ��   z  { | { h   : A�� }�� $0 timerecordsimple TimeRecordSimple } k       ~ ~   �  j     �� �
�� 
pare � 1     ��
�� 
ascr �  � � � l     ��������  ��  ��   �  � � � i    	 � � � I      �������� 0 raw_time  ��  ��   � L      � � n     � � � o    ���� 	0 _time   �  f      �  � � � l     ��������  ��  ��   �  � � � i   
  � � � I      �� ����� 0 	time_from   �  ��� � o      ���� 0 pretime  ��  ��   � L     
 � � \     	 � � � l     ����� � n     � � � I    �������� 0 raw_time  ��  ��   � o     ���� 0 pretime  ��  ��   � l    ����� � n    � � � o    ���� 	0 _time   �  f    ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 ms_text_from   �  ��� � o      ���� 0 pretime  ��  ��   � k      � �  � � � r     
 � � � ]      � � � I     �� ����� 0 	time_from   �  ��� � o    ���� 0 pretime  ��  ��   � m    ����� � o      ���� 0 ms   �  � � � r     � � � b     � � � l    ����� � c     � � � o    ���� 0 ms   � m    ��
�� 
ctxt��  ��   � m     � � � � � 
   [ m s ] � o      ���� 
0 a_text   �  ��� � L     � � J     � �  � � � o    ���� 0 ms   �  �� � o    �~�~ 
0 a_text  �  ��   �  � � � l     �}�|�{�}  �|  �{   �  � � � i     � � � I      �z�y�x�z 0 
total_time  �y  �x   � k      � �  � � � r      � � � l     ��w�v � ]      � � � l     ��u�t � n     � � � o    �s�s 	0 _time   �  f     �u  �t   � m    �r�r��w  �v   � o      �q�q 0 ms   �  � � � r     � � � b     � � � l    ��p�o � c     � � � o    	�n�n 0 ms   � m   	 
�m
�m 
ctxt�p  �o   � m     � � � � � 
   [ m s ] � o      �l�l 
0 a_text   �  ��k � L     � � J     � �  � � � o    �j�j 0 ms   �  ��i � o    �h�h 
0 a_text  �i  �k   �  � � � l     �g�f�e�g  �f  �e   �  ��d � i     � � � I      �c ��b�c 0 	make_with   �  ��a � o      �`�` 
0 a_time  �a  �b   � k      � �  � � � r      � � �  f      � o      �_�_ 0 a_class   �  ��^ � h    �] ��] 40 timerecordsimpleinstance TimeRecordSimpleInstance � k       � �  � � � j     �\ �
�\ 
pare � o     �[�[ 0 a_class   �  ��Z � j   	 �Y ��Y 	0 _time   � o   	 �X�X 
0 a_time  �Z  �^  �d   |  � � � l     �W�V�U�W  �V  �U   �  � � � h   B M�T ��T .0 timerecordwithcomment TimeRecordWithComment � k       � �  � � � j     �S �
�S 
pare � o     �R�R $0 timerecordsimple TimeRecordSimple �  � � � l     �Q�P�O�Q  �P  �O   �  �  � i   	  I      �N�M�N 0 ms_text_from   �L o      �K�K 0 pretime  �L  �M   k     '  r     	 M     

 I      �J�I�J 0 ms_text_from   �H o    �G�G 0 pretime  �H  �I  	 J        o      �F�F 0 ms   �E o      �D�D 
0 a_text  �E    r    ! b     b     l   �C�B n    o    �A�A 0 _comment    f    �C  �B   1    �@
�@ 
tab  o    �?�? 
0 a_text   o      �>�> 
0 a_text   �= L   " ' J   " &   o   " #�<�< 0 ms    !�;! o   # $�:�: 
0 a_text  �;  �=    "#" l     �9�8�7�9  �8  �7  # $%$ i    &'& I      �6�5�4�6 0 
total_time  �5  �4  ' k     &(( )*) r     +,+ M     -- I      �3�2�1�3 0 
total_time  �2  �1  , J      .. /0/ o      �0�0 0 ms  0 1�/1 o      �.�. 
0 a_text  �/  * 232 r     454 b    676 b    898 l   :�-�,: n   ;<; o    �+�+ 0 _comment  <  f    �-  �,  9 1    �*
�* 
tab 7 o    �)�) 
0 a_text  5 o      �(�( 
0 a_text  3 =�'= L   ! &>> J   ! %?? @A@ o   ! "�&�& 0 ms  A B�%B o   " #�$�$ 
0 a_text  �%  �'  % CDC l     �#�"�!�#  �"  �!  D E� E i    FGF I      �H�� 0 	make_with  H IJI o      �� 
0 a_time  J K�K o      �� 0 comment  �  �  G k     LL MNM r     
OPO M     QQ I      �R�� 0 	make_with  R S�S o    �� 
0 a_time  �  �  P o      �� 0 a_parent  N T�T h    �U� >0 timerecordwithcommentinstance TimeRecordWithCommentInstanceU k      VV WXW j     �Y
� 
pareY o     �� 0 a_parent  X Z�Z j   	 �[� 0 _comment  [ o   	 �� 0 comment  �  �  �    � \]\ l     ����  �  �  ] ^_^ l      �`a�  ` \ V!@abstruct Record elapsed time form ((<start_timer>)) in the instance
@result number 
   a �bb � ! @ a b s t r u c t   R e c o r d   e l a p s e d   t i m e   f o r m   ( ( < s t a r t _ t i m e r > ) )   i n   t h e   i n s t a n c e 
 @ r e s u l t   n u m b e r   
_ cdc i   N Qefe I      �
�	��
 0 lap  �	  �  f k      gg hih r     jkj l    	l��l c     	mnm n    opo n   qrq I    ���� ,0 timeintervalsincenow timeIntervalSinceNow�  �  r o    �� 0 _start_time  p  f     n m    �
� 
nmbr�  �  k o      � �  
0 a_time  i sts n   uvu n   wxw I    ��y���� 0 push  y z��z n   {|{ I    ��}���� 0 	make_with  } ~��~ o    ���� 
0 a_time  ��  ��  | o    ���� $0 timerecordsimple TimeRecordSimple��  ��  x o    ���� 0 _time_records  v  f    t �� L     �� o    ���� 
0 a_time  ��  d ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   R U��� I      ������� 0 lap_  � ���� o      ���� 0 comment  ��  ��  � k     !�� ��� r     ��� l    	������ c     	��� n    ��� n   ��� I    �������� ,0 timeintervalsincenow timeIntervalSinceNow��  ��  � o    ���� 0 _start_time  �  f     � m    ��
�� 
nmbr��  ��  � o      ���� 
0 a_time  � ��� n   ��� n   ��� I    ������� 0 push  � ���� n   ��� I    ������� 0 	make_with  � ��� o    ���� 
0 a_time  � ���� o    ���� 0 comment  ��  ��  � o    ���� .0 timerecordwithcomment TimeRecordWithComment��  ��  � o    ���� 0 _time_records  �  f    � ���� L    !�� o     ���� 
0 a_time  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct Return time difference in msec between times recorded with ((<lap>)) 
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result list of numbers
   � ���� ! @ a b s t r u c t   R e t u r n   t i m e   d i f f e r e n c e   i n   m s e c   b e t w e e n   t i m e s   r e c o r d e d   w i t h   ( ( < l a p > ) )   
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   l i s t   o f   n u m b e r s 
� ��� i   V Y��� I      �������� 0 	lap_times  ��  ��  � k     M�� ��� l     ��������  ��  ��  � ��� r     ��� n    
��� I    
������� 0 	make_with  � ���� m    ����  ��  ��  � o     ���� $0 timerecordsimple TimeRecordSimple� o      ���� 0 pretime  � ��� r    ��� I   �����
�� .corecrel****      � null� o    ���� 0 xlist XList��  � o      ���� 0 ms_list  � ��� h     ����� 0 loop  � i     ��� I      ������� 0 do  � ���� o      ���� 0 x  ��  ��  � k     /�� ��� r     ��� n    
��� I    
������� 0 ms_text_from  � ���� o    ���� 0 pretime  ��  ��  � o     ���� 0 x  � J      �� ��� o      ���� 0 ms  � ���� o      ���� 
0 a_text  ��  � ��� r    !��� o    ���� 0 x  � o      ���� 0 pretime  � ��� n  " ,��� I   ' ,������� 0 push  � ���� o   ' (���� 0 ms  ��  ��  � o   " '���� 0 ms_list  � ���� L   - /�� o   - .���� 
0 a_text  ��  � ��� l  ! !��������  ��  ��  � ��� O   ! @��� k   , ?�� ��� n  , 2��� I   - 2������� 0 unshift  � ���� m   - .�� ���  [ L a p   T i m e s ]��  ��  �  g   , -� ��� r   3 ;��� n  3 9��� I   4 9������� 0 as_text_with  � ���� 1   4 5��
�� 
lnfd��  ��  �  g   3 4� o      ���� 0 log_text  � ���� r   < ?���  g   < =� o      ���� 0 x_result  ��  � n  ! )��� n  " )��� I   $ )�� ���� 0 map    �� o   $ %���� 0 loop  ��  ��  � o   " $���� 0 _time_records  �  f   ! "�  I  A F����
�� .ascrcmnt****      � **** o   A B���� 0 log_text  ��   �� L   G M n  G L I   H L�������� 0 list_ref  ��  ��   o   G H���� 0 ms_list  ��  � 	
	 l     ��������  ��  ��  
  i   Z ] I      �������� 0 time_records  ��  ��   k       r      I     �������� 0 	lap_times  ��  ��   o      ���� 0 lp    r     I    �������� 0 
total_time  ��  ��   o      ���� 0 tt   �� L     K     ���� 0 	lap_times   o    ���� 0 lp   ������ 0 
total_time   o    �� 0 tt  ��  ��    l     �~�}�|�~  �}  �|    !  l      �{"#�{  " � �!@abstruct Return time difference between each ((<lap>)) and ((<start_timer>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result list of numbers
   # �$$� ! @ a b s t r u c t   R e t u r n   t i m e   d i f f e r e n c e   b e t w e e n   e a c h   ( ( < l a p > ) )   a n d   ( ( < s t a r t _ t i m e r > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   l i s t   o f   n u m b e r s 
! %&% i   ^ a'(' I      �z�y�x�z 0 total_times  �y  �x  ( k     <)) *+* r     ,-, I    	�w.�v
�w .corecrel****      � null. o     �u�u 0 xlist XList�v  - o      �t�t 0 ms_list  + /0/ h    �s1�s 0 loop  1 i     232 I      �r4�q�r 0 do  4 5�p5 o      �o�o 0 x  �p  �q  3 k     "66 787 r     9:9 n    ;<; I    �n�m�l�n 0 
total_time  �m  �l  < o     �k�k 0 x  : J      == >?> o      �j�j 0 ms  ? @�i@ o      �h�h 
0 a_text  �i  8 ABA n   CDC I    �gE�f�g 0 push  E F�eF o    �d�d 0 ms  �e  �f  D o    �c�c 0 ms_list  B G�bG L     "HH o     !�a�a 
0 a_text  �b  0 IJI l   �`�_�^�`  �_  �^  J KLK O    /MNM k    .OO PQP n   %RSR I     %�]T�\�] 0 unshift  T U�[U m     !VV �WW  [ T o t a l   T i m e s ]�[  �\  S  g     Q X�ZX r   & .YZY n  & ,[\[ I   ' ,�Y]�X�Y 0 as_text_with  ] ^�W^ 1   ' (�V
�V 
lnfd�W  �X  \  g   & 'Z o      �U�U 0 log_text  �Z  N n   _`_ n   aba I    �Tc�S�T 0 map  c d�Rd o    �Q�Q 0 loop  �R  �S  b o    �P�P 0 _time_records  `  f    L efe I  0 5�Og�N
�O .ascrcmnt****      � ****g o   0 1�M�M 0 log_text  �N  f h�Lh L   6 <ii n  6 ;jkj I   7 ;�K�J�I�K 0 list_ref  �J  �I  k o   6 7�H�H 0 ms_list  �L  & lml l     �G�F�E�G  �F  �E  m non l      �Dpq�D  p � �!@abstruct Return average of time difference between ((<start_timer>)) and each ((<lap>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result number
   q �rr� ! @ a b s t r u c t   R e t u r n   a v e r a g e   o f   t i m e   d i f f e r e n c e   b e t w e e n   ( ( < s t a r t _ t i m e r > ) )   a n d   e a c h   ( ( < l a p > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   n u m b e r 
o sts i   b euvu I      �C�B�A�C 0 average  �B  �A  v k     Dww xyx r     	z{z n    |}| n   ~~ I    �@�?�>�@ 0 count_items  �?  �>   o    �=�= 0 _time_records  }  f     { o      �<�< 0 n_total  y ��� l  
 
�;�:�9�;  �:  �9  � ��� r   
 ��� n  
 ��� I    �8��7�8 0 	make_with  � ��6� m    �5�5  �6  �7  � o   
 �4�4 $0 timerecordsimple TimeRecordSimple� o      �3�3 0 pretime  � ��� r    ��� m    �2�2  � o      �1�1 0 sum  � ��� l   �0�/�.�0  �/  �.  � ��� h    "�-��- 0 loop  � i     ��� I      �,��+�, 0 do  � ��*� o      �)�) 0 x  �*  �+  � k     !�� ��� r     ��� [     ��� o     �(�( 0 sum  � l   ��'�&� n   ��� I    �%��$�% 0 	time_from  � ��#� o    �"�" 0 pretime  �#  �$  � o    �!�! 0 x  �'  �&  � o      � �  0 sum  � ��� r    ��� o    �� 0 x  � o      �� 0 pretime  � ��� L    !�� m     �
� boovtrue�  � ��� n  # +��� n  $ +��� I   & +���� 0 each  � ��� o   & '�� 0 loop  �  �  � o   $ &�� 0 _time_records  �  f   # $� ��� r   , 3��� l  , 1���� ^   , 1��� ]   , /��� m   , -���� o   - .�� 0 sum  � o   / 0�� 0 n_total  �  �  � o      �� 0 a_result  � ��� I  4 A���
� .ascrcmnt****      � ****� l  4 =���� b   4 =��� b   4 ;��� b   4 7��� m   4 5�� ��� , [ A v e r a g e   T i m e   o f   L a p s ]� 1   5 6�
� 
lnfd� l  7 :���
� c   7 :��� o   7 8�	�	 0 a_result  � m   8 9�
� 
ctxt�  �
  � m   ; <�� ��� 
   [ m s ]�  �  �  � ��� L   B D�� o   B C�� 0 a_result  �  t ��� l     ����  �  �  � ��� i   f i��� I      ��� � 	0 debug  �  �   � O     4��� k    3�� ��� I   �����
�� .sysodelanull��� ��� nmbr� m    	�� ?���������  � ��� I    ������� 0 lap_  � ���� m    �� ��� 
 t i m e 1��  ��  � ��� I   �����
�� .sysodelanull��� ��� nmbr� m    �� ?ə�������  � ��� I    !������� 0 lap_  � ���� m    �� ��� 
 t i m e 2��  ��  � ��� I   " '�������� 0 	lap_times  ��  ��  � ��� I   ( -�������� 0 total_times  ��  ��  � ���� I   . 3�������� 0 average  ��  ��  ��  � I     �������� 0 start_timer  ��  ��  � ��� l     ��������  ��  ��  � ��� i   j m��� I      �������� 
0 debug2  ��  ��  � O     ��� I   �����
�� .ascrcmnt****      � ****� I    �������� 0 duration  ��  ��  ��  � I     �������� 0 start_timer  ��  ��  � ��� l     ��������  ��  ��  � ��� i   n q��� I      �������� 0 open_helpbook  ��  ��  � Q     ,�� � O    I   
 ������ 0 do   �� I   ����
�� .earsffdralis        afdr  f    ��  ��  ��   4    ��
�� 
scpt m     �  O p e n H e l p B o o k� R      ��	

�� .ascrerr ****      � ****	 o      ���� 0 msg  
 ����
�� 
errn o      ���� 	0 errno  ��    k    ,  I   "������
�� .miscactvnull��� ��� null��  ��   �� I  # ,����
�� .sysodisAaleR        TEXT l  # (���� b   # ( b   # & o   # $���� 0 msg   o   $ %��
�� 
ret  o   & '���� 	0 errno  ��  ��  ��  ��  �  l     ��������  ��  ��   �� i   r u I     ������
�� .aevtoappnull  �   � ****��  ��   k       l     ����    return debug()    �    r e t u r n   d e b u g ( ) !��! I     �������� 0 open_helpbook  ��  ��  ��  ��       ��" #$%&'()*+,-./0123��  " ������������������������������������
�� 
pnam
�� 
pimr�� 0 xlist XList�� 0 start_timer  �� 0 duration  �� 0 record_time  �� $0 timerecordsimple TimeRecordSimple�� .0 timerecordwithcomment TimeRecordWithComment�� 0 lap  �� 0 lap_  �� 0 	lap_times  �� 0 time_records  �� 0 total_times  �� 0 average  �� 	0 debug  �� 
0 debug2  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****# ��4�� 4  5675 ��8��
�� 
cobj8 99   ��
�� 
osax��  6 ��:��
�� 
cobj: ;;   �� 
�� 
frmk��  7 ��<��
�� 
cobj< ==   �� 
�� 
scpt��  $ >>   �� 
�� 
scpt% �� 1����?@���� 0 start_timer  ��  ��  ? ������ 0 a_class  �� "0 laptimeinstance LapTimeInstance@ �� 8A�� "0 laptimeinstance LapTimeInstanceA ��B����CD��
�� .ascrinit****      � ****B k     EE  :FF  =GG  A����  ��  ��  C ������
�� 
pare�� 0 _time_records  �� 0 _start_time  D �������������
�� 
pare
�� .corecrel****      � null�� 0 _time_records  
�� misccura�� 
0 NSDate  �� 0 date  � 0 _start_time  �� b   N  Ob  j �O��,j+ ��� )E�O��K S�& �~ X�}�|HI�{�~ 0 duration  �}  �|  H �z�z 0 a_result  I �y�x�w�v�u o�t�y 0 _start_time  �x ,0 timeintervalsincenow timeIntervalSinceNow
�w 
nmbr�v�
�u 
ctxt
�t .ascrcmnt****      � ****�{ )�,j+ �&� E�O��&�%j O�' �s x�r�qJK�p�s 0 record_time  �r  �q  J  K �o�o 0 record_time  �p *j+  ( �n } L�n $0 timerecordsimple TimeRecordSimpleL  M�mNOPQRM �l�k�j�i�h�g
�l 
pare�k 0 raw_time  �j 0 	time_from  �i 0 ms_text_from  �h 0 
total_time  �g 0 	make_with  �m  N �f ��e�dST�c�f 0 raw_time  �e  �d  S  T �b�b 	0 _time  �c )�,EO �a ��`�_UV�^�a 0 	time_from  �` �]W�] W  �\�\ 0 pretime  �_  U �[�[ 0 pretime  V �Z�Y�Z 0 raw_time  �Y 	0 _time  �^ �j+  )�,P �X ��W�VXY�U�X 0 ms_text_from  �W �TZ�T Z  �S�S 0 pretime  �V  X �R�Q�P�R 0 pretime  �Q 0 ms  �P 
0 a_text  Y �O�N�M ��O 0 	time_from  �N�
�M 
ctxt�U *�k+  � E�O��&�%E�O��lvQ �L ��K�J[\�I�L 0 
total_time  �K  �J  [ �H�G�H 0 ms  �G 
0 a_text  \ �F�E�D ��F 	0 _time  �E�
�D 
ctxt�I )�,� E�O��&�%E�O��lvR �C ��B�A]^�@�C 0 	make_with  �B �?_�? _  �>�> 
0 a_time  �A  ] �=�<�;�= 
0 a_time  �< 0 a_class  �; 40 timerecordsimpleinstance TimeRecordSimpleInstance^ �: �`�: 40 timerecordsimpleinstance TimeRecordSimpleInstance` �9a�8�7bc�6
�9 .ascrinit****      � ****a k     dd  �ee  ��5�5  �8  �7  b �4�3
�4 
pare�3 	0 _time  c �2�1
�2 
pare�1 	0 _time  �6 b  N  Ob   ��@ )E�O��K S�) �0 �(f�0 .0 timerecordwithcomment TimeRecordWithCommentf  g�/hijg �.�-�,�+
�. 
pare�- 0 ms_text_from  �, 0 
total_time  �+ 0 	make_with  �/  h �*�)�(kl�'�* 0 ms_text_from  �) �&m�& m  �%�% 0 pretime  �(  k �$�#�"�$ 0 pretime  �# 0 ms  �" 
0 a_text  l �!� ���! 0 ms_text_from  
�  
cobj� 0 _comment  
� 
tab �' ()�kd*J  E[�k/E�Z[�l/E�ZO)�,�%�%E�O��lvi �'��no�� 0 
total_time  �  �  n ��� 0 ms  � 
0 a_text  o ����� 0 
total_time  
� 
cobj� 0 _comment  
� 
tab � ')jd*  E[�k/E�Z[�l/E�ZO)�,�%�%E�O��lvj �G��pq�� 0 	make_with  � �r� r  ��� 
0 a_time  � 0 comment  �  p ���
�	� 
0 a_time  � 0 comment  �
 0 a_parent  �	 >0 timerecordwithcommentinstance TimeRecordWithCommentInstanceq ��Us� 0 	make_with  � >0 timerecordwithcommentinstance TimeRecordWithCommentInstances �t��uv�
� .ascrinit****      � ****t k     ww Wxx Z��  �  �  u �� 
� 
pare�  0 _comment  v ����
�� 
pare�� 0 _comment  � b  N  Ob  �� )�kd*J  E�O��K S�* ��f����yz���� 0 lap  ��  ��  y ���� 
0 a_time  z �������������� 0 _start_time  �� ,0 timeintervalsincenow timeIntervalSinceNow
�� 
nmbr�� 0 _time_records  �� 0 	make_with  �� 0 push  �� !)�,j+ �&E�O)�,b  �k+ k+ O�+ �������{|���� 0 lap_  �� ��}�� }  ���� 0 comment  ��  { ������ 0 comment  �� 
0 a_time  | �������������� 0 _start_time  �� ,0 timeintervalsincenow timeIntervalSinceNow
�� 
nmbr�� 0 _time_records  �� 0 	make_with  �� 0 push  �� ")�,j+ �&E�O)�,b  ��l+ k+ O�, �������~���� 0 	lap_times  ��  ��  ~ ������������ 0 pretime  �� 0 ms_list  �� 0 loop  �� 0 log_text  �� 0 x_result   ������������������������� 0 	make_with  
�� .corecrel****      � null�� 0 loop  � �����������
�� .ascrinit****      � ****� k     �� �����  ��  ��  � ���� 0 do  � �� ������������� 0 do  �� ����� �  ���� 0 x  ��  � �������� 0 x  �� 0 ms  �� 
0 a_text  � �������� 0 ms_text_from  
�� 
cobj�� 0 push  �� 0�b   k+  E[�k/E�Z[�l/E�ZO�Ec   Ob  �k+ O��� L  �� 0 _time_records  �� 0 map  �� 0 unshift  
�� 
lnfd�� 0 as_text_with  
�� .ascrcmnt****      � ****�� 0 list_ref  �� Nb  jk+  E�Ob  j E�O��K S�O)�,�k+  *�k+ O*�k+ 
E�O*E�UO�j O�j+ - ������������ 0 time_records  ��  ��  � ������ 0 lp  �� 0 tt  � �������� 0 	lap_times  �� 0 
total_time  �� �� *j+  E�O*j+ E�O���. ��(���������� 0 total_times  ��  ��  � �������� 0 ms_list  �� 0 loop  �� 0 log_text  � ����1�����V����������
�� .corecrel****      � null�� 0 loop  � �����������
�� .ascrinit****      � ****� k     �� 1����  ��  ��  � ���� 0 do  � �� ��3���������� 0 do  �� ����� �  ���� 0 x  ��  � �������� 0 x  �� 0 ms  �� 
0 a_text  � �������� 0 
total_time  
�� 
cobj�� 0 push  �� #�j+  E[�k/E�Z[�l/E�ZOb   �k+ O��� L  �� 0 _time_records  �� 0 map  �� 0 unshift  
�� 
lnfd�� 0 as_text_with  
�� .ascrcmnt****      � ****�� 0 list_ref  �� =b  j  E�O��K S�O)�,�k+  *�k+ O*�k+ 	E�UO�j 
O�j+ / ��v���������� 0 average  ��  ��  � ������������ 0 n_total  �� 0 pretime  �� 0 sum  �� 0 loop  �� 0 a_result  � ������������������������ 0 _time_records  �� 0 count_items  �� 0 	make_with  �� 0 loop  � ����������
�� .ascrinit****      � ****� k     �� ��~�~  ��  ��  � �}�} 0 do  � �� �|��{�z���y�| 0 do  �{ �x��x �  �w�w 0 x  �z  � �v�v 0 x  � �u�u 0 	time_from  �y "b  �b  k+  Ec  O�Ec  Oe� L  �� 0 each  ���
�� 
lnfd
�� 
ctxt
�� .ascrcmnt****      � ****�� E)�,j+ E�Ob  jk+ E�OjE�O��K S�O)�,�k+ O� �!E�O��%��&%�%j O�0 �t��s�r���q�t 	0 debug  �s  �r  �  � 
�p��o��n���m�l�k�p 0 start_timer  
�o .sysodelanull��� ��� nmbr�n 0 lap_  �m 0 	lap_times  �l 0 total_times  �k 0 average  �q 5*j+   -�j O*�k+ O�j O*�k+ O*j+ O*j+ O*j+ 	U1 �j��i�h���g�j 
0 debug2  �i  �h  �  � �f�e�d�f 0 start_timer  �e 0 duration  
�d .ascrcmnt****      � ****�g *j+   *j+ j U2 �c��b�a���`�c 0 open_helpbook  �b  �a  � �_�^�_ 0 msg  �^ 	0 errno  � 	�]�\�[�Z��Y�X�W
�] 
scpt
�\ .earsffdralis        afdr�[ 0 do  �Z 0 msg  � �V�U�T
�V 
errn�U 	0 errno  �T  
�Y .miscactvnull��� ��� null
�X 
ret 
�W .sysodisAaleR        TEXT�` - )��/ *)j k+ UW X  *j O��%�%j 3 �S�R�Q���P
�S .aevtoappnull  �   � ****�R  �Q  �  � �O�O 0 open_helpbook  �P *j+  ascr  ��ޭ