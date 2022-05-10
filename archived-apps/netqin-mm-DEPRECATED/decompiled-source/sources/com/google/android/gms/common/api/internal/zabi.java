package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabi.class */
public final class zabi<O extends Api.ApiOptions> extends zaab {
    @NotOnlyInitialized

    /* renamed from: c */
    public final GoogleApi<O> f23246c;

    public zabi(GoogleApi<O> googleApi) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f23246c = googleApi;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: a */
    public final void mo17524a(zaci zaciVar) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: c */
    public final Looper mo17523c() {
        return this.f23246c.m17767d();
    }
}
