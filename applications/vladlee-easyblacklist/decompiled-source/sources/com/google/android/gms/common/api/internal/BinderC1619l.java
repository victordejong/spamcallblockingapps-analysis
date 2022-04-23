package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zad;
import com.google.android.gms.signin.internal.zak;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.common.api.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/l.class */
final class BinderC1619l extends zad {

    /* renamed from: a */
    private final WeakReference<zaak> f6405a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC1619l(zaak zaakVar) {
        this.f6405a = new WeakReference<>(zaakVar);
    }

    @Override // com.google.android.gms.signin.internal.zad, com.google.android.gms.signin.internal.zac
    public final void zab(zak zakVar) {
        zabe zabeVar;
        zaak zaakVar = this.f6405a.get();
        if (zaakVar != null) {
            zabeVar = zaakVar.f6434a;
            zabeVar.m5833a(new C1622o(zaakVar, zaakVar, zakVar));
        }
    }
}
