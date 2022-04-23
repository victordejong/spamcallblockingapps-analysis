package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;
/* renamed from: com.google.android.gms.common.api.internal.ak */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ak.class */
final class RunnableC1588ak implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zak f6346a;

    /* renamed from: b */
    private final /* synthetic */ zace f6347b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1588ak(zace zaceVar, zak zakVar) {
        this.f6347b = zaceVar;
        this.f6346a = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zace.m5825a(this.f6347b, this.f6346a);
    }
}
