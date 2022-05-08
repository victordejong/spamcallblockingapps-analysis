package com.apptentive.android.sdk.network;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequestRetryPolicy.class */
public interface HttpRequestRetryPolicy {
    long getRetryTimeoutMillis(int i);

    boolean shouldRetryRequest(int i, int i2);
}
