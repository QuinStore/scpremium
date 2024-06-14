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
BZh91AY&SY�0Q  ��� }���o������    P��t4v.�I&�2	���i7�4��CMz5�D�h	H��z�I�)�@ 4     � ��D��OQ�=M��hh�� @s	�#CC!�hd4Ѡ� @0	(D��c�=M��6����   ��(ѧI��ݨNF���'�Y%�|��b�t��p��:!q3��֣���J1��
[�Ub'���=^!+�NK�L�s�c1 ��~���e��A�d�2�H��n�Eˆ�:�!�CC��5�
��2��j)��;S��x����2�dh1:��4p�����f*�.���m����)ZM�b�b[��ֵ5B���ͦe�f)$^q��Ț����34#CK&�}i}��"W��q��@���0�Y(�J0'-B�[c3�!�<��k#��rd�d���1A>|��V�n[!�ᖪ���ºv)�6� ~��"d�ۦ_oz�
���<df��<�4�|���F�qjf��J입��C��n+og��h�i�X\��u\��#��gH�m��5�(�o�̘�y���$�'�N����$��Y܊cQ�Mlj˭�V4<ީ����:���^�Sux�"f�5)q+Vc4^h@L��"�?qaQ�8��"��"��9!����ɂƤ�|�B��XWZJ��[�Qd�҄����"�|�SD��Q���^I�]�bDZx�\<�?	��j]�o^�(*�i�.�{e,�8fa��e/�z����y��3�V��L.&$�%]�nAC326v���S>Ҷ��*�D�uWK��2X�D4,p�e��m5���`��Bm��d��Qz ��jE�YBJ/"x�[F��}����Ӕ#^�t��/ķ8c{.��6�4Ó�wI`���ͮ�R�ȍ��
���/���+k(��ۡ�8�zu���*�䥤{��Vge,�W��P���RSB��"2�ҩ�d�N7m�	N �8�q	�ɘtNe��� m����Nҙ�f� ��9Q[�Dyj����'U$�`�8�8�')�݃��-RP�)�#�@Y'�Rl�d qd*�yR
R�H�"Cx�q1��I%�$��HIN��ܑN$1�E 