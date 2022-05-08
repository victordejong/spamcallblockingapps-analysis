package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbn.class */
public final class zzdbn {

    /* renamed from: a */
    private HashMap<zzdbh, zzdbb> f14155a = new HashMap<>();

    public final zzdbb zzb(zzdbh zzdbhVar, Context context) {
        zzdbb zzdbbVar = this.f14155a.get(zzdbhVar);
        zzdbb zzdbbVar2 = zzdbbVar;
        if (zzdbbVar == null) {
            zzdbbVar2 = new C2426zx(zzdbe.zza(zzdbhVar, context));
            this.f14155a.put(zzdbhVar, zzdbbVar2);
        }
        return zzdbbVar2;
    }
}
