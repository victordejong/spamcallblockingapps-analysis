package com.amazonaws.http;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpClient.class */
public interface HttpClient {
    HttpResponse execute(HttpRequest httpRequest) throws IOException;

    void shutdown();
}
