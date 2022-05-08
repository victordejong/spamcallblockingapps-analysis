package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfy.class */
public final class zzfy extends zzdrt<zzfy, zza> implements zzdtg {
    private static final zzfy zzaan;
    private static volatile zzdtn<zzfy> zzdz;
    private zzfz zzaak;
    private zzdqk zzaal = zzdqk.zzhhx;
    private zzdqk zzaam = zzdqk.zzhhx;
    private int zzdl;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfy$zza.class */
    public static final class zza extends zzdrt.zzb<zzfy, zza> implements zzdtg {
        private zza() {
            super(zzfy.zzaan);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzfy zzfyVar = new zzfy();
        zzaan = zzfyVar;
        zzdrt.m3364a(zzfy.class, zzfyVar);
    }

    private zzfy() {
    }

    public static zzfy zza(zzdqk zzdqkVar, zzdrg zzdrgVar) {
        return (zzfy) zzdrt.m3374a(zzaan, zzdqkVar, zzdrgVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (amc.f7597a[i - 1]) {
            case 1:
                return new zzfy();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzaan, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\t��\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdl", "zzaak", "zzaal", "zzaam"});
            case 4:
                return zzaan;
            case 5:
                zzdtn<zzfy> zzdtnVar = zzdz;
                zzdtn<zzfy> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzfy.class) {
                        try {
                            zzdtn<zzfy> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzaan);
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

    public final zzfz zzct() {
        zzfz zzfzVar = this.zzaak;
        zzfz zzfzVar2 = zzfzVar;
        if (zzfzVar == null) {
            zzfzVar2 = zzfz.zzdd();
        }
        return zzfzVar2;
    }

    public final zzdqk zzcu() {
        return this.zzaal;
    }

    public final zzdqk zzcv() {
        return this.zzaam;
    }
}
