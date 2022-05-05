package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfz.class */
public final class zzfz extends zzdrt<zzfz, zza> implements zzdtg {
    private static final zzfz zzaat;
    private static volatile zzdtn<zzfz> zzdz;
    private String zzaao = "";
    private String zzaap = "";
    private long zzaaq;
    private long zzaar;
    private long zzaas;
    private int zzdl;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfz$zza.class */
    public static final class zza extends zzdrt.zzb<zzfz, zza> implements zzdtg {
        private zza() {
            super(zzfz.zzaat);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzay(String str) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzfz.m3263a((zzfz) this.f14556a, str);
            return this;
        }

        public final zza zzaz(String str) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzfz.m3261b((zzfz) this.f14556a, str);
            return this;
        }

        public final zza zzdj(long j) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzfz.m3264a((zzfz) this.f14556a, j);
            return this;
        }

        public final zza zzdk(long j) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzfz.m3262b((zzfz) this.f14556a, j);
            return this;
        }

        public final zza zzdl(long j) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzfz.m3260c((zzfz) this.f14556a, j);
            return this;
        }
    }

    static {
        zzfz zzfzVar = new zzfz();
        zzaat = zzfzVar;
        zzdrt.m3364a(zzfz.class, zzfzVar);
    }

    private zzfz() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3264a(zzfz zzfzVar, long j) {
        zzfzVar.zzdl |= 4;
        zzfzVar.zzaaq = j;
    }

    /* renamed from: a */
    static /* synthetic */ void m3263a(zzfz zzfzVar, String str) {
        str.getClass();
        zzfzVar.zzdl |= 1;
        zzfzVar.zzaao = str;
    }

    /* renamed from: b */
    static /* synthetic */ void m3262b(zzfz zzfzVar, long j) {
        zzfzVar.zzdl |= 8;
        zzfzVar.zzaar = j;
    }

    /* renamed from: b */
    static /* synthetic */ void m3261b(zzfz zzfzVar, String str) {
        str.getClass();
        zzfzVar.zzdl |= 2;
        zzfzVar.zzaap = str;
    }

    /* renamed from: c */
    static /* synthetic */ void m3260c(zzfz zzfzVar, long j) {
        zzfzVar.zzdl |= 16;
        zzfzVar.zzaas = j;
    }

    public static zza zzdc() {
        return zzaat.m3360c();
    }

    public static zzfz zzdd() {
        return zzaat;
    }

    public static zzfz zzl(zzdqk zzdqkVar) {
        return (zzfz) zzdrt.m3375a(zzaat, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (amd.f7598a[i - 1]) {
            case 1:
                return new zzfz();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzaat, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001\b��\u0002\b\u0001\u0003\u0003\u0002\u0004\u0003\u0003\u0005\u0003\u0004", new Object[]{"zzdl", "zzaao", "zzaap", "zzaaq", "zzaar", "zzaas"});
            case 4:
                return zzaat;
            case 5:
                zzdtn<zzfz> zzdtnVar = zzdz;
                zzdtn<zzfz> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzfz.class) {
                        try {
                            zzdtn<zzfz> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzaat);
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

    public final String zzcx() {
        return this.zzaao;
    }

    public final String zzcy() {
        return this.zzaap;
    }

    public final long zzcz() {
        return this.zzaaq;
    }

    public final long zzda() {
        return this.zzaar;
    }

    public final long zzdb() {
        return this.zzaas;
    }
}
