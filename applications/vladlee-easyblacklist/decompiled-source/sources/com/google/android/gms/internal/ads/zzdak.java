package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdak.class */
public final class zzdak implements zzavk, zzbow {

    /* renamed from: a */
    private final HashSet<zzavd> f14111a = new HashSet<>();

    /* renamed from: b */
    private final Context f14112b;

    /* renamed from: c */
    private final zzavp f14113c;

    public zzdak(Context context, zzavp zzavpVar) {
        this.f14112b = context;
        this.f14113c = zzavpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(int i) {
        synchronized (this) {
            if (i != 3) {
                this.f14113c.zzb(this.f14111a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavk
    public final void zza(HashSet<zzavd> hashSet) {
        synchronized (this) {
            this.f14111a.clear();
            this.f14111a.addAll(hashSet);
        }
    }

    public final Bundle zzaov() {
        return this.f14113c.zza(this.f14112b, this);
    }
}
