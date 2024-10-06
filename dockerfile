FROM public.ecr.aws/lambda/go:1
COPY main /var/task/
CMD ["main"]