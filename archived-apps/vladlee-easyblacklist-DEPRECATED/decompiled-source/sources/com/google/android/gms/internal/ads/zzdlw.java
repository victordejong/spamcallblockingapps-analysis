package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlw.class */
public final class zzdlw extends zzdrt<zzdlw, zza> implements zzdtg {
    private static volatile zzdtn<zzdlw> zzdz;
    private static final zzdlw zzhaz;
    private int zzhaf;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlw$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlw, zza> implements zzdtg {
        private zza() {
            super(zzdlw.zzhaz);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdlw zzdlwVar = new zzdlw();
        zzhaz = zzdlwVar;
        zzdrt.m3364a(zzdlw.class, zzdlwVar);
    }

    private zzdlw() {
    }

    public static zzdlw zzaf(zzdqk zzdqkVar) {
        return (zzdlw) zzdrt.m3375a(zzhaz, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afe.f7297a[i - 1]) {
            case 1:
                return new zzdlw();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhaz, "��\u0001����\u0002\u0002\u0001������\u0002\u000b", new Object[]{"zzhaf"});
            case 4:
                return zzhaz;
            case 5:
                zzdtn<zzdlw> zzdtnVar = zzdz;
                zzdtn<zzdlw> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlw.class) {
                        try {
                            zzdtn<zzdlw> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhaz);
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
}
