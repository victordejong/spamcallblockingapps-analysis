package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.p50;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefi.class */
public final class zzefi extends zzejz<zzefi, zza> implements zzell {
    public static volatile zzelw<zzefi> zzel;
    public static final zzefi zziae;
    public int zziab;
    public boolean zziac;
    public String zziaa = "";
    public String zzhzh = "";
    public String zziad = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefi$zza.class */
    public static final class zza extends zzejz.zzb<zzefi, zza> implements zzell {
        public zza() {
            super(zzefi.zziae);
        }

        public /* synthetic */ zza(p50 p50Var) {
            this();
        }
    }

    static {
        zzefi zzefiVar = new zzefi();
        zziae = zzefiVar;
        zzejz.m12401a(zzefi.class, zzefiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (p50.f14388a[i - 1]) {
            case 1:
                return new zzefi();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zziae, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zziaa", "zzhzh", "zziab", "zziac", "zziad"});
            case 4:
                return zziae;
            case 5:
                zzelw<zzefi> zzelwVar = zzel;
                zzelw<zzefi> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefi.class) {
                        try {
                            zzelw<zzefi> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zziae);
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
    public final String m12677m() {
        return this.zzhzh;
    }

    /* renamed from: n */
    public final String m12676n() {
        return this.zziaa;
    }

    /* renamed from: o */
    public final int m12675o() {
        return this.zziab;
    }

    /* renamed from: p */
    public final boolean m12674p() {
        return this.zziac;
    }

    /* renamed from: q */
    public final String m12673q() {
        return this.zziad;
    }
}
