package com.privacystar.core.service.network.util;

import com.zendesk.service.HttpConstants;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/util/HttpStatus.class */
public enum HttpStatus {
    OK(200),
    NO_CONTENT(HttpConstants.HTTP_NO_CONTENT),
    MOVED_PERMANENTLY(HttpConstants.HTTP_MOVED_PERM),
    FOUND(HttpConstants.HTTP_MOVED_TEMP),
    BAD_REQUEST(HttpConstants.HTTP_BAD_REQUEST),
    UNAUTHORIZED(HttpConstants.HTTP_UNAUTHORIZED),
    FORBIDDEN(HttpConstants.HTTP_FORBIDDEN),
    NOT_FOUND(404),
    REQUEST_TIMEOUT(HttpConstants.HTTP_CLIENT_TIMEOUT),
    INTERNAL_SERVER_ERROR(500),
    NOT_IMPLEMENTED(501),
    BAD_GATEWAY(HttpConstants.HTTP_BAD_GATEWAY),
    SERVICE_UNAVAILABLE(HttpConstants.HTTP_UNAVAILABLE),
    GATEWAY_TIMEOUT(HttpConstants.HTTP_GATEWAY_TIMEOUT),
    LOOP_DETECTED(508),
    UNKNOWN(-1);
    
    private final int code;

    HttpStatus(int i) {
        this.code = i;
    }

    public static HttpStatus fromCode(int i) {
        HttpStatus[] values;
        for (HttpStatus httpStatus : values()) {
            if (httpStatus.getCode() == i) {
                return httpStatus;
            }
        }
        return UNKNOWN;
    }

    public int getCode() {
        return this.code;
    }
}
