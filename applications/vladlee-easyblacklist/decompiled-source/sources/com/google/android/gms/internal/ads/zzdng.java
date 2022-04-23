package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdng.class */
public final class zzdng extends zzdrt<zzdng, zza> implements zzdtg {
    private static volatile zzdtn<zzdng> zzdz;
    private static final zzdng zzhdk;
    private String zzhcs = "";
    private zzdqk zzhct = zzdqk.zzhhx;
    private int zzhdj;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdng$zza.class */
    public static final class zza extends zzdrt.zzb<zzdng, zza> implements zzdtg {
        private zza() {
            super(zzdng.zzhdk);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdng zzdngVar = new zzdng();
        zzhdk = zzdngVar;
        zzdrt.m3364a(zzdng.class, zzdngVar);
    }

    private zzdng() {
    }

    public static zzdng zzavo() {
        return zzhdk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afy.f7317a[i - 1]) {
            case 1:
                return new zzdng();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhdk, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzhcs", "zzhct", "zzhdj"});
            case 4:
                return zzhdk;
            case 5:
                zzdtn<zzdng> zzdtnVar = zzdz;
                zzdtn<zzdng> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdng.class) {
                        try {
                            zzdtn<zzdng> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhdk);
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

    public final String zzavi() {
        return this.zzhcs;
    }

    public final zzdqk zzavj() {
        return this.zzhct;
    }
}
