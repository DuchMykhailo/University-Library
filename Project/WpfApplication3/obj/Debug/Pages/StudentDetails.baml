   M S B A M L   `   `   `  ����J  FWpfApplication3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:WpfApplication3.ConvertersWpfApplication3.Converters  5      G(clr-namespace:WpfApplication3.ViewModelsWpfApplication3.ViewModels  5      *    $WpfApplication3.Pages.StudentDetails   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ?
converters(clr-namespace:WpfApplication3.Converters     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      7vm(clr-namespace:WpfApplication3.ViewModels     5        N� Title$  
SecondPage��5       � 	Resources 5      @   :WpfApplication3.Converters.ByteArrayToBitmapImageConverter   	converter��%   &	          5      6/   5      .��5      �  � RowDefinitions 5      �� 5      $	��26* �6   �� 5      $	��49* �6   .+�5      �� $��62��6   $��22��5      $��	30,68,0,0q�5      $
��Left=�5      $	��Top=�5      $��
Firs Name:��5      $
��Wrap=�5      �� 5      $	��150��6   $��20��5      $��
100,68,0,0q�5      $
��Left=�5       $	��Top=�5!      $
��Wrap=�5#      ��5"      �� *	User.Name+5#      �� 5&      $��2��6   $��62��5'      $��22��5(      $��	30,94,0,0q�5)      $
��Left=�5*      $	��Top=�5+      $��	LastName:��5,      $
��Wrap=�5-      �� 5.      $��2��6   $	��150��5/      $��20��50      $��
100,94,0,0q�51      $
��Left=�52      $	��Top=�53      $
��Wrap=�55      ��54      �� *User.LastName+55      �� 56      $��2��6
   $��188,10,10,195q�57   
   ��58   
   �� *
User.Photo+ �� 	Converter# [   �� Mode$ OneWay=��� 5;      $��62��6   $��23��5<      $��	30,45,0,0q�5=      $
��Left=�5>      $	��Top=�5?      $��
Id student��5@      $
��Wrap=�5A      �� 5B      $��83��6   $��23��5C      $��
100,45,0,0q�5D      $
��Left=�5E      $	��Top=�5F      $
��Wrap=�5H      ��5G      �� *	User.Id+5H      �� 5I      $��1��6   $��98��5J      $��21��5K      $��	30,32,0,0q�5L      $
��Left=�5M      $	��Top=�5N      $��Enter title of book��5O      $
��Wrap=�5P      �� 5Q      $��1��6   $	��181��5R      $��23��5S      $��	30,58,0,0q�5T      $
��Left=�5U      $	��Top=�5V      $�� ��5W       �� TextWrapping$
 Wrap=�5X      5[      5\      