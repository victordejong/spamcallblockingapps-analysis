package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlk.class */
public final class zzdlk extends zzdrt<zzdlk, zza> implements zzdtg {
    private static volatile zzdtn<zzdlk> zzdz;
    private static final zzdlk zzhar;
    private int zzhaf;
    private zzdln zzhap;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlk$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlk, zza> implements zzdtg {
        private zza() {
            super(zzdlk.zzhar);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdlk zzdlkVar = new zzdlk();
        zzhar = zzdlkVar;
        zzdrt.m3364a(zzdlk.class, zzdlkVar);
    }

    private zzdlk() {
    }

    public static zzdlk zzatl() {
        return zzhar;
    }

    public static zzdlk zzz(zzdqk zzdqkVar) {
        return (zzdlk) zzdrt.m3375a(zzhar, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aey.f7290a[i - 1]) {
            case 1:
                return new zzdlk();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhar, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzhap", "zzhaf"});
            case 4:
                return zzhar;
            case 5:
                zzdtn<zzdlk> zzdtnVar = zzdz;
                zzdtn<zzdlk> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlk.class) {
                        try {
                            zzdtn<zzdlk> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhar);
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

    public final zzdln zzath() {
        zzdln zzdlnVar = this.zzhap;
        zzdln zzdlnVar2 = zzdlnVar;
        if (zzdlnVar == null) {
            zzdlnVar2 = zzdln.zzato();
        }
        return zzdlnVar2;
    }
}
