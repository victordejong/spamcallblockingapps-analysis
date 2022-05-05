package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsj.class */
public class zzdsj {

    /* renamed from: a */
    private static final zzdrg f14575a = zzdrg.zzazh();

    /* renamed from: b */
    private zzdqk f14576b;

    /* renamed from: c */
    private volatile zzdte f14577c;

    /* renamed from: d */
    private volatile zzdqk f14578d;

    /* renamed from: a */
    private final zzdte m3338a(zzdte zzdteVar) {
        if (this.f14577c == null) {
            synchronized (this) {
                if (this.f14577c == null) {
                    try {
                        this.f14577c = zzdteVar;
                        this.f14578d = zzdqk.zzhhx;
                    } catch (zzdse e) {
                        this.f14577c = zzdteVar;
                        this.f14578d = zzdqk.zzhhx;
                    }
                }
            }
        }
        return this.f14577c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdsj)) {
            return false;
        }
        zzdsj zzdsjVar = (zzdsj) obj;
        zzdte zzdteVar = this.f14577c;
        zzdte zzdteVar2 = zzdsjVar.f14577c;
        return (zzdteVar == null && zzdteVar2 == null) ? zzaxk().equals(zzdsjVar.zzaxk()) : (zzdteVar == null || zzdteVar2 == null) ? zzdteVar != null ? zzdteVar.equals(zzdsjVar.m3338a(zzdteVar.zzazz())) : m3338a(zzdteVar2.zzazz()).equals(zzdteVar2) : zzdteVar.equals(zzdteVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzdqk zzaxk() {
        if (this.f14578d != null) {
            return this.f14578d;
        }
        synchronized (this) {
            if (this.f14578d != null) {
                return this.f14578d;
            }
            this.f14578d = this.f14577c == null ? zzdqk.zzhhx : this.f14577c.zzaxk();
            return this.f14578d;
        }
    }

    public final int zzazu() {
        if (this.f14578d != null) {
            return this.f14578d.size();
        }
        if (this.f14577c != null) {
            return this.f14577c.zzazu();
        }
        return 0;
    }

    public final zzdte zzn(zzdte zzdteVar) {
        zzdte zzdteVar2 = this.f14577c;
        this.f14576b = null;
        this.f14578d = null;
        this.f14577c = zzdteVar;
        return zzdteVar2;
    }
}
