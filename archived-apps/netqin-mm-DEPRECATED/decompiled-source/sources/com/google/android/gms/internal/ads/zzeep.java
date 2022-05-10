package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.f50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeep.class */
public final class zzeep extends zzejz<zzeep, zza> implements zzell {
    public static volatile zzelw<zzeep> zzel;
    public static final zzeep zzhyn;
    public int zzhyk;
    public int zzhyl;
    public zzeip zzhym = zzeip.zzier;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeep$zza.class */
    public static final class zza extends zzejz.zzb<zzeep, zza> implements zzell {
        public zza() {
            super(zzeep.zzhyn);
        }

        public /* synthetic */ zza(f50 f50Var) {
            this();
        }
    }

    static {
        zzeep zzeepVar = new zzeep();
        zzhyn = zzeepVar;
        zzejz.m12401a(zzeep.class, zzeepVar);
    }

    /* renamed from: p */
    public static zzeep m12723p() {
        return zzhyn;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (f50.f12880a[i - 1]) {
            case 1:
                return new zzeep();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhyn, "��\u0003����\u0001\u000b\u0003������\u0001\f\u0002\f\u000b\n", new Object[]{"zzhyk", "zzhyl", "zzhym"});
            case 4:
                return zzhyn;
            case 5:
                zzelw<zzeep> zzelwVar = zzel;
                zzelw<zzeep> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeep.class) {
                        try {
                            zzelw<zzeep> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhyn);
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
    public final zzeeq m12726m() {
        zzeeq zzfb = zzeeq.zzfb(this.zzhyk);
        zzeeq zzeeqVar = zzfb;
        if (zzfb == null) {
            zzeeqVar = zzeeq.UNRECOGNIZED;
        }
        return zzeeqVar;
    }

    /* renamed from: n */
    public final zzeer m12725n() {
        zzeer zzfc = zzeer.zzfc(this.zzhyl);
        zzeer zzeerVar = zzfc;
        if (zzfc == null) {
            zzeerVar = zzeer.UNRECOGNIZED;
        }
        return zzeerVar;
    }

    /* renamed from: o */
    public final zzeip m12724o() {
        return this.zzhym;
    }
}
