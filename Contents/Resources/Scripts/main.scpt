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
   [ m s ]��   g  p�� p L     q q o    ���� 0 a_result  ��   U  r s r l     ��������  ��  ��   s  t u t l     ��������  ��  ��   u  v w v i   6 9 x y x I      �������� 0 record_time  ��  ��   y I     �������� 0 record_time  ��  ��   w  z { z l     ��������  ��  ��   {  | } | l      �� ~ ��   ~ \ V!@abstruct Record elapsed time form ((<start_timer>)) in the instance
@result number 
     � � � � ! @ a b s t r u c t   R e c o r d   e l a p s e d   t i m e   f o r m   ( ( < s t a r t _ t i m e r > ) )   i n   t h e   i n s t a n c e 
 @ r e s u l t   n u m b e r   
 }  � � � i   : = � � � I      �������� 0 lap  ��  ��   � k      � �  � � � r      � � � l    	 ����� � c     	 � � � n     � � � n    � � � I    �������� ,0 timeintervalsincenow timeIntervalSinceNow��  ��   � o    ���� 0 _start_time   �  f      � m    ��
�� 
nmbr��  ��   � o      ���� 
0 a_time   �  � � � r     � � � o    ���� 
0 a_time   � n       � � �  ;     � n    � � � o    ���� 0 _time_records   �  f     �  ��� � L     � � o    ���� 
0 a_time  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstruct Return time difference in msec between times recorded with ((<lap>)) 
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result list of numbers
    � � � �� ! @ a b s t r u c t   R e t u r n   t i m e   d i f f e r e n c e   i n   m s e c   b e t w e e n   t i m e s   r e c o r d e d   w i t h   ( ( < l a p > ) )   
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   l i s t   o f   n u m b e r s 
 �  � � � i   > A � � � I      �������� 0 	lap_times  ��  ��   � k     � � �  � � � s      � � � n     � � � o    ���� 0 _time_records   �  f      � o      ���� 0 lt   �  � � � r     � � � n    � � � I    �� ����� 0 	make_with   �  ��� � o    ���� 0 lt  ��  ��   � o    ���� 0 xlist XList � o      ���� 
