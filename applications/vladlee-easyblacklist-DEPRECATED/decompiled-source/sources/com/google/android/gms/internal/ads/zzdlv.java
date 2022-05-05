package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlv.class */
public final class zzdlv extends zzdrt<zzdlv, zza> implements zzdtg {
    private static volatile zzdtn<zzdlv> zzdz;
    private static final zzdlv zzhay;
    private int zzhaa;
    private zzdqk zzhab = zzdqk.zzhhx;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlv$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlv, zza> implements zzdtg {
        private zza() {
            super(zzdlv.zzhay);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzag(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdlv.m3478a((zzdlv) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzeg(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdlv) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdlv zzdlvVar = new zzdlv();
        zzhay = zzdlvVar;
        zzdrt.m3364a(zzdlv.class, zzdlvVar);
    }

    private zzdlv() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3478a(zzdlv zzdlvVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdlvVar.zzhab = zzdqkVar;
    }

    public static zzdlv zzae(zzdqk zzdqkVar) {
        return (zzdlv) zzdrt.m3375a(zzhay, zzdqkVar);
    }

    public static zza zzatw() {
        return zzhay.m3360c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afd.f7296a[i - 1]) {
            case 1:
                return new zzdlv();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhay, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzhaa", "zzhab"});
            case 4:
                return zzhay;
            case 5:
                zzdtn<zzdlv> zzdtnVar = zzdz;
                zzdtn<zzdlv> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlv.class) {
                        try {
                            zzdtn<zzdlv> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhay);
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
