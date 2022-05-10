package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.u40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedu.class */
public final class zzedu extends zzejz<zzedu, zza> implements zzell {
    public static volatile zzelw<zzedu> zzel;
    public static final zzedu zzhxn;
    public int zzhwq;
    public zzeip zzhwr = zzeip.zzier;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedu$zza.class */
    public static final class zza extends zzejz.zzb<zzedu, zza> implements zzell {
        public zza() {
            super(zzedu.zzhxn);
        }

        public /* synthetic */ zza(u40 u40Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12790a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedu) this.f28072b).m12795b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12789a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedu) this.f28072b).m12797a(zzeipVar);
            return this;
        }
    }

    static {
        zzedu zzeduVar = new zzedu();
        zzhxn = zzeduVar;
        zzejz.m12401a(zzedu.class, zzeduVar);
    }

    /* renamed from: a */
    public static zzedu m12796a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzedu) zzejz.m12411a(zzhxn, zzeipVar, zzejmVar);
    }

    /* renamed from: o */
    public static zza m12792o() {
        return zzhxn.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (u40.f15446a[i - 1]) {
            case 1:
                return new zzedu();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxn, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzhwq", "zzhwr"});
            case 4:
                return zzhxn;
            case 5:
                zzelw<zzedu> zzelwVar = zzel;
                zzelw<zzedu> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedu.class) {
                        try {
                            zzelw<zzedu> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxn);
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

    /* renamed from: a */
    public final void m12797a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhwr = zzeipVar;
    }

    /* renamed from: b */
    public final void m12795b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12794m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzeip m12793n() {
        return this.zzhwr;
    }
}
