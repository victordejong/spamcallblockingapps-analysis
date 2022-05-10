package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.o40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedi.class */
public final class zzedi extends zzejz<zzedi, zza> implements zzell {
    public static volatile zzelw<zzedi> zzel;
    public static final zzedi zzhxf;
    public int zzhwq;
    public zzeip zzhwr = zzeip.zzier;
    public zzedm zzhxe;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedi$zza.class */
    public static final class zza extends zzejz.zzb<zzedi, zza> implements zzell {
        public zza() {
            super(zzedi.zzhxf);
        }

        public /* synthetic */ zza(o40 o40Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12832a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedi) this.f28072b).m12839b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12831a(zzedm zzedmVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedi) this.f28072b).m12842a(zzedmVar);
            return this;
        }

        /* renamed from: a */
        public final zza m12830a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedi) this.f28072b).m12841a(zzeipVar);
            return this;
        }
    }

    static {
        zzedi zzediVar = new zzedi();
        zzhxf = zzediVar;
        zzejz.m12401a(zzedi.class, zzediVar);
    }

    /* renamed from: a */
    public static zzedi m12840a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzedi) zzejz.m12411a(zzhxf, zzeipVar, zzejmVar);
    }

    /* renamed from: p */
    public static zza m12835p() {
        return zzhxf.m12399b();
    }

    /* renamed from: q */
    public static zzedi m12834q() {
        return zzhxf;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (o40.f14294a[i - 1]) {
            case 1:
                return new zzedi();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxf, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhwq", "zzhxe", "zzhwr"});
            case 4:
                return zzhxf;
            case 5:
                zzelw<zzedi> zzelwVar = zzel;
                zzelw<zzedi> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedi.class) {
                        try {
                            zzelw<zzedi> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxf);
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
    public final void m12842a(zzedm zzedmVar) {
        zzedmVar.getClass();
        this.zzhxe = zzedmVar;
    }

    /* renamed from: a */
    public final void m12841a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhwr = zzeipVar;
    }

    /* renamed from: b */
    public final void m12839b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12838m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzeip m12837n() {
        return this.zzhwr;
    }

    /* renamed from: o */
    public final zzedm m12836o() {
        zzedm zzedmVar = this.zzhxe;
        zzedm zzedmVar2 = zzedmVar;
        if (zzedmVar == null) {
            zzedmVar2 = zzedm.m12823n();
        }
        return zzedmVar2;
    }
}
