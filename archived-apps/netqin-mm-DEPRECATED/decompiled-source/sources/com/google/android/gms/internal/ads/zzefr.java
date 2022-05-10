package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.u50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefr.class */
public final class zzefr extends zzejz<zzefr, zza> implements zzell {
    public static volatile zzelw<zzefr> zzel;
    public static final zzefr zziau;
    public int zzhwq;
    public zzefu zziat;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefr$zza.class */
    public static final class zza extends zzejz.zzb<zzefr, zza> implements zzell {
        public zza() {
            super(zzefr.zziau);
        }

        public /* synthetic */ zza(u50 u50Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12614a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzefr) this.f28072b).m12619b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12613a(zzefu zzefuVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzefr) this.f28072b).m12621a(zzefuVar);
            return this;
        }
    }

    static {
        zzefr zzefrVar = new zzefr();
        zziau = zzefrVar;
        zzejz.m12401a(zzefr.class, zzefrVar);
    }

    /* renamed from: a */
    public static zzefr m12620a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzefr) zzejz.m12411a(zziau, zzeipVar, zzejmVar);
    }

    /* renamed from: o */
    public static zza m12616o() {
        return zziau.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (u50.f15448a[i - 1]) {
            case 1:
                return new zzefr();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zziau, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzhwq", "zziat"});
            case 4:
                return zziau;
            case 5:
                zzelw<zzefr> zzelwVar = zzel;
                zzelw<zzefr> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefr.class) {
                        try {
                            zzelw<zzefr> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zziau);
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
    public final void m12621a(zzefu zzefuVar) {
        zzefuVar.getClass();
        this.zziat = zzefuVar;
    }

    /* renamed from: b */
    public final void m12619b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12618m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzefu m12617n() {
        zzefu zzefuVar = this.zziat;
        zzefu zzefuVar2 = zzefuVar;
        if (zzefuVar == null) {
            zzefuVar2 = zzefu.m12609o();
        }
        return zzefuVar2;
    }
}
