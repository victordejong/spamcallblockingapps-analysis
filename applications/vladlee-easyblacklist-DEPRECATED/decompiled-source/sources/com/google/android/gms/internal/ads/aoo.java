package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aoo.class */
final class aoo implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ IOException f8029a;

    /* renamed from: b */
    private final /* synthetic */ aol f8030b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aoo(aol aolVar, IOException iOException) {
        this.f8030b = aolVar;
        this.f8029a = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzma zzmaVar;
        zzmaVar = this.f8030b.f8005e;
        zzmaVar.zzb(this.f8029a);
    }
}
