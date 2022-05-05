package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/v.class */
public final class C1629v extends zabp {

    /* renamed from: a */
    private WeakReference<zaaw> f6422a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1629v(zaaw zaawVar) {
        this.f6422a = new WeakReference<>(zaawVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabp
    public final void zas() {
        zaaw zaawVar = this.f6422a.get();
        if (zaawVar != null) {
            zaaw.m5844a(zaawVar);
        }
    }
}
