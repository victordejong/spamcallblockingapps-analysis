package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
/* renamed from: com.google.android.gms.internal.measurement.cs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cs.class */
final class C2537cs implements AbstractC2553dh {

    /* renamed from: a */
    private static final C2537cs f15951a = new C2537cs();

    private C2537cs() {
    }

    /* renamed from: a */
    public static C2537cs m2830a() {
        return f15951a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2553dh
    /* renamed from: a */
    public final boolean mo2799a(Class<?> cls) {
        return zzfd.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2553dh
    /* renamed from: b */
    public final AbstractC2554di mo2798b(Class<?> cls) {
        if (!zzfd.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC2554di) zzfd.m2285a((Class<zzfd>) cls.asSubclass(zzfd.class)).mo2290a(zzfd.zze.zzc);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
