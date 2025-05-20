FROM alpine:latest

WORKDIR /

# Copy the pre-built Go binary from GitHub Actions workflow
COPY wizbun /usr/local/bin/wizbun
COPY wizard-bunny.jpg /usr/local/bin/wizard-bunny.jpg

# Ensure the binary is executable
RUN chmod +x /usr/local/bin/wizbun

# Run as a non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 8080

# Run the application
CMD ["wizbun"]
