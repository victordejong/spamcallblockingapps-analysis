package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlg.class */
public final class zzdlg extends zzdrt<zzdlg, zza> implements zzdtg {
    private static volatile zzdtn<zzdlg> zzdz;
    private static final zzdlg zzhao;
    private zzdlk zzham;
    private zzdmw zzhan;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlg$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlg, zza> implements zzdtg {
        private zza() {
            super(zzdlg.zzhao);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdlg zzdlgVar = new zzdlg();
        zzhao = zzdlgVar;
        zzdrt.m3364a(zzdlg.class, zzdlgVar);
    }

    private zzdlg() {
    }

    public static zzdlg zzx(zzdqk zzdqkVar) {
        return (zzdlg) zzdrt.m3375a(zzhao, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aew.f7288a[i - 1]) {
            case 1:
                return new zzdlg();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhao, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"zzham", "zzhan"});
            case 4:
                return zzhao;
            case 5:
                zzdtn<zzdlg> zzdtnVar = zzdz;
                zzdtn<zzdlg> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlg.class) {
                        try {
                            zzdtn<zzdlg> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhao);
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

    public final zzdlk zzate() {
        zzdlk zzdlkVar = this.zzham;
        zzdlk zzdlkVar2 = zzdlkVar;
        if (zzdlkVar == null) {
            zzdlkVar2 = zzdlk.zzatl();
        }
        return zzdlkVar2;
    }

    public final zzdmw zzatf() {
        zzdmw zzdmwVar = this.zzhan;
        zzdmw zzdmwVar2 = zzdmwVar;
        if (zzdmwVar == null) {
            zzdmwVar2 = zzdmw.zzavd();
        }
        return zzdmwVar2;
    }
}
