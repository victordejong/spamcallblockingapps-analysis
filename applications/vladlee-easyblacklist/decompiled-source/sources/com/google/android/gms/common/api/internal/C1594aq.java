package com.google.android.gms.common.api.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.aq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/aq.class */
public final class C1594aq implements AbstractC1595ar {

    /* renamed from: a */
    private final /* synthetic */ zacp f6353a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1594aq(zacp zacpVar) {
        this.f6353a = zacpVar;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1595ar
    /* renamed from: a */
    public final void mo5909a(BasePendingResult<?> basePendingResult) {
        this.f6353a.f6522a.remove(basePendingResult);
        basePendingResult.zal();
    }
}
