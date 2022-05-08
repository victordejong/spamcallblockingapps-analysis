package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aea.class */
final class aea implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f7269a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aea(Context context) {
        this.f7269a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdc zzdcVar;
        zzdcVar = zzdi.f14295s;
        zzdcVar.zzb(this.f7269a);
    }
}
