package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlj.class */
public final class zzdlj extends zzdrt<zzdlj, zza> implements zzdtg {
    private static volatile zzdtn<zzdlj> zzdz;
    private static final zzdlj zzhaq;
    private int zzhaa;
    private zzdqk zzhab = zzdqk.zzhhx;
    private zzdln zzhap;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlj$zza.class */
    public static final class zza extends zzdrt.zzb<zzdlj, zza> implements zzdtg {
        private zza() {
            super(zzdlj.zzhaq);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzaa(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdlj.m3489a((zzdlj) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzc(zzdln zzdlnVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdlj.m3490a((zzdlj) this.f14556a, zzdlnVar);
            return this;
        }

        public final zza zzee(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdlj) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdlj zzdljVar = new zzdlj();
        zzhaq = zzdljVar;
        zzdrt.m3364a(zzdlj.class, zzdljVar);
    }

    private zzdlj() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3490a(zzdlj zzdljVar, zzdln zzdlnVar) {
        zzdlnVar.getClass();
        zzdljVar.zzhap = zzdlnVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m3489a(zzdlj zzdljVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdljVar.zzhab = zzdqkVar;
    }

    public static zza zzati() {
        return zzhaq.m3360c();
    }

    public static zzdlj zzatj() {
        return zzhaq;
    }

    public static zzdlj zzy(zzdqk zzdqkVar) {
        return (zzdlj) zzdrt.m3375a(zzhaq, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aex.f7289a[i - 1]) {
            case 1:
                return new zzdlj();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhaq, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhaa", "zzhap", "zzhab"});
            case 4:
                return zzhaq;
            case 5:
                zzdtn<zzdlj> zzdtnVar = zzdz;
                zzdtn<zzdlj> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdlj.class) {
                        try {
                            zzdtn<zzdlj> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhaq);
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

    public final zzdln zzath() {
        zzdln zzdlnVar = this.zzhap;
        zzdln zzdlnVar2 = zzdlnVar;
        if (zzdlnVar == null) {
            zzdlnVar2 = zzdln.zzato();
        }
        return zzdlnVar2;
    }
}
