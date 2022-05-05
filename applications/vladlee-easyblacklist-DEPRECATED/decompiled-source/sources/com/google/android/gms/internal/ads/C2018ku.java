package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ku */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ku.class */
public final class C2018ku implements zzafn<Object> {

    /* renamed from: a */
    final /* synthetic */ zzbiy f10147a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2018ku(zzbiy zzbiyVar) {
        this.f10147a = zzbiyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        Executor executor;
        if (zzbiy.m4043a(this.f10147a, map)) {
            executor = this.f10147a.f11946c;
            executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.kw

                /* renamed from: a */
                private final C2018ku f10149a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10149a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbjd zzbjdVar;
                    zzbjdVar = this.f10149a.f10147a.f11947d;
                    zzbjdVar.zzafp();
                }
            });
        }
    }
}
