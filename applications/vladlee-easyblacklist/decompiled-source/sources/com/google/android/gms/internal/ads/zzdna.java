package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdna.class */
public final class zzdna extends zzdrt<zzdna, zza> implements zzdtg {
    private static volatile zzdtn<zzdna> zzdz;
    private static final zzdna zzhcv;
    private String zzhcs = "";
    private zzdqk zzhct = zzdqk.zzhhx;
    private int zzhcu;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdna$zza.class */
    public static final class zza extends zzdrt.zzb<zzdna, zza> implements zzdtg {
        private zza() {
            super(zzdna.zzhcv);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzaw(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdna.m3451a((zzdna) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzb(zzb zzbVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdna.m3452a((zzdna) this.f14556a, zzbVar);
            return this;
        }

        public final zza zzhb(String str) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdna.m3450a((zzdna) this.f14556a, str);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdna$zzb.class */
    public enum zzb implements zzdry {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);
        

        /* renamed from: a */
        private static final zzdrx<zzb> f14388a = new afw();

        /* renamed from: b */
        private final int f14390b;

        zzb(int i) {
            this.f14390b = i;
        }

        public static zzb zzeo(int i) {
            if (i == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (i == 1) {
                return SYMMETRIC;
            }
            if (i == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (i == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (i != 4) {
                return null;
            }
            return REMOTE;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(getClass().getName());
            sb.append('@');
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=");
                sb.append(zzae());
            }
            sb.append(" name=");
            sb.append(name());
            sb.append('>');
            return sb.toString();
        }

        @Override // com.google.android.gms.internal.ads.zzdry
        public final int zzae() {
            if (this != UNRECOGNIZED) {
                return this.f14390b;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        zzdna zzdnaVar = new zzdna();
        zzhcv = zzdnaVar;
        zzdrt.m3364a(zzdna.class, zzdnaVar);
    }

    private zzdna() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3452a(zzdna zzdnaVar, zzb zzbVar) {
        zzdnaVar.zzhcu = zzbVar.zzae();
    }

    /* renamed from: a */
    static /* synthetic */ void m3451a(zzdna zzdnaVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdnaVar.zzhct = zzdqkVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m3450a(zzdna zzdnaVar, String str) {
        str.getClass();
        zzdnaVar.zzhcs = str;
    }

    public static zza zzavl() {
        return zzhcv.m3360c();
    }

    public static zzdna zzavm() {
        return zzhcv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afv.f7316a[i - 1]) {
            case 1:
                return new zzdna();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhcv, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzhcs", "zzhct", "zzhcu"});
            case 4:
                return zzhcv;
            case 5:
                zzdtn<zzdna> zzdtnVar = zzdz;
                zzdtn<zzdna> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdna.class) {
                        try {
                            zzdtn<zzdna> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhcv);
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

    public final zzdqk zzavj() {
        return this.zzhct;
    }

    public final zzb zzavk() {
        zzb zzeo = zzb.zzeo(this.zzhcu);
        zzb zzbVar = zzeo;
        if (zzeo == null) {
            zzbVar = zzb.UNRECOGNIZED;
        }
        return zzbVar;
    }
}
