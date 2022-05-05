package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlb.class */
public final class zzdlb extends zzdrt<zzdlb, zza> implements zzdtg {
    private static volatile zzdtn<zzdlb> zzdz;
    private static final zzdlb zzhag;
    private zzdlc zzhac;
    private int zzhaf;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlb$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlb, zza> implements zzdtg {
        private zza() {
            super(zzdlb.zzhag);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdlb zzdlbVar = new zzdlb();
        zzhag = zzdlbVar;
        zzdrt.m3364a(zzdlb.class, zzdlbVar);
    }

    private zzdlb() {
    }

    public static zzdlb zzv(zzdqk zzdqkVar) {
        return (zzdlb) zzdrt.m3375a(zzhag, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aet.f7285a[i - 1]) {
            case 1:
                return new zzdlb();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhag, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzhaf", "zzhac"});
            case 4:
                return zzhag;
            case 5:
                zzdtn<zzdlb> zzdtnVar = zzdz;
                zzdtn<zzdlb> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlb.class) {
                        try {
                            zzdtn<zzdlb> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhag);
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

    public final zzdlc zzast() {
        zzdlc zzdlcVar = this.zzhac;
        zzdlc zzdlcVar2 = zzdlcVar;
        if (zzdlcVar == null) {
            zzdlcVar2 = zzdlc.zzasy();
        }
        return zzdlcVar2;
    }
}
