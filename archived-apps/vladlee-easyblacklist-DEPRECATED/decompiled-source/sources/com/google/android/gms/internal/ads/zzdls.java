package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdls.class */
public final class zzdls extends zzdrt<zzdls, zza> implements zzdtg {
    private static volatile zzdtn<zzdls> zzdz;
    private static final zzdls zzhax;
    private int zzhas;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdls$zza.class */
    public static final class zza extends zzdrt.zzb<zzdls, zza> implements zzdtg {
        private zza() {
            super(zzdls.zzhax);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdls zzdlsVar = new zzdls();
        zzhax = zzdlsVar;
        zzdrt.m3364a(zzdls.class, zzdlsVar);
    }

    private zzdls() {
    }

    public static zzdls zzatu() {
        return zzhax;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afc.f7295a[i - 1]) {
            case 1:
                return new zzdls();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhax, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzhas"});
            case 4:
                return zzhax;
            case 5:
                zzdtn<zzdls> zzdtnVar = zzdz;
                zzdtn<zzdls> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdls.class) {
                        try {
                            zzdtn<zzdls> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhax);
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

    public final int zzatn() {
        return this.zzhas;
    }
}
