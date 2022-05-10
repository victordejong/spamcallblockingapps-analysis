package com.mopub.network;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyError;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubNetworkError.class */
public class MoPubNetworkError extends VolleyError {
    public final Reason mReason;
    public final Integer mRefreshTimeMillis;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubNetworkError$Reason.class */
    public enum Reason {
        WARMING_UP,
        NO_FILL,
        BAD_HEADER_DATA,
        BAD_BODY,
        TRACKING_FAILURE,
        UNSPECIFIED
    }

    public MoPubNetworkError(Reason reason) {
        this.mReason = reason;
        this.mRefreshTimeMillis = null;
    }

    public MoPubNetworkError(NetworkResponse networkResponse, Reason reason) {
        super(networkResponse);
        this.mReason = reason;
        this.mRefreshTimeMillis = null;
    }

    public MoPubNetworkError(String str, Reason reason) {
        this(str, reason, (Integer) null);
    }

    public MoPubNetworkError(String str, Reason reason, Integer num) {
        super(str);
        this.mReason = reason;
        this.mRefreshTimeMillis = num;
    }

    public MoPubNetworkError(String str, Throwable th, Reason reason) {
        super(str, th);
        this.mReason = reason;
        this.mRefreshTimeMillis = null;
    }

    public MoPubNetworkError(Throwable th, Reason reason) {
        super(th);
        this.mReason = reason;
        this.mRefreshTimeMillis = null;
    }

    public Reason getReason() {
        return this.mReason;
    }

    public Integer getRefreshTimeMillis() {
        return this.mRefreshTimeMillis;
    }
}
