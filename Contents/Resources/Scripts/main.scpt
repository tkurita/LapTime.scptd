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
   [ m s ]��   h  q�� q L     r r o    ���� 0 a_result  ��   V  s t s l     ��������  ��  ��   t  u v u i   6 9 w x w I      �������� 0 record_time  ��  ��   x I     �������� 0 record_time  ��  ��   v  y z y l     ��������  ��  ��   z  { | { l      �� } ~��   } \ V!@abstruct Record elapsed time form ((<start_timer>)) in the instance
@result number 
    ~ �   � ! @ a b s t r u c t   R e c o r d   e l a p s e d   t i m e   f o r m   ( ( < s t a r t _ t i m e r > ) )   i n   t h e   i n s t a n c e 
 @ r e s u l t   n u m b e r   
 |  � � � i   : = � � � I      �������� 0 lap  ��  ��   � k      � �  � � � r      � � � l    	 ����� � c     	 � � � n     � � � n    � � � I    �������� ,0 timeintervalsincenow timeIntervalSinceNow��  ��   � o    ���� 0 _start_time   �  f      � m    ��
�� 
nmbr��  ��   � o      ���� 
0 a_time   �  � � � n    � � � n    � � � I    �� ����� 0 push   �  ��� � o    ���� 
0 a_time  ��  ��   � o    ���� 0 _time_records   �  f     �  ��� � L     � � o    ���� 
0 a_time  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstruct Return time difference in msec between times recorded with ((<lap>)) 
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result list of numbers
    � � � �� ! @ a b s t r u c t   R e t u r n   t i m e   d i f f e r e n c e   i n   m s e c   b e t w e e n   t i m e s   r e c o r d e d   w i t h   ( ( < l a p > ) )   
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   l i s t   o f   n u m b e r s 
 �  � � � i   > A � � � I      �������� 0 	lap_times  ��  ��   � k     v � �  � � � r     	 � � � n     � � � n    � � � I    �������� 0 	deep_copy  ��  ��   � o    ���� 0 _time_records   �  f      � o      ���� 
