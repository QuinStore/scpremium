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
BZh91AY&SY{���  ���0 @}��;���~����P��j�$�2��A��   h    �h�F��i��A�h Ɂ�&��4aF��14F����h��1�O��i�?J4ڞ�=�`�@�dޠ�"jh��5Oji��L��<�OS�i��OQ�h�`
ɐ�$0�a�a���]4����&bݲ)�y4u��w<t)�t�Y;]1�+�$�豤��;"�@�P:_���"�-#خ�,[�.Ϫ��7�1f����Z�忭`�+�ض*X#�7��we��u����h
B`���F��ÁH�W
��!T� $@p�e��c���� �u�	���%�Y��[�J Ҹ.���.n�B{VEYw�N��)�)���.@m�1	�k)����Bڽ�v,f��;s����(z��,��p�7���	��X/�H�:zW(�{B�%��3��1y�����]�L*���g�%��2d� 9E�xv��	�~E~�Oq_����9���ɦ�w?tL[�����"��9��7��梅�W2W��n�R��
���_��1X�0�p<��:}Y~��~뻱n]>ՙ���޶������f�5 d�HI}`��_B�Re��x2-����8�q)^3N��4T�;5�I�0d��3=�R�.+���}�!*Nŧ"���^�9MjAyi�t���2�6�-t�0����ԲָqDR�"�[I��K�㘑���9����9x&I�Kh?�����H"����wծ*�w�b�.+B^�զa����1ZC-�����ȳ.��ȳ�x�(�ԱI�w��a���jE[�o�+7H1P�)<
���Sؖ�孮&ٔ�˪u�Ű.*�JbeY�/,�޽Ֆ���^��p����p�`G_N^ ��]kW�	%���p��A�P��/���)����