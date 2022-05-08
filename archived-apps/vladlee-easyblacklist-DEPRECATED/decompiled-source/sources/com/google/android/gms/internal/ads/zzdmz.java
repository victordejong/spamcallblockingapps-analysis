package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmz.class */
public final class zzdmz extends zzdrt<zzdmz, zza> implements zzdtg {
    private static volatile zzdtn<zzdmz> zzdz;
    private static final zzdmz zzhcr;
    private int zzhah;
    private int zzhcq;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmz$zza.class */
    public static final class zza extends zzdrt.zzb<zzdmz, zza> implements zzdtg {
        private zza() {
            super(zzdmz.zzhcr);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdmz zzdmzVar = new zzdmz();
        zzhcr = zzdmzVar;
        zzdrt.m3364a(zzdmz.class, zzdmzVar);
    }

    private zzdmz() {
    }

    public static zzdmz zzavg() {
        return zzhcr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aft.f7312a[i - 1]) {
            case 1:
                return new zzdmz();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhcr, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\u000b", new Object[]{"zzhcq", "zzhah"});
            case 4:
                return zzhcr;
            case 5:
                zzdtn<zzdmz> zzdtnVar = zzdz;
                zzdtn<zzdmz> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdmz.class) {
                        try {
                            zzdtn<zzdmz> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhcr);
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

    public final int zzasx() {
        return this.zzhah;
    }

    public final zzdmt zzavf() {
        zzdmt zzem = zzdmt.zzem(this.zzhcq);
        zzdmt zzdmtVar = zzem;
        if (zzem == null) {
            zzdmtVar = zzdmt.UNRECOGNIZED;
        }
        return zzdmtVar;
    }
}
