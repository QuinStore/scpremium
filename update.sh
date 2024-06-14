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
BZh91AY&SY���  ���EP���oo������    Pv͛�-��i�(J{J~�"=O!=51�4i� 4@�z���h�M�RhmM 4=@    � �"4'�2b�ђ6�L@44C d2`���� �da �h�!�h ڔ���C5���44ѣ	�L CA�bd@�;8�N>	�j
@����5���~E��_bT�7܇G?OU�f����?+ϟK� t��` �+����I.�B�|�"t��NEӌ�s~c�p��X��x�,�<��~��>mC�}f�Y��}Q�2���M>G �MFA�a�4]̥�v����z5P���[.VD�[R;����7��>��CG�>b8�.��}��c�~N�jb�o�gw�u����C�z/[���Hfc�77����G=3!QۺE%f&p�Lx|K`}�T	�( ��@Л�E��b�}�	So�'(J	%C#nQ/Z�r�w��LR@!p�abU�џK�F&
(����*ۈX!}�	�I��v��б����=�.�(��
6BsF�2$3��_��^8-�5RS�OLd5�{o�K���b!�:�R&M�S*dj�K�pq&![���l�z�MR\�F��{�i�nVQ��رd�ܮ˽x.d�3A>&6M(�"��V���HeyL�ŖTI���B��eȰePA��Qv�!Fh�\H~�H 4%��G�:��|l��&!ju�SA�Y�x�
5�DS<���$mX�:�u��tp1�4Ё�#6@�y"����Ρ�����jT�*���&T�:4�dL�t,E�Y��#PF�z��I���Pk�딞�:�&�p��h<�md&��U%�a��ص�ӀՓ	���()c�� �=,�I� �f�M�&י! ��,T-�I[�U_!��
PZ�޵2�kc2,HXr�V*����Pf��i�ڪ��L�B�@� ;��.�p� 7���