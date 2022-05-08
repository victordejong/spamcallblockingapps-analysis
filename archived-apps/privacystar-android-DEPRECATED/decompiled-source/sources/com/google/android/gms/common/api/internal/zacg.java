package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zaj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacg.class */
final class zacg implements Runnable {
    private final /* synthetic */ zaj zagq;
    private final /* synthetic */ zace zakj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacg(zace zaceVar, zaj zajVar) {
        this.zakj = zaceVar;
        this.zagq = zajVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zakj.zac(this.zagq);
    }
}
