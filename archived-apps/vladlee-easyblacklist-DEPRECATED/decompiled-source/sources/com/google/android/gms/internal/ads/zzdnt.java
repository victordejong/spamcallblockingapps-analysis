package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnt.class */
public final class zzdnt extends zzdrt<zzdnt, zza> implements zzdtg {
    private static volatile zzdtn<zzdnt> zzdz;
    private static final zzdnt zzhei;
    private String zzheg = "";
    private zzdng zzheh;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnt$zza.class */
    public static final class zza extends zzdrt.zzb<zzdnt, zza> implements zzdtg {
        private zza() {
            super(zzdnt.zzhei);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdnt zzdntVar = new zzdnt();
        zzhei = zzdntVar;
        zzdrt.m3364a(zzdnt.class, zzdntVar);
    }

    private zzdnt() {
    }

    public static zzdnt zzaws() {
        return zzhei;
    }

    public static zzdnt zzba(zzdqk zzdqkVar) {
        return (zzdnt) zzdrt.m3375a(zzhei, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (agf.f7325a[i - 1]) {
            case 1:
                return new zzdnt();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhei, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"zzheg", "zzheh"});
            case 4:
                return zzhei;
            case 5:
                zzdtn<zzdnt> zzdtnVar = zzdz;
                zzdtn<zzdnt> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdnt.class) {
                        try {
                            zzdtn<zzdnt> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhei);
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

    public final String zzawq() {
        return this.zzheg;
    }

    public final zzdng zzawr() {
        zzdng zzdngVar = this.zzheh;
        zzdng zzdngVar2 = zzdngVar;
        if (zzdngVar == null) {
            zzdngVar2 = zzdng.zzavo();
        }
        return zzdngVar2;
    }
}
