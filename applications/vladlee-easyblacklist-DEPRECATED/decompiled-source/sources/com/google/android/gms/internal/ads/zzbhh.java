package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhh.class */
public final class zzbhh {

    /* renamed from: a */
    private zzbga f11885a;

    /* renamed from: b */
    private zzbhq f11886b;

    /* renamed from: c */
    private zzdcy f11887c;

    /* renamed from: d */
    private zzbhx f11888d;

    /* renamed from: e */
    private zzdag f11889e;

    private zzbhh() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbhh(byte b) {
        this();
    }

    public final zzbhh zza(zzbhq zzbhqVar) {
        this.f11886b = (zzbhq) zzdxm.checkNotNull(zzbhqVar);
        return this;
    }

    public final zzbfx zzael() {
        zzdxm.zza(this.f11885a, zzbga.class);
        zzdxm.zza(this.f11886b, zzbhq.class);
        if (this.f11887c == null) {
            this.f11887c = new zzdcy();
        }
        if (this.f11888d == null) {
            this.f11888d = new zzbhx();
        }
        if (this.f11889e == null) {
            this.f11889e = new zzdag();
        }
        return new zzbgr(this.f11885a, this.f11886b, this.f11887c, this.f11888d, this.f11889e, (byte) 0);
    }

    public final zzbhh zzc(zzbga zzbgaVar) {
        this.f11885a = (zzbga) zzdxm.checkNotNull(zzbgaVar);
        return this;
    }
}
