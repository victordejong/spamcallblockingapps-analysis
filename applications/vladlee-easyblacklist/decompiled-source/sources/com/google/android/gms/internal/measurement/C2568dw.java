package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.dw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dw.class */
public final class C2568dw {

    /* renamed from: a */
    private static final Class<?> f16010a = m2662d();

    /* renamed from: b */
    private static final AbstractC2585em<?, ?> f16011b = m2674a(false);

    /* renamed from: c */
    private static final AbstractC2585em<?, ?> f16012c = m2674a(true);

    /* renamed from: d */
    private static final AbstractC2585em<?, ?> f16013d = new C2586en();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2687a(int i, Object obj, AbstractC2566du duVar) {
        return obj instanceof zzft ? zzen.zza(i, (zzft) obj) : zzen.m2295b(i, (zzgo) obj, duVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2686a(int i, List<Long> list) {
        if (list.size() == 0) {
            return 0;
        }
        return m2675a(list) + (list.size() * zzen.zze(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2685a(int i, List<?> list, AbstractC2566du duVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzen.zze(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zze += obj instanceof zzft ? zzen.zza((zzft) obj) : zzen.m2297a((zzgo) obj, duVar);
        }
        return zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2675a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2546da)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzen.zzd(list.get(i2).longValue());
                i2++;
            }
        } else {
            C2546da daVar = (C2546da) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzen.zzd(daVar.zzb(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static AbstractC2585em<?, ?> m2689a() {
        return f16011b;
    }

    /* renamed from: a */
    private static AbstractC2585em<?, ?> m2674a(boolean z) {
        try {
            Class<?> e = m2658e();
            if (e == null) {
                return null;
            }
            return (AbstractC2585em) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <UT, UB> UB m2688a(int i, int i2, UB ub, AbstractC2585em<UT, UB> emVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = emVar.mo2603a();
        }
        emVar.mo2600a((AbstractC2585em<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <UT, UB> UB m2681a(int i, List<Integer> list, zzfk zzfkVar, UB ub, AbstractC2585em<UT, UB> emVar) {
        UB ub2;
        if (zzfkVar == null) {
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
                if (!zzfkVar.zza(intValue)) {
                    ub = (UB) m2688a(i, intValue, ub, emVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzfkVar.zza(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m2688a(i, intValue2, ub, emVar);
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
    public static void m2684a(int i, List<String> list, AbstractC2606fc fcVar) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2502a(i, list);
        }
    }

    /* renamed from: a */
    public static void m2683a(int i, List<?> list, AbstractC2606fc fcVar, AbstractC2566du duVar) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2501a(i, list, duVar);
        }
    }

    /* renamed from: a */
    public static void m2682a(int i, List<Double> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2480g(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T, FT extends zzey<FT>> void m2680a(AbstractC2528cj<FT> cjVar, T t, T t2) {
        C2532cn<FT> a = cjVar.mo2861a(t2);
        if (!a.f15935a.isEmpty()) {
            cjVar.mo2858b(t).m2853a(a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> void m2679a(AbstractC2550de deVar, T t, T t2, long j) {
        C2588ep.m2576a(t, j, deVar.mo2805a(C2588ep.m2555f(t, j), C2588ep.m2555f(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T, UT, UB> void m2678a(AbstractC2585em<UT, UB> emVar, T t, T t2) {
        emVar.mo2595a(t, emVar.mo2589c(emVar.mo2594b(t), emVar.mo2594b(t2)));
    }

    /* renamed from: a */
    public static void m2677a(Class<?> cls) {
        Class<?> cls2;
        if (!zzfd.class.isAssignableFrom(cls) && (cls2 = f16010a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m2676a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m2672b(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2667b(list) + (size * zzen.zze(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m2671b(int i, List<zzgo> list, AbstractC2566du duVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzen.m2294c(i, list.get(i3), duVar);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m2667b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2546da)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzen.zze(list.get(i2).longValue());
                i2++;
            }
        } else {
            C2546da daVar = (C2546da) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzen.zze(daVar.zzb(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC2585em<?, ?> m2673b() {
        return f16012c;
    }

    /* renamed from: b */
    public static void m2670b(int i, List<zzdu> list, AbstractC2606fc fcVar) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2494b(i, list);
        }
    }

    /* renamed from: b */
    public static void m2669b(int i, List<?> list, AbstractC2606fc fcVar, AbstractC2566du duVar) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2493b(i, list, duVar);
        }
    }

    /* renamed from: b */
    public static void m2668b(int i, List<Float> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2481f(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m2665c(int i, List<Long> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2663c(list) + (size * zzen.zze(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m2663c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2546da)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzen.zzf(list.get(i2).longValue());
                i2++;
            }
        } else {
            C2546da daVar = (C2546da) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzen.zzf(daVar.zzb(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static AbstractC2585em<?, ?> m2666c() {
        return f16013d;
    }

    /* renamed from: c */
    public static void m2664c(int i, List<Long> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2489c(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m2661d(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2659d(list) + (size * zzen.zze(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m2659d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2538ct)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzen.zzk(list.get(i2).intValue());
                i2++;
            }
        } else {
            C2538ct ctVar = (C2538ct) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzen.zzk(ctVar.m2829a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: d */
    private static Class<?> m2662d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m2660d(int i, List<Long> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2486d(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m2657e(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2655e(list) + (size * zzen.zze(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m2655e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2538ct)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzen.zzf(list.get(i2).intValue());
                i2++;
            }
        } else {
            C2538ct ctVar = (C2538ct) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzen.zzf(ctVar.m2829a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e */
    private static Class<?> m2658e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m2656e(int i, List<Long> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2473n(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static int m2654f(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2652f(list) + (size * zzen.zze(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static int m2652f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2538ct)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzen.zzg(list.get(i2).intValue());
                i2++;
            }
        } else {
            C2538ct ctVar = (C2538ct) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzen.zzg(ctVar.m2829a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m2653f(int i, List<Long> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2483e(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m2651g(int i, List<Integer> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2649g(list) + (size * zzen.zze(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m2649g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C2538ct)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzen.zzh(list.get(i2).intValue());
                i2++;
            }
        } else {
            C2538ct ctVar = (C2538ct) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzen.zzh(ctVar.m2829a(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m2650g(int i, List<Long> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2475l(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static int m2648h(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzen.zzi(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static int m2646h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m2647h(int i, List<Integer> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2500a(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m2645i(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzen.zzg(i, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m2643i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m2644i(int i, List<Integer> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2477j(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static int m2642j(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzen.zzb(i, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static int m2640j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m2641j(int i, List<Integer> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2474m(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static int m2639k(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int zze = zzen.zze(i) * size;
        int i5 = zze;
        if (!(list instanceof zzfv)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzdu ? zzen.zzb((zzdu) obj) : zzen.zzb((String) obj);
                i3++;
            }
        } else {
            zzfv zzfvVar = (zzfv) list;
            int i6 = zze;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object zzb = zzfvVar.zzb(i4);
                i6 += zzb instanceof zzdu ? zzen.zzb((zzdu) zzb) : zzen.zzb((String) zzb);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: k */
    public static void m2638k(int i, List<Integer> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2492b(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static int m2637l(int i, List<zzdu> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = size * zzen.zze(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zze += zzen.zzb(list.get(i2));
        }
        return zze;
    }

    /* renamed from: l */
    public static void m2636l(int i, List<Integer> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2476k(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m2635m(int i, List<Integer> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2479h(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m2634n(int i, List<Boolean> list, AbstractC2606fc fcVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            fcVar.mo2478i(i, list, z);
        }
    }
}
