package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmd.class */
public class zzbmd {

    /* renamed from: a */
    protected final zzczt f12132a;

    /* renamed from: b */
    protected final zzczl f12133b;

    /* renamed from: c */
    private final zzbpg f12134c;

    /* renamed from: d */
    private final zzbpw f12135d;

    /* renamed from: e */
    private final zzcxq f12136e;

    /* renamed from: f */
    private final zzbom f12137f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbmd(zzbmg zzbmgVar) {
        this.f12132a = zzbmg.m4022a(zzbmgVar);
        this.f12133b = zzbmg.m4021b(zzbmgVar);
        this.f12134c = zzbmg.m4020c(zzbmgVar);
        this.f12135d = zzbmg.m4019d(zzbmgVar);
        this.f12136e = zzbmg.m4018e(zzbmgVar);
        this.f12137f = zzbmg.m4017f(zzbmgVar);
    }

    public void destroy() {
        this.f12134c.zzbx(null);
    }

    public void zzagf() {
        this.f12135d.onAdLoaded();
    }

    public final zzbpg zzagr() {
        return this.f12134c;
    }

    public final zzbom zzags() {
        return this.f12137f;
    }

    public final zzcxq zzagt() {
        return this.f12136e;
    }
}
