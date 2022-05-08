package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aik.class */
final class aik extends aij {
    private aik() {
        super((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ aik(byte b) {
        this();
    }

    /* renamed from: c */
    private static <E> zzdsb<E> m5321c(Object obj, long j) {
        return (zzdsb) akj.m5038f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.aij
    /* renamed from: a */
    final <L> List<L> mo5320a(Object obj, long j) {
        zzdsb c = m5321c(obj, j);
        zzdsb zzdsbVar = c;
        if (!c.zzaxp()) {
            int size = c.size();
            zzdsbVar = c.zzfd(size == 0 ? 10 : size << 1);
            akj.m5061a(obj, j, zzdsbVar);
        }
        return zzdsbVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v7, types: [com.google.android.gms.internal.ads.zzdsb] */
    @Override // com.google.android.gms.internal.ads.aij
    /* renamed from: a */
    final <E> void mo5318a(Object obj, Object obj2, long j) {
        zzdsb c = m5321c(obj, j);
        zzdsb c2 = m5321c(obj2, j);
        int size = c.size();
        int size2 = c2.size();
        zzdsb zzdsbVar = c;
        if (size > 0) {
            zzdsbVar = c;
            if (size2 > 0) {
                zzdsb<E> zzdsbVar2 = c;
                if (!c.zzaxp()) {
                    zzdsbVar2 = c.zzfd(size2 + size);
                }
                zzdsbVar2.addAll(c2);
                zzdsbVar = zzdsbVar2;
            }
        }
        if (size <= 0) {
            zzdsbVar = c2;
        }
        akj.m5061a(obj, j, zzdsbVar);
    }

    @Override // com.google.android.gms.internal.ads.aij
    /* renamed from: b */
    final void mo5317b(Object obj, long j) {
        m5321c(obj, j).zzaxq();
    }
}
