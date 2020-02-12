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
 X L i s t��       !   l     ��������  ��  ��   !  " # " l      �� $ %��   $/)!@references
Home page || http://www.script-factory.net/XModules/LapTime/en/index.html
ChangeLog || http://www.script-factory.net/XModules/LapTime/changelog.html
Repository || https://github.com/tkurita/LapTime.scptd
XList || http://www.script-factory.net/XModules/XList/en/index.html

@title LapTime Reference
* Version : 1.0
* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))
* Requirements : 
  * OS X 10.9 or later
  * ((<XList>))
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

LapTime is an AppleScript library to measure execution time of a script of AppleScript. 
It is useful to evaluate performance of the script and to tune up the script.

You can measure execution time by using current date command which is AppleScript's built-in command. 
But time resolution of AppleScript's date class is 1 sec, which is too rough for performance measurements. 
The time resolution of LapTime is under a several msec.

You can obtain time differences bettween commands of LapTime as follows. 
The simple usage is using ((<start_timer>)) and ((<duration>)). 
((<start_timer>)) generate a new timer object. 
((<duration>)) command obtain elapsed time from ((<start_timer>)) command.

((<record_time>)) method records the called timing in the LapTime instance.
Elapsed times between ((<record_time>)) can be obtained by ((<lap_times>)).

@example
use LapTime : script "LapTime"set tm to LapTime's start_timer()tm's record_time() -- record the timmingdelay 0.1tm's record_time()delay 0.2tm's record_time()-- pretty print elapsed times between record_time tm's lap_times()(*[LapTime records]8.116960525513 [ms]112.017035484314 [ms]210.969924926758 [ms]*)-- obtain tatal of lap timestm's total_time() --331.103920936584 [ms]-- obtain elapsed time form start_timer()tm's duration() --372.91693687439 [ms]
    % � & &R ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / L a p T i m e / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / L a p T i m e / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / L a p T i m e . s c p t d 
 X L i s t   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / e n / i n d e x . h t m l 
 
 @ t i t l e   L a p T i m e   R e f e r e n c e 
 *   V e r s i o n   :   1 . 0 
 *   A u t h o r   :   K u r i t a   T e t s u r o   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   
     *   O S   X   1 0 . 9   o r   l a t e r 
     *   ( ( < X L i s t > ) ) 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
 L a p T i m e   i s   a n   A p p l e S c r i p t   l i b r a r y   t o   m e a s u r e   e x e c u t i o n   t i m e   o f   a   s c r i p t   o f   A p p l e S c r i p t .   
 I t   i s   u s e f u l   t o   e v a l u a t e   p e r f o r m a n c e   o f   t h e   s c r i p t   a n d   t o   t u n e   u p   t h e   s c r i p t . 
 
 Y o u   c a n   m e a s u r e   e x e c u t i o n   t i m e   b y   u s i n g   c u r r e n t   d a t e   c o m m a n d   w h i c h   i s   A p p l e S c r i p t ' s   b u i l t - i n   c o m m a n d .   
 B u t   t i m e   r e s o l u t i o n   o f   A p p l e S c r i p t ' s   d a t e   c l a s s   i s   1   s e c ,   w h i c h   i s   t o o   r o u g h   f o r   p e r f o r m a n c e   m e a s u r e m e n t s .   
 T h e   t i m e   r e s o l u t i o n   o f   L a p T i m e   i s   u n d e r   a   s e v e r a l   m s e c . 
 
 Y o u   c a n   o b t a i n   t i m e   d i f f e r e n c e s   b e t t w e e n   c o m m a n d s   o f   L a p T i m e   a s   f o l l o w s .   
 T h e   s i m p l e   u s a g e   i s   u s i n g   ( ( < s t a r t _ t i m e r > ) )   a n d   ( ( < d u r a t i o n > ) ) .   
 ( ( < s t a r t _ t i m e r > ) )   g e n e r a t e   a   n e w   t i m e r   o b j e c t .   
 ( ( < d u r a t i o n > ) )   c o m m a n d   o b t a i n   e l a p s e d   t i m e   f r o m   ( ( < s t a r t _ t i m e r > ) )   c o m m a n d . 
 
 ( ( < r e c o r d _ t i m e > ) )   m e t h o d   r e c o r d s   t h e   c a l l e d   t i m i n g   i n   t h e   L a p T i m e   i n s t a n c e . 
 E l a p s e d   t i m e s   b e t w e e n   ( ( < r e c o r d _ t i m e > ) )   c a n   b e   o b t a i n e d   b y   ( ( < l a p _ t i m e s > ) ) . 
 
 @ e x a m p l e 
 u s e   L a p T i m e   :   s c r i p t   " L a p T i m e "   s e t   t m   t o   L a p T i m e ' s   s t a r t _ t i m e r ( )  t m ' s   r e c o r d _ t i m e ( )   - -   r e c o r d   t h e   t i m m i n g  d e l a y   0 . 1  t m ' s   r e c o r d _ t i m e ( )  d e l a y   0 . 2  t m ' s   r e c o r d _ t i m e ( )   - -   p r e t t y   p r i n t   e l a p s e d   t i m e s   b e t w e e n   r e c o r d _ t i m e    t m ' s   l a p _ t i m e s ( )  ( * [ L a p T i m e   r e c o r d s ]  8 . 1 1 6 9 6 0 5 2 5 5 1 3   [ m s ]  1 1 2 . 0 1 7 0 3 5 4 8 4 3 1 4   [ m s ]  2 1 0 . 9 6 9 9 2 4 9 2 6 7 5 8   [ m s ] * )   - -   o b t a i n   t a t a l   o f   l a p   t i m e s  t m ' s   t o t a l _ t i m e ( )   - - 3 3 1 . 1 0 3 9 2 0 9 3 6 5 8 4   [ m s ]   - -   o b t a i n   e l a p s e d   t i m e   f o r m   s t a r t _ t i m e r ( )  t m ' s   d u r a t i o n ( )   - - 3 7 2 . 9 1 6 9 3 6 8 7 4 3 9   [ m s ]  
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
   [ m s ]��   h  q�� q L     r r o    ���� 0 a_result  ��   V  s t s l     ��������  ��  ��   t  u v u l     ��������  ��  ��   v  w x w i   6 9 y z y I      �������� 0 record_time  ��  ��   z I     �������� 0 record_time  ��  ��   x  { | { l     ��������  ��  ��   |  } ~ } l      ��  ���    \ V!@abstruct Record elapsed time form ((<start_timer>)) in the instance
