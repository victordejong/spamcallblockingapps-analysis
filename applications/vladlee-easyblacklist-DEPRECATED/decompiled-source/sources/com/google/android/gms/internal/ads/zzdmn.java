package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmn.class */
public final class zzdmn extends zzdrt<zzdmn, zza> implements zzdtg {
    private static volatile zzdtn<zzdmn> zzdz;
    private static final zzdmn zzhbu;
    private int zzhaa;
    private zzdmj zzhbk;
    private zzdqk zzhbs = zzdqk.zzhhx;
    private zzdqk zzhbt = zzdqk.zzhhx;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmn$zza.class */
    public static final class zza extends zzdrt.zzb<zzdmn, zza> implements zzdtg {
        private zza() {
            super(zzdmn.zzhbu);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzaq(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdmn.m3462a((zzdmn) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzar(zzdqk zzdqkVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdmn.m3461b((zzdmn) this.f14556a, zzdqkVar);
            return this;
        }

        public final zza zzc(zzdmj zzdmjVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdmn.m3463a((zzdmn) this.f14556a, zzdmjVar);
            return this;
        }

        public final zza zzek(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdmn) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdmn zzdmnVar = new zzdmn();
        zzhbu = zzdmnVar;
        zzdrt.m3364a(zzdmn.class, zzdmnVar);
    }

    private zzdmn() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3463a(zzdmn zzdmnVar, zzdmj zzdmjVar) {
        zzdmjVar.getClass();
        zzdmnVar.zzhbk = zzdmjVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m3462a(zzdmn zzdmnVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdmnVar.zzhbs = zzdqkVar;
    }

    /* renamed from: b */
    static /* synthetic */ void m3461b(zzdmn zzdmnVar, zzdqk zzdqkVar) {
        zzdqkVar.getClass();
        zzdmnVar.zzhbt = zzdqkVar;
    }

    public static zzdmn zzap(zzdqk zzdqkVar) {
        return (zzdmn) zzdrt.m3375a(zzhbu, zzdqkVar);
    }

    public static zza zzaur() {
        return zzhbu.m3360c();
    }

    public static zzdmn zzaus() {
        return zzhbu;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (afn.f7308a[i - 1]) {
            case 1:
                return new zzdmn();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhbu, "��\u0004����\u0001\u0004\u0004������\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzhaa", "zzhbk", "zzhbs", "zzhbt"});
            case 4:
                return zzhbu;
            case 5:
                zzdtn<zzdmn> zzdtnVar = zzdz;
                zzdtn<zzdmn> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdmn.class) {
                        try {
                            zzdtn<zzdmn> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhbu);
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

    public final zzdmj zzauf() {
        zzdmj zzdmjVar = this.zzhbk;
        zzdmj zzdmjVar2 = zzdmjVar;
        if (zzdmjVar == null) {
            zzdmjVar2 = zzdmj.zzauk();
        }
        return zzdmjVar2;
    }

    public final zzdqk zzaup() {
        return this.zzhbs;
    }

    public final zzdqk zzauq() {
        return this.zzhbt;
    }
}
