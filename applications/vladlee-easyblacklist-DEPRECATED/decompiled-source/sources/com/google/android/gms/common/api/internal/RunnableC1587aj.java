package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.aj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/aj.class */
public final class RunnableC1587aj implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zace f6345a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1587aj(zace zaceVar) {
        this.f6345a = zaceVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zacf zacfVar;
        zacfVar = this.f6345a.f6511h;
        zacfVar.zag(new ConnectionResult(4));
    }
}
