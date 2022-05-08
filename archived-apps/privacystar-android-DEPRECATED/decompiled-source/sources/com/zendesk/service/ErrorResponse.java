package com.zendesk.service;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/ErrorResponse.class */
public interface ErrorResponse {
    public static final int NON_HTTP_ERROR = -1;

    String getReason();

    String getResponseBody();

    String getResponseBodyType();

    List<Header> getResponseHeaders();

    int getStatus();

    String getUrl();

    @Deprecated
    boolean isConversionError();

    boolean isHTTPError();

    @Deprecated
    boolean isNetworkError();
}
