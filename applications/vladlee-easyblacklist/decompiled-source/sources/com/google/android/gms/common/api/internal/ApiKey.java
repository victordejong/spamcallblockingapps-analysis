package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ApiKey.class */
public final class ApiKey<O extends Api.ApiOptions> {

    /* renamed from: a */
    private final boolean f6233a;

    /* renamed from: b */
    private final int f6234b;

    /* renamed from: c */
    private final Api<O> f6235c;

    /* renamed from: d */
    private final O f6236d;

    private ApiKey(Api<O> api) {
        this.f6233a = true;
        this.f6235c = api;
        this.f6236d = null;
        this.f6234b = System.identityHashCode(this);
    }

    private ApiKey(Api<O> api, O o) {
        this.f6233a = false;
        this.f6235c = api;
        this.f6236d = o;
        this.f6234b = Objects.hashCode(this.f6235c, this.f6236d);
    }

    public static <O extends Api.ApiOptions> ApiKey<O> getSharedApiKey(Api<O> api, O o) {
        return new ApiKey<>(api, o);
    }

    public static <O extends Api.ApiOptions> ApiKey<O> getUniqueApiKey(Api<O> api) {
        return new ApiKey<>(api);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return !this.f6233a && !apiKey.f6233a && Objects.equal(this.f6235c, apiKey.f6235c) && Objects.equal(this.f6236d, apiKey.f6236d);
    }

    public final String getApiName() {
        return this.f6235c.getName();
    }

    public final Api.AnyClientKey<?> getClientKey() {
        return this.f6235c.getClientKey();
    }

    public final int hashCode() {
        return this.f6234b;
    }

    public final boolean isUnique() {
        return this.f6233a;
    }
}
