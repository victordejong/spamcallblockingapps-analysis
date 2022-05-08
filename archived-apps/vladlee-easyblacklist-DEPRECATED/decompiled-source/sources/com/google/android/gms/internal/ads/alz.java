package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alz.class */
final class alz implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzq f7591a;

    /* renamed from: b */
    private final /* synthetic */ zzc f7592b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alz(zzc zzcVar, zzq zzqVar) {
        this.f7592b = zzcVar;
        this.f7591a = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.f7592b.f12787c;
            blockingQueue.put(this.f7591a);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
