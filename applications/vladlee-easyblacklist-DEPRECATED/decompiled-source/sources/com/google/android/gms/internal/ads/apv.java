package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apv.class */
final class apv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ apw f8137a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apv(apw apwVar) {
        this.f8137a = apwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<zzqj> list;
        obj = this.f8137a.f8140c;
        synchronized (obj) {
            z = this.f8137a.f8141d;
            if (z) {
                z2 = this.f8137a.f8142e;
                if (z2) {
                    this.f8137a.f8141d = false;
                    zzavs.zzea("App went background");
                    list = this.f8137a.f8143f;
                    for (zzqj zzqjVar : list) {
                        try {
                            zzqjVar.zzp(false);
                        } catch (Exception e) {
                            zzayu.zzc("", e);
                        }
                    }
                }
            }
            zzavs.zzea("App is still foreground");
        }
    }
}
