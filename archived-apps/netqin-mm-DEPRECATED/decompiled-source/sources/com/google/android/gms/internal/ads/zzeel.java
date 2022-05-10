package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.d50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeel.class */
public final class zzeel extends zzejz<zzeel, zza> implements zzell {
    public static volatile zzelw<zzeel> zzel;
    public static final zzeel zzhyg;
    public int zzhwq;
    public zzeip zzhwr = zzeip.zzier;
    public zzeem zzhyf;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeel$zza.class */
    public static final class zza extends zzejz.zzb<zzeel, zza> implements zzell {
        public zza() {
            super(zzeel.zzhyg);
        }

        public /* synthetic */ zza(d50 d50Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12749a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeel) this.f28072b).m12755b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12748a(zzeem zzeemVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeel) this.f28072b).m12758a(zzeemVar);
            return this;
        }

        /* renamed from: a */
        public final zza m12747a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeel) this.f28072b).m12757a(zzeipVar);
            return this;
        }
    }

    static {
        zzeel zzeelVar = new zzeel();
        zzhyg = zzeelVar;
        zzejz.m12401a(zzeel.class, zzeelVar);
    }

    /* renamed from: a */
    public static zzeel m12756a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzeel) zzejz.m12411a(zzhyg, zzeipVar, zzejmVar);
    }

    /* renamed from: p */
    public static zza m12751p() {
        return zzhyg.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (d50.f12610a[i - 1]) {
            case 1:
                return new zzeel();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhyg, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhwq", "zzhyf", "zzhwr"});
            case 4:
                return zzhyg;
            case 5:
                zzelw<zzeel> zzelwVar = zzel;
                zzelw<zzeel> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeel.class) {
                        try {
                            zzelw<zzeel> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhyg);
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
    public final void m12758a(zzeem zzeemVar) {
        zzeemVar.getClass();
        this.zzhyf = zzeemVar;
    }

    /* renamed from: a */
    public final void m12757a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhwr = zzeipVar;
    }

    /* renamed from: b */
    public final void m12755b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12754m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzeip m12753n() {
        return this.zzhwr;
    }

    /* renamed from: o */
    public final zzeem m12752o() {
        zzeem zzeemVar = this.zzhyf;
        zzeem zzeemVar2 = zzeemVar;
        if (zzeemVar == null) {
            zzeemVar2 = zzeem.m12732r();
        }
        return zzeemVar2;
    }
}
