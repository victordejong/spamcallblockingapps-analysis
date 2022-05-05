package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmf.class */
public final class zzdmf extends zzdrt<zzdmf, zza> implements zzdtg {
    private static volatile zzdtn<zzdmf> zzdz;
    private static final zzdmf zzhbj;
    private zzdng zzhbi;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmf$zza.class */
    public static final class zza extends zzdrt.zzb<zzdmf, zza> implements zzdtg {
        private zza() {
            super(zzdmf.zzhbj);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdmf zzdmfVar = new zzdmf();
        zzhbj = zzdmfVar;
        zzdrt.m3364a(zzdmf.class, zzdmfVar);
    }

    private zzdmf() {
    }

    public static zzdmf zzaud() {
        return zzhbj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afj.f7304a[i - 1]) {
            case 1:
                return new zzdmf();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhbj, "��\u0001����\u0002\u0002\u0001������\u0002\t", new Object[]{"zzhbi"});
            case 4:
                return zzhbj;
            case 5:
                zzdtn<zzdmf> zzdtnVar = zzdz;
                zzdtn<zzdmf> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdmf.class) {
                        try {
                            zzdtn<zzdmf> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhbj);
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

    public final zzdng zzauc() {
        zzdng zzdngVar = this.zzhbi;
        zzdng zzdngVar2 = zzdngVar;
        if (zzdngVar == null) {
            zzdngVar2 = zzdng.zzavo();
        }
        return zzdngVar2;
    }
}
