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
BZh91AY&SY��} 5��	�����������B�� �   0 @ `+>�����]zx�"��L��O��i����*;kwC����NmRN���֫ݻ�RkU�Qa��x�i{-�Q;�ޞ�-�����ӗ;���w����}v�mr� zס�o7���B �hh2&���h���=�=O��x)��jzL�� ���=#@���T�I���d  �h� %4Bi*~L��?*~F��Pz��6��@� h@   jB�22D�L�����&�� �(�0D�zM�ji�4�ML�Ɉ2�� @i�H��hM4&'�ĘB�I��OSM��)��h j�bе��_�;�i�}g]U��;�����Ld.����HqQ��|V����ݱ�������������DG�]��3\��E�|���U,�b	��,q���μ��i�M��r�����Mpxꘊ:��'�[چ��ߴ��� 3��nl�@÷�f������ߤ2]�Y��5�C*8�dâ�'����R|�,z:F���d+.�c�e��ʳ��8M���p��hsʋuQM����i 0\ʵG�N"�C=�獳�X����	��Ø�&S�AO0�Wh���G�N$�vt���r��|t0Bq�U�,`�AfTOH�;l��&�fb7C&����V��uޢ�td��gg�<o�s��n9|��7}�$9c�#��B�D-v�����[��IBB<Q7`���D��ԭ��l·o��U�v�M ��l�m�#a��⹚'�]2�>y�Q�s�7�9��(榆�U4Թ��L`]�mR��H쑪�[9�w��e΄�\�m��빭kZ4�Y��!��Q�.MA6�r�<�[eY�j�_��}�n������6��ieKCk�/���Ak���������9�{��8o����)�����h)�fg��m���i����,�XX�w�)K]Uy!t��+��Q��"OX���H�`L�W����"����bV�_z���9<�"J��5��0����K��Ž�ے�k�nWP]C"t��������#'%b}��F}>��{��ݳ��W������� =�� 2H��"m������=,�&iWW�����lA��c�]�����m��;vR��®E��zk����H�wb�m���d4���e�,���x��6�����K���.hc���!�f0
mp$�����c��$�#�E:+������6�X�����M�U�H�@���_\��F��\tԮ;:l uI�m@4�}�]ߪ����:������F��x���n:��*,n�#��aAr�sI���sǦ5��bch��<�
��\iuE��(tK���E�-ݕX1|�Q�nE��(C�V�)D'o�f0gtwi�0���\E.�*�����d�a���|�i��ӌ�g�]@��:�+S`���!B۾}�tyr���.Jx`��s����1f-_);kl�������nh1Zn�?��f[�	�n_�Po`���:�y��3���&ӳ��p����l/�S:��a��:����'a�u�L�y���C�������,%j,��E1� ��uX�V�ׄUt%�Nv5v�t�^�v驛;�b���Q�e�4���#@�/�Q�1q���M�2�7�	��|K3���}�Z���I�A]�D��㺕7��đ!4c�
8�b��0�/���6�1/ŐaZ\8�ڈ8^�l6`0���H̔
�Me��̭o-g�Ƕ�A�̜�*m~I��`�˨�UE���5�����3���wѮ�E�>V"�f�W%�^}Dn~�OWo�h 2hZ�I�0�I�x��K.Z�
����m�|�t2�<	�e��mԐ�.HdJ�[�r.�ȥ�D!�6c�,��� �w
��)���Yf"F>/C�;���ǟKs�ۅg"�d��z�R�`�VA-6m.<�&b.́�C c:�]q�JI�3
3av�k'6�=�]�f��ɇ泺����B������o��!��e;M�~�o��V/��g����l<�qD9�-ͼ(�d�Kr��`��Eo0��U`�y�\f�0yj9k������aX-t���Z���fO�x��6�ӎ�'�Wu�J�3��q6��!	�=������}�׽�ݵ��z���L���qi|&a���vH{0�fI��%����Nδ�W��h��z�4
�}���2����0��
`QX�;B�d�A����C�{�w~��k':NrǱ5��-M�U(=�/x�d���4��lq���e�6�b�<��TM#D�Ƽ�N'Z}|��??��nib�Ad�󠠰_�,+����#�a6��D���j�0�c�����X�9Gƞ˓����8׉8 ��=mK-m ��*�&2�H��'8(>��f 5�}r�x��(�Y9��{;}����#��������Bhiy��Z�׶��Ir#�Π�JC������,�lm�Ŭğ����JL��ON��hfUJ|�<��^xb���P�3�,;o
�%�5k5�d���^� e�A��H��#�x̜�Phc:�"�r�t֜�=�a���R���J�:']8H�x�BT �o���Q�Jl�����8����ݣ�0��RcH��y�P�BL���Z�͉\�Y(��e�f��m��M,��Aj�-6�h�F�T�mM",&$<��	%C�RY�39˨U�l�
��!c;g!��7N��Ƨ%�9�F�j|jP1�5�ҹ(Z����Ut�T�Iu�wU%OIeCC0��ZJ.�xD3���ߐ���;��rVl��B���$[��a���n�4������|�*\3����U�ک��{X�e�s��D� ۍ�ډe��֧�P��H[��S'Y�a���;�<݆�f6����b�=i�D��@��<'��I�&��s� �iq��,zԄ2"=���E��tX����(�8�dj�,+3(�N,`r�(�[.���k�,�^R8�
Ǎ�*�IO}<�vH�E��ג�93lᩃM�N�P�̑$�	peQT��(�DQbł��2��}��=Єckp��q���)p��g��ӅZ_�.:��V]38���+��(���V�4U\�A��ED7�����2��5r����8�Y�m�Z�'�F�]��0Ĳ�
�%p�9�JC3��eH�RP��2Z
�!Ꚇu��S�G� Y��2
�:�7R�@bO!���t%�S"�5ioRKsL7�U9��0�J���uXS|Ī,�vX�/#A(�\d̽�'aA4���78�ς�?b<��iu�vO�~cI���/�xRe�]��')c��u��R�<^KDȝ������٤��f��V~�h�]V^�A87��s!�}���̈́F;��u[�Ay�;廁V�o�;*0�l�w�**��_���(�`5����7w�m�@���ey��X$ӳˬo]����}X^��0������r��}��Vs�2���|�Y�5����Y�A12���5�2ul_j��^7��=�|�ii�uc�vo��^���m��u�[{�r��&1#��5���YR_M�8�l�g��z�,ѹ�9��9]^����8���)6xm`Ac���&� �l��{߲(��4�_���=��;��uuy�|�7�O=��_���鋞�s+��67�M�V�|=Ƶp���� c^���I�C_pr(g=N���ukU��	��� ��_)�*r���P���ׂ� �(<�J't+P������Hl�������Ө��)3����OH#f����q"Ѯ��6ÁNM�>��J:X�Q���D���M���������qQ�9�:���wB�l�������s���Sc���y2iA5#`�v�ڐ���J'�Al��F��/7H�b�J�3�H���ڦx.'?1�@�>2�FnFȉR���7�,N�L侤��0[��(���-ʂ�b!O�b?B�_�[¼�m�L�Wm�����f��
�`{O��f+���ٜU���?O�[�qr;�G�����)�~bFY�9�yW���OJ_��$�:�_4��F3�����y43c=���Ì۸28�!$X�,/��<.�tc$'���8���D�EN3�"x��f*$%3�6�v�D�����AKr�)B��Aд�	I���
����~`g,�9�Q�g���0_y}X�-��# /�Ae�V@�5�S��9?�����Q��̍JJk�^�'����:�̤��k������1	�4�`�f�;/z����-���V����9�J���7�􉅌��m;�j�BЄwܪfd-*���JPZ�ْ	#	����z�
eݎZ7��x����K�Bf�[��C�K�M,G�WX۠�;`sR������|tю�`2�9�!����;�̀�v�a����JW 13&n=�EZ�����{�sDg�ӻ�O~Y�	^ާ"|�F��-�ڙ�EG1U�"��������Π&�ŷ�'0�l<�Y�s1>��Ș�_��� !�L!�c9hY�C�AQ�����A�AC���Z�����x��D7�t�Y.�I🬕���J�G�������(�chcC�H�;ʆv����O��t�A���'a�a�y{���
.i>#{Q:���5��*��0d��Щa��$��
�f�s�1k�?qp��˗^��
���#�,ǜ��f�{�H96ɶ�������Kg��$��j�Ɔ)��$4�4I)qF���~�N$�Q'�@ܟ�;C���(��"I3�H��[�hA�4��fy
���G#q��4��-�KG�6	�̃3���:$�0>�7к	�j�<�\O�� ��_�H\S���t �<\����"z$��^\*��+�è��9&�R
#ebF�r����ca��ѳr�P�蠥J*A+d���4��4~��J�;���10!�����vt����!T�"taE�W�}�sw����6P��_�ewyM���K���";I^�;���N�z��(�X*2"A`�$f|ׄT��T$KC���5���L�!�`���bu�eHm��ߒ�}8���D����n��/�3 
hoI"�ið���E,�e���JM}'�9��!Pȓ ����v�s�D��uBEmL��Ah��/�n8`�!�"
�9BH0��<��<�QFA��~SHS���okeL���s�6X��LM[���`T2���D�ݢ�u�G�s&���?Y�PT���/9Ch�h�6�J�b���ue���fH�i��Pb�r�C$����!�!�Gc��hK�	�8%g|K�0�����AC˳AA��PoC��9	�3�U@�S�,Sg}�ޔ��G�@�a��N
��T���GC�a00,���B+�5k�`�<bV�����2Ew\zD&v�W�PͨS	&�g�D��4�C�-��2J��Z��_.$ζoq��:|�=�߶�rz!�!�{���E�����&00��r�E�bX�LX_b)zI�й���a����2l��m|�M9�k!�1v�i�Y�8�	����b&�Vb
S^���9��CsL
�4LŚ�5����ܼ���# .���%L�fQ��e�2���UX�"̄���@�h>@�.�#"=Jx;C���y>|h��0O+Z5;	�d��} i<��(K�pU�贐��vP��c��pqj�(+��(��Y܆��hZ�	+ކZ�vIH�#$�^	����2�.D�$���vjgWwvI�t:Lh���PnH=1��Lh�K�
���t��K�5(�����x�R�1b0���eB0zb���^�%�λy.y��wcut$4"Zʴ*/y���d���@ԅ�l'r��^��)�^@�\C��r
�*B���vvoI~��ޖ�T�si3.|�䚊��_��5c�v�J��D�Y�u�v!R�����KD�T���FX�lB�z�6��o7$�%�[��*��<�NY�65ſKQ1-U ]��fSi��e�L\q�Bcx4�7�C�v�����`T�AOH��(�����6z�j� �b����P��p��0�y"D&�/����yY���'�F;:�G�Cl��fq�gt�x���ATR�$"�>٠��� ���L��"��!�ȍ�'���BH�T]�Yo�#�sA-��_�R	&��u��4;D`t�"�fz}w}S�����P�*�4A�HER�{��8��	�rJ�1�э� ʙ &=:oAq1W�Ȩ(�}Ǯ�� m7�2X��a���&� �M���s�����x
��ї�cI!�`�gB����"Us#$r#�lՊ+q	<S]f�����"�Bgs��ֵ�u�
A-�Cjp%+���'�d�!
b"@HԒ*I.�>(mi�k��,��v�or��f`���Յ(�Z����Ҥ8a��{e��Qexw��@W��u�5Pb�|��ju.P�-b/$�-�� b
����.���&"�U�9�!���J�0
P��D��-���B�$p��NČӫ�&f���ؽh�靑s)C	���B�΍n�J㨞&%��u.mŃ�D�$`�VIKAP�`H{6ő"��lƂ�f$�d�}�NF�f��%<��	�7jq�1	���hm1LV0��0
`�(�(����p�6����D���,��oŊ�0~��ح|�P_`+��(5����=����,���"�{vy�Q�⥐��Ԭ��+d^P�Z�S"f��Qʳ,B�!()ǭfZ����i�)ڭ�c�wX�˪�@F��y�%	��ѐ� �5 ��FL3Ӱ�D�6���K4M�+�PAIT!ye���Xd[�^��\��i&Tm����-:,���A)66��C����$��+�����(��{°���*J�ѦId	���t� 7��c2�3��>����a��1��=�X-숐��D\�
��;@-� M�A(I�$�OQ[HW�B@��ƛ���
����Pbd���T�E��?.�jN��@!6�ܬ$�DX�$�S��	�n�Z¦8W����B� �Z�u�Ll�w�B���zj��@ �L}��h/�>:�RR���0$�,"h!n'q2
�bp�P�5m6��jJ: ��* ��m��1�1���Ol죐A���VRX&�C*��T�4�v�(uyB�x=$V�I0U��aQ� gj�oL�sab�ܖ2<6�),Z�I(��	ktD��7K�疺�-�3I%ЖT[*լ
b�|��frp�AE�B���
�+�M.��+49�h:�1��ĂH����᱑�L�Q����0�zWl�c���X2z�J4d��#@	A���!�N����#I�4�r׼�� �\wҀj��P�6P��0�F0Ȱ$��u��>V�0��`��<�3++�	�,�wa��a�S;|7|u�#A�&�44%�bY�΀!5�._�W�x@2B��۲�z��
�Ӫ���T�C�~�\K���@�LEr\5
�G�CvP�_4Q�J+��Q⤔j(���w,�ħ
d�� �Kq�/ʱV��A�$�L4C�[$�l�B�H1V/K�.��F�d&�"��@�U�Ѻ��|I�:�Z��S��ȳ����UVQ�,K!�� Z!# ��]���4��ޒ�bF����w7PT����Ŧ�l8(rF���2˾t�"������`6imv!\��y��G���~_�,A�Hes��I#ir6�P���Ȗ\�>ax+�@�Җʑz�8��)AS�D�_pD����%�Fk�1�؍f���3��`1-ۚ�>�P��BB�6kx�`�� (LU�I@�!*""
nH��Z�HJ��X�k�8�?��?YS���dKa*�َ��#���9�0�K3`A�^4��X��;QC�h3��;t?9�e�c��J���4�Lh( �=f66o	@Z���)�oK]O���b0!��aC"��vX_��=�o��A�i[���%ӊ�QH���16NŀF��W���@�e~Q���p�1"�q�T�V&�̶7�)��5S�4G�s��Fɡ���,�T(�!JT�*�E��a�6Ԓ\b��w�R�8�g�3�1i�it3�ײd�#y�tK�@Hde�82�%kT.t�f;1�r��z)l2��r�F�B��Q$EV"��,~��Lބ����YYC�GC�(��K�tw�b���C� �$��"AQ�{� �3O?��K#.$-���g+gd����WcU�K�pL��!�`E�F��Q8ӕ˚��LO�3�Ąܑ�δ⹼fw{�ZŉL��&�m�"���r��ѭ:֔�테��s��0���f0�Κ��{�{h4@�[6,ġ��s�8Xgc2�Ig@�0H�pDՂ �o`]T���R��Pe��ƅ���t�R�^�_�}�.���T!�{�Y���`��H 2#h·��,S҆L"�� 6V�˭B
���u
J�=�(=� WC)ArB�3B�U�2&�kj*8ڵ��/ڡ�b��m��w�$��R�C>�#y�c��v��u�ZU�����:��ǢF���`�Cq�PBH����-�3�ܘ�1��j`~'Ӏ1Z� R�E�`�#�k9��Lhg�Ax�Vf�E��7I�X�Q"�C��.�OU���1?)�hh!o:D��J>5��Q�oW��R�gHT��s���j��HԻH�*H狇�nh2��P���uDd*�l�B%�w ��J��koF\�y��;p,^�ýk7m�H�i
D�p5�H�-���+V�=HE+u\yP�Bn���e��J1܋����	~y�]��@3j�����n6��04;���z�kd69 �9*[�h0�.����̸�r�� Ƿ݂mO�n�91�l骿�u� l`5�kAj�	A���-�p:�2�Ĺ�#�0b{����7I�D3�Z���HІv���J+�LT�<ܓ��y!�d�A	�[A*�]�x$fX�R�0���E.�pd�-h3Շ��{�@��m��cl0h)��zS2O=�2�̘Cc�9�A��	$�/FN��?_��������,
U\DA�Dd6���G󖙆���n��%8ےrp��F9 �tEtӲ���!�@W�y��<�חZP_���ܑN$,� �@