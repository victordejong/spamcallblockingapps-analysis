package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.e50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeem.class */
public final class zzeem extends zzejz<zzeem, zza> implements zzell {
    public static volatile zzelw<zzeem> zzel;
    public static final zzeem zzhyj;
    public int zzhwq;
    public zzeei zzhxz;
    public zzeip zzhyh;
    public zzeip zzhyi;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeem$zza.class */
    public static final class zza extends zzejz.zzb<zzeem, zza> implements zzell {
        public zza() {
            super(zzeem.zzhyj);
        }

        public /* synthetic */ zza(e50 e50Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12730a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeem) this.f28072b).m12740b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12729a(zzeei zzeeiVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeem) this.f28072b).m12746a(zzeeiVar);
            return this;
        }

        /* renamed from: a */
        public final zza m12728a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeem) this.f28072b).m12742a(zzeipVar);
            return this;
        }

        /* renamed from: b */
        public final zza m12727b(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeem) this.f28072b).m12738b(zzeipVar);
            return this;
        }
    }

    static {
        zzeem zzeemVar = new zzeem();
        zzhyj = zzeemVar;
        zzejz.m12401a(zzeem.class, zzeemVar);
    }

    public zzeem() {
        zzeip zzeipVar = zzeip.zzier;
        this.zzhyh = zzeipVar;
        this.zzhyi = zzeipVar;
    }

    /* renamed from: a */
    public static zzeem m12741a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzeem) zzejz.m12411a(zzhyj, zzeipVar, zzejmVar);
    }

    /* renamed from: q */
    public static zza m12733q() {
        return zzhyj.m12399b();
    }

    /* renamed from: r */
    public static zzeem m12732r() {
        return zzhyj;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (e50.f12800a[i - 1]) {
            case 1:
                return new zzeem();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhyj, "��\u0004����\u0001\u0004\u0004������\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzhwq", "zzhxz", "zzhyh", "zzhyi"});
            case 4:
                return zzhyj;
            case 5:
                zzelw<zzeem> zzelwVar = zzel;
                zzelw<zzeem> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeem.class) {
                        try {
                            zzelw<zzeem> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhyj);
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
    public final void m12746a(zzeei zzeeiVar) {
        zzeeiVar.getClass();
        this.zzhxz = zzeeiVar;
    }

    /* renamed from: a */
    public final void m12742a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhyh = zzeipVar;
    }

    /* renamed from: b */
    public final void m12740b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: b */
    public final void m12738b(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhyi = zzeipVar;
    }

    /* renamed from: m */
    public final int m12737m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzeei m12736n() {
        zzeei zzeeiVar = this.zzhxz;
        zzeei zzeeiVar2 = zzeeiVar;
        if (zzeeiVar == null) {
            zzeeiVar2 = zzeei.m12763p();
        }
        return zzeeiVar2;
    }

    /* renamed from: o */
    public final zzeip m12735o() {
        return this.zzhyh;
    }

    /* renamed from: p */
    public final zzeip m12734p() {
        return this.zzhyi;
    }
}
