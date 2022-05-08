package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaat.class */
public final class zaat implements zabb {

    /* renamed from: a */
    private final zabe f6455a;

    public zaat(zabe zabeVar) {
        this.f6455a = zabeVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void begin() {
        for (Api.Client client : this.f6455a.f6481a.values()) {
            client.disconnect();
        }
        this.f6455a.f6484d.f6458c = Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void connect() {
        this.f6455a.m5835a();
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final boolean disconnect() {
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        this.f6455a.f6484d.f6456a.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }
}
