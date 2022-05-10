package com.android.volley;
/* loaded from: classes-dex2jar.jar:com/android/volley/ParseError.class */
public class ParseError extends VolleyError {
    public ParseError() {
    }

    public ParseError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public ParseError(Throwable th) {
        super(th);
    }
}
