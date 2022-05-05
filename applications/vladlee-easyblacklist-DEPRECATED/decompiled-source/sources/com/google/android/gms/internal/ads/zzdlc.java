package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlc.class */
public final class zzdlc extends zzdrt<zzdlc, zza> implements zzdtg {
    private static volatile zzdtn<zzdlc> zzdz;
    private static final zzdlc zzhai;
    private int zzhah;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlc$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlc, zza> implements zzdtg {
        private zza() {
            super(zzdlc.zzhai);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdlc zzdlcVar = new zzdlc();
        zzhai = zzdlcVar;
        zzdrt.m3364a(zzdlc.class, zzdlcVar);
    }

    private zzdlc() {
    }

    public static zzdlc zzasy() {
        return zzhai;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aeu.f7286a[i - 1]) {
            case 1:
                return new zzdlc();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhai, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzhah"});
            case 4:
                return zzhai;
            case 5:
                zzdtn<zzdlc> zzdtnVar = zzdz;
                zzdtn<zzdlc> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlc.class) {
                        try {
                            zzdtn<zzdlc> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhai);
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

    public final int zzasx() {
        return this.zzhah;
    }
}