0 x_list   �  � � � Y    = ��� � � � � n  ! 8 � � � I   " 8�� ����� 0 set_item_at   �  � � � l  " 3 ����� � ]   " 3 � � � l  " 1 ����� � \   " 1 � � � l  " * ����� � n  " * � � � I   # *�� ����� 0 item_at   �  ��� � \   # & � � � o   # $���� 0 n   � m   $ %���� ��  ��   � o   " #�� 
0 x_list  ��  ��   � l  * 0 ��~�} � n  * 0 � � � I   + 0�| ��{�| 0 item_at   �  ��z � o   + ,�y�y 0 n  �z  �{   � o   * +�x�x 
0 x_list  �~  �}  ��  ��   � m   1 2�w�w���  ��   �  ��v � o   3 4�u�u 0 n  �v  ��   � o   ! "�t�t 
0 x_list  �� 0 n   � l    ��s�r � n     � � � 1    �q
�q 
leng � o    �p�p 0 lt  �s  �r   � m    �o�o  � m    �n�n�� �  � � � n  > L � � � I   ? L�m ��l�m 0 set_item_at   �  � � � ]   ? G � � � m   ? @�k�k� � l  @ F ��j�i � n  @ F � � � I   A F�h ��g�h 0 item_at   �  ��f � m   A B�e�e �f  �g   � o   @ A�d�d 
0 x_list  �j  �i   �  ��c � m   G H�b�b �c  �l   � o   > ?�a�a 
0 x_list   �  � � � l  M M�`�_�^�`  �_  �^   �  � � � h   M T�] ��] 0 loop   � i      � � � I      �\ ��[�\ 0 do   �  ��Z � o      �Y�Y 0 x  �Z  �[   � L      � � b      � � � l     ��X�W � c      � � � o     �V�V 0 x   � m    �U
�U 
ctxt�X  �W   � m     � � � � � 
   [ m s ] �  � � � l  U U�T�S�R�T  �S  �R   �  � � � O   U w � � � k   g v � �  � � � n  g m �  � I   h m�Q�P�Q 0 unshift   �O m   h i � " [ L a p T i m e   r e c o r d s ]�O  �P     g   g h � �N r   n v n  n t	 I   o t�M
�L�M 0 as_text_with  
 �K o   o p�J
�J 
ret �K  �L  	  g   n o o      �I�I 0 a_result  �N   � n  U d I   _ d�H�G�H 0 map   �F o   _ `�E�E 0 loop  �F  �G   n  U _ I   Z _�D�C�D 0 	make_with   �B o   Z [�A�A 0 lt  �B  �C   o   U Z�@�@ 0 xlist XList �  I  x }�?�>
�? .ascrcmnt****      � **** o   x y�=�= 0 a_result  �>   �< L   ~ � o   ~ �;�; 0 lt  �<   �  l     �:�9�8�:  �9  �8    i   B E I      �7�6�5�7 0 time_records  �6  �5   k       !  r     "#" I     �4�3�2�4 0 	lap_times  �3  �2  # o      �1�1 0 lp  ! $%$ r    &'& I    �0�/�.�0 0 
total_time  �/  �.  ' o      �-�- 0 tt  % (�,( L    )) K    ** �++,�+ 0 	lap_times  + o    �*�* 0 lp  , �)-�(�) 0 
total_time  - o    �'�' 0 tt  �(  �,   ./. l     �&�%�$�&  �%  �$  / 010 l      �#23�#  2 � �!@abstruct Return time difference between ((<start_timer>)) and each ((<lap>)) in msec
@description
In addtion to the returned value, pretty printed text is output in log window. 
@result list of numbers
   3 �44� ! @ a b s t r u c t   R e t u r n   t i m e   d i f f e r e n c e   b e t w e e n   ( ( < s t a r t _ t i m e r > ) )   a n d   e a c h   ( ( < l a p > ) )   i n   m s e c 
 @ d e s c r i p t i o n 
 I n   a d d t i o n   t o   t h e   r e t u r n e d   v a l u e ,   p r e t t y   p r i n t e d   t e x t   i s   o u t p u t   i n   l o g   w i n d o w .   
 @ r e s u l t   l i s t   o f   n u m b e r s 
1 565 i   F I787 I      �"�!� �" 0 
total_time  �!  �   8 k     99 :;: r     <=< l    >��> ]     ?@? l    A��A n     BCB  ;    C n    DED o    �� 0 _time_records  E  f     �  �  @ m    ����  �  = o      �� 0 a_result  ; FGF I  	 �H�
� .ascrcmnt****      � ****H b   	 IJI l  	 K��K c   	 LML o   	 
�� 0 a_result  M m   
 �
� 
ctxt�  �  J m    NN �OO 
   [ m s ]�  G P�P L    QQ o    �� 0 a_result  �  6 RSR l     ����  �  �  S TUT i   J MVWV I      ���� 	0 debug  �  �  W O     4XYX k    3ZZ [\[ I   �
]�	
�
 .sysodelanull��� ��� nmbr] m    	^^ ?��������	  \ _`_ I    ���� 0 record_time  �  �  ` aba I   �c�
� .sysodelanull��� ��� nmbrc m    dd ?ə������  b efe I    ���� 0 record_time  �  �  f ghg n    )iji I   % )� �����  
0 pprint  ��  ��  j I     %�������� 0 	lap_times  ��  ��  h k��k I  * 3��l��
�� .ascrcmnt****      � ****l I   * /�������� 0 
total_time  ��  ��  ��  ��  Y I     �������� 0 start_timer  ��  ��  U mnm l     ��������  ��  ��  n opo i   N Qqrq I      �������� 
0 debug2  ��  ��  r O     sts I   ��u��
�� .ascrcmnt****      � ****u I    �������� 0 duration  ��  ��  ��  t I     �������� 0 start_timer  ��  ��  p vwv l     ��������  ��  ��  w xyx i   R Uz{z I      �������� 0 open_helpbook  ��  ��  { Q     ,|}~| O   � I   
 ������� 0 do  � ���� I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � 4    ���
�� 
scpt� m    �� ���  O p e n H e l p B o o k} R      ����
�� .ascrerr ****      � ****� o      ���� 0 msg  � �����
�� 
errn� o      ���� 	0 errno  ��  ~ k    ,�� ��� I   "������
�� .miscactvnull��� ��� null��  ��  � ���� I  # ,�����
�� .sysodisAaleR        TEXT� l  # (������ b   # (��� b   # &��� o   # $���� 0 msg  � o   $ %��
�� 
ret � o   & '���� 	0 errno  ��  ��  ��  ��  y ��� l     ��������  ��  ��  � ���� i   V Y��� I     ������
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
�� .ascrcmnt****      � ****�� )�,j+ �&� E�O��&�%j O�� �� y������~�� 0 record_time  ��  �  �  � �}�} 0 record_time  �~ *j+  � �| ��{�z���y�| 0 lap  �{  �z  � �x�x 
0 a_time  � �w�v�u�t�w 0 _start_time  �v ,0 timeintervalsincenow timeIntervalSinceNow
�u 
nmbr�t 0 _time_records  �y )�,j+ �&E�O�)�,6FO�� �s ��r�q���p�s 0 	lap_times  �r  �q  � �o�n�m�l�k�o 0 lt  �n 
0 x_list  �m 0 n  �l 0 loop  �k 0 a_result  � �j�i�h�g�f�e�d�c ���b�a�`�_�^�j 0 _time_records  �i 0 	make_with  
�h 
leng�g 0 item_at  �f��e 0 set_item_at  �d��c 0 loop  � �]��\�[���Z
�] .ascrinit****      � ****� k     ��  ��Y�Y  �\  �[  � �X�X 0 do  � �� �W ��V�U���T�W 0 do  �V �S��S �  �R�R 0 x  �U  � �Q�Q 0 x  � �P �
�P 
ctxt�T ��&�%�Z L  �b 0 map  �a 0 unshift  
�` 
ret �_ 0 as_text_with  
�^ .ascrcmnt****      � ****�p �)�,EQ�Ob  �k+ E�O (��,Elih ���kk+ ��k+ � �l+ [OY��O��kk+  kl+ O��K 	S�Ob  �k+ �k+ 
 *�k+ O*�k+ E�UO�j O�� �O�N�M���L�O 0 time_records  �N  �M  � �K�J�K 0 lp  �J 0 tt  � �I�H�G�I 0 	lap_times  �H 0 
total_time  �G �L *j+  E�O*j+ E�O���� �F8�E�D���C�F 0 
total_time  �E  �D  � �B�B 0 a_result  � �A�@�?N�>�A 0 _time_records  �@�
�? 
ctxt
�> .ascrcmnt****      � ****�C )�,6� E�O��&�%j O�� �=W�<�;���:�= 	0 debug  �<  �;  �  � 	�9^�8�7d�6�5�4�3�9 0 start_timer  
�8 .sysodelanull��� ��� nmbr�7 0 record_time  �6 0 	lap_times  �5 
0 pprint  �4 0 
total_time  
�3 .ascrcmnt****      � ****�: 5*j+   -�j O*j+ O�j O*j+ O*j+ j+ O*j+ j U� �2r�1�0���/�2 
0 debug2  �1  �0  �  � �.�-�,�. 0 start_timer  �- 0 duration  
�, .ascrcmnt****      � ****�/ *j+   *j+ j U� �+{�*�)���(�+ 0 open_helpbook  �*  �)  � �'�&�' 0 msg  �& 	0 errno  � 	�%��$�#�"��!� �
�% 
scpt
�$ .earsffdralis        afdr�# 0 do  �" 0 msg  � ���
� 
errn� 	0 errno  �  
�! .miscactvnull��� ��� null
�  
ret 
� .sysodisAaleR        TEXT�( - )��/ *)j k+ UW X  *j O��%�%j � �������
� .aevtoappnull  �   � ****�  �  �  � �� 0 open_helpbook  � *j+   ascr  ��ޭ