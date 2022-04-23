package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoc.class */
public final class zzdoc extends zzdrt<zzdoc, zza> implements zzdtg {
    private static volatile zzdtn<zzdoc> zzdz;
    private static final zzdoc zzheu;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoc$zza.class */
    public static final class zza extends zzdrt.zzb<zzdoc, zza> implements zzdtg {
        private zza() {
            super(zzdoc.zzheu);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdoc zzdocVar = new zzdoc();
        zzheu = zzdocVar;
        zzdrt.m3364a(zzdoc.class, zzdocVar);
    }

    private zzdoc() {
    }

    public static zzdoc zzbd(zzdqk zzdqkVar) {
        return (zzdoc) zzdrt.m3375a(zzheu, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (agk.f7331a[i - 1]) {
            case 1:
                return new zzdoc();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzheu, "����", (Object[]) null);
            case 4:
                return zzheu;
            case 5:
                zzdtn<zzdoc> zzdtnVar = zzdz;
                zzdtn<zzdoc> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdoc.class) {
                        try {
                            zzdtn<zzdoc> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzheu);
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
