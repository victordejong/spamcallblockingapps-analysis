package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* renamed from: com.google.android.gms.common.api.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/k.class */
final class C1618k extends AbstractC1630w {

    /* renamed from: a */
    private final /* synthetic */ ConnectionResult f6403a;

    /* renamed from: b */
    private final /* synthetic */ C1615h f6404b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1618k(C1615h hVar, zabb zabbVar, ConnectionResult connectionResult) {
        super(zabbVar);
        this.f6404b = hVar;
        this.f6403a = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1630w
    /* renamed from: a */
    public final void mo5884a() {
        this.f6404b.f6397a.m5863b(this.f6403a);
    }
}