@result number 
    � � � � � ! @ a b s t r u c t   R e c o r d   e l a p s e d   t i m e   f o r m   ( ( < s t a r t _ t i m e r > ) )   i n   t h e   i n s t a n c e 
 @ r e s u l t   n u m b e r   
 ~  � � � i   : = � � � I      �������� 0 lap  ��  ��   � k      � �  � � � r      � � � l    	 ����� � c     	 � � � n     � � � n    � � � I    �������� ,0 timeintervalsincenow timeIntervalSinceNow��  ��   � o    ���� 0 _start_time   �  f      � m    ��
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
 4 ��� � � � � n   / � � � I    /�� ����� 0 set_item_at   �  � � � l   * ����� � ]    * � � � l   ( ����� � \    ( � � � l   ! ����� � n   ! � � � I    !�� ����� 0 item_at   �  ��� � \     � � � o    �� 0 n   � m    �~�~ ��  ��   � o    �}�} 
0 x_list  ��  ��   � l  ! ' ��|�{ � n  ! ' � � � I   " '�z ��y�z 0 item_at   �  ��x � o   " #�w�w 0 n  �x  �y   � o   ! "�v�v 
0 x_list  �|  �{  ��  ��   � m   ( )�u�u���  ��   �  ��t � o   * +�s�s 0 n  �t  ��   � o    �r�r 
0 x_list  �� 0 n   � l    ��q�p � n    � � � I    �o�n�m�o 0 count_items  �n  �m   � o    �l�l 
0 x_list  �q  �p   � m    �k�k  � m    �j�j�� �  � � � n  5 C � � � I   6 C�i ��h�i 0 set_item_at   �  � � � ]   6 > � � � m   6 7�g�g� � l  7 = ��f�e � n  7 = � � � I   8 =�d ��c�d 0 item_at   �  ��b � m   8 9�a�a �b  �c   � o   7 8�`�` 
0 x_list  �f  �e   �  ��_ � m   > ?�^�^ �_  �h   � o   5 6�]�] 
0 x_list   �  � � � l  D D�\�[�Z�\  �[  �Z   �  � � � h   D K�Y ��Y 0 loop   � i      � � � I      �X ��W�X 0 do   �  ��V � o      �U�U 0 x  �V  �W   � L      � � b      � � � l     ��T�S � c      � � � o     �R�R 0 x   � m    �Q
�Q 
ctxt�T  �S   � m     � � � � � 
   [ m s ] �  � � � l  L L�P�O�N�P  �O  �N   �  � � � O   L i � � � k   U h � �  � � � n  U [ � � � I   V [�M ��L�M 0 unshift   �  ��K � m   V W � � � � �  [ L a p   T i m e s ]�K  �L   �  g   U V �    r   \ d n  \ b I   ] b�J�I�J 0 as_text_with   �H 1   ] ^�G
�G 
lnfd�H  �I    g   \ ] o      �F�F 0 log_text   �E r   e h	
	  g   e f
 o      �D�D 0 x_result  �E   � n  L R I   M R�C�B�C 0 map   �A o   M N�@�@ 0 loop  �A  �B   o   L M�?�? 
0 x_list   �  I  j o�>�=
�> .ascrcmnt****      � **** o   j k�<�< 0 log_text  �=   �; L   p v n  p u I   q u�:�9�8�: 0 list_ref  �9  �8   o   p q�7�7 
0 x_list  �;   �  l     �6�5�4�6  �5  �4    i   B E I      �3�2�1�3 0 time_records  �2  �1   k       r       I     �0�/�.�0 0 	lap_times  �/  �.    o      �-�- 0 lp   !"! r    #$# I    �,�+�*�, 0 
total_time  �+  �*  $ o      �)�) 0 tt  " %�(% L    && K    '' �'()�' 0 	lap_times  ( o    �&�& 0 lp  ) �%*�$�% 0 
total_time  * o    �#�# 0 tt  �$  �(   +,+ l     �"�!� �"  �!  �   , -.- l      �/0�  / � �!@abstruct Return time difference between ((<start_timer>)) and each ((<lap>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result list of numbers
   0 �11� ! @ a b s t r u c t   R e t u r n   t i m e   d i f f e r e n c e   b e t w e e n   ( ( < s t a r t _ t i m e r > ) )   a n d   e a c h   ( ( < l a p > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   l i s t   o f   n u m b e r s 
. 232 i   F I454 I      ���� 0 total_times  �  �  5 k     466 787 h     �9� 0 loop  9 i     :;: I      �<�� 0 do  < =�= o      �� 0 x  �  �  ; L     >> b     ?@? l    A��A c     BCB l    D��D ]     EFE o     �� 0 x  F m    ����  �  C m    �
� 
ctxt�  �  @ m    GG �HH 
   [ m s ]8 IJI l   ����  �  �  J KLK O    'MNM k    &OO PQP n   RSR I    �T�� 0 unshift  T U�
U m    VV �WW  [ T o t a l   T i m e s ]�
  �  S  g    Q XYX r    "Z[Z n    \]\ I     �	^��	 0 as_text_with  ^ _�_ 1    �
� 
lnfd�  �  ]  g    [ o      �� 0 log_text  Y `�` r   # &aba  g   # $b o      �� 0 x_result  �  N n   cdc n  	 efe I    �g�� 0 map  g h� h o    ���� 0 loop  �   �  f o   	 ���� 0 _time_records  d  f    	L iji I  ( -��k��
�� .ascrcmnt****      � ****k o   ( )���� 0 log_text  ��  j lml l  . .��������  ��  ��  m n��n L   . 4oo n  . 3pqp I   / 3�������� 0 list_ref  ��  ��  q o   . /���� 0 x_result  ��  3 rsr l     ��������  ��  ��  s tut l      ��vw��  v � �!@abstruct Return average of time difference between ((<start_timer>)) and each ((<lap>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result number
   w �xx� ! @ a b s t r u c t   R e t u r n   a v e r a g e   o f   t i m e   d i f f e r e n c e   b e t w e e n   ( ( < s t a r t _ t i m e r > ) )   a n d   e a c h   ( ( < l a p > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   n u m b e r 
u yzy i   J M{|{ I      �������� 0 average  ��  ��  | k     ]}} ~~ r     	��� n    ��� n   ��� I    �������� 0 count_items  ��  ��  � o    ���� 0 _time_records  �  f     � o      ���� 0 n_total   ��� r   
 ��� m   
 ����  � o      ���� 0 sum  � ��� Y    7������� O    2��� r    1��� [    /��� o    ���� 0 sum  � l   .������ \    .��� l   '������ n   '��� I     '������� 0 item_at  � ���� \     #��� o     !���� 0 n  � m   ! "���� ��  ��  �  g     ��  ��  � l  ' -������ n  ' -��� I   ( -������� 0 item_at  � ���� o   ( )���� 0 n  ��  ��  �  g   ' (��  ��  ��  ��  � o      ���� 0 sum  � n   ��� o    ���� 0 _time_records  �  f    �� 0 n  � o    ���� 0 n_total  � m    ���� � m    ������� ��� r   8 D��� \   8 B��� o   8 9���� 0 sum  � l  9 A������ n  9 A��� n  : A��� I   < A������� 0 item_at  � ���� m   < =���� ��  ��  � o   : <���� 0 _time_records  �  f   9 :��  ��  � o      ���� 0 sum  � ��� r   E L��� l  E J������ ^   E J��� ]   E H��� m   E F������ o   F G���� 0 sum  � o   H I���� 0 n_total  ��  ��  � o      ���� 0 a_result  � ��� I  M Z�����
�� .ascrcmnt****      � ****� l  M V������ b   M V��� b   M T��� b   M P��� m   M N�� ��� , [ A v e r a g e   T i m e   o f   L a p s ]� 1   N O��
�� 
lnfd� l  P S������ c   P S��� o   P Q���� 0 a_result  � m   Q R��
�� 
ctxt��  ��  � m   T U�� ��� 
   [ m s ]��  ��  ��  � ���� L   [ ]�� o   [ \���� 0 a_result  ��  z ��� l     ��������  ��  ��  � ��� i   N Q��� I      �������� 	0 debug  ��  ��  � O     2��� k    1�� ��� I   �����
�� .sysodelanull��� ��� nmbr� m    	�� ?���������  � ��� I    �������� 0 lap  ��  ��  � ��� I   �����
�� .sysodelanull��� ��� nmbr� m    �� ?ə�������  � ��� I    �������� 0 lap  ��  ��  � ��� I     %�������� 0 	lap_times  ��  ��  � ��� I   & +�������� 0 total_times  ��  ��  � ���� I   , 1�������� 0 average  ��  ��  ��  � I     �������� 0 start_timer  ��  ��  � ��� l     ��������  ��  ��  � ��� i   R U��� I      �������� 
0 debug2  ��  ��  � O     ��� I   �����
�� .ascrcmnt****      � ****� I    �������� 0 duration  ��  ��  ��  � I     �������� 0 start_timer  ��  ��  � ��� l     ��������  ��  ��  � ��� i   V Y��� I      �������� 0 open_helpbook  ��  ��  � Q     ,���� O   ��� I   
 ������� 0 do  � ���� I   �� �
�� .earsffdralis        afdr   f    �  ��  ��  � 4    �~
�~ 
scpt m     �  O p e n H e l p B o o k� R      �}
�} .ascrerr ****      � **** o      �|�| 0 msg   �{�z
�{ 
errn o      �y�y 	0 errno  �z  � k    , 	 I   "�x�w�v
�x .miscactvnull��� ��� null�w  �v  	 
�u
 I  # ,�t�s
�t .sysodisAaleR        TEXT l  # (�r�q b   # ( b   # & o   # $�p�p 0 msg   o   $ %�o
�o 
ret  o   & '�n�n 	0 errno  �r  �q  �s  �u  �  l     �m�l�k�m  �l  �k   �j i   Z ] I     �i�h�g
�i .aevtoappnull  �   � ****�h  �g   k       L      I     �f�e�d�f 	0 debug  �e  �d   �c I    �b�a�`�b 0 open_helpbook  �a  �`  �c  �j       �_  !"#$%&'()�_   �^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P
�^ 
pnam
�] 
pimr�\ 0 xlist XList�[ 0 start_timer  �Z 0 duration  �Y 0 record_time  �X 0 lap  �W 0 	lap_times  �V 0 time_records  �U 0 total_times  �T 0 average  �S 	0 debug  �R 
0 debug2  �Q 0 open_helpbook  
�P .aevtoappnull  �   � **** �O*�O *  +,-+ �N.�M
�N 
cobj. //   �L
�L 
osax�M  , �K0�J
�K 
cobj0 11   �I 
�I 
frmk�J  - �H2�G
�H 
cobj2 33   �F 
�F 
scpt�G   44   �E 
�E 
scpt �D 1�C�B56�A�D 0 start_timer  �C  �B  5 �@�?�@ 0 a_class  �? "0 laptimeinstance LapTimeInstance6 �> 87�> "0 laptimeinstance LapTimeInstance7 �=8�<�;9:�:
�= .ascrinit****      � ****8 k     ;;  :<<  ===  A�9�9  �<  �;  9 �8�7�6
�8 
pare�7 0 _time_records  �6 0 _start_time  : �5�4�3�2�1�0�/
�5 
pare
�4 .corecrel****      � null�3 0 _time_records  
�2 misccura�1 
0 NSDate  �0 0 date  �/ 0 _start_time  �: b   N  Ob  j �O��,j+ ��A )E�O��K S� �. X�-�,>?�+�. 0 duration  �-  �,  > �*�* 0 a_result  ? �)�(�'�&�% o�$�) 0 _start_time  �( ,0 timeintervalsincenow timeIntervalSinceNow
�' 
nmbr�&�
�% 
ctxt
�$ .ascrcmnt****      � ****�+ )�,j+ �&� E�O��&�%j O�  �# z�"�!@A� �# 0 record_time  �"  �!  @  A �� 0 record_time  �  *j+  ! � ���BC�� 0 lap  �  �  B �� 
0 a_time  C ������ 0 _start_time  � ,0 timeintervalsincenow timeIntervalSinceNow
� 
nmbr� 0 _time_records  � 0 push  � )�,j+ �&E�O)�,�k+ O�" � ���DE�� 0 	lap_times  �  �  D ������ 
0 x_list  � 0 n  � 0 loop  � 0 log_text  � 0 x_result  E ��
�	����� �F� ���� ����� 0 _time_records  �
 0 	deep_copy  �	 0 count_items  � 0 item_at  ��� 0 set_item_at  ��� 0 loop  F ��G����HI��
�� .ascrinit****      � ****G k     JJ  �����  ��  ��  H ���� 0 do  I KK �� �����LM���� 0 do  �� ��N�� N  ���� 0 x  ��  L ���� 0 x  M �� �
�� 
ctxt�� ��&�%�� L  � 0 map  � 0 unshift  
� 
lnfd�  0 as_text_with  
�� .ascrcmnt****      � ****�� 0 list_ref  � w)�,j+ E�O )�j+ lih ���kk+ ��k+ � �l+ [OY��O��kk+  kl+ O��K 	S�O��k+ 
 *�k+ O*�k+ E�O*E�UO�j O�j+ # ������OP���� 0 time_records  ��  ��  O ������ 0 lp  �� 0 tt  P �������� 0 	lap_times  �� 0 
total_time  �� �� *j+  E�O*j+ E�O���$ ��5����QR���� 0 total_times  ��  ��  Q �������� 0 loop  �� 0 log_text  �� 0 x_result  R ��9S����V������������ 0 loop  S ��T����UV��
�� .ascrinit****      � ****T k     WW 9����  ��  ��  U ���� 0 do  V XX ��;����YZ���� 0 do  �� ��[�� [  ���� 0 x  ��  Y ���� 0 x  Z ����G���
�� 
ctxt�� 	�� �&�%�� L  �� 0 _time_records  �� 0 map  �� 0 unshift  
�� 
lnfd�� 0 as_text_with  
�� .ascrcmnt****      � ****�� 0 list_ref  �� 5��K S�O)�,�k+  *�k+ O*�k+ E�O*E�UO�j 	O�j+ 
% ��|����\]���� 0 average  ��  ��  \ ���������� 0 n_total  �� 0 sum  �� 0 n  �� 0 a_result  ] 	������������������ 0 _time_records  �� 0 count_items  �� 0 item_at  ���
�� 
lnfd
�� 
ctxt
�� .ascrcmnt****      � ****�� ^)�,j+ E�OjE�O (�lih )�, �*�kk+ *�k+ E�U[OY��O�)�,kk+ E�O� �!E�O��%��&%�%j O�& �������^_���� 	0 debug  ��  ��  ^  _ ���������������� 0 start_timer  
�� .sysodelanull��� ��� nmbr�� 0 lap  �� 0 	lap_times  �� 0 total_times  �� 0 average  �� 3*j+   +�j O*j+ O�j O*j+ O*j+ O*j+ O*j+ U' �������`a���� 
0 debug2  ��  ��  `  a �������� 0 start_timer  �� 0 duration  
�� .ascrcmnt****      � ****�� *j+   *j+ j U( �������bc���� 0 open_helpbook  ��  ��  b ������ 0 msg  �� 	0 errno  c 	��������d������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  d ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j ) ������ef��
�� .aevtoappnull  �   � ****��  ��  e  f ������ 	0 debug  �� 0 open_helpbook  �� *j+  O*j+ ascr  ��ޭ