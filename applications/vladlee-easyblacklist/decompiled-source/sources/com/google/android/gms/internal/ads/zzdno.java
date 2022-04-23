package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdno.class */
public final class zzdno extends zzdrt<zzdno, zza> implements zzdtg {
    private static volatile zzdtn<zzdno> zzdz;
    private static final zzdno zzheb;
    private int zzhaa;
    private zzdnp zzhea;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdno$zza.class */
    public static final class zza extends zzdrt.zzb<zzdno, zza> implements zzdtg {
        private zza() {
            super(zzdno.zzheb);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzb(zzdnp zzdnpVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdno.m3435a((zzdno) this.f14556a, zzdnpVar);
            return this;
        }

        public final zza zzeu(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdno) this.f14556a).zzhaa = 0;
            return this;
        }
    }

    static {
        zzdno zzdnoVar = new zzdno();
        zzheb = zzdnoVar;
        zzdrt.m3364a(zzdno.class, zzdnoVar);
    }

    private zzdno() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3435a(zzdno zzdnoVar, zzdnp zzdnpVar) {
        zzdnpVar.getClass();
        zzdnoVar.zzhea = zzdnpVar;
    }

    public static zza zzawi() {
        return zzheb.m3360c();
    }

    public static zzdno zzax(zzdqk zzdqkVar) {
        return (zzdno) zzdrt.m3375a(zzheb, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (agc.f7322a[i - 1]) {
            case 1:
                return new zzdno();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzheb, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzhaa", "zzhea"});
            case 4:
                return zzheb;
            case 5:
                zzdtn<zzdno> zzdtnVar = zzdz;
                zzdtn<zzdno> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdno.class) {
                        try {
                            zzdtn<zzdno> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzheb);
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

    public final zzdnp zzawh() {
        zzdnp zzdnpVar = this.zzhea;
        zzdnp zzdnpVar2 = zzdnpVar;
        if (zzdnpVar == null) {
            zzdnpVar2 = zzdnp.zzawl();
        }
        return zzdnpVar2;
    }
}
