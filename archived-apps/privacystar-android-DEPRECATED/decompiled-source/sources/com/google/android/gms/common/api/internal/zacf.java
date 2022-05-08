package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacf.class */
public final class zacf implements Runnable {
    private final /* synthetic */ zace zakj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacf(zace zaceVar) {
        this.zakj = zaceVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zach zachVar;
        zachVar = this.zakj.zaki;
        zachVar.zag(new ConnectionResult(4));
    }
}
