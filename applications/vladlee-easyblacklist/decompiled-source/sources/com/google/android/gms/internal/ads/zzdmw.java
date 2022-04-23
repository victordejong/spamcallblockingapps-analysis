package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmw.class */
public final class zzdmw extends zzdrt<zzdmw, zza> implements zzdtg {
    private static volatile zzdtn<zzdmw> zzdz;
    private static final zzdmw zzhcp;
    private int zzhaf;
    private zzdmz zzhcn;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmw$zza.class */
    public static final class zza extends zzdrt.zzb<zzdmw, zza> implements zzdtg {
        private zza() {
            super(zzdmw.zzhcp);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdmw zzdmwVar = new zzdmw();
        zzhcp = zzdmwVar;
        zzdrt.m3364a(zzdmw.class, zzdmwVar);
    }

    private zzdmw() {
    }

    public static zzdmw zzat(zzdqk zzdqkVar) {
        return (zzdmw) zzdrt.m3375a(zzhcp, zzdqkVar);
    }

    public static zzdmw zzavd() {
        return zzhcp;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afs.f7311a[i - 1]) {
            case 1:
                return new zzdmw();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhcp, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzhcn", "zzhaf"});
            case 4:
                return zzhcp;
            case 5:
                zzdtn<zzdmw> zzdtnVar = zzdz;
                zzdtn<zzdmw> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdmw.class) {
                        try {
                            zzdtn<zzdmw> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhcp);
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

    public final int getKeySize() {
        return this.zzhaf;
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
