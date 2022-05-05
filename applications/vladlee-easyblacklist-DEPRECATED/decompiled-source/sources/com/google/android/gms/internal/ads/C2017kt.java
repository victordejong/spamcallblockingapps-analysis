package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.kt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kt.class */
public final class C2017kt implements zzafn<Object> {

    /* renamed from: a */
    final /* synthetic */ zzbiy f10146a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2017kt(zzbiy zzbiyVar) {
        this.f10146a = zzbiyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        Executor executor;
        if (zzbiy.m4043a(this.f10146a, map)) {
            executor = this.f10146a.f11946c;
            executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.kv

                /* renamed from: a */
                private final C2017kt f10148a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10148a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbjd zzbjdVar;
                    zzbjdVar = this.f10148a.f10146a.f11947d;
                    zzbjdVar.zzafn();
                }
            });
        }
    }
}
