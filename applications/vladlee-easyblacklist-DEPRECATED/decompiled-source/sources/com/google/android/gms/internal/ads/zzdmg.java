package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmg.class */
public final class zzdmg extends zzdrt<zzdmg, zza> implements zzdtg {
    private static volatile zzdtn<zzdmg> zzdz;
    private static final zzdmg zzhbl;
    private zzdmj zzhbk;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmg$zza.class */
    public static final class zza extends zzdrt.zzb<zzdmg, zza> implements zzdtg {
        private zza() {
            super(zzdmg.zzhbl);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdmg zzdmgVar = new zzdmg();
        zzhbl = zzdmgVar;
        zzdrt.m3364a(zzdmg.class, zzdmgVar);
    }

    private zzdmg() {
    }

    public static zzdmg zzak(zzdqk zzdqkVar) {
        return (zzdmg) zzdrt.m3375a(zzhbl, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afk.f7305a[i - 1]) {
            case 1:
                return new zzdmg();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhbl, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"zzhbk"});
            case 4:
                return zzhbl;
            case 5:
                zzdtn<zzdmg> zzdtnVar = zzdz;
                zzdtn<zzdmg> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdmg.class) {
                        try {
                            zzdtn<zzdmg> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhbl);
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

    public final zzdmj zzauf() {
        zzdmj zzdmjVar = this.zzhbk;
        zzdmj zzdmjVar2 = zzdmjVar;
        if (zzdmjVar == null) {
            zzdmjVar2 = zzdmj.zzauk();
        }
        return zzdmjVar2;
    }
}
