package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddh.class */
public final class zzddh extends zzdrt<zzddh, zzb> implements zzdtg {
    private static volatile zzdtn<zzddh> zzdz;
    private static final zzdsc<Integer, zza> zzgsj = new aar();
    private static final zzddh zzgsn;
    private int zzdl;
    private zzdrz zzgsi = aig.m5327b();
    private String zzgsk = "";
    private String zzgsl = "";
    private String zzgsm = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddh$zza.class */
    public enum zza implements zzdry {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);
        

        /* renamed from: b */
        private static final zzdrx<zza> f14221b = new aas();

        /* renamed from: c */
        private final int f14223c;

        zza(int i) {
            this.f14223c = i;
        }

        public static zzdsa zzaf() {
            return aat.f7143a;
        }

        public static zza zzdp(int i) {
            if (i == 1) {
                return BLOCKED_REASON_UNKNOWN;
            }
            if (i != 2) {
                return null;
            }
            return BLOCKED_REASON_BACKGROUND;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f14223c + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.zzdry
        public final int zzae() {
            return this.f14223c;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddh$zzb.class */
    public static final class zzb extends zzdrt.zzb<zzddh, zzb> implements zzdtg {
        private zzb() {
            super(zzddh.zzgsn);
        }

        /* synthetic */ zzb(byte b) {
            this();
        }

        public final zzb zzb(zza zzaVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzddh.m3612a((zzddh) this.f14556a, zzaVar);
            return this;
        }

        public final zzb zzgs(String str) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzddh.m3611a((zzddh) this.f14556a, str);
            return this;
        }
    }

    static {
        zzddh zzddhVar = new zzddh();
        zzgsn = zzddhVar;
        zzdrt.m3364a(zzddh.class, zzddhVar);
    }

    private zzddh() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3612a(zzddh zzddhVar, zza zzaVar) {
        zzaVar.getClass();
        if (!zzddhVar.zzgsi.zzaxp()) {
            zzddhVar.zzgsi = zzdrt.m3368a(zzddhVar.zzgsi);
        }
        zzddhVar.zzgsi.zzgl(zzaVar.zzae());
    }

    /* renamed from: a */
    static /* synthetic */ void m3611a(zzddh zzddhVar, String str) {
        str.getClass();
        zzddhVar.zzdl |= 1;
        zzddhVar.zzgsk = str;
    }

    public static zzb zzaqk() {
        return zzgsn.m3360c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aaq.f7142a[i - 1]) {
            case 1:
                return new zzddh();
            case 2:
                return new zzb((byte) 0);
            case 3:
                return m3366a(zzgsn, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001e\u0002\b��\u0003\b\u0001\u0004\b\u0002", new Object[]{"zzdl", "zzgsi", zza.zzaf(), "zzgsk", "zzgsl", "zzgsm"});
            case 4:
                return zzgsn;
            case 5:
                zzdtn<zzddh> zzdtnVar = zzdz;
                zzdtn<zzddh> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzddh.class) {
                        try {
                            zzdtn<zzddh> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzgsn);
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
}
