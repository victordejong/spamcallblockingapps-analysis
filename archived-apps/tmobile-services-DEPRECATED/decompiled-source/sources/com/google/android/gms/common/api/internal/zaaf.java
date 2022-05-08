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
    private final zabe f7137a;

    /* renamed from: b */
    private boolean f7138b = false;

    public zaaf(zabe zabeVar) {
        this.f7137a = zabeVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: a */
    public final void mo14800a(int i) {
        this.f7137a.m14787l(null);
        this.f7137a.f7230o.mo14686c(i, this.f7138b);
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: b */
    public final void mo14799b(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: c */
    public final void mo14798c(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void connect() {
        if (this.f7138b) {
            this.f7138b = false;
            this.f7137a.m14793f(new zaah(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14797d(T t) {
        try {
            this.f7137a.f7229n.f7204x.m14743c(t);
            zaaw zaawVar = this.f7137a.f7229n;
            Api.Client client = zaawVar.f7195o.get(t.m14983v());
            Preconditions.m14522l(client, "Appropriate Api was not requested.");
            if (client.isConnected() || !this.f7137a.f7222g.containsKey(t.m14983v())) {
                A a = client;
                if (client instanceof SimpleClientAdapter) {
                    a = ((SimpleClientAdapter) client).m14503e();
                }
                t.m14981x(a);
            } else {
                t.m14979z(new Status(17));
            }
        } catch (DeadObjectException e) {
            this.f7137a.m14793f(new zaai(this, this));
        }
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final boolean disconnect() {
        if (this.f7138b) {
            return false;
        }
        if (this.f7137a.f7229n.m14804w()) {
            this.f7138b = true;
            for (zack zackVar : this.f7137a.f7229n.f7203w) {
                zackVar.m14754g();
            }
            return false;
        }
        this.f7137a.m14787l(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: e */
    public final void mo14796e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m14854g() {
        if (this.f7138b) {
            this.f7138b = false;
            this.f7137a.f7229n.f7204x.m14745a();
            disconnect();
        }
    }
}
