package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.x50;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefw.class */
public final class zzefw extends zzejz<zzefw, zza> implements zzell {
    public static volatile zzelw<zzefw> zzel;
    public static final zzefw zzibh;
    public String zzibf = "";
    public zzekk<zzefi> zzibg = zzejz.m12394l();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefw$zza.class */
    public static final class zza extends zzejz.zzb<zzefw, zza> implements zzell {
        public zza() {
            super(zzefw.zzibh);
        }

        public /* synthetic */ zza(x50 x50Var) {
            this();
        }
    }

    static {
        zzefw zzefwVar = new zzefw();
        zzibh = zzefwVar;
        zzejz.m12401a(zzefw.class, zzefwVar);
    }

    /* renamed from: n */
    public static zzefw m12606n() {
        return zzibh;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (x50.f15993a[i - 1]) {
            case 1:
                return new zzefw();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzibh, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"zzibf", "zzibg", zzefi.class});
            case 4:
                return zzibh;
            case 5:
                zzelw<zzefw> zzelwVar = zzel;
                zzelw<zzefw> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefw.class) {
                        try {
                            zzelw<zzefw> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzibh);
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
    public final List<zzefi> m12607m() {
        return this.zzibg;
    }
}
