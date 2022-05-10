package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.w40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedy.class */
public final class zzedy extends zzejz<zzedy, zza> implements zzell {
    public static volatile zzelw<zzedy> zzel;
    public static final zzedy zzhxp;
    public int zzhwq;
    public zzeip zzhwr = zzeip.zzier;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedy$zza.class */
    public static final class zza extends zzejz.zzb<zzedy, zza> implements zzell {
        public zza() {
            super(zzedy.zzhxp);
        }

        public /* synthetic */ zza(w40 w40Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12776a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedy) this.f28072b).m12781b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12775a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzedy) this.f28072b).m12783a(zzeipVar);
            return this;
        }
    }

    static {
        zzedy zzedyVar = new zzedy();
        zzhxp = zzedyVar;
        zzejz.m12401a(zzedy.class, zzedyVar);
    }

    /* renamed from: a */
    public static zzedy m12782a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzedy) zzejz.m12411a(zzhxp, zzeipVar, zzejmVar);
    }

    /* renamed from: o */
    public static zza m12778o() {
        return zzhxp.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (w40.f15905a[i - 1]) {
            case 1:
                return new zzedy();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxp, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\n", new Object[]{"zzhwq", "zzhwr"});
            case 4:
                return zzhxp;
            case 5:
                zzelw<zzedy> zzelwVar = zzel;
                zzelw<zzedy> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedy.class) {
                        try {
                            zzelw<zzedy> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxp);
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
    public final void m12783a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhwr = zzeipVar;
    }

    /* renamed from: b */
    public final void m12781b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12780m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzeip m12779n() {
        return this.zzhwr;
    }
}
