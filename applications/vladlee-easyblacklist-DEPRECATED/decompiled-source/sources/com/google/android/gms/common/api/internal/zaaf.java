package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.SimpleClientAdapter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaf.class */
public final class zaaf implements zabb {

    /* renamed from: a */
    private final zabe f6431a;

    /* renamed from: b */
    private boolean f6432b = false;

    public zaaf(zabe zabeVar) {
        this.f6431a = zabeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5876a() {
        if (this.f6432b) {
            this.f6432b = false;
            this.f6431a.f6484d.f6460e.release();
            disconnect();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void begin() {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void connect() {
        if (this.f6432b) {
            this.f6432b = false;
            this.f6431a.m5833a(new C1612e(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final boolean disconnect() {
        if (this.f6432b) {
            return false;
        }
        if (this.f6431a.f6484d.m5839c()) {
            this.f6432b = true;
            for (zack zackVar : this.f6431a.f6484d.f6459d) {
                zackVar.m5824a();
            }
            return false;
        }
        this.f6431a.m5834a((ConnectionResult) null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        return (T) execute(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        try {
            this.f6431a.f6484d.f6460e.m5811a(t);
            zaaw zaawVar = this.f6431a.f6484d;
            Api.Client client = zaawVar.f6457b.get(t.getClientKey());
            Preconditions.checkNotNull(client, "Appropriate Api was not requested.");
            if (client.isConnected() || !this.f6431a.f6482b.containsKey(t.getClientKey())) {
                A a = client;
                if (client instanceof SimpleClientAdapter) {
                    a = ((SimpleClientAdapter) client).getClient();
                }
                t.run(a);
            } else {
                t.setFailedResult(new Status(17));
            }
        } catch (DeadObjectException e) {
            this.f6431a.m5833a(new C1613f(this, this));
        }
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void onConnectionSuspended(int i) {
        this.f6431a.m5834a((ConnectionResult) null);
        this.f6431a.f6485e.zab(i, this.f6432b);
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }
}
