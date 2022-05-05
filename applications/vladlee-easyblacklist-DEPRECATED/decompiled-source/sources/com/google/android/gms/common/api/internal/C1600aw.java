package com.google.android.gms.common.api.internal;

import android.app.Dialog;
/* renamed from: com.google.android.gms.common.api.internal.aw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/aw.class */
final class C1600aw extends zabp {

    /* renamed from: a */
    private final /* synthetic */ Dialog f6362a;

    /* renamed from: b */
    private final /* synthetic */ RunnableC1598au f6363b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1600aw(RunnableC1598au auVar, Dialog dialog) {
        this.f6363b = auVar;
        this.f6362a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.zabp
    public final void zas() {
        this.f6363b.f6358a.m5806c();
        if (this.f6362a.isShowing()) {
            this.f6362a.dismiss();
        }
    }
}
