package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.i50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeet.class */
public final class zzeet extends zzejz<zzeet, zza> implements zzell {
    public static volatile zzelw<zzeet> zzel;
    public static final zzeet zzhzd;
    public int zzhwq;
    public zzeip zzhwr = zzeip.zzier;
    public zzeey zzhzc;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeet$zza.class */
    public static final class zza extends zzejz.zzb<zzeet, zza> implements zzell {
        public zza() {
            super(zzeet.zzhzd);
        }

        public /* synthetic */ zza(i50 i50Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12708a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeet) this.f28072b).m12715b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12707a(zzeey zzeeyVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeet) this.f28072b).m12718a(zzeeyVar);
            return this;
        }

        /* renamed from: a */
        public final zza m12706a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzeet) this.f28072b).m12717a(zzeipVar);
            return this;
        }
    }

    static {
        zzeet zzeetVar = new zzeet();
        zzhzd = zzeetVar;
        zzejz.m12401a(zzeet.class, zzeetVar);
    }

    /* renamed from: a */
    public static zzeet m12716a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzeet) zzejz.m12411a(zzhzd, zzeipVar, zzejmVar);
    }

    /* renamed from: p */
    public static zza m12711p() {
        return zzhzd.m12399b();
    }

    /* renamed from: q */
    public static zzeet m12710q() {
        return zzhzd;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (i50.f13494a[i - 1]) {
            case 1:
                return new zzeet();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhzd, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhwq", "zzhzc", "zzhwr"});
            case 4:
                return zzhzd;
            case 5:
                zzelw<zzeet> zzelwVar = zzel;
                zzelw<zzeet> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeet.class) {
                        try {
                            zzelw<zzeet> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhzd);
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
    public final void m12718a(zzeey zzeeyVar) {
        zzeeyVar.getClass();
        this.zzhzc = zzeeyVar;
    }

    /* renamed from: a */
    public final void m12717a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhwr = zzeipVar;
    }

    /* renamed from: b */
    public final void m12715b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12714m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzeip m12713n() {
        return this.zzhwr;
    }

    /* renamed from: o */
    public final zzeey m12712o() {
        zzeey zzeeyVar = this.zzhzc;
        zzeey zzeeyVar2 = zzeeyVar;
        if (zzeeyVar == null) {
            zzeeyVar2 = zzeey.m12698o();
        }
        return zzeeyVar2;
    }
}
