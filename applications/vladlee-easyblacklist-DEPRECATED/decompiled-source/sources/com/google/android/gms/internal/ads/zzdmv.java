package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmv.class */
public final class zzdmv extends zzdrt<zzdmv, zza> implements zzdtg {
    private static volatile zzdtn<zzdmv> zzdz;
    private static final zzdmv zzhco;
    private int zzhaa;
    private zzdqk zzhab = zzdqk.zzhhx;
    private zzdmz zzhcn;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmv$zza.class */
    public static final class zza extends zzdrt.zzb<zzdmv, zza> implements zzdtg {
        private zza() {
            super(zzdmv.zzhco);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzau(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdmv.m3456a((zzdmv) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzd(zzdmz zzdmzVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdmv.m3457a((zzdmv) this.f14556a, zzdmzVar);
            return this;
        }

        public final zza zzen(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdmv) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdmv zzdmvVar = new zzdmv();
        zzhco = zzdmvVar;
        zzdrt.m3364a(zzdmv.class, zzdmvVar);
    }

    private zzdmv() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3457a(zzdmv zzdmvVar, zzdmz zzdmzVar) {
        zzdmzVar.getClass();
        zzdmvVar.zzhcn = zzdmzVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m3456a(zzdmv zzdmvVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdmvVar.zzhab = zzdqkVar;
    }

    public static zzdmv zzas(zzdqk zzdqkVar) {
        return (zzdmv) zzdrt.m3375a(zzhco, zzdqkVar);
    }

    public static zza zzava() {
        return zzhco.m3360c();
    }

    public static zzdmv zzavb() {
        return zzhco;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afr.f7310a[i - 1]) {
            case 1:
                return new zzdmv();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhco, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhaa", "zzhcn", "zzhab"});
            case 4:
                return zzhco;
            case 5:
                zzdtn<zzdmv> zzdtnVar = zzdz;
                zzdtn<zzdmv> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdmv.class) {
                        try {
                            zzdtn<zzdmv> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhco);
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

    public final zzdqk zzass() {
        return this.zzhab;
    }

    public final zzdmz zzauz() {
        zzdmz zzdmzVar = this.zzhcn;
        zzdmz zzdmzVar2 = zzdmzVar;
        if (zzdmzVar == null) {
            zzdmzVar2 = zzdmz.zzavg();
        }
        return zzdmzVar2;
    }
}
