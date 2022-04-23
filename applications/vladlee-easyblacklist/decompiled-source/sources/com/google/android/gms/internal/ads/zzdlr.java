package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlr.class */
public final class zzdlr extends zzdrt<zzdlr, zza> implements zzdtg {
    private static volatile zzdtn<zzdlr> zzdz;
    private static final zzdlr zzhaw;
    private int zzhaf;
    private zzdls zzhau;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlr$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlr, zza> implements zzdtg {
        private zza() {
            super(zzdlr.zzhaw);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdlr zzdlrVar = new zzdlr();
        zzhaw = zzdlrVar;
        zzdrt.m3364a(zzdlr.class, zzdlrVar);
    }

    private zzdlr() {
    }

    public static zzdlr zzad(zzdqk zzdqkVar) {
        return (zzdlr) zzdrt.m3375a(zzhaw, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afb.f7294a[i - 1]) {
            case 1:
                return new zzdlr();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhaw, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzhau", "zzhaf"});
            case 4:
                return zzhaw;
            case 5:
                zzdtn<zzdlr> zzdtnVar = zzdz;
                zzdtn<zzdlr> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlr.class) {
                        try {
                            zzdtn<zzdlr> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhaw);
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

    public final zzdls zzatq() {
        zzdls zzdlsVar = this.zzhau;
        zzdls zzdlsVar2 = zzdlsVar;
        if (zzdlsVar == null) {
            zzdlsVar2 = zzdls.zzatu();
        }
        return zzdlsVar2;
    }
}
