package com.google.android.gms.measurement.internal;

import androidx.p026b.C0529a;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzmj;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.hu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hu.class */
public final class C2848hu {

    /* renamed from: a */
    private String f17046a;

    /* renamed from: b */
    private boolean f17047b;

    /* renamed from: c */
    private zzbr.zzi f17048c;

    /* renamed from: d */
    private BitSet f17049d;

    /* renamed from: e */
    private BitSet f17050e;

    /* renamed from: f */
    private Map<Integer, Long> f17051f;

    /* renamed from: g */
    private Map<Integer, List<Long>> f17052g;

    /* renamed from: h */
    private final /* synthetic */ C2847ht f17053h;

    private C2848hu(C2847ht htVar, String str) {
        this.f17053h = htVar;
        this.f17046a = str;
        this.f17047b = true;
        this.f17049d = new BitSet();
        this.f17050e = new BitSet();
        this.f17051f = new C0529a();
        this.f17052g = new C0529a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2848hu(C2847ht htVar, String str, byte b) {
        this(htVar, str);
    }

    private C2848hu(C2847ht htVar, String str, zzbr.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map<Integer, Long> map, Map<Integer, Long> map2) {
        this.f17053h = htVar;
        this.f17046a = str;
        this.f17049d = bitSet;
        this.f17050e = bitSet2;
        this.f17051f = map;
        this.f17052g = new C0529a();
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(map2.get(num));
                this.f17052g.put(num, arrayList);
            }
        }
        this.f17047b = false;
        this.f17048c = zziVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2848hu(C2847ht htVar, String str, zzbr.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, byte b) {
        this(htVar, str, zziVar, bitSet, bitSet2, map, map2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ BitSet m2017a(C2848hu huVar) {
        return huVar.f17049d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0169, code lost:
        if (r6.f17053h.zzt().zzd(r6.f17046a, com.google.android.gms.measurement.internal.zzap.zzbs) == false) goto L_0x016c;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r10v12, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.util.Collection] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzbr.zza m2018a(int r7, java.util.List<java.lang.Integer> r8) {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2848hu.m2018a(int, java.util.List):com.google.android.gms.internal.measurement.zzbr$zza");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2016a(AbstractC2853hz hzVar) {
        int a = hzVar.mo2012a();
        if (hzVar.f17066c != null) {
            this.f17050e.set(a, hzVar.f17066c.booleanValue());
        }
        if (hzVar.f17067d != null) {
            this.f17049d.set(a, hzVar.f17067d.booleanValue());
        }
        if (hzVar.f17068e != null) {
            Long l = this.f17051f.get(Integer.valueOf(a));
            long longValue = hzVar.f17068e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f17051f.put(Integer.valueOf(a), Long.valueOf(longValue));
            }
        }
        if (hzVar.f17069f != null) {
            List<Long> list = this.f17052g.get(Integer.valueOf(a));
            List<Long> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.f17052g.put(Integer.valueOf(a), list2);
            }
            if (zzmj.zzb() && this.f17053h.zzt().zzd(this.f17046a, zzap.zzbs) && hzVar.mo2004b()) {
                list2.clear();
            }
            list2.add(Long.valueOf(hzVar.f17069f.longValue() / 1000));
        }
    }
}
