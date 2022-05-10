package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.r40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedp.class */
public final class zzedp extends zzejz<zzedp, zza> implements zzell {
    public static volatile zzelw<zzedp> zzel;
    public static final zzedp zzhxk;
    public int zzhwq;
    public zzeip zzhwr = zzeip.zzier;
    public zzedt zzhxj;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedp$zza.class */
    public static final class zza extends zzejz.zzb<zzedp, zza> implements zzell {
        public zza() {
            super(zzedp.zzhxk);
        }

        public /* synthetic */ zza(r40 r40Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12809a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedp) this.f28072b).m12815b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12808a(zzedt zzedtVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedp) this.f28072b).m12818a(zzedtVar);
            return this;
        }

        /* renamed from: a */
        public final zza m12807a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedp) this.f28072b).m12817a(zzeipVar);
            return this;
        }
    }

    static {
        zzedp zzedpVar = new zzedp();
        zzhxk = zzedpVar;
        zzejz.m12401a(zzedp.class, zzedpVar);
    }

    /* renamed from: a */
    public static zzedp m12816a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzedp) zzejz.m12411a(zzhxk, zzeipVar, zzejmVar);
    }

    /* renamed from: p */
    public static zza m12811p() {
        return zzhxk.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (r40.f14868a[i - 1]) {
            case 1:
                return new zzedp();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxk, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhwq", "zzhxj", "zzhwr"});
            case 4:
                return zzhxk;
            case 5:
                zzelw<zzedp> zzelwVar = zzel;
                zzelw<zzedp> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedp.class) {
                        try {
                            zzelw<zzedp> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxk);
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
    public final void m12818a(zzedt zzedtVar) {
        zzedtVar.getClass();
        this.zzhxj = zzedtVar;
    }

    /* renamed from: a */
    public final void m12817a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhwr = zzeipVar;
    }

    /* renamed from: b */
    public final void m12815b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12814m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzeip m12813n() {
        return this.zzhwr;
    }

    /* renamed from: o */
    public final zzedt m12812o() {
        zzedt zzedtVar = this.zzhxj;
        zzedt zzedtVar2 = zzedtVar;
        if (zzedtVar == null) {
            zzedtVar2 = zzedt.m12801n();
        }
        return zzedtVar2;
    }
}
