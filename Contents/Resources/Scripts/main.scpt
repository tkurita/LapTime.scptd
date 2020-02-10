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
pare < o     ���� 0 a_class   ;  = > = j   	 �� ?�� 0 _time_records   ? J   	 ����   >  @�� @ j    �� A�� 0 _start_time   A n    B C B I    �������� 0 date  ��  ��   C n    D E D o    ���� 
0 NSDate   E m    ��
�� misccura��  ��   /  F G F l     ��������  ��  ��   G  H I H l      �� J K��   J  !@group Instance Methods     K � L L 2 ! @ g r o u p   I n s t a n c e   M e t h o d s   I  M N M l     ��������  ��  ��   N  O P O l      �� Q R��   Q � �!@abstruct Return elapsed time form ((<start_timer>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result number
    R � S ST ! @ a b s t r u c t   R e t u r n   e l a p s e d   t i m e   f o r m   ( ( < s t a r t _ t i m e r > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   n u m b e r 
 P  T U T i   2 5 V W V I      �������� 0 duration  ��  ��   W k      X X  Y Z Y r      [ \ [ ]      ] ^ ] l    	 _���� _ c     	 ` a ` n     b c b n    d e d I    �������� ,0 timeintervalsincenow timeIntervalSinceNow��  ��   e o    ���� 0 _start_time   c  f      a m    ��
�� 
nmbr��  ��   ^ m   	 
����� \ o      ���� 0 a_result   Z  f g f I   �� h��
�� .ascrcmnt****      � **** h b     i j i l    k���� k c     l m l o    ���� 0 a_result   m m    ��
�� 
ctxt��  ��   j m     n n � o o 
   [ m s ]��   g  p�� p L     q q o    ���� 0 a_result  ��   U  r s r l     ��������  ��  ��   s  t u t l      �� v w��   v \ V!@abstruct Record elapsed time form ((<start_timer>)) in the instance
@result number 
    w � x x � ! @ a b s t r u c t   R e c o r d   e l a p s e d   t i m e   f o r m   ( ( < s t a r t _ t i m e r > ) )   i n   t h e   i n s t a n c e 
 @ r e s u l t   n u m b e r   
 u  y z y i   6 9 { | { I      �������� 0 record_time  ��  ��   | k      } }  ~  ~ r      � � � l    	 ����� � c     	 � � � n     � � � n    � � � I    �������� ,0 timeintervalsincenow timeIntervalSinceNow��  ��   � o    ���� 0 _start_time   �  f      � m    ��
�� 
nmbr��  ��   � o      ���� 
0 a_time     � � � r     � � � o    ���� 
0 a_time   � n       � � �  ;     � n    � � � o    ���� 0 _time_records   �  f     �  ��� � L     � � o    ���� 
0 a_time  ��   z  � � � l     ��������  ��  ��   �  � � � i   : = � � � I      �������� 0 lap  ��  ��   � I     �������� 0 record_time  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstruct Return time difference in msec between times recorded with ((<record_time>)) 
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result list of numbers
    � � � �� ! @ a b s t r u c t   R e t u r n   t i m e   d i f f e r e n c e   i n   m s e c   b e t w e e n   t i m e s   r e c o r d e d   w i t h   ( ( < r e c o r d _ t i m e > ) )   
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   l i s t   o f   n u m b e r s 
 �  � � � i   > A � � � I      �������� 0 	lap_times  ��  ��   � k     p � �  � � � s      � � � n     � � � o    ���� 0 _time_records   �  f      � o      ���� 0 lt   �  � � � Y    0 ��� � � � � O    + � � � r    * � � � l   % ����� � ]    % � � � l   # ����� � l   # ����� � \    # � � � l    ����� � n    � � � 4    �� �
�� 
cobj � l    ����� � \     � � � o    ���� 0 n   � m    ���� ��  ��   �  g    ��  ��   � l   " ����� � n   " � � � 4    "�� �
�� 
cobj � o     !���� 0 n   �  g    ��  ��  ��  ��  ��  ��   � m   # $�������  ��   � n      � � � 4   & )�� �
�� 
cobj � o   ' (���� 0 n   �  g   % & � o    ���� 0 lt  �� 0 n   � l  
  ���� � n   
  � � � 1    �~
�~ 
leng � o   
 �}�} 0 lt  ��  �   � m    �|�|  � m    �{�{�� �  � � � r   1 < � � � ]   1 7 � � � m   1 2�z�z� � l  2 6 ��y�x � n   2 6 � � � 4  3 6�w �
�w 
cobj � m   4 5�v�v  � o   2 3�u�u 0 lt  �y  �x   � n       � � � 4  8 ;�t �
�t 
cobj � m   9 :�s�s  � o   7 8�r�r 0 lt   �  � � � l  = =�q�p�o�q  �p  �o   �  � � � h   = D�n ��n 0 loop   � i      � � � I      �m ��l�m 0 do   �  ��k � o      �j�j 0 x  �k  �l   � L      � � b      � � � l     ��i�h � c      � � � o     �g�g 0 x   � m    �f
�f 
ctxt�i  �h   � m     � � � � � 
   [ m s ] �  � � � O   E g � � � k   W f � �  � � � n  W ] � � � I   X ]�e ��d�e 0 unshift   �  ��c � m   X Y � � � � � " [ L a p T i m e   r e c o r d s ]�c  �d   �  g   W X �  ��b � r   ^ f � � � n  ^ d � � � I   _ d�a ��`�a 0 as_text_with   �  ��_ � o   _ `�^
