package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlz.class */
public final class zzdlz extends zzdrt<zzdlz, zza> implements zzdtg {
    private static volatile zzdtn<zzdlz> zzdz;
    private static final zzdlz zzhba;
    private int zzhaa;
    private zzdqk zzhab = zzdqk.zzhhx;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlz$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlz, zza> implements zzdtg {
        private zza() {
            super(zzdlz.zzhba);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzaj(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdlz.m3474a((zzdlz) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzeh(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdlz) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdlz zzdlzVar = new zzdlz();
        zzhba = zzdlzVar;
        zzdrt.m3364a(zzdlz.class, zzdlzVar);
    }

    private zzdlz() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3474a(zzdlz zzdlzVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdlzVar.zzhab = zzdqkVar;
    }

    public static zzdlz zzah(zzdqk zzdqkVar) {
        return (zzdlz) zzdrt.m3375a(zzhba, zzdqkVar);
    }

    public static zza zzatz() {
        return zzhba.m3360c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aff.f7298a[i - 1]) {
            case 1:
                return new zzdlz();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhba, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\n", new Object[]{"zzhaa", "zzhab"});
            case 4:
                return zzhba;
            case 5:
                zzdtn<zzdlz> zzdtnVar = zzdz;
                zzdtn<zzdlz> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlz.class) {
                        try {
                            zzdtn<zzdlz> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhba);
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
}
