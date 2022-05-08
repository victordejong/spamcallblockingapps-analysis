package com.mopub.volley.toolbox;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/JsonRequest.class */
public abstract class JsonRequest<T> extends Request<T> {

    /* renamed from: t */
    public static final String f9596t = String.format("application/json; charset=%s", com.aotter.net.volley.toolbox.JsonRequest.PROTOCOL_CHARSET);

    /* renamed from: q */
    public final Object f9597q;
    @Nullable
    @GuardedBy("mLock")

    /* renamed from: r */
    public Response.Listener<T> f9598r;
    @Nullable

    /* renamed from: s */
    public final String f9599s;

    public JsonRequest(int i, String str, @Nullable String str2, Response.Listener<T> listener, @Nullable Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.f9597q = new Object();
        this.f9598r = listener;
        this.f9599s = str2;
    }

    @Deprecated
    public JsonRequest(String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, str, str2, listener, errorListener);
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f9597q) {
            this.f9598r = null;
        }
    }

    @Override // com.mopub.volley.Request
    public void deliverResponse(T t) {
        Response.Listener<T> listener;
        synchronized (this.f9597q) {
            listener = this.f9598r;
        }
        if (listener != null) {
            listener.onResponse(t);
        }
    }

    @Override // com.mopub.volley.Request
    public byte[] getBody() {
        byte[] bArr = null;
        try {
            if (this.f9599s != null) {
                bArr = this.f9599s.getBytes(com.aotter.net.volley.toolbox.JsonRequest.PROTOCOL_CHARSET);
            }
            return bArr;
        } catch (UnsupportedEncodingException e) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", this.f9599s, com.aotter.net.volley.toolbox.JsonRequest.PROTOCOL_CHARSET);
            return null;
        }
    }

    @Override // com.mopub.volley.Request
    public String getBodyContentType() {
        return f9596t;
    }

    @Override // com.mopub.volley.Request
    @Deprecated
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.mopub.volley.Request
    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }
}
