package com.mopub.volley;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/DefaultRetryPolicy.class */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;

    /* renamed from: a */
    public int f35073a;

    /* renamed from: b */
    public int f35074b;

    /* renamed from: c */
    public final int f35075c;

    /* renamed from: d */
    public final float f35076d;

    public DefaultRetryPolicy() {
        this(2500, 1, 1.0f);
    }

    public DefaultRetryPolicy(int i, int i2, float f) {
        this.f35073a = i;
        this.f35075c = i2;
        this.f35076d = f;
    }

    /* renamed from: a */
    public boolean m3761a() {
        return this.f35074b <= this.f35075c;
    }

    public float getBackoffMultiplier() {
        return this.f35076d;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.f35074b;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f35073a;
    }

    @Override // com.mopub.volley.RetryPolicy
    public void retry(VolleyError volleyError) throws VolleyError {
        this.f35074b++;
        int i = this.f35073a;
        this.f35073a = i + ((int) (i * this.f35076d));
        if (!m3761a()) {
            throw volleyError;
        }
    }
}
