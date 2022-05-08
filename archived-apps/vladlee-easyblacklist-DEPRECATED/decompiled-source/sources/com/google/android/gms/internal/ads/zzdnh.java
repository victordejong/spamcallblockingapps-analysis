package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnh.class */
public final class zzdnh extends zzdrt<zzdnh, zza> implements zzdtg {
    private static volatile zzdtn<zzdnh> zzdz;
    private static final zzdnh zzhdp;
    private int zzhdm;
    private boolean zzhdn;
    private String zzhdl = "";
    private String zzhcs = "";
    private String zzhdo = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnh$zza.class */
    public static final class zza extends zzdrt.zzb<zzdnh, zza> implements zzdtg {
        private zza() {
            super(zzdnh.zzhdp);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdnh zzdnhVar = new zzdnh();
        zzhdp = zzdnhVar;
        zzdrt.m3364a(zzdnh.class, zzdnhVar);
    }

    private zzdnh() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afz.f7318a[i - 1]) {
            case 1:
                return new zzdnh();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhdp, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzhdl", "zzhcs", "zzhdm", "zzhdn", "zzhdo"});
            case 4:
                return zzhdp;
            case 5:
                zzdtn<zzdnh> zzdtnVar = zzdz;
                zzdtn<zzdnh> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdnh.class) {
                        try {
                            zzdtn<zzdnh> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhdp);
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

    public final String zzavq() {
        return this.zzhdl;
    }

    public final int zzavr() {
        return this.zzhdm;
    }

    public final boolean zzavs() {
        return this.zzhdn;
    }

    public final String zzavt() {
        return this.zzhdo;
    }
}
