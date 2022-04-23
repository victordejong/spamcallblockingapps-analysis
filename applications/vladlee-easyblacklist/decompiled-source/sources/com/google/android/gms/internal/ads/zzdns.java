package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdns.class */
public final class zzdns extends zzdrt<zzdns, zza> implements zzdtg {
    private static volatile zzdtn<zzdns> zzdz;
    private static final zzdns zzhef;
    private int zzhaa;
    private zzdnt zzhee;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdns$zza.class */
    public static final class zza extends zzdrt.zzb<zzdns, zza> implements zzdtg {
        private zza() {
            super(zzdns.zzhef);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzb(zzdnt zzdntVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdns.m3431a((zzdns) this.f14556a, zzdntVar);
            return this;
        }

        public final zza zzev(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdns) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdns zzdnsVar = new zzdns();
        zzhef = zzdnsVar;
        zzdrt.m3364a(zzdns.class, zzdnsVar);
    }

    private zzdns() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3431a(zzdns zzdnsVar, zzdnt zzdntVar) {
        zzdntVar.getClass();
        zzdnsVar.zzhee = zzdntVar;
    }

    public static zza zzawo() {
        return zzhef.m3360c();
    }

    public static zzdns zzaz(zzdqk zzdqkVar) {
        return (zzdns) zzdrt.m3375a(zzhef, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (age.f7324a[i - 1]) {
            case 1:
                return new zzdns();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhef, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzhaa", "zzhee"});
            case 4:
                return zzhef;
            case 5:
                zzdtn<zzdns> zzdtnVar = zzdz;
                zzdtn<zzdns> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdns.class) {
                        try {
                            zzdtn<zzdns> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhef);
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

    public final zzdnt zzawn() {
        zzdnt zzdntVar = this.zzhee;
        zzdnt zzdntVar2 = zzdntVar;
        if (zzdntVar == null) {
            zzdntVar2 = zzdnt.zzaws();
        }
        return zzdntVar2;
    }
}