�^ 
ret �_  �`   �  g   ^ _ � o      �]�] 0 a_result  �b   � n  E T �  � I   O T�\�[�\ 0 map   �Z o   O P�Y�Y 0 loop  �Z  �[    n  E O I   J O�X�W�X 0 	make_with   �V o   J K�U�U 0 lt  �V  �W   o   E J�T�T 0 xlist XList �  I  h m�S	�R
�S .ascrcmnt****      � ****	 o   h i�Q�Q 0 a_result  �R   
�P
 L   n p o   n o�O�O 0 lt  �P   �  l     �N�M�L�N  �M  �L    i   B E I      �K�J�I�K 0 time_records  �J  �I   k       r      I     �H�G�F�H 0 	lap_times  �G  �F   o      �E�E 0 lp    r     I    �D�C�B�D 0 
total_time  �C  �B   o      �A�A 0 tt   �@ L     K     �?�? 0 	lap_times   o    �>�> 0 lp   �= �<�= 0 
total_time    o    �;�; 0 tt  �<  �@   !"! l     �:�9�8�:  �9  �8  " #$# l      �7%&�7  % � �!@abstruct Return time difference between ((<start_timer>)) and last ((<record_time>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result list of numbers
   & �''� ! @ a b s t r u c t   R e t u r n   t i m e   d i f f e r e n c e   b e t w e e n   ( ( < s t a r t _ t i m e r > ) )   a n d   l a s t   ( ( < r e c o r d _ t i m e > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   l i s t   o f   n u m b e r s 
$ ()( i   F I*+* I      �6�5�4�6 0 
total_time  �5  �4  + k     ,, -.- r     /0/ l    1�3�21 ]     232 l    4�1�04 n     565  ;    6 n    787 o    �/�/ 0 _time_records  8  f     �1  �0  3 m    �.�.��3  �2  0 o      �-�- 0 a_result  . 9:9 I  	 �,;�+
�, .ascrcmnt****      � ****; b   	 <=< l  	 >�*�)> c   	 ?@? o   	 
�(�( 0 a_result  @ m   
 �'
�' 
ctxt�*  �)  = m    AA �BB 
   [ m s ]�+  : C�&C L    DD o    �%�% 0 a_result  �&  ) EFE l     �$�#�"�$  �#  �"  F GHG i   J MIJI I      �!� ��! 	0 debug  �   �  J O     4KLK k    3MM NON I   �P�
� .sysodelanull��� ��� nmbrP m    	QQ ?��������  O RSR I    ���� 0 record_time  �  �  S TUT I   �V�
� .sysodelanull��� ��� nmbrV m    WW ?ə������  U XYX I    ���� 0 record_time  �  �  Y Z[Z n    )\]\ I   % )���� 
0 pprint  �  �  ] I     %���� 0 	lap_times  �  �  [ ^�^ I  * 3�_�
� .ascrcmnt****      � ****_ I   * /��
�	� 0 
total_time  �
  �	  �  �  L I     ���� 0 start_timer  �  �  H `a` l     ����  �  �  a bcb i   N Qded I      ��� � 
0 debug2  �  �   e O     fgf I   ��h��
�� .ascrcmnt****      � ****h I    �������� 0 duration  ��  ��  ��  g I     �������� 0 start_timer  ��  ��  c iji l     ��������  ��  ��  j klk i   R Umnm I      �������� 0 open_helpbook  ��  ��  n Q     ,opqo O   rsr I   
 ��t���� 0 do  t u��u I   ��v��
�� .earsffdralis        afdrv  f    ��  ��  ��  s 4    ��w
�� 
scptw m    xx �yy  O p e n H e l p B o o kp R      ��z{
�� .ascrerr ****      � ****z o      ���� 0 msg  { ��|��
�� 
errn| o      ���� 	0 errno  ��  q k    ,}} ~~ I   "������
�� .miscactvnull��� ��� null��  ��   ���� I  # ,�����
�� .sysodisAaleR        TEXT� l  # (������ b   # (��� b   # &��� o   # $���� 0 msg  � o   $ %��
�� 
ret � o   & '���� 	0 errno  ��  ��  ��  ��  l ��� l     ��������  ��  ��  � ���� i   V Y��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k     �� ��� l     ������  �  return debug()   � ���  r e t u r n   d e b u g ( )� ���� I     �������� 0 open_helpbook  ��  ��  ��  ��       ��� ���������������  � ����������������������������
�� 
pnam
�� 
pimr�� 0 xlist XList�� 0 start_timer  �� 0 duration  �� 0 record_time  �� 0 lap  �� 0 	lap_times  �� 0 time_records  �� 0 
total_time  �� 	0 debug  �� 
0 debug2  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****� ����� �  ���� �����
�� 
cobj� ��   ��
�� 
osax��  � �����
�� 
cobj� ��   �� 
�� 
frmk��  � �����
�� 
cobj� ��   �� 
�� 
scpt��  � ��   �� 
�� 
scpt� �� 1���������� 0 start_timer  ��  ��  � ������ 0 a_class  �� "0 laptimeinstance LapTimeInstance� �� 8��� "0 laptimeinstance LapTimeInstance� �����������
�� .ascrinit****      � ****� k     ��  :��  =��  @����  ��  ��  � ������
�� 
pare�� 0 _time_records  �� 0 _start_time  � ������������
�� 
pare�� 0 _time_records  
�� misccura�� 
0 NSDate  �� 0 date  �� 0 _start_time  �� b   N  Ojv�O��,j+ ��� )E�O��K S�� �� W���������� 0 duration  ��  ��  � ���� 0 a_result  � ���������� n���� 0 _start_time  �� ,0 timeintervalsincenow timeIntervalSinceNow
�� 
nmbr���
�� 
ctxt
�� .ascrcmnt****      � ****�� )�,j+ �&� E�O��&�%j O�� �� |���������� 0 record_time  ��  ��  � ���� 
0 a_time  � ���������� 0 _start_time  �� ,0 timeintervalsincenow timeIntervalSinceNow
�� 
nmbr�� 0 _time_records  �� )�,j+ �&E�O�)�,6FO�� �� ����������� 0 lap  ��  ��  �  � ���� 0 record_time  �� *j+  � �� ����������� 0 	lap_times  ��  ��  � ���������� 0 lt  �� 0 n  �� 0 loop  �� 0 a_result  � ��~�}�|�{�z ���y�x ��w�v�u�t� 0 _time_records  
�~ 
leng
�} 
cobj�|��{��z 0 loop  � �s��r�q���p
�s .ascrinit****      � ****� k     ��  ��o�o  �r  �q  � �n�n 0 do  � �� �m ��l�k���j�m 0 do  �l �i��i �  �h�h 0 x  �k  � �g�g 0 x  � �f �
�f 
ctxt�j ��&�%�p L  �y 0 	make_with  �x 0 map  �w 0 unshift  
�v 
ret �u 0 as_text_with  
�t .ascrcmnt****      � ****�� q)�,EQ�O (��,Elih � *�k/*�/� *�/FU[OY��O��k/ ��k/FO��K S�Ob  �k+ �k+ 	 *�k+ O*�k+ E�UO�j O�� �e�d�c���b�e 0 time_records  �d  �c  � �a�`�a 0 lp  �` 0 tt  � �_�^�]�_ 0 	lap_times  �^ 0 
total_time  �] �b *j+  E�O*j+ E�O���� �\+�[�Z���Y�\ 0 
total_time  �[  �Z  � �X�X 0 a_result  � �W�V�UA�T�W 0 _time_records  �V�
�U 
ctxt
�T .ascrcmnt****      � ****�Y )�,6� E�O��&�%j O�� �SJ�R�Q���P�S 	0 debug  �R  �Q  �  � 	�OQ�N�MW�L�K�J�I�O 0 start_timer  
�N .sysodelanull��� ��� nmbr�M 0 record_time  �L 0 	lap_times  �K 
0 pprint  �J 0 
total_time  
�I .ascrcmnt****      � ****�P 5*j+   -�j O*j+ O�j O*j+ O*j+ j+ O*j+ j U� �He�G�F���E�H 
0 debug2  �G  �F  �  � �D�C�B�D 0 start_timer  �C 0 duration  
�B .ascrcmnt****      � ****�E *j+   *j+ j U� �An�@�?���>�A 0 open_helpbook  �@  �?  � �=�<�= 0 msg  �< 	0 errno  � 	�;x�:�9�8��7�6�5
�; 
scpt
�: .earsffdralis        afdr�9 0 do  �8 0 msg  � �4�3�2
�4 
errn�3 	0 errno  �2  
�7 .miscactvnull��� ��� null
�6 
ret 
�5 .sysodisAaleR        TEXT�> - )��/ *)j k+ UW X  *j O��%�%j � �1��0�/���.
�1 .aevtoappnull  �   � ****�0  �/  �  � �-�- 0 open_helpbook  �. *j+  ascr  ��ޭ