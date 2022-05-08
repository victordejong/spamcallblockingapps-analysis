package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchx.class */
public final class zzchx implements zzbow, zzbqb {

    /* renamed from: a */
    private static final Object f13155a = new Object();

    /* renamed from: b */
    private static int f13156b = 0;

    /* renamed from: c */
    private final zzcid f13157c;

    public zzchx(zzcid zzcidVar) {
        this.f13157c = zzcidVar;
    }

    /* renamed from: a */
    private static void m3770a() {
        synchronized (f13155a) {
            f13156b++;
        }
    }

    /* renamed from: b */
    private static boolean m3769b() {
        boolean z;
        synchronized (f13155a) {
            z = f13156b < ((Integer) zzve.zzoy().zzd(zzzn.zzcqg)).intValue();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(int i) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqf)).booleanValue() && m3769b()) {
            this.f13157c.zzbj(false);
            m3770a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqf)).booleanValue() && m3769b()) {
            this.f13157c.zzbj(true);
            m3770a();
        }
    }
}
