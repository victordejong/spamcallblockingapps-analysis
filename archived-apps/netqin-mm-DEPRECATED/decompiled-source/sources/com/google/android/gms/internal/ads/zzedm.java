package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.q40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedm.class */
public final class zzedm extends zzejz<zzedm, zza> implements zzell {
    public static volatile zzelw<zzedm> zzel;
    public static final zzedm zzhxi;
    public int zzhxh;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedm$zza.class */
    public static final class zza extends zzejz.zzb<zzedm, zza> implements zzell {
        public zza() {
            super(zzedm.zzhxi);
        }

        public /* synthetic */ zza(q40 q40Var) {
            this();
        }
    }

    static {
        zzedm zzedmVar = new zzedm();
        zzhxi = zzedmVar;
        zzejz.m12401a(zzedm.class, zzedmVar);
    }

    /* renamed from: n */
    public static zzedm m12823n() {
        return zzhxi;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (q40.f14587a[i - 1]) {
            case 1:
                return new zzedm();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxi, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzhxh"});
            case 4:
                return zzhxi;
            case 5:
                zzelw<zzedm> zzelwVar = zzel;
                zzelw<zzedm> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedm.class) {
                        try {
                            zzelw<zzedm> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxi);
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
    public final int m12824m() {
        return this.zzhxh;
    }
}
