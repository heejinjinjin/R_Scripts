#설치된 패키지들
pkg = installed.packages()
pkg

#패키지 설치된 경로
.libPaths()

#데이터셋 종류 확인
data(package="datasets")

#직사각형의 면적을 구하는 함수 정의
getRectangleArea = function(w, h){
  area = w * h
  return(area)
}

w = 20
h = 35

#함수 호출
getRectangleArea(w, h)

#함수 연습
getCircleArea = function(r){
  area = r * r * 3.14
  return(area)
}

r = 5

getCircleArea(r)

# 3장 데이터 구조
# 벡터: 선형으로 1개 이상의 숫자 또는 문자열들을 저장 간으
# 인덱스는 1부터 시작
# 여러 개의 데이터를 저장할 때 C()함수 사용

score =  80
score

score = c(95, 78, 92)
score #print(score)

score[2] = 88
score[4] = 100
score

name = c("장발장", "코제트", "팡틴")
name

name[4] = "자베르"
name

# 연속적인 값들을 벡터에 저장
# 주석 단축 키 ctrl + shift + c

# sequence 함수 사용
x1 = seq(10, 100, by = 10)
x1

# 1씩 증가하는 값 저장
x2 = 1:10
seq(1, 10, by = 1)
x2

# 1씩 감소하는 값 저장
x3 = 10:1
seq(10, 1, by = -1)
x3

# 저장되는 값을 길이(개수)를 지정해서 동일하게 분배된 값을 저장
x4 = seq(0, 10, length.out = 5)

# 반복(repeat) 함수: rep(), times, each 속성
x5 = c(1, 2, 3)
y1 = rep(x5, times = 3)
y1

x6 = c(1, 2, 3)
y2 = rep(x6, each = 3)
y2

# 연산자
# 산술연산자

# 거듭제곱 연산자
10^3

a = 5
b = 5

r1 = a ^ b
r1

x = c(10, 20, 30, 40)
y = c(1, 6, 11, 16)
w = c(100, 200)

x + 5
x + y

# 벡터 개수가 다를 때는 개수가 적은 쪽의 인덱스를 반복해서 연산
x + w

# 비교 연산자: 비교연산의 결과는 논리값 TRUE, FALSE로 결과가 나타남
a = 7
b = 10

a > b

x = c(10, 20, 30)
x <= 10

# 벡터에 있는 요소의 값들 중 하나라도 비교연산 결과의 TRUE가 있으면 결과를 TRUE로 표시
any(x <= 10)

# 벡터에 있는 요소의 값들이 비교연산 결과 TRUE가 되어야 TRUE
all(x <= 10)

# 벡터에서 20 이상인 요소를 반환
x[x >= 20]

# 논리연산자: 논리값 TRUE, FALSE로 결과 반환
x = c(TRUE, TRUE, FALSE, FALSE)
y = c(TRUE, FALSE, TRUE, FALSE)

x | y
x & y
xor(x, y)
!x

# NA(Not Available(결측치): 누락된 경우)
# NULL (변수를 선언하고 초기화하지 않았을 때)
# Inf(Infinity: 0이 아닌 숫자를 0으로 나누었을 때)
# NaN(Not a Number: 0을 0으로 나누었을 때)

z = NULL
z
is.null(z)

k
is.null(k) # k를 찾지 못해 오류 발생

y = c(1, 2, 3, NA)
y

z = 5/0
z

t = 0/0
t

# 요인 (factor)
# 벡터에 저장된 동일한 값들을 요인으로 찾아내서 대표값들을 분류해서 반환 + 원래 벡터값 출력 

gender = c("여", "남", "남", "여", "여", "남")
gender

gender.factor = factor(gender)
gender.factor
