package com.google.android.gms.internal.measurement;

import androidx.preference.C1001ac;
import com.google.ads.AdSize;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.dl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dl.class */
public final class C2557dl<T> implements AbstractC2566du<T> {

    /* renamed from: a */
    private static final int[] f15975a = new int[0];

    /* renamed from: b */
    private static final Unsafe f15976b = C2588ep.m2567c();

    /* renamed from: c */
    private final int[] f15977c;

    /* renamed from: d */
    private final Object[] f15978d;

    /* renamed from: e */
    private final int f15979e;

    /* renamed from: f */
    private final int f15980f;

    /* renamed from: g */
    private final zzgo f15981g;

    /* renamed from: h */
    private final boolean f15982h;

    /* renamed from: i */
    private final boolean f15983i;

    /* renamed from: j */
    private final boolean f15984j;

    /* renamed from: k */
    private final boolean f15985k;

    /* renamed from: l */
    private final int[] f15986l;

    /* renamed from: m */
    private final int f15987m;

    /* renamed from: n */
    private final int f15988n;

    /* renamed from: o */
    private final AbstractC2560do f15989o;

    /* renamed from: p */
    private final AbstractC2541cw f15990p;

    /* renamed from: q */
    private final AbstractC2585em<?, ?> f15991q;

    /* renamed from: r */
    private final AbstractC2528cj<?> f15992r;

    /* renamed from: s */
    private final AbstractC2550de f15993s;

    private C2557dl(int[] iArr, Object[] objArr, int i, int i2, zzgo zzgoVar, boolean z, int[] iArr2, int i3, int i4, AbstractC2560do doVar, AbstractC2541cw cwVar, AbstractC2585em<?, ?> emVar, AbstractC2528cj<?> cjVar, AbstractC2550de deVar) {
        this.f15977c = iArr;
        this.f15978d = objArr;
        this.f15979e = i;
        this.f15980f = i2;
        this.f15983i = zzgoVar instanceof zzfd;
        this.f15984j = z;
        this.f15982h = cjVar != null && cjVar.mo2862a(zzgoVar);
        this.f15985k = false;
        this.f15986l = iArr2;
        this.f15987m = i3;
        this.f15988n = i4;
        this.f15989o = doVar;
        this.f15990p = cwVar;
        this.f15991q = emVar;
        this.f15992r = cjVar;
        this.f15981g = zzgoVar;
        this.f15993s = deVar;
    }

    /* renamed from: a */
    private final int m2792a(int i, int i2) {
        if (i < this.f15979e || i > this.f15980f) {
            return -1;
        }
        return m2770b(i, i2);
    }

    /* renamed from: a */
    private static <UT, UB> int m2788a(AbstractC2585em<UT, UB> emVar, T t) {
        return emVar.mo2586f(emVar.mo2594b(t));
    }

