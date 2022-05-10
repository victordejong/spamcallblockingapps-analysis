package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zaz;
import java.util.Set;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3242a;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3244b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaa.class */
public final class zaaa implements zaaw {

    /* renamed from: a */
    public final zaaz f23180a;

    /* renamed from: b */
    public boolean f23181b = false;

    public zaaa(zaaz zaazVar) {
        this.f23180a = zaazVar;
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo17538a(T t) {
        try {
            this.f23180a.f23242n.f23227x.m17489a(t);
            zaar zaarVar = this.f23180a.f23242n;
            Api.Client client = zaarVar.f23218o.get(t.m17724h());
            Preconditions.m17287a(client, "Appropriate Api was not requested.");
            if (!client.mo17614c() && this.f23180a.f23235g.containsKey(t.m17724h())) {
                t.m17727c(new Status(17));
            } else if (!(client instanceof zaz)) {
                t.m17728b(client);
            } else {
                zaz zazVar = (zaz) client;
                zaz.m17171a();
                throw null;
            }
        } catch (DeadObjectException e) {
            this.f23180a.m17534a(new C3244b(this, this));
        }
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final void mo17541a() {
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
        if (this.f23181b) {
            this.f23181b = false;
            this.f23180a.m17534a(new C3242a(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: b */
    public final void mo17536b(int i) {
        this.f23180a.m17533a((ConnectionResult) null);
        this.f23180a.f23243o.mo17513a(i, this.f23181b);
    }

    /* renamed from: c */
    public final void m17591c() {
        if (this.f23181b) {
            this.f23181b = false;
            this.f23180a.f23242n.f23227x.m17490a();
            mo17535d();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: d */
    public final boolean mo17535d() {
        if (this.f23181b) {
            return false;
        }
        Set<zaci> set = this.f23180a.f23242n.f23226w;
        if (set == null || set.isEmpty()) {
            this.f23180a.m17533a((ConnectionResult) null);
            return true;
        }
        this.f23181b = true;
        for (zaci zaciVar : set) {
            zaciVar.m17500a();
        }
        return false;
    }
}
