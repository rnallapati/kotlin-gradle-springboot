FROM gradle
RUN apt-get update
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get -qq -y install curl unzip zip
RUN curl -s https://get.sdkman.io | bash
RUN chmod a+x "$HOME/.sdkman/bin/sdkman-init.sh"
RUN source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk install kotlin
WORKDIR /app
COPY app .
RUN chmod +x gradlew
RUN ./gradlew build
# CMD ["./gradlew", "bootRun"]
