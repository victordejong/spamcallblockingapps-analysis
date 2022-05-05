package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmo.class */
public final class zzdmo extends zzdrt<zzdmo, zza> implements zzdtg {
    private static volatile zzdtn<zzdmo> zzdz;
    private static final zzdmo zzhby;
    private int zzhbv;
    private int zzhbw;
    private zzdqk zzhbx = zzdqk.zzhhx;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmo$zza.class */
    public static final class zza extends zzdrt.zzb<zzdmo, zza> implements zzdtg {
        private zza() {
            super(zzdmo.zzhby);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdmo zzdmoVar = new zzdmo();
        zzhby = zzdmoVar;
        zzdrt.m3364a(zzdmo.class, zzdmoVar);
    }

    private zzdmo() {
    }

    public static zzdmo zzaux() {
        return zzhby;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afo.f7309a[i - 1]) {
            case 1:
                return new zzdmo();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhby, "��\u0003����\u0001\u000b\u0003������\u0001\f\u0002\f\u000b\n", new Object[]{"zzhbv", "zzhbw", "zzhbx"});
            case 4:
                return zzhby;
            case 5:
                zzdtn<zzdmo> zzdtnVar = zzdz;
                zzdtn<zzdmo> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdmo.class) {
                        try {
                            zzdtn<zzdmo> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhby);
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

    public final zzdmr zzauu() {
        zzdmr zzel = zzdmr.zzel(this.zzhbv);
        zzdmr zzdmrVar = zzel;
        if (zzel == null) {
            zzdmrVar = zzdmr.UNRECOGNIZED;
        }
        return zzdmrVar;
    }

    public final zzdmt zzauv() {
        zzdmt zzem = zzdmt.zzem(this.zzhbw);
        zzdmt zzdmtVar = zzem;
        if (zzem == null) {
            zzdmtVar = zzdmt.UNRECOGNIZED;
        }
        return zzdmtVar;
    }

    public final zzdqk zzauw() {
        return this.zzhbx;
    }
}
