package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.cx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cx.class */
final class C2542cx extends AbstractC2541cw {
    private C2542cx() {
        super((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2542cx(byte b) {
        this();
    }

    /* renamed from: c */
    private static <E> zzfl<E> m2821c(Object obj, long j) {
        return (zzfl) C2588ep.m2555f(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2541cw
    /* renamed from: a */
    final <L> List<L> mo2820a(Object obj, long j) {
        zzfl c = m2821c(obj, j);
        zzfl zzflVar = c;
        if (!c.zza()) {
            int size = c.size();
            zzflVar = c.zza(size == 0 ? 10 : size << 1);
            C2588ep.m2576a(obj, j, zzflVar);
        }
        return zzflVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v7, types: [com.google.android.gms.internal.measurement.zzfl] */
    @Override // com.google.android.gms.internal.measurement.AbstractC2541cw
    /* renamed from: a */
    final <E> void mo2818a(Object obj, Object obj2, long j) {
        zzfl c = m2821c(obj, j);
        zzfl c2 = m2821c(obj2, j);
        int size = c.size();
        int size2 = c2.size();
        zzfl zzflVar = c;
        if (size > 0) {
            zzflVar = c;
            if (size2 > 0) {
                zzfl<E> zzflVar2 = c;
                if (!c.zza()) {
                    zzflVar2 = c.zza(size2 + size);
                }
                zzflVar2.addAll(c2);
                zzflVar = zzflVar2;
            }
        }
        if (size <= 0) {
            zzflVar = c2;
        }
        C2588ep.m2576a(obj, j, zzflVar);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2541cw
    /* renamed from: b */
    final void mo2817b(Object obj, long j) {
        m2821c(obj, j).mo2268h_();
    }
}
