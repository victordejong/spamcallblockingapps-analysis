package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.s40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedq.class */
public final class zzedq extends zzejz<zzedq, zza> implements zzell {
    public static volatile zzelw<zzedq> zzel;
    public static final zzedq zzhxl;
    public int zzhwu;
    public zzedt zzhxj;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedq$zza.class */
    public static final class zza extends zzejz.zzb<zzedq, zza> implements zzell {
        public zza() {
            super(zzedq.zzhxl);
        }

        public /* synthetic */ zza(s40 s40Var) {
            this();
        }
    }

    static {
        zzedq zzedqVar = new zzedq();
        zzhxl = zzedqVar;
        zzejz.m12401a(zzedq.class, zzedqVar);
    }

    /* renamed from: a */
    public static zzedq m12806a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzedq) zzejz.m12411a(zzhxl, zzeipVar, zzejmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (s40.f15070a[i - 1]) {
            case 1:
                return new zzedq();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxl, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzhxj", "zzhwu"});
            case 4:
                return zzhxl;
            case 5:
                zzelw<zzedq> zzelwVar = zzel;
                zzelw<zzedq> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedq.class) {
                        try {
                            zzelw<zzedq> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxl);
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
    public final int m12805m() {
        return this.zzhwu;
    }

    /* renamed from: n */
    public final zzedt m12804n() {
        zzedt zzedtVar = this.zzhxj;
        zzedt zzedtVar2 = zzedtVar;
        if (zzedtVar == null) {
            zzedtVar2 = zzedt.m12801n();
        }
        return zzedtVar2;
    }
}
