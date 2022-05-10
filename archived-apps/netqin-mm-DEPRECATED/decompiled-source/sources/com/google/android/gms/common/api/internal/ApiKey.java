package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ApiKey.class */
public final class ApiKey<O extends Api.ApiOptions> {

    /* renamed from: a */
    public final int f23084a;

    /* renamed from: b */
    public final Api<O> f23085b;

    /* renamed from: c */
    public final O f23086c;

    public ApiKey(Api<O> api, O o) {
        this.f23085b = api;
        this.f23086c = o;
        this.f23084a = Objects.m17294a(api, o);
    }

    /* renamed from: a */
    public static <O extends Api.ApiOptions> ApiKey<O> m17738a(Api<O> api, O o) {
        return new ApiKey<>(api, o);
    }

    /* renamed from: a */
    public final String m17739a() {
        return this.f23085b.m17784d();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return Objects.m17295a(this.f23085b, apiKey.f23085b) && Objects.m17295a(this.f23086c, apiKey.f23086c);
    }

    public final int hashCode() {
        return this.f23084a;
    }
}
