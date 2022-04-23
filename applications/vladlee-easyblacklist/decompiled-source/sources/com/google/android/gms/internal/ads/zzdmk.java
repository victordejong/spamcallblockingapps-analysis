package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmk.class */
public final class zzdmk extends zzdrt<zzdmk, zza> implements zzdtg {
    private static volatile zzdtn<zzdmk> zzdz;
    private static final zzdmk zzhbr;
    private int zzhaa;
    private zzdqk zzhab = zzdqk.zzhhx;
    private zzdmn zzhbq;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmk$zza.class */
    public static final class zza extends zzdrt.zzb<zzdmk, zza> implements zzdtg {
        private zza() {
            super(zzdmk.zzhbr);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzam(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdmk.m3466a((zzdmk) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzb(zzdmn zzdmnVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdmk.m3467a((zzdmk) this.f14556a, zzdmnVar);
            return this;
        }

        public final zza zzej(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdmk) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdmk zzdmkVar = new zzdmk();
        zzhbr = zzdmkVar;
        zzdrt.m3364a(zzdmk.class, zzdmkVar);
    }

    private zzdmk() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3467a(zzdmk zzdmkVar, zzdmn zzdmnVar) {
        zzdmnVar.getClass();
        zzdmkVar.zzhbq = zzdmnVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m3466a(zzdmk zzdmkVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdmkVar.zzhab = zzdqkVar;
    }

    public static zzdmk zzal(zzdqk zzdqkVar) {
        return (zzdmk) zzdrt.m3375a(zzhbr, zzdqkVar);
    }

    public static zza zzaun() {
        return zzhbr.m3360c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afm.f7307a[i - 1]) {
            case 1:
                return new zzdmk();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhbr, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhaa", "zzhbq", "zzhab"});
            case 4:
                return zzhbr;
            case 5:
                zzdtn<zzdmk> zzdtnVar = zzdz;
                zzdtn<zzdmk> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdmk.class) {
                        try {
                            zzdtn<zzdmk> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhbr);
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

    public final zzdmn zzaum() {
        zzdmn zzdmnVar = this.zzhbq;
        zzdmn zzdmnVar2 = zzdmnVar;
        if (zzdmnVar == null) {
            zzdmnVar2 = zzdmn.zzaus();
        }
        return zzdmnVar2;
    }
}
