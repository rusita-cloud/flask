# Python 3.9의 Alpine 버전을 기반으로 작은 이미지를 생성
FROM python:3.9-alpine

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 파일 및 애플리케이션 파일 복사
COPY requirements.txt requirements.txt
COPY app.py app.py

# 필요한 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# Flask가 사용할 포트 노출
EXPOSE 5000

# gunicorn을 사용하여 Flask 애플리케이션 실행
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

