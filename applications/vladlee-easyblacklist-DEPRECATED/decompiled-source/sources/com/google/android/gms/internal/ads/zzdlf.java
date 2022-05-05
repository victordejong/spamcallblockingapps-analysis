package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlf.class */
public final class zzdlf extends zzdrt<zzdlf, zza> implements zzdtg {
    private static volatile zzdtn<zzdlf> zzdz;
    private static final zzdlf zzhal;
    private int zzhaa;
    private zzdlj zzhaj;
    private zzdmv zzhak;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlf$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlf, zza> implements zzdtg {
        private zza() {
            super(zzdlf.zzhal);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzb(zzdlj zzdljVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdlf.m3495a((zzdlf) this.f14556a, zzdljVar);
            return this;
        }

        public final zza zzb(zzdmv zzdmvVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdlf.m3494a((zzdlf) this.f14556a, zzdmvVar);
            return this;
        }

        public final zza zzed(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdlf) this.f14556a).zzhaa = i;
            return this;
        }
    }

    static {
        zzdlf zzdlfVar = new zzdlf();
        zzhal = zzdlfVar;
        zzdrt.m3364a(zzdlf.class, zzdlfVar);
    }

    private zzdlf() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3495a(zzdlf zzdlfVar, zzdlj zzdljVar) {
        zzdljVar.getClass();
        zzdlfVar.zzhaj = zzdljVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m3494a(zzdlf zzdlfVar, zzdmv zzdmvVar) {
        zzdmvVar.getClass();
        zzdlfVar.zzhak = zzdmvVar;
    }

    public static zza zzatc() {
        return zzhal.m3360c();
    }

    public static zzdlf zzw(zzdqk zzdqkVar) {
        return (zzdlf) zzdrt.m3375a(zzhal, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aev.f7287a[i - 1]) {
            case 1:
                return new zzdlf();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhal, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzhaa", "zzhaj", "zzhak"});
            case 4:
                return zzhal;
            case 5:
                zzdtn<zzdlf> zzdtnVar = zzdz;
                zzdtn<zzdlf> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlf.class) {
                        try {
                            zzdtn<zzdlf> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhal);
                                zzdz = zzdtnVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return zzdtnVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final int getVersion() {
        return this.zzhaa;
    }

    public final zzdlj zzata() {
        zzdlj zzdljVar = this.zzhaj;
        zzdlj zzdljVar2 = zzdljVar;
        if (zzdljVar == null) {
            zzdljVar2 = zzdlj.zzatj();
        }
        return zzdljVar2;
    }

    public final zzdmv zzatb() {
        zzdmv zzdmvVar = this.zzhak;
        zzdmv zzdmvVar2 = zzdmvVar;
        if (zzdmvVar == null) {
            zzdmvVar2 = zzdmv.zzavb();
        }
        return zzdmvVar2;
    }
}
