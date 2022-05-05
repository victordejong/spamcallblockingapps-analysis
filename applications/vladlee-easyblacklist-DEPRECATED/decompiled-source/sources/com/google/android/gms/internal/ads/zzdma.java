package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdma.class */
public final class zzdma extends zzdrt<zzdma, zza> implements zzdtg {
    private static volatile zzdtn<zzdma> zzdz;
    private static final zzdma zzhbb;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdma$zza.class */
    public static final class zza extends zzdrt.zzb<zzdma, zza> implements zzdtg {
        private zza() {
            super(zzdma.zzhbb);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdma zzdmaVar = new zzdma();
        zzhbb = zzdmaVar;
        zzdrt.m3364a(zzdma.class, zzdmaVar);
    }

    private zzdma() {
    }

    public static zzdma zzai(zzdqk zzdqkVar) {
        return (zzdma) zzdrt.m3375a(zzhbb, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afh.f7303a[i - 1]) {
            case 1:
                return new zzdma();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhbb, "����", (Object[]) null);
            case 4:
                return zzhbb;
            case 5:
                zzdtn<zzdma> zzdtnVar = zzdz;
                zzdtn<zzdma> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdma.class) {
                        try {
                            zzdtn<zzdma> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhbb);
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
}
