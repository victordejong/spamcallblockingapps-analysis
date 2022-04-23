package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnz.class */
public final class zzdnz extends zzdrt<zzdnz, zza> implements zzdtg {
    private static volatile zzdtn<zzdnz> zzdz;
    private static final zzdnz zzhet;
    private int zzhaa;
    private zzdqk zzhab = zzdqk.zzhhx;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnz$zza.class */
    public static final class zza extends zzdrt.zzb<zzdnz, zza> implements zzdtg {
        private zza() {
            super(zzdnz.zzhet);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzbc(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdnz.m3426a((zzdnz) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzex(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdnz) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdnz zzdnzVar = new zzdnz();
        zzhet = zzdnzVar;
        zzdrt.m3364a(zzdnz.class, zzdnzVar);
    }

    private zzdnz() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3426a(zzdnz zzdnzVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdnzVar.zzhab = zzdqkVar;
    }

    public static zza zzawx() {
        return zzhet.m3360c();
    }

    public static zzdnz zzbb(zzdqk zzdqkVar) {
        return (zzdnz) zzdrt.m3375a(zzhet, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (agj.f7330a[i - 1]) {
            case 1:
                return new zzdnz();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhet, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzhaa", "zzhab"});
            case 4:
                return zzhet;
            case 5:
                zzdtn<zzdnz> zzdtnVar = zzdz;
                zzdtn<zzdnz> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdnz.class) {
                        try {
                            zzdtn<zzdnz> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhet);
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

    public final int getVersion() {
        return this.zzhaa;
    }

    public final zzdqk zzass() {
        return this.zzhab;
    }
}
