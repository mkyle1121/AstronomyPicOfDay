   M S B A M L   `   `   `  ����?  ;APOD, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:APODAPOD  5   	   /clr-namespace:APOD.ViewModelAPOD.ViewModel  5   	       APOD.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:APOD     5   	   +vmclr-namespace:APOD.ViewModel     5   	     � Title$'  !NASA Astronomy Picture Of The Day��5	   	   $	��900��5
   	   $	��600��6   
������  � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	    � 	Resources 5         APOD.ViewModel.WindowVM   vm��%   &	          5   
   6   5      .��5      �� -   5         �� CornerRadius$ 25��5      $��3q�5      
���   ����#5576ab._�5      � $��3q�6    � DataContext# [  6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      �� 5      $
��Auto �6   .+�5"      �� $��0��6   .+�5$      �  � ColumnDefinitions 5%      �� 5&      �� 5'      .+�5*      �� $'��!NASA Astronomy Picture Of The Day��6   $��0��5+      $��Center=�5,      $��Medium"�5-      $��16(�5.      �� 50      $��1��6!   $��Right=�51   !   .+�53      �� -   5        	 ��Name$	 XButton��56      $��X��53   !   $��30��54      $��30��55      $��0 0 15 0q�58   !   59      5;      5<      �� 5?      $��1��6   
 �� Orientation$
 
Horizontal=�5@      $��Center=�5A      $��3q�5B      .+�5C      �� $��Date: ��6   $��Medium"�5D      $��3q�5E      �� 5F      $	��100��5G       �� TextAlignment$ Center=�5H      $��2q�5I      ��5J      �� *Date+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.��6a    J� InputBindings 5K      �� 5L      
 �� Key$ Enter��6%    �� Command 5M   %   �� *GetPictureCommand+.��5N   -   5O      �� 5Q      $��Get Picture!��6   $��2q�5R      
���   �$	��100��5T      
�������$��Medium"�5W      $��3q�5X      ��5U      �� *GetPictureCommand+5X      5Y      �� 5[   
   $��2��6   $��Center=�6"   $��3q�6=   .+�5\      �� 
���   �$��3q�6)   ._�5]      �� ��6   �� *BitmapImage+5^      5_      �� 5b   
   $��3��6   $��3q�6"   .+�5c      �� $��Center=�6   ��6:   �� *
Apod.Title+$ PropertyChanged=��� 5d      ��6   �� *Apod.Explanation+$ PropertyChanged=��� 5e      ��6   �� *
Apod.Url+$ PropertyChanged=�5f      5h      5j      5k      