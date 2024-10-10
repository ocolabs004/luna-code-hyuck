FROM public.ecr.aws/lambda/go:1 
# aws lambda에서 go언어로 애플리케이션을 실행할수 있는 환경을 가진 기본이미지를 가져옴
COPY main /var/task/
# main 파일은 Go로 작성된 애플리케이션의 실행 파일(바이너리) 이 파일을 Lambda가 실행할 준비가 된 디렉터리인 /var/task/에 넣고 /var/task/는 Lambda 환경에서 코드를 실행할 때 기본적으로 사용하는 디렉터리
CMD ["main"]
# 컨테이너가 실행될 때 기본적으로 실행할 명령을 지정