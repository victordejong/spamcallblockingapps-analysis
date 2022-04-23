package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnp.class */
public final class zzdnp extends zzdrt<zzdnp, zza> implements zzdtg {
    private static volatile zzdtn<zzdnp> zzdz;
    private static final zzdnp zzhed;
    private String zzhec = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnp$zza.class */
    public static final class zza extends zzdrt.zzb<zzdnp, zza> implements zzdtg {
        private zza() {
            super(zzdnp.zzhed);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdnp zzdnpVar = new zzdnp();
        zzhed = zzdnpVar;
        zzdrt.m3364a(zzdnp.class, zzdnpVar);
    }

    private zzdnp() {
    }

    public static zzdnp zzawl() {
        return zzhed;
    }

    public static zzdnp zzay(zzdqk zzdqkVar) {
        return (zzdnp) zzdrt.m3375a(zzhed, zzdqkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (agd.f7323a[i - 1]) {
            case 1:
                return new zzdnp();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhed, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"zzhec"});
            case 4:
                return zzhed;
            case 5:
                zzdtn<zzdnp> zzdtnVar = zzdz;
                zzdtn<zzdnp> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdnp.class) {
                        try {
                            zzdtn<zzdnp> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhed);
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

    public final String zzawk() {
        return this.zzhec;
    }
}
