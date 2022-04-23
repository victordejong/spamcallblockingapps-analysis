package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlo.class */
public final class zzdlo extends zzdrt<zzdlo, zza> implements zzdtg {
    private static volatile zzdtn<zzdlo> zzdz;
    private static final zzdlo zzhav;
    private int zzhaa;
    private zzdqk zzhab = zzdqk.zzhhx;
    private zzdls zzhau;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlo$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlo, zza> implements zzdtg {
        private zza() {
            super(zzdlo.zzhav);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzac(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdlo.m3483a((zzdlo) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzb(zzdls zzdlsVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdlo.m3484a((zzdlo) this.f14556a, zzdlsVar);
            return this;
        }

        public final zza zzef(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdlo) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdlo zzdloVar = new zzdlo();
        zzhav = zzdloVar;
        zzdrt.m3364a(zzdlo.class, zzdloVar);
    }

    private zzdlo() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3484a(zzdlo zzdloVar, zzdls zzdlsVar) {
        zzdlsVar.getClass();
        zzdloVar.zzhau = zzdlsVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m3483a(zzdlo zzdloVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdloVar.zzhab = zzdqkVar;
    }

    public static zzdlo zzab(zzdqk zzdqkVar) {
        return (zzdlo) zzdrt.m3375a(zzhav, zzdqkVar);
    }

    public static zza zzatr() {
        return zzhav.m3360c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afa.f7293a[i - 1]) {
            case 1:
                return new zzdlo();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhav, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhaa", "zzhau", "zzhab"});
            case 4:
                return zzhav;
            case 5:
                zzdtn<zzdlo> zzdtnVar = zzdz;
                zzdtn<zzdlo> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlo.class) {
                        try {
                            zzdtn<zzdlo> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhav);
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

    public final zzdls zzatq() {
        zzdls zzdlsVar = this.zzhau;
        zzdls zzdlsVar2 = zzdlsVar;
        if (zzdlsVar == null) {
            zzdlsVar2 = zzdls.zzatu();
        }
        return zzdlsVar2;
    }
}
