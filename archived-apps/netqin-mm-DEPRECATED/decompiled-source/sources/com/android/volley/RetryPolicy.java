package com.android.volley;
/* loaded from: classes-dex2jar.jar:com/android/volley/RetryPolicy.class */
public interface RetryPolicy {
    int getCurrentRetryCount();

    int getCurrentTimeout();

    void retry(VolleyError volleyError) throws VolleyError;
}
