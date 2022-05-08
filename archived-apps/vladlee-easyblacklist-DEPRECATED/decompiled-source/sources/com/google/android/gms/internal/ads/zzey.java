package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbs;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzey.class */
public final class zzey extends zzfw {

    /* renamed from: d */
    private static zzfv<String> f14765d = new zzfv<>();

    /* renamed from: e */
    private final Context f14766e;

    public zzey(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2, Context context) {
        super(zzeiVar, str, str2, zzbVar, i, 29);
        this.f14766e = context;
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        this.f14795b.zzai("E");
        AtomicReference<String> zzav = f14765d.zzav(this.f14766e.getPackageName());
        if (zzav.get() == null) {
            synchronized (zzav) {
                if (zzav.get() == null) {
                    zzav.set((String) this.f14796c.invoke(null, this.f14766e));
                }
            }
        }
        String str = zzav.get();
        synchronized (this.f14795b) {
            this.f14795b.zzai(zzci.zza(str.getBytes(), true));
        }
    }
}
