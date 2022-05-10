package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.b50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeeh.class */
public final class zzeeh extends zzejz<zzeeh, zza> implements zzell {
    public static volatile zzelw<zzeeh> zzel;
    public static final zzeeh zzhya;
    public zzeei zzhxz;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeeh$zza.class */
    public static final class zza extends zzejz.zzb<zzeeh, zza> implements zzell {
        public zza() {
            super(zzeeh.zzhya);
        }

        public /* synthetic */ zza(b50 b50Var) {
            this();
        }
    }

    static {
        zzeeh zzeehVar = new zzeeh();
        zzhya = zzeehVar;
        zzejz.m12401a(zzeeh.class, zzeehVar);
    }

    /* renamed from: a */
    public static zzeeh m12769a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzeeh) zzejz.m12411a(zzhya, zzeipVar, zzejmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (b50.f12337a[i - 1]) {
            case 1:
                return new zzeeh();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhya, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"zzhxz"});
            case 4:
                return zzhya;
            case 5:
                zzelw<zzeeh> zzelwVar = zzel;
                zzelw<zzeeh> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeeh.class) {
                        try {
                            zzelw<zzeeh> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhya);
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
    public final zzeei m12768m() {
        zzeei zzeeiVar = this.zzhxz;
        zzeei zzeeiVar2 = zzeeiVar;
        if (zzeeiVar == null) {
            zzeeiVar2 = zzeei.m12763p();
        }
        return zzeeiVar2;
    }
}
