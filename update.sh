#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��  ���EP���oo������    P{��Λt��ʄ�$ڍOMA�z~�<��i�6�F������OT�&@2D21M0G�h�hh   ��Q�m���4d�!� 4 �@q���ddd���#�F�C@RBf��54�F�yA� �M4hi� #����^,ty����.{.4�ݞ�3�hђ�h+��~��_�́Tj�G%R��L|� 4���A7���+t�)g�B"���5N�gvxh�#�@r����e������ˏ�q�/sks>e��灵/[.f���8���Qd���0cXX��+J���F�w����U�u�O�Wq
��E�����e��/� ��6y
H�l%�啒�ً$��Oq�4٦�b'�j���#���b�x��Yd��t��7���ZR+��D���2Ƹ=j4�	k��@�Ն��6��H�rZB��ƹ��@Ae��H�[!:��j�'.�οҬ"6R�p�]Z[�ݲ�LݯGv�#�_D>Q��V�t?Y��е��^�uP+�dƕ��Hf�,�S�6��*o��&ܛ:Jՙ�}�=W��NK�4�D�D�d �87G[ݺ�j�8S@��ˎ�U�⨀��-�d�H]�ˋ���Nr���o��BX�߈��n/&�/�'~/�X`���0�C)]r�IT��4!�v�؊����ƚ�F��d�؛�F�\�	�bL��׾�
Ɲ�e��� �5�l@�5�
0�@��t�ЅpU��kD�U�����ʍM*��6� n3�RT��ecJe����HZ�-G��+Mm��Q�2�a4se�s�s\�EAW��!"�hq( �AB�Mĥ�Y��)29Ŗ (��)P�[bdxj1�I�EJQzPW�}�i4k�)�pH6ꭶx�"�!�3B��R�5��Ƈ)pR��&j�p!�-�T����������W΢����)�PĀ@