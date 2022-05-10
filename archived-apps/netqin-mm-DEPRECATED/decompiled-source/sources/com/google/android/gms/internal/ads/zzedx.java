package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.v40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedx.class */
public final class zzedx extends zzejz<zzedx, zza> implements zzell {
    public static volatile zzelw<zzedx> zzel;
    public static final zzedx zzhxo;
    public int zzhwq;
    public int zzhwu;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedx$zza.class */
    public static final class zza extends zzejz.zzb<zzedx, zza> implements zzell {
        public zza() {
            super(zzedx.zzhxo);
        }

        public /* synthetic */ zza(v40 v40Var) {
            this();
        }
    }

    static {
        zzedx zzedxVar = new zzedx();
        zzhxo = zzedxVar;
        zzejz.m12401a(zzedx.class, zzedxVar);
    }

    /* renamed from: a */
    public static zzedx m12788a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzedx) zzejz.m12411a(zzhxo, zzeipVar, zzejmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (v40.f15697a[i - 1]) {
            case 1:
                return new zzedx();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxo, "��\u0002����\u0002\u0003\u0002������\u0002\u000b\u0003\u000b", new Object[]{"zzhwu", "zzhwq"});
            case 4:
                return zzhxo;
            case 5:
                zzelw<zzedx> zzelwVar = zzel;
                zzelw<zzedx> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedx.class) {
                        try {
                            zzelw<zzedx> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxo);
                                zzel = zzelwVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return zzelwVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: m */
    public final int m12787m() {
        return this.zzhwu;
    }
}
