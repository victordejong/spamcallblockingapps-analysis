package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaw.class */
public final class zaw<O extends Api.ApiOptions> extends GoogleApi<O> {

    /* renamed from: b */
    private final Api.Client f6566b;

    /* renamed from: c */
    private final zap f6567c;

    /* renamed from: d */
    private final ClientSettings f6568d;

    /* renamed from: e */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f6569e;

    public zaw(Context context, Api<O> api, Looper looper, Api.Client client, zap zapVar, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder) {
        super(context, api, looper);
        this.f6566b = client;
        this.f6567c = zapVar;
        this.f6568d = clientSettings;
        this.f6569e = abstractClientBuilder;
        this.f6186a.zaa(this);
    }

    @Override // com.google.android.gms.common.api.GoogleApi
    public final Api.Client zaa(Looper looper, GoogleApiManager.zaa<O> zaaVar) {
        this.f6567c.zaa(zaaVar);
        return this.f6566b;
    }

    @Override // com.google.android.gms.common.api.GoogleApi
    public final zace zaa(Context context, Handler handler) {
        return new zace(context, handler, this.f6568d, this.f6569e);
    }

    public final Api.Client zaad() {
        return this.f6566b;
    }
}
