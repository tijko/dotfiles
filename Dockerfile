FROM homebrew/brew:latest
COPY . .
CMD ["./brew-install.sh"]
