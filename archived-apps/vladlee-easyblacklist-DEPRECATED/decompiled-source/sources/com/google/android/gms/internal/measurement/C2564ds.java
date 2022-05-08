package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.ds */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ds.class */
public final class C2564ds implements AbstractC2554di {

    /* renamed from: a */
    private final zzgo f16003a;

    /* renamed from: b */
    private final String f16004b;

    /* renamed from: c */
    private final Object[] f16005c;

    /* renamed from: d */
    private final int f16006d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2564ds(zzgo zzgoVar, String str, Object[] objArr) {
        this.f16003a = zzgoVar;
        this.f16004b = str;
        this.f16005c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f16006d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.f16006d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2554di
    /* renamed from: a */
    public final int mo2609a() {
        return (this.f16006d & 1) == 1 ? zzfd.zze.zzh : zzfd.zze.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2554di
    /* renamed from: b */
    public final boolean mo2608b() {
        return (this.f16006d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2554di
    /* renamed from: c */
    public final zzgo mo2607c() {
        return this.f16003a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m2746d() {
        return this.f16004b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final Object[] m2745e() {
        return this.f16005c;
    }
}
