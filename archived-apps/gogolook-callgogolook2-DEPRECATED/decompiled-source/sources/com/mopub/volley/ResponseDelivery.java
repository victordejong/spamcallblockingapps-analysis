package com.mopub.volley;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/ResponseDelivery.class */
public interface ResponseDelivery {
    void postError(Request<?> request, VolleyError volleyError);

    void postResponse(Request<?> request, Response<?> response);

    void postResponse(Request<?> request, Response<?> response, Runnable runnable);
}
