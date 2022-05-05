package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdky.class */
public final class zzdky extends zzdrt<zzdky, zza> implements zzdtg {
    private static volatile zzdtn<zzdky> zzdz;
    private static final zzdky zzhad;
    private int zzhaa;
    private zzdqk zzhab = zzdqk.zzhhx;
    private zzdlc zzhac;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdky$zza.class */
    public static final class zza extends zzdrt.zzb<zzdky, zza> implements zzdtg {
        private zza() {
            super(zzdky.zzhad);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzd(zzdlc zzdlcVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdky.m3501a((zzdky) this.f14556a, zzdlcVar);
            return this;
        }

        public final zza zzec(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdky) this.f14556a).zzhaa = 0;
            return this;
        }

        public final zza zzu(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdky.m3500a((zzdky) this.f14556a, zzdqkVar);
            return this;
        }
    }

    static {
        zzdky zzdkyVar = new zzdky();
        zzhad = zzdkyVar;
        zzdrt.m3364a(zzdky.class, zzdkyVar);
    }

    private zzdky() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3501a(zzdky zzdkyVar, zzdlc zzdlcVar) {
        zzdlcVar.getClass();
        zzdkyVar.zzhac = zzdlcVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m3500a(zzdky zzdkyVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdkyVar.zzhab = zzdqkVar;
    }

    public static zza zzasu() {
        return zzhad.m3360c();
    }

    public static zzdky zzt(zzdqk zzdqkVar) {
        return (zzdky) zzdrt.m3375a(zzhad, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aer.f7284a[i - 1]) {
            case 1:
                return new zzdky();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhad, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzhaa", "zzhab", "zzhac"});
            case 4:
                return zzhad;
            case 5:
                zzdtn<zzdky> zzdtnVar = zzdz;
                zzdtn<zzdky> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdky.class) {
                        try {
                            zzdtn<zzdky> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhad);
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

    public final zzdlc zzast() {
        zzdlc zzdlcVar = this.zzhac;
        zzdlc zzdlcVar2 = zzdlcVar;
        if (zzdlcVar == null) {
            zzdlcVar2 = zzdlc.zzasy();
        }
        return zzdlcVar2;
    }
}
