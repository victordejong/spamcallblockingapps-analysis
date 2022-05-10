package com.library.p518ad.data.net;

import com.android.volley.NetworkError;
import com.android.volley.Request;
/* renamed from: com.library.ad.data.net.NoNetError */
/* loaded from: classes2-dex2jar.jar:com/library/ad/data/net/NoNetError.class */
public class NoNetError extends NetworkError {
    public Request request;

    public NoNetError() {
    }

    public NoNetError(Request request) {
        this.request = request;
    }

    public NoNetError(Throwable th) {
        super(th);
    }

    public Request getRequest() {
        return this.request;
    }

    public void setRequest(Request request) {
    }
}
