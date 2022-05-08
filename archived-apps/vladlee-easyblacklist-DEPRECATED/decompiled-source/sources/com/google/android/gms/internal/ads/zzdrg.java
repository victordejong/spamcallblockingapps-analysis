package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrg.class */
public class zzdrg {

    /* renamed from: a */
    private static volatile boolean f14490a = false;

    /* renamed from: b */
    private static boolean f14491b = true;

    /* renamed from: c */
    private static volatile zzdrg f14492c;

    /* renamed from: d */
    private static volatile zzdrg f14493d;

    /* renamed from: e */
    private static final zzdrg f14494e = new zzdrg((byte) 0);

    /* renamed from: f */
    private final Map<C2449a, zzdrt.zzf<?, ?>> f14495f;

    /* renamed from: com.google.android.gms.internal.ads.zzdrg$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrg$a.class */
    static final class C2449a {

        /* renamed from: a */
        private final Object f14496a;

        /* renamed from: b */
        private final int f14497b;

        C2449a(Object obj, int i) {
            this.f14496a = obj;
            this.f14497b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C2449a)) {
                return false;
            }
            C2449a aVar = (C2449a) obj;
            return this.f14496a == aVar.f14496a && this.f14497b == aVar.f14497b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f14496a) * 65535) + this.f14497b;
        }
    }

    zzdrg() {
        this.f14495f = new HashMap();
    }

    private zzdrg(byte b) {
        this.f14495f = Collections.emptyMap();
    }

    public static zzdrg zzazh() {
        zzdrg zzdrgVar = f14492c;
        zzdrg zzdrgVar2 = zzdrgVar;
        if (zzdrgVar == null) {
            synchronized (zzdrg.class) {
                try {
                    zzdrg zzdrgVar3 = f14492c;
                    zzdrgVar2 = zzdrgVar3;
                    if (zzdrgVar3 == null) {
                        zzdrgVar2 = f14494e;
                        f14492c = zzdrgVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzdrgVar2;
    }

    public static zzdrg zzazi() {
        zzdrg zzdrgVar = f14493d;
        zzdrg zzdrgVar2 = zzdrgVar;
        if (zzdrgVar == null) {
            synchronized (zzdrg.class) {
                try {
                    zzdrg zzdrgVar3 = f14493d;
                    zzdrgVar2 = zzdrgVar3;
                    if (zzdrgVar3 == null) {
                        zzdrgVar2 = aid.m5333a(zzdrg.class);
                        f14493d = zzdrgVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzdrgVar2;
    }

    public final <ContainingType extends zzdte> zzdrt.zzf<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzdrt.zzf<ContainingType, ?>) this.f14495f.get(new C2449a(containingtype, i));
    }
}
