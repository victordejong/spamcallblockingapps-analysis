package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.Collections;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaao.class */
public final class zaao implements zaaw {
    @NotOnlyInitialized

    /* renamed from: a */
    public final zaaz f23204a;

    public zaao(zaaz zaazVar) {
        this.f23204a = zaazVar;
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo17538a(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final void mo17541a() {
        for (Api.Client client : this.f23204a.f23234f.values()) {
            client.mo10491b();
        }
        this.f23204a.f23242n.f23219p = Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final void mo17540a(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final void mo17539a(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: b */
    public final void mo17537b() {
        this.f23204a.m17529e();
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: b */
    public final void mo17536b(int i) {
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: d */
    public final boolean mo17535d() {
        return true;
    }
}
