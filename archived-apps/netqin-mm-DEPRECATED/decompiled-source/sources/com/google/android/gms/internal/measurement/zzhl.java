package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhy;
import com.google.common.collect.RegularImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4492f3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhl.class */
public class zzhl {

    /* renamed from: b */
    public static volatile zzhl f29493b;

    /* renamed from: c */
    public static volatile zzhl f29494c;

    /* renamed from: d */
    public static final zzhl f29495d = new zzhl(true);

    /* renamed from: a */
    public final Map<C7277a, zzhy.zzf<?, ?>> f29496a;

    /* renamed from: com.google.android.gms.internal.measurement.zzhl$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhl$a.class */
    public static final class C7277a {

        /* renamed from: a */
        public final Object f29497a;

        /* renamed from: b */
        public final int f29498b;

        public C7277a(Object obj, int i) {
            this.f29497a = obj;
            this.f29498b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C7277a)) {
                return false;
            }
            C7277a aVar = (C7277a) obj;
            return this.f29497a == aVar.f29497a && this.f29498b == aVar.f29498b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f29497a) * RegularImmutableMap.SHORT_MASK) + this.f29498b;
        }
    }

    public zzhl() {
        this.f29496a = new HashMap();
    }

    public zzhl(boolean z) {
        this.f29496a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static zzhl m9676a() {
        zzhl zzhlVar = f29493b;
        zzhl zzhlVar2 = zzhlVar;
        if (zzhlVar == null) {
            synchronized (zzhl.class) {
                try {
                    zzhl zzhlVar3 = f29493b;
                    zzhlVar2 = zzhlVar3;
                    if (zzhlVar3 == null) {
                        zzhlVar2 = f29495d;
                        f29493b = zzhlVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzhlVar2;
    }

    /* renamed from: b */
    public static zzhl m9674b() {
        zzhl zzhlVar = f29494c;
        if (zzhlVar != null) {
            return zzhlVar;
        }
        synchronized (zzhl.class) {
            try {
                zzhl zzhlVar2 = f29494c;
                if (zzhlVar2 != null) {
                    return zzhlVar2;
                }
                zzhl a = AbstractC4492f3.m25496a(zzhl.class);
                f29494c = a;
                return a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final <ContainingType extends zzjj> zzhy.zzf<ContainingType, ?> m9675a(ContainingType containingtype, int i) {
        return (zzhy.zzf<ContainingType, ?>) this.f29496a.get(new C7277a(containingtype, i));
    }
}
