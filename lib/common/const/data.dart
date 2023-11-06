import 'dart:io';

const ACCESS_TOKEN_KEY = 'ACCESS_TOKEN';
const REFRESH_TOKEN_KEY = 'REFRESH_TOKEN';

//애뮬레이터 로컬
final emulatorIp = '10.0.2.2:8080';
//시뮬레이터 로컬
final simulatorIp = '127.0.0.1:8080';
//아이폰일 경우 시뮬레이터 아이피 아닐 경우 애뮬레이터 아이피, 나중에 API나오면 해당 주소로 변경 예정
//final ip = Platform.isIOS ? simulatorIp : emulatorIp;
final ip = 'home.sjkim.net:5959';
