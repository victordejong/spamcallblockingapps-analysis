package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxg.class */
public final class zzaxg {

    /* renamed from: a */
    private final String[] f11495a;

    /* renamed from: b */
    private final double[] f11496b;

    /* renamed from: c */
    private final double[] f11497c;

    /* renamed from: d */
    private final int[] f11498d;

    /* renamed from: e */
    private int f11499e;

    private zzaxg(zzaxl zzaxlVar) {
        List list;
        List list2;
        List list3;
        List list4;
        list = zzaxlVar.f11506b;
        int size = list.size();
        list2 = zzaxlVar.f11505a;
        this.f11495a = (String[]) list2.toArray(new String[size]);
        list3 = zzaxlVar.f11506b;
        this.f11496b = m4224a(list3);
        list4 = zzaxlVar.f11507c;
        this.f11497c = m4224a(list4);
        this.f11498d = new int[size];
        this.f11499e = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaxg(zzaxl zzaxlVar, byte b) {
        this(zzaxlVar);
    }

    /* renamed from: a */
    private static double[] m4224a(List<Double> list) {
        double[] dArr = new double[list.size()];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    public final void zza(double d) {
        this.f11499e++;
        int i = 0;
        while (true) {
            double[] dArr = this.f11497c;
            if (i < dArr.length) {
                if (dArr[i] <= d && d < this.f11496b[i]) {
                    int[] iArr = this.f11498d;
                    iArr[i] = iArr[i] + 1;
                }
                if (d >= this.f11497c[i]) {
                    i++;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final List<zzaxi> zzwz() {
        ArrayList arrayList = new ArrayList(this.f11495a.length);
        int i = 0;
        while (true) {
            String[] strArr = this.f11495a;
            if (i >= strArr.length) {
                return arrayList;
            }
            String str = strArr[i];
            double d = this.f11497c[i];
            double d2 = this.f11496b[i];
            int[] iArr = this.f11498d;
            arrayList.add(new zzaxi(str, d, d2, iArr[i] / this.f11499e, iArr[i]));
            i++;
        }
    }
}
