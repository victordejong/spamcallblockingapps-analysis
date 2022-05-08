package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacg.class */
final class zacg implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zak f7266f;

    /* renamed from: g */
    private final /* synthetic */ zace f7267g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacg(zace zaceVar, zak zakVar) {
        this.f7267g = zaceVar;
        this.f7266f = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7267g.m14764V0(this.f7266f);
    }
}
