package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmj.class */
public final class zzdmj extends zzdrt<zzdmj, zza> implements zzdtg {
    private static volatile zzdtn<zzdmj> zzdz;
    private static final zzdmj zzhbp;
    private zzdmo zzhbm;
    private zzdmf zzhbn;
    private int zzhbo;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmj$zza.class */
    public static final class zza extends zzdrt.zzb<zzdmj, zza> implements zzdtg {
        private zza() {
            super(zzdmj.zzhbp);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdmj zzdmjVar = new zzdmj();
        zzhbp = zzdmjVar;
        zzdrt.m3364a(zzdmj.class, zzdmjVar);
    }

    private zzdmj() {
    }

    public static zzdmj zzauk() {
        return zzhbp;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afl.f7306a[i - 1]) {
            case 1:
                return new zzdmj();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhbp, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\f", new Object[]{"zzhbm", "zzhbn", "zzhbo"});
            case 4:
                return zzhbp;
            case 5:
                zzdtn<zzdmj> zzdtnVar = zzdz;
                zzdtn<zzdmj> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdmj.class) {
                        try {
                            zzdtn<zzdmj> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhbp);
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

    public final zzdmo zzauh() {
        zzdmo zzdmoVar = this.zzhbm;
        zzdmo zzdmoVar2 = zzdmoVar;
        if (zzdmoVar == null) {
            zzdmoVar2 = zzdmo.zzaux();
        }
        return zzdmoVar2;
    }

    public final zzdmf zzaui() {
        zzdmf zzdmfVar = this.zzhbn;
        zzdmf zzdmfVar2 = zzdmfVar;
        if (zzdmfVar == null) {
            zzdmfVar2 = zzdmf.zzaud();
        }
        return zzdmfVar2;
    }

    public final zzdmd zzauj() {
        zzdmd zzei = zzdmd.zzei(this.zzhbo);
        zzdmd zzdmdVar = zzei;
        if (zzei == null) {
            zzdmdVar = zzdmd.UNRECOGNIZED;
        }
        return zzdmdVar;
    }
}
