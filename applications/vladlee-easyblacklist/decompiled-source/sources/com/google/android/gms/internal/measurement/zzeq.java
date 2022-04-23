package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeq.class */
public class zzeq {

    /* renamed from: a */
    private static volatile boolean f16214a = false;

    /* renamed from: b */
    private static boolean f16215b = true;

    /* renamed from: c */
    private static volatile zzeq f16216c;

    /* renamed from: d */
    private static volatile zzeq f16217d;

    /* renamed from: e */
    private static final zzeq f16218e = new zzeq((byte) 0);

    /* renamed from: f */
    private final Map<C2630a, zzfd.zzf<?, ?>> f16219f;

    /* renamed from: com.google.android.gms.internal.measurement.zzeq$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeq$a.class */
    static final class C2630a {

        /* renamed from: a */
        private final Object f16220a;

        /* renamed from: b */
        private final int f16221b;

        C2630a(Object obj, int i) {
            this.f16220a = obj;
            this.f16221b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C2630a)) {
                return false;
            }
            C2630a aVar = (C2630a) obj;
            return this.f16220a == aVar.f16220a && this.f16221b == aVar.f16221b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f16220a) * 65535) + this.f16221b;
        }
    }

    zzeq() {
        this.f16219f = new HashMap();
    }

    private zzeq(byte b) {
        this.f16219f = Collections.emptyMap();
    }

    public static zzeq zza() {
        zzeq zzeqVar = f16216c;
        zzeq zzeqVar2 = zzeqVar;
        if (zzeqVar == null) {
            synchronized (zzeq.class) {
                try {
                    zzeq zzeqVar3 = f16216c;
                    zzeqVar2 = zzeqVar3;
                    if (zzeqVar3 == null) {
                        zzeqVar2 = f16218e;
                        f16216c = zzeqVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzeqVar2;
    }

    public static zzeq zzb() {
        zzeq zzeqVar = f16217d;
        if (zzeqVar != null) {
            return zzeqVar;
        }
        synchronized (zzeq.class) {
            try {
                zzeq zzeqVar2 = f16217d;
                if (zzeqVar2 != null) {
                    return zzeqVar2;
                }
                zzeq a = AbstractC2535cq.m2834a(zzeq.class);
                f16217d = a;
                return a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <ContainingType extends zzgo> zzfd.zzf<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzfd.zzf<ContainingType, ?>) this.f16219f.get(new C2630a(containingtype, i));
    }
}
