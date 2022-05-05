package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzddh;
import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddn.class */
public final class zzddn extends zzdrt<zzddn, zzb> implements zzdtg {
    private static volatile zzdtn<zzddn> zzdz;
    private static final zzddn zzgsw;
    private int zzdl;
    private int zzgst;
    private zzddh zzgsv;
    private String zzdm = "";
    private String zzgsu = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddn$zza.class */
    public enum zza implements zzdry {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);
        

        /* renamed from: b */
        private static final zzdrx<zza> f14225b = new aaw();

        /* renamed from: c */
        private final int f14227c;

        zza(int i) {
            this.f14227c = i;
        }

        public static zzdsa zzaf() {
            return aav.f7145a;
        }

        public static zza zzdq(int i) {
            if (i == 0) {
                return EVENT_TYPE_UNKNOWN;
            }
            if (i != 1) {
                return null;
            }
            return BLOCKED_IMPRESSION;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f14227c + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.zzdry
        public final int zzae() {
            return this.f14227c;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddn$zzb.class */
    public static final class zzb extends zzdrt.zzb<zzddn, zzb> implements zzdtg {
        private zzb() {
            super(zzddn.zzgsw);
        }

        /* synthetic */ zzb(byte b) {
            this();
        }

        public final zzb zza(zzddh.zzb zzbVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzddn.m3609a((zzddn) this.f14556a, (zzddh) ((zzdrt) zzbVar.zzbaf()));
            return this;
        }

        public final zzb zzb(zza zzaVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzddn.m3608a((zzddn) this.f14556a, zzaVar);
            return this;
        }

        public final zzb zzgt(String str) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzddn.m3607a((zzddn) this.f14556a, str);
            return this;
        }
    }

    static {
        zzddn zzddnVar = new zzddn();
        zzgsw = zzddnVar;
        zzdrt.m3364a(zzddn.class, zzddnVar);
    }

    private zzddn() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3609a(zzddn zzddnVar, zzddh zzddhVar) {
        zzddhVar.getClass();
        zzddnVar.zzgsv = zzddhVar;
        zzddnVar.zzdl |= 8;
    }

    /* renamed from: a */
    static /* synthetic */ void m3608a(zzddn zzddnVar, zza zzaVar) {
        zzddnVar.zzgst = zzaVar.zzae();
        zzddnVar.zzdl |= 1;
    }

    /* renamed from: a */
    static /* synthetic */ void m3607a(zzddn zzddnVar, String str) {
        str.getClass();
        zzddnVar.zzdl |= 2;
        zzddnVar.zzdm = str;
    }

    public static zzb zzaqn() {
        return zzgsw.m3360c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aau.f7144a[i - 1]) {
            case 1:
                return new zzddn();
            case 2:
                return new zzb((byte) 0);
            case 3:
                return m3366a(zzgsw, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\f��\u0002\b\u0001\u0003\b\u0002\u0004\t\u0003", new Object[]{"zzdl", "zzgst", zza.zzaf(), "zzdm", "zzgsu", "zzgsv"});
            case 4:
                return zzgsw;
            case 5:
                zzdtn<zzddn> zzdtnVar = zzdz;
                zzdtn<zzddn> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzddn.class) {
                        try {
                            zzdtn<zzddn> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzgsw);
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