    /* renamed from: a */
    private final int m2776a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C2511bt btVar) {
        Object obj;
        Object obj2;
        Object obj3;
        long j2;
        int i9;
        Unsafe unsafe = f15976b;
        long j3 = this.f15977c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    obj = Double.valueOf(C2508bq.m2903c(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i += 8;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    obj2 = Float.valueOf(C2508bq.m2901d(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i += 4;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = C2508bq.m2904b(bArr, i, btVar);
                    j2 = btVar.f15898b;
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = C2508bq.m2907a(bArr, i, btVar);
                    i9 = btVar.f15897a;
                    obj3 = Integer.valueOf(i9);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    obj = Long.valueOf(C2508bq.m2905b(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i += 8;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    obj2 = Integer.valueOf(C2508bq.m2908a(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i += 4;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = C2508bq.m2904b(bArr, i, btVar);
                    obj3 = Boolean.valueOf(btVar.f15898b != 0);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = C2508bq.m2907a(bArr, i, btVar);
                    int i10 = btVar.f15897a;
                    if (i10 == 0) {
                        obj3 = "";
                        unsafe.putObject(t, j, obj3);
                        unsafe.putInt(t, j3, i4);
                        break;
                    } else if ((i6 & 536870912) == 0 || C2595es.m2530a(bArr, i, i + i10)) {
                        unsafe.putObject(t, j, new String(bArr, i, i10, zzff.f16286a));
                        i += i10;
                        unsafe.putInt(t, j3, i4);
                    } else {
                        throw zzfo.m2260h();
                    }
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = C2508bq.m2909a(m2793a(i8), bArr, i, i2, btVar);
                    Object object = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj4 = btVar.f15899c;
                    obj3 = object == null ? obj4 : zzff.m2270a(object, obj4);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = C2508bq.m2899e(bArr, i, btVar);
                    obj3 = btVar.f15899c;
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = C2508bq.m2907a(bArr, i, btVar);
                    int i11 = btVar.f15897a;
                    zzfk b = m2771b(i8);
                    if (b != null && !b.zza(i11)) {
                        m2758e(t).m2248a(i3, Long.valueOf(i11));
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i11));
                        unsafe.putInt(t, j3, i4);
                        break;
                    }
                }
                break;
            case 66:
                if (i5 == 0) {
                    i = C2508bq.m2907a(bArr, i, btVar);
                    i9 = zzeg.zze(btVar.f15897a);
                    obj3 = Integer.valueOf(i9);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = C2508bq.m2904b(bArr, i, btVar);
                    j2 = zzeg.zza(btVar.f15898b);
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = C2508bq.m2910a(m2793a(i8), bArr, i, i2, (i3 & (-8)) | 4, btVar);
                    Object object2 = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj5 = btVar.f15899c;
                    obj3 = object2 == null ? obj5 : zzff.m2270a(object2, obj5);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:171:0x05d2, code lost:
        if (r22.f15898b != 0) goto L_0x05d5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x05d5, code lost:
        r27 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x05db, code lost:
        r27 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x05e1, code lost:
        r0.m2894a(r27);
        r11 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x05ee, code lost:
        if (r14 >= r12) goto L_0x0938;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x05f1, code lost:
        r0 = com.google.android.gms.internal.measurement.C2508bq.m2907a(r10, r14, r22);
        r11 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0605, code lost:
        if (r13 != r22.f15897a) goto L_0x0938;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0608, code lost:
        r14 = com.google.android.gms.internal.measurement.C2508bq.m2904b(r10, r0, r22);
        r11 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x061c, code lost:
        if (r22.f15898b == 0) goto L_0x05db;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0352  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:112:0x0423 -> B:113:0x0432). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:120:0x0468 -> B:110:0x0400). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:173:0x05db -> B:174:0x05e1). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:179:0x061c -> B:172:0x05d5). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0331 -> B:79:0x0348). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x0398 -> B:77:0x0323). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m2775a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.measurement.C2511bt r22) {
        /*
            Method dump skipped, instructions count: 2362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2557dl.m2775a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.bt):int");
    }

    /* renamed from: a */
    private final <K, V> int m2773a(T t, byte[] bArr, int i, int i2, long j, C2511bt btVar) {
        Unsafe unsafe = f15976b;
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.f15993s.mo2802c(object)) {
            obj = this.f15993s.mo2807a();
            this.f15993s.mo2805a(obj, object);
            unsafe.putObject(t, j, obj);
        }
        C2549dd<?, ?> b = this.f15993s.mo2804b();
        Map<?, ?> a = this.f15993s.mo2806a(obj);
        int a2 = C2508bq.m2907a(bArr, i, btVar);
        int i3 = btVar.f15897a;
        if (i3 < 0 || i3 > i2 - a2) {
            throw zzfo.m2267a();
        }
        int i4 = i3 + a2;
        Object obj2 = (K) b.f15969b;
        Object obj3 = (V) b.f15971d;
        while (a2 < i4) {
            int i5 = a2 + 1;
            byte b2 = bArr[a2];
            int i6 = i5;
            int i7 = b2;
            if (b2 < 0) {
                i6 = C2508bq.m2912a(b2, bArr, i5, btVar);
                i7 = btVar.f15897a;
            }
            int i8 = i7 >>> 3;
            int i9 = i7 & 7;
            if (i8 != 1) {
                if (i8 == 2 && i9 == b.f15970c.zzb()) {
                    a2 = m2772a(bArr, i6, i2, b.f15970c, b.f15971d.getClass(), btVar);
                    obj3 = (V) btVar.f15899c;
                }
                a2 = C2508bq.m2915a(i7, bArr, i6, i2, btVar);
            } else if (i9 == b.f15968a.zzb()) {
                a2 = m2772a(bArr, i6, i2, b.f15968a, (Class<?>) null, btVar);
                obj2 = (K) btVar.f15899c;
            } else {
                a2 = C2508bq.m2915a(i7, bArr, i6, i2, btVar);
            }
        }
        if (a2 == i4) {
            a.put(obj2, obj3);
            return i4;
        }
        throw zzfo.m2261g();
    }

    /* renamed from: a */
    private static int m2772a(byte[] bArr, int i, int i2, zzim zzimVar, Class<?> cls, C2511bt btVar) {
        int i3;
        Object valueOf;
        Object obj;
        Object obj2;
        int i4;
        long j;
        switch (C2556dk.f15974a[zzimVar.ordinal()]) {
            case 1:
                i3 = C2508bq.m2904b(bArr, i, btVar);
                valueOf = Boolean.valueOf(btVar.f15898b != 0);
                btVar.f15899c = valueOf;
                break;
            case 2:
                i3 = C2508bq.m2899e(bArr, i, btVar);
                break;
            case 3:
                obj = Double.valueOf(C2508bq.m2903c(bArr, i));
                btVar.f15899c = obj;
                i3 = i + 8;
                break;
            case 4:
            case 5:
                obj2 = Integer.valueOf(C2508bq.m2908a(bArr, i));
                btVar.f15899c = obj2;
                i3 = i + 4;
                break;
            case 6:
            case 7:
                obj = Long.valueOf(C2508bq.m2905b(bArr, i));
                btVar.f15899c = obj;
                i3 = i + 8;
                break;
            case 8:
                obj2 = Float.valueOf(C2508bq.m2901d(bArr, i));
                btVar.f15899c = obj2;
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = C2508bq.m2907a(bArr, i, btVar);
                i4 = btVar.f15897a;
                valueOf = Integer.valueOf(i4);
                btVar.f15899c = valueOf;
                break;
            case 12:
            case 13:
                i3 = C2508bq.m2904b(bArr, i, btVar);
                j = btVar.f15898b;
                valueOf = Long.valueOf(j);
                btVar.f15899c = valueOf;
                break;
            case 14:
                i3 = C2508bq.m2909a(C2562dq.m2749a().m2748a((Class) cls), bArr, i, i2, btVar);
                break;
            case 15:
                i3 = C2508bq.m2907a(bArr, i, btVar);
                i4 = zzeg.zze(btVar.f15897a);
                valueOf = Integer.valueOf(i4);
                btVar.f15899c = valueOf;
                break;
            case 16:
                i3 = C2508bq.m2904b(bArr, i, btVar);
                j = zzeg.zza(btVar.f15898b);
                valueOf = Long.valueOf(j);
                btVar.f15899c = valueOf;
                break;
            case 17:
                i3 = C2508bq.m2900d(bArr, i, btVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:183:0x097e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.measurement.C2557dl<T> m2789a(com.google.android.gms.internal.measurement.AbstractC2554di r17, com.google.android.gms.internal.measurement.AbstractC2560do r18, com.google.android.gms.internal.measurement.AbstractC2541cw r19, com.google.android.gms.internal.measurement.AbstractC2585em<?, ?> r20, com.google.android.gms.internal.measurement.AbstractC2528cj<?> r21, com.google.android.gms.internal.measurement.AbstractC2550de r22) {
        /*
            Method dump skipped, instructions count: 2688
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2557dl.m2789a(com.google.android.gms.internal.measurement.di, com.google.android.gms.internal.measurement.do, com.google.android.gms.internal.measurement.cw, com.google.android.gms.internal.measurement.em, com.google.android.gms.internal.measurement.cj, com.google.android.gms.internal.measurement.de):com.google.android.gms.internal.measurement.dl");
    }

    /* renamed from: a */
    private final AbstractC2566du m2793a(int i) {
        int i2 = (i / 3) << 1;
        AbstractC2566du duVar = (AbstractC2566du) this.f15978d[i2];
        if (duVar != null) {
            return duVar;
        }
        AbstractC2566du<T> a = C2562dq.m2749a().m2748a((Class) ((Class) this.f15978d[i2 + 1]));
        this.f15978d[i2] = a;
        return a;
    }

    /* renamed from: a */
    private final <K, V, UT, UB> UB m2790a(int i, Map<K, V> map, zzfk zzfkVar, UB ub, AbstractC2585em<UT, UB> emVar) {
        C2549dd<?, ?> b = this.f15993s.mo2804b();
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzfkVar.zza(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = emVar.mo2603a();
                }
                C2519ca b2 = zzdu.m2303b(zzgg.m2257a(b, next.getKey(), next.getValue()));
                try {
                    zzgg.m2256a(b2.m2891b(), b, next.getKey(), next.getValue());
                    emVar.mo2599a((AbstractC2585em<UT, UB>) ub2, i, b2.m2892a());
                    it.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* renamed from: a */
    private final <UT, UB> UB m2779a(Object obj, int i, UB ub, AbstractC2585em<UT, UB> emVar) {
        zzfk b;
        int i2 = this.f15977c[i];
        Object f = C2588ep.m2555f(obj, m2764c(i) & 1048575);
        if (!(f == null || (b = m2771b(i)) == null)) {
            return (UB) m2790a(i2, this.f15993s.mo2806a(f), b, (zzfk) ub, (AbstractC2585em<UT, zzfk>) emVar);
        }
        return ub;
    }

    /* renamed from: a */
    private static Field m2785a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    /* renamed from: a */
    private static List<?> m2778a(Object obj, long j) {
        return (List) C2588ep.m2555f(obj, j);
    }

    /* renamed from: a */
    private static void m2791a(int i, Object obj, AbstractC2606fc fcVar) {
        if (obj instanceof String) {
            fcVar.mo2503a(i, (String) obj);
        } else {
            fcVar.mo2506a(i, (zzdu) obj);
        }
    }

    /* renamed from: a */
    private static <UT, UB> void m2787a(AbstractC2585em<UT, UB> emVar, T t, AbstractC2606fc fcVar) {
        emVar.mo2597a((AbstractC2585em<UT, UB>) emVar.mo2594b(t), fcVar);
    }

    /* renamed from: a */
    private final <K, V> void m2786a(AbstractC2606fc fcVar, int i, Object obj) {
        if (obj != null) {
            fcVar.mo2507a(i, this.f15993s.mo2804b(), this.f15993s.mo2803b(obj));
        }
    }

    /* renamed from: a */
    private final void m2780a(Object obj, int i, AbstractC2567dv dvVar) {
        long j;
        Object n;
        if (m2759e(i)) {
            j = i & 1048575;
            n = dvVar.mo2702m();
        } else if (this.f15983i) {
            j = i & 1048575;
            n = dvVar.mo2704l();
        } else {
            j = i & 1048575;
            n = dvVar.mo2700n();
        }
        C2588ep.m2576a(obj, j, n);
    }

    /* renamed from: a */
    private final void m2777a(T t, T t2, int i) {
        long c = m2764c(i) & 1048575;
        if (m2784a((C2557dl<T>) t2, i)) {
            Object f = C2588ep.m2555f(t, c);
            Object f2 = C2588ep.m2555f(t2, c);
            if (f != null && f2 != null) {
                C2588ep.m2576a(t, c, zzff.m2270a(f, f2));
                m2769b((C2557dl<T>) t, i);
            } else if (f2 != null) {
                C2588ep.m2576a(t, c, f2);
                m2769b((C2557dl<T>) t, i);
            }
        }
    }

    /* renamed from: a */
    private final boolean m2784a(T t, int i) {
        if (this.f15984j) {
            int c = m2764c(i);
            long j = c & 1048575;
            switch ((c & 267386880) >>> 20) {
                case 0:
                    return C2588ep.m2557e(t, j) != 0.0d;
                case 1:
                    return C2588ep.m2560d(t, j) != 0.0f;
                case 2:
                    return C2588ep.m2570b(t, j) != 0;
                case 3:
                    return C2588ep.m2570b(t, j) != 0;
                case 4:
                    return C2588ep.m2582a(t, j) != 0;
                case 5:
                    return C2588ep.m2570b(t, j) != 0;
                case 6:
                    return C2588ep.m2582a(t, j) != 0;
                case 7:
                    return C2588ep.m2565c(t, j);
                case 8:
                    Object f = C2588ep.m2555f(t, j);
                    if (f instanceof String) {
                        return !((String) f).isEmpty();
                    }
                    if (f instanceof zzdu) {
                        return !zzdu.zza.equals(f);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return C2588ep.m2555f(t, j) != null;
                case 10:
                    return !zzdu.zza.equals(C2588ep.m2555f(t, j));
                case 11:
                    return C2588ep.m2582a(t, j) != 0;
                case 12:
                    return C2588ep.m2582a(t, j) != 0;
                case 13:
                    return C2588ep.m2582a(t, j) != 0;
                case 14:
                    return C2588ep.m2570b(t, j) != 0;
                case 15:
                    return C2588ep.m2582a(t, j) != 0;
                case 16:
                    return C2588ep.m2570b(t, j) != 0;
                case 17:
                    return C2588ep.m2555f(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int d = m2761d(i);
            return (C2588ep.m2582a(t, (long) (d & 1048575)) & (1 << (d >>> 20))) != 0;
        }
    }

    /* renamed from: a */
    private final boolean m2783a(T t, int i, int i2) {
        return C2588ep.m2582a(t, (long) (m2761d(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    private final boolean m2782a(T t, int i, int i2, int i3) {
        return this.f15984j ? m2784a((C2557dl<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static boolean m2781a(Object obj, int i, AbstractC2566du duVar) {
        return duVar.mo2732d(C2588ep.m2555f(obj, i & 1048575));
    }

    /* renamed from: b */
    private static <T> double m2767b(T t, long j) {
        return ((Double) C2588ep.m2555f(t, j)).doubleValue();
    }

    /* renamed from: b */
    private final int m2770b(int i, int i2) {
        int length = (this.f15977c.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f15977c[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /* renamed from: b */
    private final zzfk m2771b(int i) {
        return (zzfk) this.f15978d[((i / 3) << 1) + 1];
    }

    /* renamed from: b */
    private final void m2769b(T t, int i) {
        if (!this.f15984j) {
            int d = m2761d(i);
            long j = d & 1048575;
            C2588ep.m2578a((Object) t, j, C2588ep.m2582a(t, j) | (1 << (d >>> 20)));
        }
    }

    /* renamed from: b */
    private final void m2768b(T t, int i, int i2) {
        C2588ep.m2578a((Object) t, m2761d(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0988  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m2766b(T r9, com.google.android.gms.internal.measurement.AbstractC2606fc r10) {
        /*
            Method dump skipped, instructions count: 2487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2557dl.m2766b(java.lang.Object, com.google.android.gms.internal.measurement.fc):void");
    }

    /* renamed from: b */
    private final void m2765b(T t, T t2, int i) {
        int c = m2764c(i);
        int i2 = this.f15977c[i];
        long j = c & 1048575;
        if (m2783a((C2557dl<T>) t2, i2, i)) {
            Object f = C2588ep.m2555f(t, j);
            Object f2 = C2588ep.m2555f(t2, j);
            if (f != null && f2 != null) {
                C2588ep.m2576a(t, j, zzff.m2270a(f, f2));
                m2768b((C2557dl<T>) t, i2, i);
            } else if (f2 != null) {
                C2588ep.m2576a(t, j, f2);
                m2768b((C2557dl<T>) t, i2, i);
            }
        }
    }

    /* renamed from: c */
    private static <T> float m2763c(T t, long j) {
        return ((Float) C2588ep.m2555f(t, j)).floatValue();
    }

    /* renamed from: c */
    private final int m2764c(int i) {
        return this.f15977c[i + 1];
    }

    /* renamed from: c */
    private final boolean m2762c(T t, T t2, int i) {
        return m2784a((C2557dl<T>) t, i) == m2784a((C2557dl<T>) t2, i);
    }

    /* renamed from: d */
    private final int m2761d(int i) {
        return this.f15977c[i + 2];
    }

    /* renamed from: d */
    private static <T> int m2760d(T t, long j) {
        return ((Integer) C2588ep.m2555f(t, j)).intValue();
    }

    /* renamed from: e */
    private static <T> long m2757e(T t, long j) {
        return ((Long) C2588ep.m2555f(t, j)).longValue();
    }

    /* renamed from: e */
    private static zzhy m2758e(Object obj) {
        zzfd zzfdVar = (zzfd) obj;
        zzhy zzhyVar = zzfdVar.zzb;
        zzhy zzhyVar2 = zzhyVar;
        if (zzhyVar == zzhy.zza()) {
            zzhyVar2 = zzhy.m2249a();
            zzfdVar.zzb = zzhyVar2;
        }
        return zzhyVar2;
    }

    /* renamed from: e */
    private static boolean m2759e(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: f */
    private final int m2756f(int i) {
        if (i < this.f15979e || i > this.f15980f) {
            return -1;
        }
        return m2770b(i, 0);
    }

    /* renamed from: f */
    private static <T> boolean m2755f(T t, long j) {
        return ((Boolean) C2588ep.m2555f(t, j)).booleanValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0307, code lost:
        if (r15 != null) goto L_0x0333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0330, code lost:
        if (r15 != null) goto L_0x0333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0333, code lost:
        r14 = r15.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x033a, code lost:
        r14 = (r0 * 53) + r14;
     */
    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2740a(T r6) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2557dl.mo2740a(java.lang.Object):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x07a6, code lost:
        if (r32 == (-1)) goto L_0x07b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x07a9, code lost:
        r0.putInt(r17, r32, r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x07b4, code lost:
        r22 = null;
        r21 = r18.f15987m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x07c3, code lost:
        if (r21 >= r18.f15988n) goto L_0x07e3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x07c6, code lost:
        r22 = (com.google.android.gms.internal.measurement.zzhy) r18.m2779a((java.lang.Object) r17, r18.f15986l[r21], (int) r22, (com.google.android.gms.internal.measurement.AbstractC2585em<UT, int>) r18.f15991q);
        r21 = r21 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x07e5, code lost:
        if (r22 == null) goto L_0x07f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x07e8, code lost:
        r18.f15991q.mo2591b((java.lang.Object) r17, (T) r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x07f3, code lost:
        if (r19 != 0) goto L_0x0804;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x07fa, code lost:
        if (r31 != r20) goto L_0x0800;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0803, code lost:
        throw com.google.android.gms.internal.measurement.zzfo.m2261g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0808, code lost:
        if (r31 > r20) goto L_0x0814;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x080e, code lost:
        if (r29 != r19) goto L_0x0814;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0813, code lost:
        return r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0817, code lost:
        throw com.google.android.gms.internal.measurement.zzfo.m2261g();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m2774a(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.C2511bt r22) {
        /*
            Method dump skipped, instructions count: 2072
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2557dl.m2774a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.bt):int");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    public final T mo2741a() {
        return (T) this.f15989o.mo2753a(this.f15981g);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    public final void mo2739a(T t, AbstractC2567dv dvVar, zzeq zzeqVar) {
        int i;
        long j;
        Object a;
        List<Double> a2;
        List<Float> a3;
        List<Long> a4;
        List<Long> a5;
        List<Integer> a6;
        List<Long> a7;
        List<Integer> a8;
        List<Boolean> a9;
        List<Integer> a10;
        List<Integer> a11;
        zzfk b;
        List<Integer> a12;
        List<Long> a13;
        List<Integer> a14;
        List<Long> a15;
        Object obj;
        if (zzeqVar != null) {
            AbstractC2585em emVar = this.f15991q;
            AbstractC2528cj<?> cjVar = this.f15992r;
            Object obj2 = null;
            C2532cn<?> cnVar = null;
            while (true) {
                Object obj3 = obj2;
                try {
                    int a16 = dvVar.mo2731a();
                    int f = m2756f(a16);
                    if (f >= 0) {
                        int c = m2764c(f);
                        switch ((267386880 & c) >>> 20) {
                            case 0:
                                C2588ep.m2580a(t, c & 1048575, dvVar.mo2720d());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 1:
                                C2588ep.m2579a((Object) t, c & 1048575, dvVar.mo2718e());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 2:
                                C2588ep.m2577a((Object) t, c & 1048575, dvVar.mo2714g());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 3:
                                C2588ep.m2577a((Object) t, c & 1048575, dvVar.mo2716f());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 4:
                                C2588ep.m2578a((Object) t, c & 1048575, dvVar.mo2712h());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 5:
                                C2588ep.m2577a((Object) t, c & 1048575, dvVar.mo2710i());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 6:
                                C2588ep.m2578a((Object) t, c & 1048575, dvVar.mo2708j());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 7:
                                C2588ep.m2575a(t, c & 1048575, dvVar.mo2706k());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 8:
                                m2780a(t, c, dvVar);
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 9:
                                if (m2784a((C2557dl<T>) t, f)) {
                                    j = c & 1048575;
                                    a = zzff.m2270a(C2588ep.m2555f(t, j), dvVar.mo2730a(m2793a(f), zzeqVar));
                                    C2588ep.m2576a(t, j, a);
                                    break;
                                } else {
                                    C2588ep.m2576a(t, c & 1048575, dvVar.mo2730a(m2793a(f), zzeqVar));
                                    m2769b((C2557dl<T>) t, f);
                                    break;
                                }
                            case 10:
                                C2588ep.m2576a(t, c & 1048575, dvVar.mo2700n());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 11:
                                C2588ep.m2578a((Object) t, c & 1048575, dvVar.mo2698o());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 12:
                                int p = dvVar.mo2696p();
                                zzfk b2 = m2771b(f);
                                if (b2 != null) {
                                    i = p;
                                    if (!b2.zza(p)) {
                                        obj2 = C2568dw.m2688a(a16, i, obj2, emVar);
                                        break;
                                    }
                                }
                                C2588ep.m2578a((Object) t, c & 1048575, p);
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 13:
                                C2588ep.m2578a((Object) t, c & 1048575, dvVar.mo2694q());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 14:
                                C2588ep.m2577a((Object) t, c & 1048575, dvVar.mo2692r());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 15:
                                C2588ep.m2578a((Object) t, c & 1048575, dvVar.mo2691s());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 16:
                                C2588ep.m2577a((Object) t, c & 1048575, dvVar.mo2690t());
                                m2769b((C2557dl<T>) t, f);
                                break;
                            case 17:
                                if (m2784a((C2557dl<T>) t, f)) {
                                    j = c & 1048575;
                                    a = zzff.m2270a(C2588ep.m2555f(t, j), dvVar.mo2725b(m2793a(f), zzeqVar));
                                    C2588ep.m2576a(t, j, a);
                                    break;
                                } else {
                                    C2588ep.m2576a(t, c & 1048575, dvVar.mo2725b(m2793a(f), zzeqVar));
                                    m2769b((C2557dl<T>) t, f);
                                    break;
                                }
                            case 18:
                                a2 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2729a(a2);
                                break;
                            case 19:
                                a3 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2724b(a3);
                                break;
                            case 20:
                                a4 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2719d(a4);
                                break;
                            case 21:
                                a5 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2721c(a5);
                                break;
                            case 22:
                                a6 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2717e(a6);
                                break;
                            case 23:
                                a7 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2715f(a7);
                                break;
                            case 24:
                                a8 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2713g(a8);
                                break;
                            case 25:
                                a9 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2711h(a9);
                                break;
                            case 26:
                                if (m2759e(c)) {
                                    dvVar.mo2707j(this.f15990p.mo2820a(t, c & 1048575));
                                    break;
                                } else {
                                    dvVar.mo2709i(this.f15990p.mo2820a(t, c & 1048575));
                                    break;
                                }
                            case 27:
                                dvVar.mo2728a(this.f15990p.mo2820a(t, c & 1048575), m2793a(f), zzeqVar);
                                break;
                            case 28:
                                dvVar.mo2705k(this.f15990p.mo2820a(t, c & 1048575));
                                break;
                            case 29:
                                a10 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2703l(a10);
                                break;
                            case 30:
                                a11 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2701m(a11);
                                b = m2771b(f);
                                obj2 = C2568dw.m2681a(a16, a11, b, obj2, emVar);
                                break;
                            case 31:
                                a12 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2699n(a12);
                                break;
                            case 32:
                                a13 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2697o(a13);
                                break;
                            case 33:
                                a14 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2695p(a14);
                                break;
                            case C1001ac.C1009h.f4220aZ /* 34 */:
                                a15 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2693q(a15);
                                break;
                            case C1001ac.C1009h.f4274ba /* 35 */:
                                a2 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2729a(a2);
                                break;
                            case 36:
                                a3 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2724b(a3);
                                break;
                            case 37:
                                a4 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2719d(a4);
                                break;
                            case 38:
                                a5 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2721c(a5);
                                break;
                            case 39:
                                a6 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2717e(a6);
                                break;
                            case 40:
                                a7 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2715f(a7);
                                break;
                            case 41:
                                a8 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2713g(a8);
                                break;
                            case 42:
                                a9 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2711h(a9);
                                break;
                            case 43:
                                a10 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2703l(a10);
                                break;
                            case 44:
                                a11 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2701m(a11);
                                b = m2771b(f);
                                obj2 = C2568dw.m2681a(a16, a11, b, obj2, emVar);
                                break;
                            case 45:
                                a12 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2699n(a12);
                                break;
                            case 46:
                                a13 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2697o(a13);
                                break;
                            case 47:
                                a14 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2695p(a14);
                                break;
                            case 48:
                                a15 = this.f15990p.mo2820a(t, c & 1048575);
                                dvVar.mo2693q(a15);
                                break;
                            case 49:
                                dvVar.mo2723b(this.f15990p.mo2820a(t, c & 1048575), m2793a(f), zzeqVar);
                                break;
                            case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                                long c2 = m2764c(f) & 1048575;
                                Object f2 = C2588ep.m2555f(t, c2);
                                if (f2 == null) {
                                    obj = this.f15993s.mo2807a();
                                    C2588ep.m2576a(t, c2, obj);
                                } else {
                                    obj = f2;
                                    if (this.f15993s.mo2802c(f2)) {
                                        obj = this.f15993s.mo2807a();
                                        this.f15993s.mo2805a(obj, f2);
                                        C2588ep.m2576a(t, c2, obj);
                                    }
                                }
                                dvVar.mo2727a(this.f15993s.mo2806a(obj), this.f15993s.mo2804b(), zzeqVar);
                                break;
                            case 51:
                                C2588ep.m2576a(t, c & 1048575, Double.valueOf(dvVar.mo2720d()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 52:
                                C2588ep.m2576a(t, c & 1048575, Float.valueOf(dvVar.mo2718e()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 53:
                                C2588ep.m2576a(t, c & 1048575, Long.valueOf(dvVar.mo2714g()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 54:
                                C2588ep.m2576a(t, c & 1048575, Long.valueOf(dvVar.mo2716f()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 55:
                                C2588ep.m2576a(t, c & 1048575, Integer.valueOf(dvVar.mo2712h()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 56:
                                C2588ep.m2576a(t, c & 1048575, Long.valueOf(dvVar.mo2710i()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 57:
                                C2588ep.m2576a(t, c & 1048575, Integer.valueOf(dvVar.mo2708j()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 58:
                                C2588ep.m2576a(t, c & 1048575, Boolean.valueOf(dvVar.mo2706k()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 59:
                                m2780a(t, c, dvVar);
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 60:
                                boolean a17 = m2783a((C2557dl<T>) t, a16, f);
                                int i2 = c & 1048575;
                                if (a17) {
                                    long j2 = i2;
                                    C2588ep.m2576a(t, j2, zzff.m2270a(C2588ep.m2555f(t, j2), dvVar.mo2730a(m2793a(f), zzeqVar)));
                                } else {
                                    C2588ep.m2576a(t, i2, dvVar.mo2730a(m2793a(f), zzeqVar));
                                    m2769b((C2557dl<T>) t, f);
                                }
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 61:
                                C2588ep.m2576a(t, c & 1048575, dvVar.mo2700n());
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 62:
                                C2588ep.m2576a(t, c & 1048575, Integer.valueOf(dvVar.mo2698o()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 63:
                                int p2 = dvVar.mo2696p();
                                zzfk b3 = m2771b(f);
                                if (b3 != null) {
                                    i = p2;
                                    if (!b3.zza(p2)) {
                                        obj2 = C2568dw.m2688a(a16, i, obj2, emVar);
                                        break;
                                    }
                                }
                                C2588ep.m2576a(t, c & 1048575, Integer.valueOf(p2));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 64:
                                C2588ep.m2576a(t, c & 1048575, Integer.valueOf(dvVar.mo2694q()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 65:
                                C2588ep.m2576a(t, c & 1048575, Long.valueOf(dvVar.mo2692r()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 66:
                                C2588ep.m2576a(t, c & 1048575, Integer.valueOf(dvVar.mo2691s()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 67:
                                C2588ep.m2576a(t, c & 1048575, Long.valueOf(dvVar.mo2690t()));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            case 68:
                                C2588ep.m2576a(t, c & 1048575, dvVar.mo2725b(m2793a(f), zzeqVar));
                                m2768b((C2557dl<T>) t, a16, f);
                                break;
                            default:
                                Object obj4 = obj2;
                                if (obj2 == null) {
                                    obj3 = obj2;
                                    try {
                                        obj4 = emVar.mo2603a();
                                    } catch (zzfn e) {
                                        Object obj5 = obj2;
                                        if (obj2 == null) {
                                            obj5 = emVar.mo2590c(t);
                                        }
                                        obj2 = obj5;
                                        if (emVar.m2604a((AbstractC2585em) obj5, dvVar)) {
                                            break;
                                        } else {
                                            for (int i3 = this.f15987m; i3 < this.f15988n; i3++) {
                                                obj5 = m2779a((Object) t, this.f15986l[i3], (int) obj5, (AbstractC2585em<UT, int>) emVar);
                                            }
                                            if (obj5 != null) {
                                                emVar.mo2591b((Object) t, (T) obj5);
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                }
                                obj2 = obj4;
                                if (emVar.m2604a((AbstractC2585em) obj4, dvVar)) {
                                    break;
                                } else {
                                    for (int i4 = this.f15987m; i4 < this.f15988n; i4++) {
                                        obj4 = m2779a((Object) t, this.f15986l[i4], (int) obj4, (AbstractC2585em<UT, int>) emVar);
                                    }
                                    if (obj4 != null) {
                                        emVar.mo2591b((Object) t, (T) obj4);
                                        return;
                                    }
                                    return;
                                }
                        }
                    } else if (a16 == Integer.MAX_VALUE) {
                        for (int i5 = this.f15987m; i5 < this.f15988n; i5++) {
                            obj2 = m2779a((Object) t, this.f15986l[i5], (int) obj2, (AbstractC2585em<UT, int>) emVar);
                        }
                        if (obj2 != null) {
                            emVar.mo2591b((Object) t, (T) obj2);
                            return;
                        }
                        return;
                    } else if ((!this.f15982h ? null : cjVar.mo2863a(zzeqVar, this.f15981g, a16)) != null) {
                        cnVar = cnVar;
                        if (cnVar == null) {
                            cnVar = cjVar.mo2858b(t);
                        }
                        obj2 = cjVar.mo2864a();
                    } else {
                        Object obj6 = obj2;
                        if (obj2 == null) {
                            obj6 = emVar.mo2590c(t);
                        }
                        obj2 = obj6;
                        if (!emVar.m2604a((AbstractC2585em) obj6, dvVar)) {
                            for (int i6 = this.f15987m; i6 < this.f15988n; i6++) {
                                obj6 = m2779a((Object) t, this.f15986l[i6], (int) obj6, (AbstractC2585em<UT, int>) emVar);
                            }
                            if (obj6 != null) {
                                emVar.mo2591b((Object) t, (T) obj6);
                                return;
                            }
                            return;
                        }
                    }
                } catch (Throwable th) {
                    for (int i7 = this.f15987m; i7 < this.f15988n; i7++) {
                        obj3 = m2779a((Object) t, this.f15986l[i7], (int) obj3, (AbstractC2585em<UT, int>) emVar);
                    }
                    if (obj3 != null) {
                        emVar.mo2591b((Object) t, (T) obj3);
                    }
                    throw th;
                }
            }
        } else {
            throw new NullPointerException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x09a3  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0a18  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x135c  */
    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo2738a(T r8, com.google.android.gms.internal.measurement.AbstractC2606fc r9) {
        /*
            Method dump skipped, instructions count: 5013
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2557dl.mo2738a(java.lang.Object, com.google.android.gms.internal.measurement.fc):void");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    public final void mo2736a(T t, byte[] bArr, int i, int i2, C2511bt btVar) {
        int i3;
        int i4;
        long j;
        int i5;
        Object a;
        if (this.f15984j) {
            Unsafe unsafe = f15976b;
            int i6 = -1;
            int i7 = i;
            int i8 = -1;
            int i9 = 0;
            while (i7 < i2) {
                int i10 = i7 + 1;
                byte b = bArr[i7];
                if (b < 0) {
                    i4 = C2508bq.m2912a(b, bArr, i10, btVar);
                    i3 = btVar.f15897a;
                } else {
                    i4 = i10;
                    i3 = b;
                }
                int i11 = i3 >>> 3;
                int i12 = i3 & 7;
                i9 = i11 > i8 ? m2792a(i11, i9 / 3) : m2756f(i11);
                if (i9 == i6) {
                    i6 = i6;
                    i9 = 0;
                } else {
                    int i13 = this.f15977c[i9 + 1];
                    int i14 = (267386880 & i13) >>> 20;
                    long j2 = 1048575 & i13;
                    if (i14 <= 17) {
                        boolean z = true;
                        switch (i14) {
                            case 0:
                                if (i12 != 1) {
                                    i6 = -1;
                                    break;
                                } else {
                                    C2588ep.m2580a(t, j2, C2508bq.m2903c(bArr, i4));
                                    i7 = i4 + 8;
                                    break;
                                }
                            case 1:
                                if (i12 != 5) {
                                    i6 = -1;
                                    break;
                                } else {
                                    C2588ep.m2579a((Object) t, j2, C2508bq.m2901d(bArr, i4));
                                    i7 = i4 + 4;
                                    break;
                                }
                            case 2:
                            case 3:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = C2508bq.m2904b(bArr, i4, btVar);
                                    j = btVar.f15898b;
                                    unsafe.putLong(t, j2, j);
                                    break;
                                }
                            case 4:
                            case 11:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = C2508bq.m2907a(bArr, i4, btVar);
                                    i5 = btVar.f15897a;
                                    unsafe.putInt(t, j2, i5);
                                    break;
                                }
                            case 5:
                            case 14:
                                if (i12 != 1) {
                                    i6 = -1;
                                    break;
                                } else {
                                    unsafe.putLong(t, j2, C2508bq.m2905b(bArr, i4));
                                    i7 = i4 + 8;
                                    break;
                                }
                            case 6:
                            case 13:
                                if (i12 != 5) {
                                    i6 = -1;
                                    break;
                                } else {
                                    unsafe.putInt(t, j2, C2508bq.m2908a(bArr, i4));
                                    i7 = i4 + 4;
                                    break;
                                }
                            case 7:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = C2508bq.m2904b(bArr, i4, btVar);
                                    if (btVar.f15898b == 0) {
                                        z = false;
                                    }
                                    C2588ep.m2575a(t, j2, z);
                                    break;
                                }
                            case 8:
                                if (i12 != 2) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = (536870912 & i13) == 0 ? C2508bq.m2902c(bArr, i4, btVar) : C2508bq.m2900d(bArr, i4, btVar);
                                    a = btVar.f15899c;
                                    unsafe.putObject(t, j2, a);
                                    break;
                                }
                            case 9:
                                if (i12 != 2) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = C2508bq.m2909a(m2793a(i9), bArr, i4, i2, btVar);
                                    Object object = unsafe.getObject(t, j2);
                                    a = object == null ? btVar.f15899c : zzff.m2270a(object, btVar.f15899c);
                                    unsafe.putObject(t, j2, a);
                                    break;
                                }
                            case 10:
                                if (i12 != 2) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = C2508bq.m2899e(bArr, i4, btVar);
                                    a = btVar.f15899c;
                                    unsafe.putObject(t, j2, a);
                                    break;
                                }
                            case 12:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = C2508bq.m2907a(bArr, i4, btVar);
                                    i5 = btVar.f15897a;
                                    unsafe.putInt(t, j2, i5);
                                    break;
                                }
                            case 15:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = C2508bq.m2907a(bArr, i4, btVar);
                                    i5 = zzeg.zze(btVar.f15897a);
                                    unsafe.putInt(t, j2, i5);
                                    break;
                                }
                            case 16:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = C2508bq.m2904b(bArr, i4, btVar);
                                    j = zzeg.zza(btVar.f15898b);
                                    unsafe.putLong(t, j2, j);
                                    break;
                                }
                            default:
                                i6 = -1;
                                break;
                        }
                        i8 = i11;
                        i6 = -1;
                    } else {
                        if (i14 != 27) {
                            i9 = i9;
                            if (i14 <= 49) {
                                i6 = -1;
                                int a2 = m2775a((C2557dl<T>) t, bArr, i4, i2, i3, i11, i12, i9, i13, i14, j2, btVar);
                                i7 = a2;
                                i9 = i9;
                                if (a2 == i4) {
                                    i4 = a2;
                                    i6 = -1;
                                }
                            } else {
                                i6 = -1;
                                if (i14 == 50) {
                                    i9 = i9;
                                    if (i12 == 2) {
                                        int a3 = m2773a((C2557dl<T>) t, bArr, i4, i2, j2, btVar);
                                        i7 = a3;
                                        i9 = i9;
                                        if (a3 == i4) {
                                            i4 = a3;
                                            i6 = -1;
                                        }
                                    }
                                } else {
                                    int a4 = m2776a((C2557dl<T>) t, bArr, i4, i2, i3, i11, i12, i13, i14, j2, i9, btVar);
                                    i7 = a4;
                                    i9 = i9;
                                    if (a4 == i4) {
                                        i4 = a4;
                                        i6 = -1;
                                    }
                                }
                            }
                        } else if (i12 == 2) {
                            zzfl zzflVar = (zzfl) unsafe.getObject(t, j2);
                            zzfl zzflVar2 = zzflVar;
                            if (!zzflVar.zza()) {
                                int size = zzflVar.size();
                                zzflVar2 = zzflVar.zza(size == 0 ? 10 : size << 1);
                                unsafe.putObject(t, j2, zzflVar2);
                            }
                            i7 = C2508bq.m2911a(m2793a(i9), i3, bArr, i4, i2, zzflVar2, btVar);
                            i8 = i11;
                            i6 = -1;
                        }
                        i6 = -1;
                    }
                    i8 = i11;
                }
                i7 = C2508bq.m2913a(i3, bArr, i4, i2, m2758e(t), btVar);
                i8 = i11;
            }
            if (i7 != i2) {
                throw zzfo.m2261g();
            }
            return;
        }
        m2774a((C2557dl<T>) t, bArr, i, i2, 0, btVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.measurement.C2568dw.m2676a(com.google.android.gms.internal.measurement.C2588ep.m2555f(r7, r0), com.google.android.gms.internal.measurement.C2588ep.m2555f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x01ad, code lost:
        if (com.google.android.gms.internal.measurement.C2568dw.m2676a(com.google.android.gms.internal.measurement.C2588ep.m2555f(r7, r0), com.google.android.gms.internal.measurement.C2588ep.m2555f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x01cb, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2570b(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2570b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01e8, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2582a(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2582a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0206, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2570b(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2570b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0223, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2582a(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2582a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0240, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2582a(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2582a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x025d, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2582a(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2582a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x027d, code lost:
        if (com.google.android.gms.internal.measurement.C2568dw.m2676a(com.google.android.gms.internal.measurement.C2588ep.m2555f(r7, r0), com.google.android.gms.internal.measurement.C2588ep.m2555f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x029d, code lost:
        if (com.google.android.gms.internal.measurement.C2568dw.m2676a(com.google.android.gms.internal.measurement.C2588ep.m2555f(r7, r0), com.google.android.gms.internal.measurement.C2588ep.m2555f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x02bd, code lost:
        if (com.google.android.gms.internal.measurement.C2568dw.m2676a(com.google.android.gms.internal.measurement.C2588ep.m2555f(r7, r0), com.google.android.gms.internal.measurement.C2588ep.m2555f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x02da, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2565c(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2565c(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x02f7, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2582a(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2582a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0315, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2570b(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2570b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0332, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2582a(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2582a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0350, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2570b(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2570b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x036e, code lost:
        if (com.google.android.gms.internal.measurement.C2588ep.m2570b(r7, r0) == com.google.android.gms.internal.measurement.C2588ep.m2570b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0391, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.C2588ep.m2560d(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.C2588ep.m2560d(r8, r0))) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03b5, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.C2588ep.m2557e(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.C2588ep.m2557e(r8, r0))) goto L_0x03bb;
     */
    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo2737a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2557dl.mo2737a(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:240:0x0b10, code lost:
        if (m2783a((com.google.android.gms.internal.measurement.C2557dl<T>) r7, r0, r20) != false) goto L_0x107d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0b59, code lost:
        if (m2783a((com.google.android.gms.internal.measurement.C2557dl<T>) r7, r0, r20) != false) goto L_0x10e5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x0b6c, code lost:
        if (m2783a((com.google.android.gms.internal.measurement.C2557dl<T>) r7, r0, r20) != false) goto L_0x10fb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0bb5, code lost:
        if (m2783a((com.google.android.gms.internal.measurement.C2557dl<T>) r7, r0, r20) != false) goto L_0x115a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0bc8, code lost:
        if (m2783a((com.google.android.gms.internal.measurement.C2557dl<T>) r7, r0, r20) != false) goto L_0x117e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x107a, code lost:
        if ((r15 & r9) != 0) goto L_0x107d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x107d, code lost:
        r14 = com.google.android.gms.internal.measurement.zzen.m2294c(r0, (com.google.android.gms.internal.measurement.zzgo) r0.getObject(r7, r0), m2793a(r20));
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x10e2, code lost:
        if ((r15 & r9) != 0) goto L_0x10e5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x10e5, code lost:
        r14 = com.google.android.gms.internal.measurement.zzen.zzh(r0, 0L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x10f8, code lost:
        if ((r15 & r9) != 0) goto L_0x10fb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x10fb, code lost:
        r14 = com.google.android.gms.internal.measurement.zzen.zzj(r0, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x1157, code lost:
        if ((r15 & r9) != 0) goto L_0x115a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x115a, code lost:
        r19 = r0.getObject(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x117b, code lost:
        if ((r15 & r9) != 0) goto L_0x117e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x117e, code lost:
        r14 = com.google.android.gms.internal.measurement.C2568dw.m2687a(r0, r0.getObject(r7, r0), m2793a(r20));
     */
    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2735b(T r7) {
        /*
            Method dump skipped, instructions count: 4951
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2557dl.mo2735b(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: b */
    public final void mo2734b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f15977c.length; i += 3) {
                int c = m2764c(i);
                long j = 1048575 & c;
                int i2 = this.f15977c[i];
                switch ((c & 267386880) >>> 20) {
                    case 0:
                        if (m2784a((C2557dl<T>) t2, i)) {
                            C2588ep.m2580a(t, j, C2588ep.m2557e(t2, j));
                            m2769b((C2557dl<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m2784a((C2557dl<T>) t2, i)) {
                            C2588ep.m2579a((Object) t, j, C2588ep.m2560d(t2, j));
                            m2769b((C2557dl<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2577a((Object) t, j, C2588ep.m2570b(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 3:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2577a((Object) t, j, C2588ep.m2570b(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 4:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2578a((Object) t, j, C2588ep.m2582a(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 5:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2577a((Object) t, j, C2588ep.m2570b(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 6:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2578a((Object) t, j, C2588ep.m2582a(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 7:
                        if (m2784a((C2557dl<T>) t2, i)) {
                            C2588ep.m2575a(t, j, C2588ep.m2565c(t2, j));
                            m2769b((C2557dl<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2576a(t, j, C2588ep.m2555f(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 9:
                    case 17:
                        m2777a(t, t2, i);
                        break;
                    case 10:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2576a(t, j, C2588ep.m2555f(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 11:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2578a((Object) t, j, C2588ep.m2582a(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 12:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2578a((Object) t, j, C2588ep.m2582a(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 13:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2578a((Object) t, j, C2588ep.m2582a(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 14:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2577a((Object) t, j, C2588ep.m2570b(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 15:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2578a((Object) t, j, C2588ep.m2582a(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 16:
                        if (!m2784a((C2557dl<T>) t2, i)) {
                            break;
                        }
                        C2588ep.m2577a((Object) t, j, C2588ep.m2570b(t2, j));
                        m2769b((C2557dl<T>) t, i);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case C1001ac.C1009h.f4220aZ /* 34 */:
                    case C1001ac.C1009h.f4274ba /* 35 */:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.f15990p.mo2818a(t, t2, j);
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                        C2568dw.m2679a(this.f15993s, t, t2, j);
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (!m2783a((C2557dl<T>) t2, i2, i)) {
                            break;
                        }
                        C2588ep.m2576a(t, j, C2588ep.m2555f(t2, j));
                        m2768b((C2557dl<T>) t, i2, i);
                        break;
                    case 60:
                    case 68:
                        m2765b(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!m2783a((C2557dl<T>) t2, i2, i)) {
                            break;
                        }
                        C2588ep.m2576a(t, j, C2588ep.m2555f(t2, j));
                        m2768b((C2557dl<T>) t, i2, i);
                        break;
                }
            }
            if (!this.f15984j) {
                C2568dw.m2678a(this.f15991q, t, t2);
                if (this.f15982h) {
                    C2568dw.m2680a(this.f15992r, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: c */
    public final void mo2733c(T t) {
        int i;
        int i2 = this.f15987m;
        while (true) {
            i = this.f15988n;
            if (i2 >= i) {
                break;
            }
            long c = m2764c(this.f15986l[i2]) & 1048575;
            Object f = C2588ep.m2555f(t, c);
            if (f != null) {
                C2588ep.m2576a(t, c, this.f15993s.mo2801d(f));
            }
            i2++;
        }
        int length = this.f15986l.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f15990p.mo2817b(t, this.f15986l[i3]);
        }
        this.f15991q.mo2588d(t);
        if (this.f15982h) {
            this.f15992r.mo2855c(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: d */
    public final boolean mo2732d(T t) {
        int i;
        int i2 = 0;
        int i3 = -1;
        for (int i4 = 0; i4 < this.f15987m; i4++) {
            int i5 = this.f15986l[i4];
            int i6 = this.f15977c[i5];
            int c = m2764c(i5);
            if (!this.f15984j) {
                int i7 = this.f15977c[i5 + 2];
                int i8 = i7 & 1048575;
                int i9 = 1 << (i7 >>> 20);
                i3 = i3;
                i = i9;
                if (i8 != i3) {
                    i2 = f15976b.getInt(t, i8);
                    i3 = i8;
                    i = i9;
                }
            } else {
                i = 0;
                i3 = i3;
            }
            if (((268435456 & c) != 0) && !m2782a((C2557dl<T>) t, i5, i2, i)) {
                return false;
            }
            int i10 = (267386880 & c) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (m2783a((C2557dl<T>) t, i6, i5) && !m2781a(t, c, m2793a(i5))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 != 50) {
                            continue;
                        } else {
                            Map<?, ?> b = this.f15993s.mo2803b(C2588ep.m2555f(t, c & 1048575));
                            boolean z = true;
                            if (!b.isEmpty()) {
                                z = true;
                                if (this.f15993s.mo2804b().f15970c.zza() == zzip.MESSAGE) {
                                    AbstractC2566du<T> duVar = null;
                                    Iterator<?> it = b.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        AbstractC2566du<T> duVar2 = duVar;
                                        if (duVar == null) {
                                            duVar2 = C2562dq.m2749a().m2748a((Class) next.getClass());
                                        }
                                        duVar = duVar2;
                                        if (!duVar2.mo2732d(next)) {
                                            z = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) C2588ep.m2555f(t, c & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    AbstractC2566du a = m2793a(i5);
                    int i11 = 0;
                    while (true) {
                        z2 = true;
                        if (i11 >= list.size()) {
                            break;
                        } else if (!a.mo2732d(list.get(i11))) {
                            z2 = false;
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                if (!z2) {
                    return false;
                }
            } else if (m2782a((C2557dl<T>) t, i5, i2, i) && !m2781a(t, c, m2793a(i5))) {
                return false;
            }
        }
        return !this.f15982h || this.f15992r.mo2861a(t).m2837f();
    }
}
