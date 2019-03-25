@echo off
rem Licensed under the Apache License, Version 2.0 (the "License");
rem you may not use this file except in compliance with the License.
rem You may obtain a copy of the License at
rem
rem      https://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.

echo ------------ Pattern matching test ------------

java SimpleGrep "Ư��" %PWD%\win_ko.txt
echo --- Confirm that the line(s) includes "Ư��". 
echo --- Did you get the line(s) 14,23,31,43 ?

java SimpleGrep "gnome" %PWD%\win_ko.txt
echo --- Confirm that the line(s) includes the pattern "gnome". 
echo --- Did you get the line(s) 11,12,49,52,54,78 ?

java SimpleGrep "^��" %PWD%\win_ko.txt
echo --- Confirm that the line(s) starts with "��".
echo --- Did you get the line(s) 98,185 ?

java SimpleGrep ���� %PWD%\win_ko.txt
echo --- Confirm that the line(s) includes "����". 
echo --- Did you get the line(s) 85,86,88 ?

java SimpleGrep "ʥ��" %PWD%\win_ko.txt
echo --- Confirm that the line(s) includes "ʥ��". 
echo --- Did you get the line(s) 234,235,236 ?

java SimpleGrep "\u5475\u5475\u5927\u7b11" %PWD%\win_ko.txt
echo --- Confirm that the line(s) includes "ʧʧ����". "
echo --- Did you get the line 124 ?

java SimpleGrep �����äŤǤˤ̤� %PWD%\win_ko.txt
echo --- Confirm that the line(s) includes any of  �����äŤǤˤ̤�
echo --- Did you get the line(s) 98  ?

echo;
echo ------------ Pattern replacement test ------------

java RegexReplaceTest ������������������ �ŢƢǢȢɢʢˢ̢� %PWD%\win_ko.txt -v
echo --- Confirm that "������������������" was replaced by "�ŢƢǢȢɢʢˢ̢�". 
echo --- OK ?

java RegexReplaceTest �������� ʫ������ %PWD%\win_ko.txt -v
echo --- Confirm that "��������" was replaced by "ʫ������". 
echo --- OK ?

java RegexReplaceTest "����" "�˹�" %PWD%\win_ko.txt -v
echo --- Confirm that "����" was replaced by "�˹�". 
echo --- OK ?

java RegexReplaceTest "��.*ȣ" "ʫʫ����" %PWD%\win_ko.txt -v
echo --- Confirm that "��.*ȣ" was replaced by "ʫʫ����". 
echo --- OK ?

java RegexReplaceTest "\u5bb6\u7cfb" "ʫͪݭ" %PWD%\win_ko.txt -v
echo --- Confirm that "ʫͧ"replaced by "ʫͪݭ". 
echo --- OK ?
