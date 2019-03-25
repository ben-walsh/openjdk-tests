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

REM @echo (1) Hangul Compatibility Jamo
REM @echo    
REM @echo    ���������������������������������äŤǤˤ̤ФѤӤ�
REM @echo    ���������������������������������äŤǤˤ̤ФѤӤ�
set TEST_STRING1=���������������������������������äŤǤˤ̤ФѤӤ�

REM @echo (2) Enclosed CJK Letters and Months
REM @echo    
REM @echo    ���������������������©éĩŢߨ���������������
REM @echo    ���������������������©éĩŢߨ���������������
set TEST_STRING2=���������������������©éĩŢߨ���������������

REM @echo (3) Hangul Syllables
REM @echo    
REM @echo    �ѱ��Ϻ����뺣������
REM @echo    �ѱ��Ϻ����뺣������
set TEST_STRING3=�ѱ��Ϻ����뺣������

REM @echo (4) ���
REM @echo    
REM @echo    ��������ʡʢʣʤ��������
REM @echo    ��������ʡʢʣʤ��������
set TEST_STRING4=��������ʡʢʣʤ��������

set TEST_STRING=�����������é������ѱ��Ϻ���������
set TEST_STRING_SED=%TEST_STRING%
set TEST_STRINGS=%TEST_STRING1% %TEST_STRING2% %TEST_STRING3% %TEST_STRING4%
set TEST_STRINGS_SED=%TEST_STRINGS%

