package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmz.class */
public abstract class zzmz extends zznf {

    /* renamed from: a */
    private final SparseArray<Map<zzmr, zznb>> f15170a = new SparseArray<>();

    /* renamed from: b */
    private final SparseBooleanArray f15171b = new SparseBooleanArray();

    /* renamed from: c */
    private int f15172c = 0;

    /* renamed from: d */
    private zznc f15173d;

    /* renamed from: a */
    protected abstract zzne[] mo3177a(zzhe[] zzheVarArr, zzmr[] zzmrVarArr, int[][][] iArr);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int[][], int[][][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.zznf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zznh zza(com.google.android.gms.internal.ads.zzhe[] r9, com.google.android.gms.internal.ads.zzmr r10) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmz.zza(com.google.android.gms.internal.ads.zzhe[], com.google.android.gms.internal.ads.zzmr):com.google.android.gms.internal.ads.zznh");
    }

    @Override // com.google.android.gms.internal.ads.zznf
    public final void zzd(Object obj) {
        this.f15173d = (zznc) obj;
    }

    public final void zzf(int i, boolean z) {
        if (this.f15171b.get(i) != z) {
            this.f15171b.put(i, z);
            m3176a();
        }
    }
}
