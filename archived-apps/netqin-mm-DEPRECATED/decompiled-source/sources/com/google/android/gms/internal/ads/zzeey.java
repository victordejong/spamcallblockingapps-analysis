package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.k50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeey.class */
public final class zzeey extends zzejz<zzeey, zza> implements zzell {
    public static volatile zzelw<zzeey> zzel;
    public static final zzeey zzhzg;
    public int zzhww;
    public int zzhzf;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeey$zza.class */
    public static final class zza extends zzejz.zzb<zzeey, zza> implements zzell {
        public zza() {
            super(zzeey.zzhzg);
        }

        public /* synthetic */ zza(k50 k50Var) {
            this();
        }
    }

    static {
        zzeey zzeeyVar = new zzeey();
        zzhzg = zzeeyVar;
        zzejz.m12401a(zzeey.class, zzeeyVar);
    }

    /* renamed from: o */
    public static zzeey m12698o() {
        return zzhzg;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (k50.f13838a[i - 1]) {
            case 1:
                return new zzeey();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhzg, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\u000b", new Object[]{"zzhzf", "zzhww"});
            case 4:
                return zzhzg;
            case 5:
                zzelw<zzeey> zzelwVar = zzel;
                zzelw<zzeey> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeey.class) {
                        try {
                            zzelw<zzeey> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhzg);
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
    public final int m12700m() {
        return this.zzhww;
    }

    /* renamed from: n */
    public final zzeer m12699n() {
        zzeer zzfc = zzeer.zzfc(this.zzhzf);
        zzeer zzeerVar = zzfc;
        if (zzfc == null) {
            zzeerVar = zzeer.UNRECOGNIZED;
        }
        return zzeerVar;
    }
}
