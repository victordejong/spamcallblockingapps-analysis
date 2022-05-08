package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdln.class */
public final class zzdln extends zzdrt<zzdln, zza> implements zzdtg {
    private static volatile zzdtn<zzdln> zzdz;
    private static final zzdln zzhat;
    private int zzhas;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdln$zza.class */
    public static final class zza extends zzdrt.zzb<zzdln, zza> implements zzdtg {
        private zza() {
            super(zzdln.zzhat);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdln zzdlnVar = new zzdln();
        zzhat = zzdlnVar;
        zzdrt.m3364a(zzdln.class, zzdlnVar);
    }

    private zzdln() {
    }

    public static zzdln zzato() {
        return zzhat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aez.f7291a[i - 1]) {
            case 1:
                return new zzdln();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhat, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzhas"});
            case 4:
                return zzhat;
            case 5:
                zzdtn<zzdln> zzdtnVar = zzdz;
                zzdtn<zzdln> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdln.class) {
                        try {
                            zzdtn<zzdln> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhat);
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

    public final int zzatn() {
        return this.zzhas;
    }
}
