package com.google.android.gms.common.api.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f.class */
public final class C1613f extends AbstractC1630w {

    /* renamed from: a */
    private final /* synthetic */ zaaf f6395a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1613f(zaaf zaafVar, zabb zabbVar) {
        super(zabbVar);
        this.f6395a = zaafVar;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1630w
    /* renamed from: a */
    public final void mo5884a() {
        this.f6395a.onConnectionSuspended(1);
    }
}