0 x_list   �  � � � Y   
 4 ��� � � � � n   / � � � I    /�� ����� 0 set_item_at   �  � � � l   * ����� � ]    * � � � l   ( ����� � \    ( � � � l   ! ����� � n   ! � � � I    !�� ����� 0 item_at   �  ��� � \     � � � o    ���� 0 n   � m    ���� ��  ��   � o    ���� 
0 x_list  ��  ��   � l  ! ' ���~ � n  ! ' � � � I   " '�} ��|�} 0 item_at   �  ��{ � o   " #�z�z 0 n  �{  �|   � o   ! "�y�y 
0 x_list  �  �~  ��  ��   � m   ( )�x�x���  ��   �  ��w � o   * +�v�v 0 n  �w  ��   � o    �u�u 
0 x_list  �� 0 n   � l    ��t�s � n    � � � I    �r�q�p�r 0 count_items  �q  �p   � o    �o�o 
0 x_list  �t  �s   � m    �n�n  � m    �m�m�� �  � � � n  5 C � � � I   6 C�l ��k�l 0 set_item_at   �  � � � ]   6 > � � � m   6 7�j�j� � l  7 = ��i�h � n  7 = � � � I   8 =�g ��f�g 0 item_at   �  ��e � m   8 9�d�d �e  �f   � o   7 8�c�c 
0 x_list  �i  �h   �  ��b � m   > ?�a�a �b  �k   � o   5 6�`�` 
0 x_list   �  � � � l  D D�_�^�]�_  �^  �]   �  � � � h   D K�\ ��\ 0 loop   � i      � � � I      �[ ��Z�[ 0 do   �  ��Y � o      �X�X 0 x  �Y  �Z   � L      � � b      � � � l     ��W�V � c      � � � o     �U�U 0 x   � m    �T
�T 
ctxt�W  �V   � m     � � � � � 
   [ m s ] �  � � � l  L L�S�R�Q�S  �R  �Q   �  � � � O   L i � � � k   U h � �  � � � n  U [ � � � I   V [�P ��O�P 0 unshift   �  ��N � m   V W � � � � �  [ L a p   T i m e s ]�N  �O   �  g   U V �  � � � r   \ d   n  \ b I   ] b�M�L�M 0 as_text_with   �K 1   ] ^�J
�J 
lnfd�K  �L    g   \ ] o      �I�I 0 log_text   � �H r   e h  g   e f o      �G�G 0 x_result  �H   � n  L R	
	 I   M R�F�E�F 0 map   �D o   M N�C�C 0 loop  �D  �E  
 o   L M�B�B 
0 x_list   �  I  j o�A�@
�A .ascrcmnt****      � **** o   j k�?�? 0 log_text  �@   �> L   p v n  p u I   q u�=�<�;�= 0 list_ref  �<  �;   o   p q�:�: 
0 x_list  �>   �  l     �9�8�7�9  �8  �7    i   B E I      �6�5�4�6 0 time_records  �5  �4   k       r      I     �3�2�1�3 0 	lap_times  �2  �1   o      �0�0 0 lp     r    !"! I    �/�.�-�/ 0 
total_time  �.  �-  " o      �,�, 0 tt    #�+# L    $$ K    %% �*&'�* 0 	lap_times  & o    �)�) 0 lp  ' �((�'�( 0 
total_time  ( o    �&�& 0 tt  �'  �+   )*) l     �%�$�#�%  �$  �#  * +,+ l      �"-.�"  - � �!@abstruct Return time difference between each ((<lap>)) and ((<start_timer>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result list of numbers
   . �//� ! @ a b s t r u c t   R e t u r n   t i m e   d i f f e r e n c e   b e t w e e n   e a c h   ( ( < l a p > ) )   a n d   ( ( < s t a r t _ t i m e r > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   l i s t   o f   n u m b e r s 
, 010 i   F I232 I      �!� ��! 0 total_times  �   �  3 k     444 565 h     �7� 0 loop  7 i     898 I      �:�� 0 do  : ;�; o      �� 0 x  �  �  9 L     << b     =>= l    ?��? c     @A@ l    B��B ]     CDC o     �� 0 x  D m    ����  �  A m    �
� 
ctxt�  �  > m    EE �FF 
   [ m s ]6 GHG l   ����  �  �  H IJI O    'KLK k    &MM NON n   PQP I    �R�� 0 unshift  R S�S m    TT �UU  [ T o t a l   T i m e s ]�  �  Q  g    O VWV r    "XYX n    Z[Z I     �\�� 0 as_text_with  \ ]�
] 1    �	
�	 
lnfd�
  �  [  g    Y o      �� 0 log_text  W ^�^ r   # &_`_  g   # $` o      �� 0 x_result  �  L n   aba n  	 cdc I    �e�� 0 map  e f�f o    �� 0 loop  �  �  d o   	 �� 0 _time_records  b  f    	J ghg I  ( -� i��
�  .ascrcmnt****      � ****i o   ( )���� 0 log_text  ��  h jkj l  . .��������  ��  ��  k l��l L   . 4mm n  . 3non I   / 3�������� 0 list_ref  ��  ��  o o   . /���� 0 x_result  ��  1 pqp l     ��������  ��  ��  q rsr l      ��tu��  t � �!@abstruct Return average of time difference between ((<start_timer>)) and each ((<lap>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result number
   u �vv� ! @ a b s t r u c t   R e t u r n   a v e r a g e   o f   t i m e   d i f f e r e n c e   b e t w e e n   ( ( < s t a r t _ t i m e r > ) )   a n d   e a c h   ( ( < l a p > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   n u m b e r 
s wxw i   J Myzy I      �������� 0 average  ��  ��  z k     ]{{ |}| r     	~~ n    ��� n   ��� I    �������� 0 count_items  ��  ��  � o    ���� 0 _time_records  �  f      o      ���� 0 n_total  } ��� r   
 ��� m   
 ����  � o      ���� 0 sum  � ��� Y    7������� O    2��� r    1��� [    /��� o    ���� 0 sum  � l   .������ \    .��� l   '������ n   '��� I     '������� 0 item_at  � ���� \     #��� o     !���� 0 n  � m   ! "���� ��  ��  �  g     ��  ��  � l  ' -������ n  ' -��� I   ( -������� 0 item_at  � ���� o   ( )���� 0 n  ��  ��  �  g   ' (��  ��  ��  ��  � o      ���� 0 sum  � n   ��� o    ���� 0 _time_records  �  f    �� 0 n  � o    ���� 0 n_total  � m    ���� � m    ������� ��� r   8 D��� \   8 B��� o   8 9���� 0 sum  � l  9 A������ n  9 A��� n  : A��� I   < A������� 0 item_at  � ���� m   < =���� ��  ��  � o   : <���� 0 _time_records  �  f   9 :��  ��  � o      ���� 0 sum  � ��� r   E L��� l  E J������ ^   E J��� ]   E H��� m   E F������ o   F G���� 0 sum  � o   H I���� 0 n_total  ��  ��  � o      ���� 0 a_result  � ��� I  M Z�����
�� .ascrcmnt****      � ****� l  M V������ b   M V��� b   M T��� b   M P��� m   M N�� ��� , [ A v e r a g e   T i m e   o f   L a p s ]� 1   N O��
�� 
lnfd� l  P S������ c   P S��� o   P Q���� 0 a_result  � m   Q R��
�� 
ctxt��  ��  � m   T U�� ��� 
   [ m s ]��  ��  ��  � ���� L   [ ]�� o   [ \���� 0 a_result  ��  x ��� l     ��������  ��  ��  � ��� i   N Q��� I      �������� 	0 debug  ��  ��  � O     2��� k    1�� ��� I   �����
�� .sysodelanull��� ��� nmbr� m    	�� ?���������  � ��� I    �������� 0 lap  ��  ��  � ��� I   �����
�� .sysodelanull��� ��� nmbr� m    �� ?ə�������  � ��� I    �������� 0 lap  ��  ��  � ��� I     %�������� 0 	lap_times  ��  ��  � ��� I   & +�������� 0 total_times  ��  ��  � ���� I   , 1�������� 0 average  ��  ��  ��  � I     �������� 0 start_timer  ��  ��  � ��� l     ��������  ��  ��  � ��� i   R U��� I      �������� 
0 debug2  ��  ��  � O     ��� I   �����
�� .ascrcmnt****      � ****� I    �������� 0 duration  ��  ��  ��  � I     �������� 0 start_timer  ��  ��  � ��� l     ��������  ��  ��  � ��� i   V Y��� I      �������� 0 open_helpbook  ��  ��  � Q     ,���� O   ��� I   
 ������� 0 do  � ���� I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � 4    ���
�� 
scpt� m       �  O p e n H e l p B o o k� R      ��
�� .ascrerr ****      � **** o      �� 0 msg   �~�}
�~ 
errn o      �|�| 	0 errno  �}  � k    ,  I   "�{�z�y
�{ .miscactvnull��� ��� null�z  �y   �x I  # ,�w	�v
�w .sysodisAaleR        TEXT	 l  # (
�u�t
 b   # ( b   # & o   # $�s�s 0 msg   o   $ %�r
�r 
ret  o   & '�q�q 	0 errno  �u  �t  �v  �x  �  l     �p�o�n�p  �o  �n   �m i   Z ] I     �l�k�j
�l .aevtoappnull  �   � ****�k  �j   k       l     �i�i    return debug()    �  r e t u r n   d e b u g ( ) �h I     �g�f�e�g 0 open_helpbook  �f  �e  �h  �m       �d  !"#$%&'()�d   �c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U
�c 
pnam
�b 
pimr�a 0 xlist XList�` 0 start_timer  �_ 0 duration  �^ 0 record_time  �] 0 lap  �\ 0 	lap_times  �[ 0 time_records  �Z 0 total_times  �Y 0 average  �X 	0 debug  �W 
0 debug2  �V 0 open_helpbook  
�U .aevtoappnull  �   � **** �T*�T *  +,-+ �S.�R
�S 
cobj. //   �Q
�Q 
osax�R  , �P0�O
�P 
cobj0 11   �N 
�N 
frmk�O  - �M2�L
�M 
cobj2 33   �K 
�K 
scpt�L   44   �J 
�J 
scpt �I 1�H�G56�F�I 0 start_timer  �H  �G  5 �E�D�E 0 a_class  �D "0 laptimeinstance LapTimeInstance6 �C 87�C "0 laptimeinstance LapTimeInstance7 �B8�A�@9:�?
�B .ascrinit****      � ****8 k     ;;  :<<  ===  A�>�>  �A  �@  9 �=�<�;
�= 
pare�< 0 _time_records  �; 0 _start_time  : �:�9�8�7�6�5�4
�: 
pare
�9 .corecrel****      � null�8 0 _time_records  
�7 misccura�6 
0 NSDate  �5 0 date  �4 0 _start_time  �? b   N  Ob  j �O��,j+ ��F )E�O��K S� �3 X�2�1>?�0�3 0 duration  �2  �1  > �/�/ 0 a_result  ? �.�-�,�+�* o�)�. 0 _start_time  �- ,0 timeintervalsincenow timeIntervalSinceNow
�, 
nmbr�+�
�* 
ctxt
�) .ascrcmnt****      � ****�0 )�,j+ �&� E�O��&�%j O�  �( x�'�&@A�%�( 0 record_time  �'  �&  @  A �$�$ 0 record_time  �% *j+  ! �# ��"�!BC� �# 0 lap  �"  �!  B �� 
0 a_time  C ������ 0 _start_time  � ,0 timeintervalsincenow timeIntervalSinceNow
� 
nmbr� 0 _time_records  � 0 push  �  )�,j+ �&E�O)�,�k+ O�" � ���DE�� 0 	lap_times  �  �  D ������ 
0 x_list  � 0 n  � 0 loop  � 0 log_text  � 0 x_result  E �������
�	 �F� ������� 0 _time_records  � 0 	deep_copy  � 0 count_items  � 0 item_at  ��� 0 set_item_at  �
��	 0 loop  F �G�� HI��
� .ascrinit****      � ****G k     JJ  �����  �  �   H ���� 0 do  I KK �� �����LM���� 0 do  �� ��N�� N  ���� 0 x  ��  L ���� 0 x  M �� �
�� 
ctxt�� ��&�%�� L  � 0 map  � 0 unshift  
� 
lnfd� 0 as_text_with  
� .ascrcmnt****      � ****� 0 list_ref  � w)�,j+ E�O )�j+ lih ���kk+ ��k+ � �l+ [OY��O��kk+  kl+ O��K 	S�O��k+ 
 *�k+ O*�k+ E�O*E�UO�j O�j+ # ������OP���� 0 time_records  ��  ��  O ������ 0 lp  �� 0 tt  P �������� 0 	lap_times  �� 0 
total_time  �� �� *j+  E�O*j+ E�O���$ ��3����QR���� 0 total_times  ��  ��  Q �������� 0 loop  �� 0 log_text  �� 0 x_result  R ��7S����T������������ 0 loop  S ��T����UV��
�� .ascrinit****      � ****T k     WW 7����  ��  ��  U ���� 0 do  V XX ��9����YZ���� 0 do  �� ��[�� [  ���� 0 x  ��  Y ���� 0 x  Z ����E���
�� 
ctxt�� 	�� �&�%�� L  �� 0 _time_records  �� 0 map  �� 0 unshift  
�� 
lnfd�� 0 as_text_with  
�� .ascrcmnt****      � ****�� 0 list_ref  �� 5��K S�O)�,�k+  *�k+ O*�k+ E�O*E�UO�j 	O�j+ 
% ��z����\]���� 0 average  ��  ��  \ ���������� 0 n_total  �� 0 sum  �� 0 n  �� 0 a_result  ] 	������������������ 0 _time_records  �� 0 count_items  �� 0 item_at  ���
�� 
lnfd
�� 
ctxt
�� .ascrcmnt****      � ****�� ^)�,j+ E�OjE�O (�lih )�, �*�kk+ *�k+ E�U[OY��O�)�,kk+ E�O� �!E�O��%��&%�%j O�& �������^_���� 	0 debug  ��  ��  ^  _ ���������������� 0 start_timer  
�� .sysodelanull��� ��� nmbr�� 0 lap  �� 0 	lap_times  �� 0 total_times  �� 0 average  �� 3*j+   +�j O*j+ O�j O*j+ O*j+ O*j+ O*j+ U' �������`a���� 
0 debug2  ��  ��  `  a �������� 0 start_timer  �� 0 duration  
�� .ascrcmnt****      � ****�� *j+   *j+ j U( �������bc���� 0 open_helpbook  ��  ��  b ������ 0 msg  �� 	0 errno  c 	�� ������d������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  d ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j ) ������ef��
�� .aevtoappnull  �   � ****��  ��  e  f ���� 0 open_helpbook  �� *j+  ascr  ��ޭ