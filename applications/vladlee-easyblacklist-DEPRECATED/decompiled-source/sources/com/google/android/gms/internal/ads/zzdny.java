package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdny.class */
public final class zzdny extends zzdrt<zzdny, zza> implements zzdtg {
    private static volatile zzdtn<zzdny> zzdz;
    private static final zzdny zzhes;
    private String zzheq = "";
    private zzdsb<zzdnh> zzher = ajg.m5241b();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdny$zza.class */
    public static final class zza extends zzdrt.zzb<zzdny, zza> implements zzdtg {
        private zza() {
            super(zzdny.zzhes);
        }

        /* synthetic */ zza(byte b) {
            this();
        }
    }

    static {
        zzdny zzdnyVar = new zzdny();
        zzhes = zzdnyVar;
        zzdrt.m3364a(zzdny.class, zzdnyVar);
    }

    private zzdny() {
    }

    public static zzdny zzawv() {
        return zzhes;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (agh.f7326a[i - 1]) {
            case 1:
                return new zzdny();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhes, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"zzheq", "zzher", zzdnh.class});
            case 4:
                return zzhes;
            case 5:
                zzdtn<zzdny> zzdtnVar = zzdz;
                zzdtn<zzdny> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdny.class) {
                        try {
                            zzdtn<zzdny> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhes);
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

    public final List<zzdnh> zzawu() {
        return this.zzher;
    }
}
