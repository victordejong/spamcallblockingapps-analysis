package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacd.class */
public final class zacd implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zace f7257f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacd(zace zaceVar) {
        this.f7257f = zaceVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zacf zacfVar;
        zacfVar = this.f7257f.f7265g;
        zacfVar.mo14762c(new ConnectionResult(4));
    }
}
