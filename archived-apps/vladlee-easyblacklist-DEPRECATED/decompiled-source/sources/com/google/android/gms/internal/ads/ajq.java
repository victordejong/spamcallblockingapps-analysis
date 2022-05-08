package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajq.class */
public final class ajq {

    /* renamed from: a */
    private static final Class<?> f7498a = m5131d();

    /* renamed from: b */
    private static final ake<?, ?> f7499b = m5143a(false);

    /* renamed from: c */
    private static final ake<?, ?> f7500c = m5143a(true);

    /* renamed from: d */
    private static final ake<?, ?> f7501d = new akf();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5156a(int i, Object obj, ajo ajoVar) {
        return obj instanceof zzdsj ? zzdrb.zza(i, (zzdsj) obj) : zzdrb.m3387b(i, (zzdte) obj, ajoVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5155a(int i, List<Long> list) {
        if (list.size() == 0) {
            return 0;
        }
        return m5144a(list) + (list.size() * zzdrb.zzfz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5154a(int i, List<?> list, ajo ajoVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzfz = zzdrb.zzfz(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzfz += obj instanceof zzdsj ? zzdrb.zza((zzdsj) obj) : zzdrb.m3386b((zzdte) obj, ajoVar);
        }
        return zzfz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5144a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof ain)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdrb.zzfj(list.get(i2).longValue());
                i2++;
            }
        } else {
            ain ainVar = (ain) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdrb.zzfj(ainVar.m5313a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static ake<?, ?> m5158a() {
        return f7499b;
    }

    /* renamed from: a */
    private static ake<?, ?> m5143a(boolean z) {
        try {
            Class<?> e = m5127e();
            if (e == null) {
                return null;
            }
            return (ake) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <UT, UB> UB m5157a(int i, int i2, UB ub, ake<UT, UB> akeVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = akeVar.mo5089a();
        }
        akeVar.mo5086a((ake<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <UT, UB> UB m5150a(int i, List<Integer> list, zzdsa zzdsaVar, UB ub, ake<UT, UB> akeVar) {
        UB ub2;
        if (zzdsaVar == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it = list.iterator();
            while (true) {
                ub2 = ub;
                if (!it.hasNext()) {
                    break;
                }
                int intValue = it.next().intValue();
                if (!zzdsaVar.zzf(intValue)) {
                    ub = (UB) m5157a(i, intValue, ub, akeVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzdsaVar.zzf(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m5157a(i, intValue2, ub, akeVar);
                }
            }
            ub2 = ub;
            if (i2 != size) {
                list.subList(i2, size).clear();
                ub2 = ub;
            }
        }
        return ub2;
    }

    /* renamed from: a */
    public static void m5153a(int i, List<String> list, aku akuVar) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4979a(i, list);
        }
    }

    /* renamed from: a */
    public static void m5152a(int i, List<?> list, aku akuVar, ajo ajoVar) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4978a(i, list, ajoVar);
        }
    }

    /* renamed from: a */
    public static void m5151a(int i, List<Double> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4957g(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T, FT extends zzdro<FT>> void m5149a(ahw<FT> ahwVar, T t, T t2) {
        aia<FT> a = ahwVar.mo5360a(t2);
        if (!a.f7398a.isEmpty()) {
            ahwVar.mo5357b(t).m5352a(a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> void m5148a(air airVar, T t, T t2, long j) {
        akj.m5061a(t, j, airVar.mo5304a(akj.m5038f(t, j), akj.m5038f(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T, UT, UB> void m5147a(ake<UT, UB> akeVar, T t, T t2) {
        akeVar.mo5081a(t, akeVar.mo5075c(akeVar.mo5080b(t), akeVar.mo5080b(t2)));
    }

    /* renamed from: a */
    public static void m5146a(Class<?> cls) {
        Class<?> cls2;
        if (!zzdrt.class.isAssignableFrom(cls) && (cls2 = f7498a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m5145a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m5141b(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m5136b(list) + (size * zzdrb.zzfz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m5140b(int i, List<zzdte> list, ajo ajoVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzdrb.m3385c(i, list.get(i3), ajoVar);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m5136b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof ain)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdrb.zzfk(list.get(i2).longValue());
                i2++;
            }
        } else {
            ain ainVar = (ain) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdrb.zzfk(ainVar.m5313a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static ake<?, ?> m5142b() {
        return f7500c;
    }

    /* renamed from: b */
    public static void m5139b(int i, List<zzdqk> list, aku akuVar) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4971b(i, list);
        }
    }

    /* renamed from: b */
    public static void m5138b(int i, List<?> list, aku akuVar, ajo ajoVar) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4970b(i, list, ajoVar);
        }
    }

    /* renamed from: b */
    public static void m5137b(int i, List<Float> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4958f(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m5134c(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m5132c(list) + (size * zzdrb.zzfz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m5132c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof ain)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdrb.zzfl(list.get(i2).longValue());
                i2++;
            }
        } else {
            ain ainVar = (ain) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdrb.zzfl(ainVar.m5313a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static ake<?, ?> m5135c() {
        return f7501d;
    }

    /* renamed from: c */
    public static void m5133c(int i, List<Long> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4966c(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m5130d(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m5128d(list) + (size * zzdrb.zzfz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m5128d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof aig)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdrb.zzgf(list.get(i2).intValue());
                i2++;
            }
        } else {
            aig aigVar = (aig) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdrb.zzgf(aigVar.m5328a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: d */
    private static Class<?> m5131d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m5129d(int i, List<Long> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4963d(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m5126e(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m5124e(list) + (size * zzdrb.zzfz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m5124e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof aig)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdrb.zzga(list.get(i2).intValue());
                i2++;
            }
        } else {
            aig aigVar = (aig) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdrb.zzga(aigVar.m5328a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e */
    private static Class<?> m5127e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m5125e(int i, List<Long> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4950n(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static int m5123f(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m5121f(list) + (size * zzdrb.zzfz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static int m5121f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof aig)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdrb.zzgb(list.get(i2).intValue());
                i2++;
            }
        } else {
            aig aigVar = (aig) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdrb.zzgb(aigVar.m5328a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m5122f(int i, List<Long> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4960e(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m5120g(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m5118g(list) + (size * zzdrb.zzfz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m5118g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof aig)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzdrb.zzgc(list.get(i2).intValue());
                i2++;
            }
        } else {
            aig aigVar = (aig) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzdrb.zzgc(aigVar.m5328a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m5119g(int i, List<Long> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4952l(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static int m5117h(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdrb.zzai(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static int m5115h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m5116h(int i, List<Integer> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4977a(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m5114i(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdrb.zzm(i, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m5112i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m5113i(int i, List<Integer> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4954j(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static int m5111j(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdrb.zzi(i, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static int m5109j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m5110j(int i, List<Integer> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4951m(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static int m5108k(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int zzfz = zzdrb.zzfz(i) * size;
        int i5 = zzfz;
        if (!(list instanceof zzdsl)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzdqk ? zzdrb.zzbf((zzdqk) obj) : zzdrb.zzhh((String) obj);
                i3++;
            }
        } else {
            zzdsl zzdslVar = (zzdsl) list;
            int i6 = zzfz;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object zzgm = zzdslVar.zzgm(i4);
                i6 += zzgm instanceof zzdqk ? zzdrb.zzbf((zzdqk) zzgm) : zzdrb.zzhh((String) zzgm);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: k */
    public static void m5107k(int i, List<Integer> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4969b(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static int m5106l(int i, List<zzdqk> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzfz = size * zzdrb.zzfz(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzfz += zzdrb.zzbf(list.get(i2));
        }
        return zzfz;
    }

    /* renamed from: l */
    public static void m5105l(int i, List<Integer> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4953k(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m5104m(int i, List<Integer> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4956h(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m5103n(int i, List<Boolean> list, aku akuVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            akuVar.mo4955i(i, list, z);
        }
    }
}
