package com.apptentive.android.sdk.comm;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/comm/ApptentiveHttpResponse.class */
public class ApptentiveHttpResponse {
    private int code = -1;
    private Map<String, String> headers;

    public int getCode() {
        return this.code;
    }

    public boolean isSuccessful() {
        int i = this.code;
        return i >= 200 && i < 300;
    }

    public boolean isZipped() {
        Map<String, String> map = this.headers;
        boolean z = false;
        if (map != null) {
            String str = map.get("Content-Encoding");
            z = false;
            if (str != null) {
                z = false;
                if (str.equalsIgnoreCase("[gzip]")) {
                    z = true;
                }
            }
        }
        return z;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setContent(String str) {
    }

    public void setHeaders(Map<String, String> map) {
        this.headers = map;
    }

    public void setReason(String str) {
    }
}
