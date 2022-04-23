package com.google.android.gms.internal.ads;

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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aiy.class */
public final class aiy<T> implements ajo<T> {

    /* renamed from: a */
    private static final int[] f7436a = new int[0];

    /* renamed from: b */
    private static final Unsafe f7437b = akj.m5050c();

    /* renamed from: c */
    private final int[] f7438c;

    /* renamed from: d */
    private final Object[] f7439d;

    /* renamed from: e */
    private final int f7440e;

    /* renamed from: f */
    private final int f7441f;

    /* renamed from: g */
    private final zzdte f7442g;

    /* renamed from: h */
    private final boolean f7443h;

    /* renamed from: i */
    private final boolean f7444i;

    /* renamed from: j */
    private final boolean f7445j;

    /* renamed from: k */
    private final boolean f7446k;

    /* renamed from: l */
    private final int[] f7447l;

    /* renamed from: m */
    private final int f7448m;

    /* renamed from: n */
    private final int f7449n;

    /* renamed from: o */
    private final ajb f7450o;

    /* renamed from: p */
    private final aij f7451p;

    /* renamed from: q */
    private final ake<?, ?> f7452q;

    /* renamed from: r */
    private final ahw<?> f7453r;

    /* renamed from: s */
    private final air f7454s;

    private aiy(int[] iArr, Object[] objArr, int i, int i2, zzdte zzdteVar, boolean z, int[] iArr2, int i3, int i4, ajb ajbVar, aij aijVar, ake<?, ?> akeVar, ahw<?> ahwVar, air airVar) {
        this.f7438c = iArr;
        this.f7439d = objArr;
        this.f7440e = i;
        this.f7441f = i2;
        this.f7444i = zzdteVar instanceof zzdrt;
        this.f7445j = z;
        this.f7443h = ahwVar != null && ahwVar.mo5361a(zzdteVar);
        this.f7446k = false;
        this.f7447l = iArr2;
        this.f7448m = i3;
        this.f7449n = i4;
        this.f7450o = ajbVar;
        this.f7451p = aijVar;
        this.f7452q = akeVar;
        this.f7453r = ahwVar;
        this.f7442g = zzdteVar;
        this.f7454s = airVar;
    }

    /* renamed from: a */
    private final int m5291a(int i, int i2) {
        if (i < this.f7440e || i > this.f7441f) {
            return -1;
        }
        return m5269b(i, i2);
    }

    /* renamed from: a */
    private static <UT, UB> int m5287a(ake<UT, UB> akeVar, T t) {
        return akeVar.mo5072f(akeVar.mo5080b(t));
    }

    /* renamed from: a */
    private final int m5275a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, ahc ahcVar) {
        Object obj;
        Object obj2;
        Object obj3;
        long j2;
        int i9;
        Unsafe unsafe = f7437b;
        long j3 = this.f7438c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    obj = Double.valueOf(ahd.m5411c(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i += 8;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    obj2 = Float.valueOf(ahd.m5409d(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i += 4;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = ahd.m5412b(bArr, i, ahcVar);
                    j2 = ahcVar.f7351b;
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = ahd.m5415a(bArr, i, ahcVar);
                    i9 = ahcVar.f7350a;
                    obj3 = Integer.valueOf(i9);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    obj = Long.valueOf(ahd.m5413b(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i += 8;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    obj2 = Integer.valueOf(ahd.m5416a(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i += 4;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = ahd.m5412b(bArr, i, ahcVar);
                    obj3 = Boolean.valueOf(ahcVar.f7351b != 0);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = ahd.m5415a(bArr, i, ahcVar);
                    int i10 = ahcVar.f7350a;
                    if (i10 == 0) {
                        obj3 = "";
                        unsafe.putObject(t, j, obj3);
                        unsafe.putInt(t, j3, i4);
                        break;
                    } else if ((i6 & 536870912) == 0 || akl.m5003a(bArr, i, i + i10)) {
                        unsafe.putObject(t, j, new String(bArr, i, i10, zzdrv.f14562a));
                        i += i10;
                        unsafe.putInt(t, j3, i4);
                    } else {
                        throw zzdse.m3339i();
                    }
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = ahd.m5417a(m5292a(i8), bArr, i, i2, ahcVar);
                    Object object = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj4 = ahcVar.f7352c;
                    obj3 = object == null ? obj4 : zzdrv.m3350a(object, obj4);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = ahd.m5407e(bArr, i, ahcVar);
                    obj3 = ahcVar.f7352c;
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = ahd.m5415a(bArr, i, ahcVar);
                    int i11 = ahcVar.f7350a;
                    zzdsa b = m5270b(i8);
                    if (b != null && !b.zzf(i11)) {
                        m5257e(t).m3331a(i3, Long.valueOf(i11));
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
                    i = ahd.m5415a(bArr, i, ahcVar);
                    i9 = zzdqw.zzfl(ahcVar.f7350a);
                    obj3 = Integer.valueOf(i9);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = ahd.m5412b(bArr, i, ahcVar);
                    j2 = zzdqw.zzff(ahcVar.f7351b);
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = ahd.m5418a(m5292a(i8), bArr, i, i2, (i3 & (-8)) | 4, ahcVar);
                    Object object2 = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj5 = ahcVar.f7352c;
                    obj3 = object2 == null ? obj5 : zzdrv.m3350a(object2, obj5);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x05e7  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0352  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x0419 -> B:112:0x0428). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x045e -> B:109:0x03fd). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:173:0x05d4 -> B:174:0x05d7). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:180:0x0614 -> B:172:0x05ce). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0331 -> B:79:0x0348). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x0398 -> B:77:0x0323). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m5274a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.ads.ahc r22) {
        /*
            Method dump skipped, instructions count: 2354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aiy.m5274a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.ahc):int");
    }

    /* renamed from: a */
    private final <K, V> int m5272a(T t, byte[] bArr, int i, int i2, long j, ahc ahcVar) {
        Unsafe unsafe = f7437b;
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.f7454s.mo5301c(object)) {
            obj = this.f7454s.mo5306a();
            this.f7454s.mo5304a(obj, object);
            unsafe.putObject(t, j, obj);
        }
        aiq<?, ?> b = this.f7454s.mo5303b();
        Map<?, ?> a = this.f7454s.mo5305a(obj);
        int a2 = ahd.m5415a(bArr, i, ahcVar);
        int i3 = ahcVar.f7350a;
        if (i3 < 0 || i3 > i2 - a2) {
            throw zzdse.m3347a();
        }
        int i4 = i3 + a2;
        Object obj2 = (K) b.f7430b;
        Object obj3 = (V) b.f7432d;
        while (a2 < i4) {
            int i5 = a2 + 1;
            byte b2 = bArr[a2];
            int i6 = i5;
            int i7 = b2;
            if (b2 < 0) {
                i6 = ahd.m5420a(b2, bArr, i5, ahcVar);
                i7 = ahcVar.f7350a;
            }
            int i8 = i7 >>> 3;
            int i9 = i7 & 7;
            if (i8 != 1) {
                if (i8 == 2 && i9 == b.f7431c.zzbcq()) {
                    a2 = m5271a(bArr, i6, i2, b.f7431c, b.f7432d.getClass(), ahcVar);
                    obj3 = (V) ahcVar.f7352c;
                }
                a2 = ahd.m5423a(i7, bArr, i6, i2, ahcVar);
            } else if (i9 == b.f7429a.zzbcq()) {
                a2 = m5271a(bArr, i6, i2, b.f7429a, (Class<?>) null, ahcVar);
                obj2 = (K) ahcVar.f7352c;
            } else {
                a2 = ahd.m5423a(i7, bArr, i6, i2, ahcVar);
            }
        }
        if (a2 == i4) {
            a.put(obj2, obj3);
            return i4;
        }
        throw zzdse.m3340h();
    }

    /* renamed from: a */
    private static int m5271a(byte[] bArr, int i, int i2, zzdvf zzdvfVar, Class<?> cls, ahc ahcVar) {
        int i3;
        Object valueOf;
        Object obj;
        Object obj2;
        int i4;
        long j;
        switch (aix.f7435a[zzdvfVar.ordinal()]) {
            case 1:
                i3 = ahd.m5412b(bArr, i, ahcVar);
                valueOf = Boolean.valueOf(ahcVar.f7351b != 0);
                ahcVar.f7352c = valueOf;
                break;
            case 2:
                i3 = ahd.m5407e(bArr, i, ahcVar);
                break;
            case 3:
                obj = Double.valueOf(ahd.m5411c(bArr, i));
                ahcVar.f7352c = obj;
                i3 = i + 8;
                break;
            case 4:
            case 5:
                obj2 = Integer.valueOf(ahd.m5416a(bArr, i));
                ahcVar.f7352c = obj2;
                i3 = i + 4;
                break;
            case 6:
            case 7:
                obj = Long.valueOf(ahd.m5413b(bArr, i));
                ahcVar.f7352c = obj;
                i3 = i + 8;
                break;
            case 8:
                obj2 = Float.valueOf(ahd.m5409d(bArr, i));
                ahcVar.f7352c = obj2;
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = ahd.m5415a(bArr, i, ahcVar);
                i4 = ahcVar.f7350a;
                valueOf = Integer.valueOf(i4);
                ahcVar.f7352c = valueOf;
                break;
            case 12:
            case 13:
                i3 = ahd.m5412b(bArr, i, ahcVar);
                j = ahcVar.f7351b;
                valueOf = Long.valueOf(j);
                ahcVar.f7352c = valueOf;
                break;
            case 14:
                i3 = ahd.m5417a(ajd.m5247a().m5246a((Class) cls), bArr, i, i2, ahcVar);
                break;
            case 15:
                i3 = ahd.m5415a(bArr, i, ahcVar);
                i4 = zzdqw.zzfl(ahcVar.f7350a);
                valueOf = Integer.valueOf(i4);
                ahcVar.f7352c = valueOf;
                break;
            case 16:
                i3 = ahd.m5412b(bArr, i, ahcVar);
                j = zzdqw.zzff(ahcVar.f7351b);
                valueOf = Long.valueOf(j);
                ahcVar.f7352c = valueOf;
                break;
            case 17:
                i3 = ahd.m5408d(bArr, i, ahcVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0976  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.ads.aiy<T> m5288a(com.google.android.gms.internal.ads.aiv r17, com.google.android.gms.internal.ads.ajb r18, com.google.android.gms.internal.ads.aij r19, com.google.android.gms.internal.ads.ake<?, ?> r20, com.google.android.gms.internal.ads.ahw<?> r21, com.google.android.gms.internal.ads.air r22) {
        /*
            Method dump skipped, instructions count: 2680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aiy.m5288a(com.google.android.gms.internal.ads.aiv, com.google.android.gms.internal.ads.ajb, com.google.android.gms.internal.ads.aij, com.google.android.gms.internal.ads.ake, com.google.android.gms.internal.ads.ahw, com.google.android.gms.internal.ads.air):com.google.android.gms.internal.ads.aiy");
    }

    /* renamed from: a */
    private final ajo m5292a(int i) {
        int i2 = (i / 3) << 1;
        ajo ajoVar = (ajo) this.f7439d[i2];
        if (ajoVar != null) {
            return ajoVar;
        }
        ajo<T> a = ajd.m5247a().m5246a((Class) ((Class) this.f7439d[i2 + 1]));
        this.f7439d[i2] = a;
        return a;
    }

    /* renamed from: a */
    private final <K, V, UT, UB> UB m5289a(int i, Map<K, V> map, zzdsa zzdsaVar, UB ub, ake<UT, UB> akeVar) {
        aiq<?, ?> b = this.f7454s.mo5303b();
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzdsaVar.zzf(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = akeVar.mo5089a();
                }
                ahm b2 = zzdqk.m3398b(zzdsw.m3336a(b, next.getKey(), next.getValue()));
                try {
                    zzdsw.m3335a(b2.m5402b(), b, next.getKey(), next.getValue());
                    akeVar.mo5085a((ake<UT, UB>) ub2, i, b2.m5403a());
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
    private final <UT, UB> UB m5278a(Object obj, int i, UB ub, ake<UT, UB> akeVar) {
        zzdsa b;
        int i2 = this.f7438c[i];
        Object f = akj.m5038f(obj, m5263c(i) & 1048575);
        if (!(f == null || (b = m5270b(i)) == null)) {
            return (UB) m5289a(i2, this.f7454s.mo5305a(f), b, (zzdsa) ub, (ake<UT, zzdsa>) akeVar);
        }
        return ub;
    }

    /* renamed from: a */
    private static Field m5284a(Class<?> cls, String str) {
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
    private static List<?> m5277a(Object obj, long j) {
        return (List) akj.m5038f(obj, j);
    }

    /* renamed from: a */
    private static void m5290a(int i, Object obj, aku akuVar) {
        if (obj instanceof String) {
            akuVar.mo4980a(i, (String) obj);
        } else {
            akuVar.mo4983a(i, (zzdqk) obj);
        }
    }

    /* renamed from: a */
    private static <UT, UB> void m5286a(ake<UT, UB> akeVar, T t, aku akuVar) {
        akeVar.mo5083a((ake<UT, UB>) akeVar.mo5080b(t), akuVar);
    }

    /* renamed from: a */
    private final <K, V> void m5285a(aku akuVar, int i, Object obj) {
        if (obj != null) {
            akuVar.mo4984a(i, this.f7454s.mo5303b(), this.f7454s.mo5302b(obj));
        }
    }

    /* renamed from: a */
    private final void m5280a(Object obj, int i, aji ajiVar) {
        long j;
        Object n;
        if (m5258e(i)) {
            j = i & 1048575;
            n = ajiVar.mo5206m();
        } else if (this.f7444i) {
            j = i & 1048575;
            n = ajiVar.mo5208l();
        } else {
            j = i & 1048575;
            n = ajiVar.mo5204n();
        }
        akj.m5061a(obj, j, n);
    }

    /* renamed from: a */
    private final void m5276a(T t, T t2, int i) {
        long c = m5263c(i) & 1048575;
        if (m5283a((aiy<T>) t2, i)) {
            Object f = akj.m5038f(t, c);
            Object f2 = akj.m5038f(t2, c);
            if (f != null && f2 != null) {
                akj.m5061a(t, c, zzdrv.m3350a(f, f2));
                m5268b((aiy<T>) t, i);
            } else if (f2 != null) {
                akj.m5061a(t, c, f2);
                m5268b((aiy<T>) t, i);
            }
        }
    }

    /* renamed from: a */
    private final boolean m5283a(T t, int i) {
        if (this.f7445j) {
            int c = m5263c(i);
            long j = c & 1048575;
            switch ((c & 267386880) >>> 20) {
                case 0:
                    return akj.m5040e(t, j) != 0.0d;
                case 1:
                    return akj.m5043d(t, j) != 0.0f;
                case 2:
                    return akj.m5053b(t, j) != 0;
                case 3:
                    return akj.m5053b(t, j) != 0;
                case 4:
                    return akj.m5067a(t, j) != 0;
                case 5:
                    return akj.m5053b(t, j) != 0;
                case 6:
                    return akj.m5067a(t, j) != 0;
                case 7:
                    return akj.m5048c(t, j);
                case 8:
                    Object f = akj.m5038f(t, j);
                    if (f instanceof String) {
                        return !((String) f).isEmpty();
                    }
                    if (f instanceof zzdqk) {
                        return !zzdqk.zzhhx.equals(f);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return akj.m5038f(t, j) != null;
                case 10:
                    return !zzdqk.zzhhx.equals(akj.m5038f(t, j));
                case 11:
                    return akj.m5067a(t, j) != 0;
                case 12:
                    return akj.m5067a(t, j) != 0;
                case 13:
                    return akj.m5067a(t, j) != 0;
                case 14:
                    return akj.m5053b(t, j) != 0;
                case 15:
                    return akj.m5067a(t, j) != 0;
                case 16:
                    return akj.m5053b(t, j) != 0;
                case 17:
                    return akj.m5038f(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int d = m5260d(i);
            return (akj.m5067a(t, (long) (d & 1048575)) & (1 << (d >>> 20))) != 0;
        }
    }

    /* renamed from: a */
    private final boolean m5282a(T t, int i, int i2) {
        return akj.m5067a(t, (long) (m5260d(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    private final boolean m5281a(T t, int i, int i2, int i3) {
        return this.f7445j ? m5283a((aiy<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static boolean m5279a(Object obj, int i, ajo ajoVar) {
        return ajoVar.mo5175d(akj.m5038f(obj, i & 1048575));
    }

    /* renamed from: b */
    private static <T> double m5266b(T t, long j) {
        return ((Double) akj.m5038f(t, j)).doubleValue();
    }

    /* renamed from: b */
    private final int m5269b(int i, int i2) {
        int length = (this.f7438c.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f7438c[i4];
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
    private final zzdsa m5270b(int i) {
        return (zzdsa) this.f7439d[((i / 3) << 1) + 1];
    }

    /* renamed from: b */
    private final void m5268b(T t, int i) {
        if (!this.f7445j) {
            int d = m5260d(i);
            long j = d & 1048575;
            akj.m5063a((Object) t, j, akj.m5067a(t, j) | (1 << (d >>> 20)));
        }
    }

    /* renamed from: b */
    private final void m5267b(T t, int i, int i2) {
        akj.m5063a((Object) t, m5260d(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0988  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m5265b(T r9, com.google.android.gms.internal.ads.aku r10) {
        /*
            Method dump skipped, instructions count: 2487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aiy.m5265b(java.lang.Object, com.google.android.gms.internal.ads.aku):void");
    }

    /* renamed from: b */
    private final void m5264b(T t, T t2, int i) {
        int c = m5263c(i);
        int i2 = this.f7438c[i];
        long j = c & 1048575;
        if (m5282a((aiy<T>) t2, i2, i)) {
            Object f = akj.m5038f(t, j);
            Object f2 = akj.m5038f(t2, j);
            if (f != null && f2 != null) {
                akj.m5061a(t, j, zzdrv.m3350a(f, f2));
                m5267b((aiy<T>) t, i2, i);
            } else if (f2 != null) {
                akj.m5061a(t, j, f2);
                m5267b((aiy<T>) t, i2, i);
            }
        }
    }

    /* renamed from: c */
    private static <T> float m5262c(T t, long j) {
        return ((Float) akj.m5038f(t, j)).floatValue();
    }

    /* renamed from: c */
    private final int m5263c(int i) {
        return this.f7438c[i + 1];
    }

    /* renamed from: c */
    private final boolean m5261c(T t, T t2, int i) {
        return m5283a((aiy<T>) t, i) == m5283a((aiy<T>) t2, i);
    }

    /* renamed from: d */
    private final int m5260d(int i) {
        return this.f7438c[i + 2];
    }

    /* renamed from: d */
    private static <T> int m5259d(T t, long j) {
        return ((Integer) akj.m5038f(t, j)).intValue();
    }

    /* renamed from: e */
    private static <T> long m5256e(T t, long j) {
        return ((Long) akj.m5038f(t, j)).longValue();
    }

    /* renamed from: e */
    private static zzdur m5257e(Object obj) {
        zzdrt zzdrtVar = (zzdrt) obj;
        zzdur zzdurVar = zzdrtVar.zzhmk;
        zzdur zzdurVar2 = zzdurVar;
        if (zzdurVar == zzdur.zzbcf()) {
            zzdurVar2 = zzdur.m3332a();
            zzdrtVar.zzhmk = zzdurVar2;
        }
        return zzdurVar2;
    }

    /* renamed from: e */
    private static boolean m5258e(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: f */
    private final int m5255f(int i) {
        if (i < this.f7440e || i > this.f7441f) {
            return -1;
        }
        return m5269b(i, 0);
    }

    /* renamed from: f */
    private static <T> boolean m5254f(T t, long j) {
        return ((Boolean) akj.m5038f(t, j)).booleanValue();
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
    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo5183a(T r6) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aiy.mo5183a(java.lang.Object):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x07b0, code lost:
        if (r32 == (-1)) goto L_0x07be;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x07b3, code lost:
        r0.putInt(r18, r32, r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x07be, code lost:
        r22 = null;
        r21 = r17.f7448m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x07cd, code lost:
        if (r21 >= r17.f7449n) goto L_0x07ed;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x07d0, code lost:
        r22 = (com.google.android.gms.internal.ads.zzdur) r17.m5278a((java.lang.Object) r18, r17.f7447l[r21], (int) r22, (com.google.android.gms.internal.ads.ake<UT, int>) r17.f7452q);
        r21 = r21 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x07ef, code lost:
        if (r22 == null) goto L_0x07fc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x07f2, code lost:
        r17.f7452q.mo5077b((java.lang.Object) r18, (T) r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x07fd, code lost:
        if (r19 != 0) goto L_0x080e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0804, code lost:
        if (r31 != r20) goto L_0x080a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x080d, code lost:
        throw com.google.android.gms.internal.ads.zzdse.m3340h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0812, code lost:
        if (r31 > r20) goto L_0x081e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0818, code lost:
        if (r29 != r19) goto L_0x081e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x081d, code lost:
        return r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0821, code lost:
        throw com.google.android.gms.internal.ads.zzdse.m3340h();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m5273a(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.ads.ahc r22) {
        /*
            Method dump skipped, instructions count: 2082
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aiy.m5273a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.ahc):int");
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    public final T mo5184a() {
        return (T) this.f7450o.mo5251a(this.f7442g);
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    public final void mo5182a(T t, aji ajiVar, zzdrg zzdrgVar) {
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
        zzdsa b;
        List<Integer> a12;
        List<Long> a13;
        List<Integer> a14;
        List<Long> a15;
        Object obj;
        if (zzdrgVar != null) {
            ake akeVar = this.f7452q;
            ahw<?> ahwVar = this.f7453r;
            Object obj2 = null;
            aia<?> aiaVar = null;
            while (true) {
                Object obj3 = obj2;
                try {
                    int a16 = ajiVar.mo5235a();
                    int f = m5255f(a16);
                    if (f >= 0) {
                        int c = m5263c(f);
                        switch ((267386880 & c) >>> 20) {
                            case 0:
                                akj.m5065a(t, c & 1048575, ajiVar.mo5224d());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 1:
                                akj.m5064a((Object) t, c & 1048575, ajiVar.mo5222e());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 2:
                                akj.m5062a((Object) t, c & 1048575, ajiVar.mo5218g());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 3:
                                akj.m5062a((Object) t, c & 1048575, ajiVar.mo5220f());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 4:
                                akj.m5063a((Object) t, c & 1048575, ajiVar.mo5216h());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 5:
                                akj.m5062a((Object) t, c & 1048575, ajiVar.mo5214i());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 6:
                                akj.m5063a((Object) t, c & 1048575, ajiVar.mo5212j());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 7:
                                akj.m5060a(t, c & 1048575, ajiVar.mo5210k());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 8:
                                m5280a(t, c, ajiVar);
                                m5268b((aiy<T>) t, f);
                                break;
                            case 9:
                                if (m5283a((aiy<T>) t, f)) {
                                    j = c & 1048575;
                                    a = zzdrv.m3350a(akj.m5038f(t, j), ajiVar.mo5234a(m5292a(f), zzdrgVar));
                                    akj.m5061a(t, j, a);
                                    break;
                                } else {
                                    akj.m5061a(t, c & 1048575, ajiVar.mo5234a(m5292a(f), zzdrgVar));
                                    m5268b((aiy<T>) t, f);
                                    break;
                                }
                            case 10:
                                akj.m5061a(t, c & 1048575, ajiVar.mo5204n());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 11:
                                akj.m5063a((Object) t, c & 1048575, ajiVar.mo5202o());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 12:
                                int p = ajiVar.mo5200p();
                                zzdsa b2 = m5270b(f);
                                if (b2 != null) {
                                    i = p;
                                    if (!b2.zzf(p)) {
                                        obj2 = ajq.m5157a(a16, i, obj2, akeVar);
                                        break;
                                    }
                                }
                                akj.m5063a((Object) t, c & 1048575, p);
                                m5268b((aiy<T>) t, f);
                                break;
                            case 13:
                                akj.m5063a((Object) t, c & 1048575, ajiVar.mo5198q());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 14:
                                akj.m5062a((Object) t, c & 1048575, ajiVar.mo5196r());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 15:
                                akj.m5063a((Object) t, c & 1048575, ajiVar.mo5195s());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 16:
                                akj.m5062a((Object) t, c & 1048575, ajiVar.mo5194t());
                                m5268b((aiy<T>) t, f);
                                break;
                            case 17:
                                if (m5283a((aiy<T>) t, f)) {
                                    j = c & 1048575;
                                    a = zzdrv.m3350a(akj.m5038f(t, j), ajiVar.mo5229b(m5292a(f), zzdrgVar));
                                    akj.m5061a(t, j, a);
                                    break;
                                } else {
                                    akj.m5061a(t, c & 1048575, ajiVar.mo5229b(m5292a(f), zzdrgVar));
                                    m5268b((aiy<T>) t, f);
                                    break;
                                }
                            case 18:
                                a2 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5233a(a2);
                                break;
                            case 19:
                                a3 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5228b(a3);
                                break;
                            case 20:
                                a4 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5223d(a4);
                                break;
                            case 21:
                                a5 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5225c(a5);
                                break;
                            case 22:
                                a6 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5221e(a6);
                                break;
                            case 23:
                                a7 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5219f(a7);
                                break;
                            case 24:
                                a8 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5217g(a8);
                                break;
                            case 25:
                                a9 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5215h(a9);
                                break;
                            case 26:
                                if (m5258e(c)) {
                                    ajiVar.mo5211j(this.f7451p.mo5320a(t, c & 1048575));
                                    break;
                                } else {
                                    ajiVar.mo5213i(this.f7451p.mo5320a(t, c & 1048575));
                                    break;
                                }
                            case 27:
                                ajiVar.mo5232a(this.f7451p.mo5320a(t, c & 1048575), m5292a(f), zzdrgVar);
                                break;
                            case 28:
                                ajiVar.mo5209k(this.f7451p.mo5320a(t, c & 1048575));
                                break;
                            case 29:
                                a10 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5207l(a10);
                                break;
                            case 30:
                                a11 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5205m(a11);
                                b = m5270b(f);
                                obj2 = ajq.m5150a(a16, a11, b, obj2, akeVar);
                                break;
                            case 31:
                                a12 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5203n(a12);
                                break;
                            case 32:
                                a13 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5201o(a13);
                                break;
                            case 33:
                                a14 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5199p(a14);
                                break;
                            case C1001ac.C1009h.f4220aZ /* 34 */:
                                a15 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5197q(a15);
                                break;
                            case C1001ac.C1009h.f4274ba /* 35 */:
                                a2 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5233a(a2);
                                break;
                            case 36:
                                a3 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5228b(a3);
                                break;
                            case 37:
                                a4 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5223d(a4);
                                break;
                            case 38:
                                a5 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5225c(a5);
                                break;
                            case 39:
                                a6 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5221e(a6);
                                break;
                            case 40:
                                a7 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5219f(a7);
                                break;
                            case 41:
                                a8 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5217g(a8);
                                break;
                            case 42:
                                a9 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5215h(a9);
                                break;
                            case 43:
                                a10 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5207l(a10);
                                break;
                            case 44:
                                a11 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5205m(a11);
                                b = m5270b(f);
                                obj2 = ajq.m5150a(a16, a11, b, obj2, akeVar);
                                break;
                            case 45:
                                a12 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5203n(a12);
                                break;
                            case 46:
                                a13 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5201o(a13);
                                break;
                            case 47:
                                a14 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5199p(a14);
                                break;
                            case 48:
                                a15 = this.f7451p.mo5320a(t, c & 1048575);
                                ajiVar.mo5197q(a15);
                                break;
                            case 49:
                                ajiVar.mo5227b(this.f7451p.mo5320a(t, c & 1048575), m5292a(f), zzdrgVar);
                                break;
                            case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                                long c2 = m5263c(f) & 1048575;
                                Object f2 = akj.m5038f(t, c2);
                                if (f2 == null) {
                                    obj = this.f7454s.mo5306a();
                                    akj.m5061a(t, c2, obj);
                                } else {
                                    obj = f2;
                                    if (this.f7454s.mo5301c(f2)) {
                                        obj = this.f7454s.mo5306a();
                                        this.f7454s.mo5304a(obj, f2);
                                        akj.m5061a(t, c2, obj);
                                    }
                                }
                                ajiVar.mo5231a(this.f7454s.mo5305a(obj), this.f7454s.mo5303b(), zzdrgVar);
                                break;
                            case 51:
                                akj.m5061a(t, c & 1048575, Double.valueOf(ajiVar.mo5224d()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 52:
                                akj.m5061a(t, c & 1048575, Float.valueOf(ajiVar.mo5222e()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 53:
                                akj.m5061a(t, c & 1048575, Long.valueOf(ajiVar.mo5218g()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 54:
                                akj.m5061a(t, c & 1048575, Long.valueOf(ajiVar.mo5220f()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 55:
                                akj.m5061a(t, c & 1048575, Integer.valueOf(ajiVar.mo5216h()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 56:
                                akj.m5061a(t, c & 1048575, Long.valueOf(ajiVar.mo5214i()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 57:
                                akj.m5061a(t, c & 1048575, Integer.valueOf(ajiVar.mo5212j()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 58:
                                akj.m5061a(t, c & 1048575, Boolean.valueOf(ajiVar.mo5210k()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 59:
                                m5280a(t, c, ajiVar);
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 60:
                                boolean a17 = m5282a((aiy<T>) t, a16, f);
                                int i2 = c & 1048575;
                                if (a17) {
                                    long j2 = i2;
                                    akj.m5061a(t, j2, zzdrv.m3350a(akj.m5038f(t, j2), ajiVar.mo5234a(m5292a(f), zzdrgVar)));
                                } else {
                                    akj.m5061a(t, i2, ajiVar.mo5234a(m5292a(f), zzdrgVar));
                                    m5268b((aiy<T>) t, f);
                                }
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 61:
                                akj.m5061a(t, c & 1048575, ajiVar.mo5204n());
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 62:
                                akj.m5061a(t, c & 1048575, Integer.valueOf(ajiVar.mo5202o()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 63:
                                int p2 = ajiVar.mo5200p();
                                zzdsa b3 = m5270b(f);
                                if (b3 != null) {
                                    i = p2;
                                    if (!b3.zzf(p2)) {
                                        obj2 = ajq.m5157a(a16, i, obj2, akeVar);
                                        break;
                                    }
                                }
                                akj.m5061a(t, c & 1048575, Integer.valueOf(p2));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 64:
                                akj.m5061a(t, c & 1048575, Integer.valueOf(ajiVar.mo5198q()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 65:
                                akj.m5061a(t, c & 1048575, Long.valueOf(ajiVar.mo5196r()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 66:
                                akj.m5061a(t, c & 1048575, Integer.valueOf(ajiVar.mo5195s()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 67:
                                akj.m5061a(t, c & 1048575, Long.valueOf(ajiVar.mo5194t()));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            case 68:
                                akj.m5061a(t, c & 1048575, ajiVar.mo5229b(m5292a(f), zzdrgVar));
                                m5267b((aiy<T>) t, a16, f);
                                break;
                            default:
                                Object obj4 = obj2;
                                if (obj2 == null) {
                                    obj3 = obj2;
                                    try {
                                        obj4 = akeVar.mo5089a();
                                    } catch (zzdsd e) {
                                        Object obj5 = obj2;
                                        if (obj2 == null) {
                                            obj5 = akeVar.mo5076c(t);
                                        }
                                        obj2 = obj5;
                                        if (akeVar.m5090a((ake) obj5, ajiVar)) {
                                            break;
                                        } else {
                                            for (int i3 = this.f7448m; i3 < this.f7449n; i3++) {
                                                obj5 = m5278a((Object) t, this.f7447l[i3], (int) obj5, (ake<UT, int>) akeVar);
                                            }
                                            if (obj5 != null) {
                                                akeVar.mo5077b((Object) t, (T) obj5);
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                }
                                obj2 = obj4;
                                if (akeVar.m5090a((ake) obj4, ajiVar)) {
                                    break;
                                } else {
                                    for (int i4 = this.f7448m; i4 < this.f7449n; i4++) {
                                        obj4 = m5278a((Object) t, this.f7447l[i4], (int) obj4, (ake<UT, int>) akeVar);
                                    }
                                    if (obj4 != null) {
                                        akeVar.mo5077b((Object) t, (T) obj4);
                                        return;
                                    }
                                    return;
                                }
                        }
                    } else if (a16 == Integer.MAX_VALUE) {
                        for (int i5 = this.f7448m; i5 < this.f7449n; i5++) {
                            obj2 = m5278a((Object) t, this.f7447l[i5], (int) obj2, (ake<UT, int>) akeVar);
                        }
                        if (obj2 != null) {
                            akeVar.mo5077b((Object) t, (T) obj2);
                            return;
                        }
                        return;
                    } else if ((!this.f7443h ? null : ahwVar.mo5362a(zzdrgVar, this.f7442g, a16)) != null) {
                        aiaVar = aiaVar;
                        if (aiaVar == null) {
                            aiaVar = ahwVar.mo5357b(t);
                        }
                        obj2 = ahwVar.mo5363a();
                    } else {
                        Object obj6 = obj2;
                        if (obj2 == null) {
                            obj6 = akeVar.mo5076c(t);
                        }
                        obj2 = obj6;
                        if (!akeVar.m5090a((ake) obj6, ajiVar)) {
                            for (int i6 = this.f7448m; i6 < this.f7449n; i6++) {
                                obj6 = m5278a((Object) t, this.f7447l[i6], (int) obj6, (ake<UT, int>) akeVar);
                            }
                            if (obj6 != null) {
                                akeVar.mo5077b((Object) t, (T) obj6);
                                return;
                            }
                            return;
                        }
                    }
                } catch (Throwable th) {
                    for (int i7 = this.f7448m; i7 < this.f7449n; i7++) {
                        obj3 = m5278a((Object) t, this.f7447l[i7], (int) obj3, (ake<UT, int>) akeVar);
                    }
                    if (obj3 != null) {
                        akeVar.mo5077b((Object) t, (T) obj3);
                    }
                    throw th;
                }
            }
        } else {
            throw new NullPointerException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x099c  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0a14  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x1358  */
    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo5181a(T r8, com.google.android.gms.internal.ads.aku r9) {
        /*
            Method dump skipped, instructions count: 5009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aiy.mo5181a(java.lang.Object, com.google.android.gms.internal.ads.aku):void");
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    public final void mo5179a(T t, byte[] bArr, int i, int i2, ahc ahcVar) {
        int i3;
        int i4;
        long j;
        int i5;
        Object a;
        if (this.f7445j) {
            Unsafe unsafe = f7437b;
            int i6 = -1;
            int i7 = i;
            int i8 = -1;
            int i9 = 0;
            while (i7 < i2) {
                int i10 = i7 + 1;
                byte b = bArr[i7];
                if (b < 0) {
                    i4 = ahd.m5420a(b, bArr, i10, ahcVar);
                    i3 = ahcVar.f7350a;
                } else {
                    i4 = i10;
                    i3 = b;
                }
                int i11 = i3 >>> 3;
                int i12 = i3 & 7;
                i9 = i11 > i8 ? m5291a(i11, i9 / 3) : m5255f(i11);
                if (i9 == i6) {
                    i6 = i6;
                    i9 = 0;
                } else {
                    int i13 = this.f7438c[i9 + 1];
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
                                    akj.m5065a(t, j2, ahd.m5411c(bArr, i4));
                                    i7 = i4 + 8;
                                    break;
                                }
                            case 1:
                                if (i12 != 5) {
                                    i6 = -1;
                                    break;
                                } else {
                                    akj.m5064a((Object) t, j2, ahd.m5409d(bArr, i4));
                                    i7 = i4 + 4;
                                    break;
                                }
                            case 2:
                            case 3:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = ahd.m5412b(bArr, i4, ahcVar);
                                    j = ahcVar.f7351b;
                                    unsafe.putLong(t, j2, j);
                                    break;
                                }
                            case 4:
                            case 11:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = ahd.m5415a(bArr, i4, ahcVar);
                                    i5 = ahcVar.f7350a;
                                    unsafe.putInt(t, j2, i5);
                                    break;
                                }
                            case 5:
                            case 14:
                                if (i12 != 1) {
                                    i6 = -1;
                                    break;
                                } else {
                                    unsafe.putLong(t, j2, ahd.m5413b(bArr, i4));
                                    i7 = i4 + 8;
                                    break;
                                }
                            case 6:
                            case 13:
                                if (i12 != 5) {
                                    i6 = -1;
                                    break;
                                } else {
                                    unsafe.putInt(t, j2, ahd.m5416a(bArr, i4));
                                    i7 = i4 + 4;
                                    break;
                                }
                            case 7:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = ahd.m5412b(bArr, i4, ahcVar);
                                    if (ahcVar.f7351b == 0) {
                                        z = false;
                                    }
                                    akj.m5060a(t, j2, z);
                                    break;
                                }
                            case 8:
                                if (i12 != 2) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = (536870912 & i13) == 0 ? ahd.m5410c(bArr, i4, ahcVar) : ahd.m5408d(bArr, i4, ahcVar);
                                    a = ahcVar.f7352c;
                                    unsafe.putObject(t, j2, a);
                                    break;
                                }
                            case 9:
                                if (i12 != 2) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = ahd.m5417a(m5292a(i9), bArr, i4, i2, ahcVar);
                                    Object object = unsafe.getObject(t, j2);
                                    a = object == null ? ahcVar.f7352c : zzdrv.m3350a(object, ahcVar.f7352c);
                                    unsafe.putObject(t, j2, a);
                                    break;
                                }
                            case 10:
                                if (i12 != 2) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = ahd.m5407e(bArr, i4, ahcVar);
                                    a = ahcVar.f7352c;
                                    unsafe.putObject(t, j2, a);
                                    break;
                                }
                            case 12:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = ahd.m5415a(bArr, i4, ahcVar);
                                    i5 = ahcVar.f7350a;
                                    unsafe.putInt(t, j2, i5);
                                    break;
                                }
                            case 15:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = ahd.m5415a(bArr, i4, ahcVar);
                                    i5 = zzdqw.zzfl(ahcVar.f7350a);
                                    unsafe.putInt(t, j2, i5);
                                    break;
                                }
                            case 16:
                                if (i12 != 0) {
                                    i6 = -1;
                                    break;
                                } else {
                                    i7 = ahd.m5412b(bArr, i4, ahcVar);
                                    j = zzdqw.zzff(ahcVar.f7351b);
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
                                int a2 = m5274a((aiy<T>) t, bArr, i4, i2, i3, i11, i12, i9, i13, i14, j2, ahcVar);
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
                                        int a3 = m5272a((aiy<T>) t, bArr, i4, i2, j2, ahcVar);
                                        i7 = a3;
                                        i9 = i9;
                                        if (a3 == i4) {
                                            i4 = a3;
                                            i6 = -1;
                                        }
                                    }
                                } else {
                                    int a4 = m5275a((aiy<T>) t, bArr, i4, i2, i3, i11, i12, i13, i14, j2, i9, ahcVar);
                                    i7 = a4;
                                    i9 = i9;
                                    if (a4 == i4) {
                                        i4 = a4;
                                        i6 = -1;
                                    }
                                }
                            }
                        } else if (i12 == 2) {
                            zzdsb zzdsbVar = (zzdsb) unsafe.getObject(t, j2);
                            zzdsb zzdsbVar2 = zzdsbVar;
                            if (!zzdsbVar.zzaxp()) {
                                int size = zzdsbVar.size();
                                zzdsbVar2 = zzdsbVar.zzfd(size == 0 ? 10 : size << 1);
                                unsafe.putObject(t, j2, zzdsbVar2);
                            }
                            i7 = ahd.m5419a(m5292a(i9), i3, bArr, i4, i2, zzdsbVar2, ahcVar);
                            i8 = i11;
                            i6 = -1;
                        }
                        i6 = -1;
                    }
                    i8 = i11;
                }
                i7 = ahd.m5421a(i3, bArr, i4, i2, m5257e(t), ahcVar);
                i8 = i11;
            }
            if (i7 != i2) {
                throw zzdse.m3340h();
            }
            return;
        }
        m5273a((aiy<T>) t, bArr, i, i2, 0, ahcVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.ads.ajq.m5145a(com.google.android.gms.internal.ads.akj.m5038f(r7, r0), com.google.android.gms.internal.ads.akj.m5038f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x01ad, code lost:
        if (com.google.android.gms.internal.ads.ajq.m5145a(com.google.android.gms.internal.ads.akj.m5038f(r7, r0), com.google.android.gms.internal.ads.akj.m5038f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x01cb, code lost:
        if (com.google.android.gms.internal.ads.akj.m5053b(r7, r0) == com.google.android.gms.internal.ads.akj.m5053b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01e8, code lost:
        if (com.google.android.gms.internal.ads.akj.m5067a(r7, r0) == com.google.android.gms.internal.ads.akj.m5067a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0206, code lost:
        if (com.google.android.gms.internal.ads.akj.m5053b(r7, r0) == com.google.android.gms.internal.ads.akj.m5053b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0223, code lost:
        if (com.google.android.gms.internal.ads.akj.m5067a(r7, r0) == com.google.android.gms.internal.ads.akj.m5067a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0240, code lost:
        if (com.google.android.gms.internal.ads.akj.m5067a(r7, r0) == com.google.android.gms.internal.ads.akj.m5067a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x025d, code lost:
        if (com.google.android.gms.internal.ads.akj.m5067a(r7, r0) == com.google.android.gms.internal.ads.akj.m5067a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x027d, code lost:
        if (com.google.android.gms.internal.ads.ajq.m5145a(com.google.android.gms.internal.ads.akj.m5038f(r7, r0), com.google.android.gms.internal.ads.akj.m5038f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x029d, code lost:
        if (com.google.android.gms.internal.ads.ajq.m5145a(com.google.android.gms.internal.ads.akj.m5038f(r7, r0), com.google.android.gms.internal.ads.akj.m5038f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x02bd, code lost:
        if (com.google.android.gms.internal.ads.ajq.m5145a(com.google.android.gms.internal.ads.akj.m5038f(r7, r0), com.google.android.gms.internal.ads.akj.m5038f(r8, r0)) != false) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x02da, code lost:
        if (com.google.android.gms.internal.ads.akj.m5048c(r7, r0) == com.google.android.gms.internal.ads.akj.m5048c(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x02f7, code lost:
        if (com.google.android.gms.internal.ads.akj.m5067a(r7, r0) == com.google.android.gms.internal.ads.akj.m5067a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0315, code lost:
        if (com.google.android.gms.internal.ads.akj.m5053b(r7, r0) == com.google.android.gms.internal.ads.akj.m5053b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0332, code lost:
        if (com.google.android.gms.internal.ads.akj.m5067a(r7, r0) == com.google.android.gms.internal.ads.akj.m5067a(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0350, code lost:
        if (com.google.android.gms.internal.ads.akj.m5053b(r7, r0) == com.google.android.gms.internal.ads.akj.m5053b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x036e, code lost:
        if (com.google.android.gms.internal.ads.akj.m5053b(r7, r0) == com.google.android.gms.internal.ads.akj.m5053b(r8, r0)) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0391, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.akj.m5043d(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.akj.m5043d(r8, r0))) goto L_0x03bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03b5, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.akj.m5040e(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.akj.m5040e(r8, r0))) goto L_0x03bb;
     */
    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo5180a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aiy.mo5180a(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: b */
    public final int mo5178b(T t) {
        int i;
        int i2;
        int i3;
        String str;
        int zzg;
        Object obj;
        int i4;
        int i5;
        int i6;
        int i7;
        long j;
        int i8;
        int zzc;
        long j2;
        long j3;
        int i9;
        String str2;
        Object obj2;
        int i10;
        int i11;
        int i12;
        long j4;
        int i13;
        int i14 = 1;
        int i15 = 0;
        if (this.f7445j) {
            Unsafe unsafe = f7437b;
            int i16 = 0;
            for (int i17 = 0; i17 < this.f7438c.length; i17 += 3) {
                int c = m5263c(i17);
                int i18 = (c & 267386880) >>> 20;
                int i19 = this.f7438c[i17];
                long j5 = c & 1048575;
                int i20 = (i18 < zzdrn.DOUBLE_LIST_PACKED.m3378id() || i18 > zzdrn.SINT64_LIST_PACKED.m3378id()) ? 0 : this.f7438c[i17 + 2] & 1048575;
                switch (i18) {
                    case 0:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzc(i19, 0.0d);
                        break;
                    case 1:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzb(i19, 0.0f);
                        break;
                    case 2:
                        i16 = i16;
                        if (m5283a((aiy<T>) t, i17)) {
                            j2 = akj.m5053b(t, j5);
                            zzc = zzdrb.zzj(i19, j2);
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i16 = i16;
                        if (m5283a((aiy<T>) t, i17)) {
                            j3 = akj.m5053b(t, j5);
                            zzc = zzdrb.zzk(i19, j3);
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i16 = i16;
                        if (m5283a((aiy<T>) t, i17)) {
                            i9 = akj.m5067a(t, j5);
                            zzc = zzdrb.zzaf(i19, i9);
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzm(i19, 0L);
                        break;
                    case 6:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzai(i19, 0);
                        break;
                    case 7:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzi(i19, true);
                        break;
                    case 8:
                        i16 = i16;
                        if (m5283a((aiy<T>) t, i17)) {
                            Object f = akj.m5038f(t, j5);
                            str2 = f;
                            if (f instanceof zzdqk) {
                                obj2 = f;
                                zzc = zzdrb.zzc(i19, (zzdqk) obj2);
                                break;
                            }
                            zzc = zzdrb.zzg(i19, str2);
                            break;
                        } else {
                            continue;
                        }
                    case 9:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        zzc = ajq.m5156a(i19, akj.m5038f(t, j5), m5292a(i17));
                        break;
                    case 10:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        obj2 = akj.m5038f(t, j5);
                        zzc = zzdrb.zzc(i19, (zzdqk) obj2);
                        break;
                    case 11:
                        i16 = i16;
                        if (m5283a((aiy<T>) t, i17)) {
                            i10 = akj.m5067a(t, j5);
                            zzc = zzdrb.zzag(i19, i10);
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i16 = i16;
                        if (m5283a((aiy<T>) t, i17)) {
                            i11 = akj.m5067a(t, j5);
                            zzc = zzdrb.zzak(i19, i11);
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzaj(i19, 0);
                        break;
                    case 14:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzn(i19, 0L);
                        break;
                    case 15:
                        i16 = i16;
                        if (m5283a((aiy<T>) t, i17)) {
                            i12 = akj.m5067a(t, j5);
                            zzc = zzdrb.zzah(i19, i12);
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i16 = i16;
                        if (m5283a((aiy<T>) t, i17)) {
                            j4 = akj.m5053b(t, j5);
                            zzc = zzdrb.zzl(i19, j4);
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i16 = i16;
                        if (!m5283a((aiy<T>) t, i17)) {
                            continue;
                        }
                        zzc = zzdrb.m3385c(i19, (zzdte) akj.m5038f(t, j5), m5292a(i17));
                        break;
                    case 18:
                    case 23:
                    case 32:
                        zzc = ajq.m5114i(i19, m5277a(t, j5));
                        break;
                    case 19:
                    case 24:
                    case 31:
                        zzc = ajq.m5117h(i19, m5277a(t, j5));
                        break;
                    case 20:
                        zzc = ajq.m5155a(i19, (List<Long>) m5277a(t, j5));
                        break;
                    case 21:
                        zzc = ajq.m5141b(i19, m5277a(t, j5));
                        break;
                    case 22:
                        zzc = ajq.m5126e(i19, m5277a(t, j5));
                        break;
                    case 25:
                        zzc = ajq.m5111j(i19, m5277a(t, j5));
                        break;
                    case 26:
                        zzc = ajq.m5108k(i19, m5277a(t, j5));
                        break;
                    case 27:
                        zzc = ajq.m5154a(i19, m5277a(t, j5), m5292a(i17));
                        break;
                    case 28:
                        zzc = ajq.m5106l(i19, m5277a(t, j5));
                        break;
                    case 29:
                        zzc = ajq.m5123f(i19, m5277a(t, j5));
                        break;
                    case 30:
                        zzc = ajq.m5130d(i19, m5277a(t, j5));
                        break;
                    case 33:
                        zzc = ajq.m5120g(i19, m5277a(t, j5));
                        break;
                    case C1001ac.C1009h.f4220aZ /* 34 */:
                        zzc = ajq.m5134c(i19, m5277a(t, j5));
                        break;
                    case C1001ac.C1009h.f4274ba /* 35 */:
                        int i21 = ajq.m5112i((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (i21 > 0) {
                            i13 = i21;
                            if (this.f7446k) {
                                i13 = i21;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        int h = ajq.m5115h((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (h > 0) {
                            i13 = h;
                            if (this.f7446k) {
                                i13 = h;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        int a = ajq.m5144a((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (a > 0) {
                            i13 = a;
                            if (this.f7446k) {
                                i13 = a;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        int b = ajq.m5136b((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (b > 0) {
                            i13 = b;
                            if (this.f7446k) {
                                i13 = b;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        int e = ajq.m5124e((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (e > 0) {
                            i13 = e;
                            if (this.f7446k) {
                                i13 = e;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        int i22 = ajq.m5112i((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (i22 > 0) {
                            i13 = i22;
                            if (this.f7446k) {
                                i13 = i22;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        int h2 = ajq.m5115h((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (h2 > 0) {
                            i13 = h2;
                            if (this.f7446k) {
                                i13 = h2;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        int j6 = ajq.m5109j((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (j6 > 0) {
                            i13 = j6;
                            if (this.f7446k) {
                                i13 = j6;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        int f2 = ajq.m5121f((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (f2 > 0) {
                            i13 = f2;
                            if (this.f7446k) {
                                i13 = f2;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        int d = ajq.m5128d((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (d > 0) {
                            i13 = d;
                            if (this.f7446k) {
                                i13 = d;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        int h3 = ajq.m5115h((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (h3 > 0) {
                            i13 = h3;
                            if (this.f7446k) {
                                i13 = h3;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        int i23 = ajq.m5112i((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (i23 > 0) {
                            i13 = i23;
                            if (this.f7446k) {
                                i13 = i23;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        int g = ajq.m5118g((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (g > 0) {
                            i13 = g;
                            if (this.f7446k) {
                                i13 = g;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        int c2 = ajq.m5132c((List) unsafe.getObject(t, j5));
                        i16 = i16;
                        if (c2 > 0) {
                            i13 = c2;
                            if (this.f7446k) {
                                i13 = c2;
                                unsafe.putInt(t, i20, i13);
                            }
                            zzc = zzdrb.zzfz(i19) + zzdrb.zzgb(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        zzc = ajq.m5140b(i19, (List<zzdte>) m5277a(t, j5), m5292a(i17));
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                        zzc = this.f7454s.mo5299e(akj.m5038f(t, j5));
                        break;
                    case 51:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzc(i19, 0.0d);
                        break;
                    case 52:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzb(i19, 0.0f);
                        break;
                    case 53:
                        i16 = i16;
                        if (m5282a((aiy<T>) t, i19, i17)) {
                            j2 = m5256e(t, j5);
                            zzc = zzdrb.zzj(i19, j2);
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i16 = i16;
                        if (m5282a((aiy<T>) t, i19, i17)) {
                            j3 = m5256e(t, j5);
                            zzc = zzdrb.zzk(i19, j3);
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i16 = i16;
                        if (m5282a((aiy<T>) t, i19, i17)) {
                            i9 = m5259d(t, j5);
                            zzc = zzdrb.zzaf(i19, i9);
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzm(i19, 0L);
                        break;
                    case 57:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzai(i19, 0);
                        break;
                    case 58:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzi(i19, true);
                        break;
                    case 59:
                        i16 = i16;
                        if (m5282a((aiy<T>) t, i19, i17)) {
                            Object f3 = akj.m5038f(t, j5);
                            str2 = f3;
                            if (f3 instanceof zzdqk) {
                                obj2 = f3;
                                zzc = zzdrb.zzc(i19, (zzdqk) obj2);
                                break;
                            }
                            zzc = zzdrb.zzg(i19, str2);
                            break;
                        } else {
                            continue;
                        }
                    case 60:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        zzc = ajq.m5156a(i19, akj.m5038f(t, j5), m5292a(i17));
                        break;
                    case 61:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        obj2 = akj.m5038f(t, j5);
                        zzc = zzdrb.zzc(i19, (zzdqk) obj2);
                        break;
                    case 62:
                        i16 = i16;
                        if (m5282a((aiy<T>) t, i19, i17)) {
                            i10 = m5259d(t, j5);
                            zzc = zzdrb.zzag(i19, i10);
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i16 = i16;
                        if (m5282a((aiy<T>) t, i19, i17)) {
                            i11 = m5259d(t, j5);
                            zzc = zzdrb.zzak(i19, i11);
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzaj(i19, 0);
                        break;
                    case 65:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        zzc = zzdrb.zzn(i19, 0L);
                        break;
                    case 66:
                        i16 = i16;
                        if (m5282a((aiy<T>) t, i19, i17)) {
                            i12 = m5259d(t, j5);
                            zzc = zzdrb.zzah(i19, i12);
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i16 = i16;
                        if (m5282a((aiy<T>) t, i19, i17)) {
                            j4 = m5256e(t, j5);
                            zzc = zzdrb.zzl(i19, j4);
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i16 = i16;
                        if (!m5282a((aiy<T>) t, i19, i17)) {
                            continue;
                        }
                        zzc = zzdrb.m3385c(i19, (zzdte) akj.m5038f(t, j5), m5292a(i17));
                        break;
                    default:
                        i16 = i16;
                        continue;
                }
                i16 += zzc;
            }
            return i16 + m5287a((ake) this.f7452q, (Object) t);
        }
        Unsafe unsafe2 = f7437b;
        int i24 = -1;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        while (i25 < this.f7438c.length) {
            int c3 = m5263c(i25);
            int[] iArr = this.f7438c;
            int i28 = iArr[i25];
            int i29 = (c3 & 267386880) >>> 20;
            if (i29 <= 17) {
                i = iArr[i25 + 2];
                int i30 = i & 1048575;
                i2 = i14 << (i >>> 20);
                if (i30 != i24) {
                    i27 = unsafe2.getInt(t, i30);
                    i24 = i30;
                }
            } else {
                i = (!this.f7446k || i29 < zzdrn.DOUBLE_LIST_PACKED.m3378id() || i29 > zzdrn.SINT64_LIST_PACKED.m3378id()) ? 0 : this.f7438c[i25 + 2] & 1048575;
                i2 = 0;
                i27 = i27;
            }
            long j7 = c3 & 1048575;
            switch (i29) {
                case 0:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i26 += zzdrb.zzc(i28, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i26 += zzdrb.zzb(i28, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i3 = zzdrb.zzj(i28, unsafe2.getLong(t, j7));
                        i26 += i3;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i3 = zzdrb.zzk(i28, unsafe2.getLong(t, j7));
                        i26 += i3;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i3 = zzdrb.zzaf(i28, unsafe2.getInt(t, j7));
                        i26 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i3 = zzdrb.zzm(i28, 0L);
                        i26 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i26 += zzdrb.zzai(i28, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i26 += zzdrb.zzi(i28, true);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i26 = i26;
                    if ((i27 & i2) == 0) {
                        break;
                    } else {
                        Object object = unsafe2.getObject(t, j7);
                        str = object;
                        if (object instanceof zzdqk) {
                            obj = object;
                            zzg = zzdrb.zzc(i28, (zzdqk) obj);
                            i26 += zzg;
                            break;
                        }
                        zzg = zzdrb.zzg(i28, str);
                        i26 += zzg;
                    }
                case 9:
                    i26 = i26;
                    if ((i27 & i2) == 0) {
                        break;
                    }
                    zzg = ajq.m5156a(i28, unsafe2.getObject(t, j7), m5292a(i25));
                    i26 += zzg;
                    break;
                case 10:
                    i26 = i26;
                    if ((i27 & i2) == 0) {
                        break;
                    }
                    obj = unsafe2.getObject(t, j7);
                    zzg = zzdrb.zzc(i28, (zzdqk) obj);
                    i26 += zzg;
                    break;
                case 11:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i4 = unsafe2.getInt(t, j7);
                        zzg = zzdrb.zzag(i28, i4);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i5 = unsafe2.getInt(t, j7);
                        zzg = zzdrb.zzak(i28, i5);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i26 = i26;
                    if ((i27 & i2) == 0) {
                        break;
                    }
                    i6 = zzdrb.zzaj(i28, 0);
                    i26 += i6;
                    break;
                case 14:
                    i26 = i26;
                    if ((i27 & i2) == 0) {
                        break;
                    }
                    zzg = zzdrb.zzn(i28, 0L);
                    i26 += zzg;
                    break;
                case 15:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        i7 = unsafe2.getInt(t, j7);
                        zzg = zzdrb.zzah(i28, i7);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i26 = i26;
                    if ((i27 & i2) != 0) {
                        j = unsafe2.getLong(t, j7);
                        zzg = zzdrb.zzl(i28, j);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i26 = i26;
                    if ((i27 & i2) == 0) {
                        break;
                    }
                    zzg = zzdrb.m3385c(i28, (zzdte) unsafe2.getObject(t, j7), m5292a(i25));
                    i26 += zzg;
                    break;
                case 18:
                case 23:
                case 32:
                    zzg = ajq.m5114i(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 19:
                case 24:
                case 31:
                    zzg = ajq.m5117h(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 20:
                    zzg = ajq.m5155a(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 21:
                    zzg = ajq.m5141b(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 22:
                    zzg = ajq.m5126e(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 25:
                    zzg = ajq.m5111j(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 26:
                    zzg = ajq.m5108k(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 27:
                    zzg = ajq.m5154a(i28, (List<?>) unsafe2.getObject(t, j7), m5292a(i25));
                    i26 += zzg;
                    break;
                case 28:
                    zzg = ajq.m5106l(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 29:
                    zzg = ajq.m5123f(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 30:
                    zzg = ajq.m5130d(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 33:
                    zzg = ajq.m5120g(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case C1001ac.C1009h.f4220aZ /* 34 */:
                    zzg = ajq.m5134c(i28, (List) unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case C1001ac.C1009h.f4274ba /* 35 */:
                    int i31 = ajq.m5112i((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (i31 > 0) {
                        i8 = i31;
                        if (this.f7446k) {
                            i8 = i31;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int h4 = ajq.m5115h((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (h4 > 0) {
                        i8 = h4;
                        if (this.f7446k) {
                            i8 = h4;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int a2 = ajq.m5144a((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (a2 > 0) {
                        i8 = a2;
                        if (this.f7446k) {
                            i8 = a2;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int b2 = ajq.m5136b((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (b2 > 0) {
                        i8 = b2;
                        if (this.f7446k) {
                            i8 = b2;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int e2 = ajq.m5124e((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (e2 > 0) {
                        i8 = e2;
                        if (this.f7446k) {
                            i8 = e2;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int i32 = ajq.m5112i((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (i32 > 0) {
                        i8 = i32;
                        if (this.f7446k) {
                            i8 = i32;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int h5 = ajq.m5115h((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (h5 > 0) {
                        i8 = h5;
                        if (this.f7446k) {
                            i8 = h5;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int j8 = ajq.m5109j((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (j8 > 0) {
                        i8 = j8;
                        if (this.f7446k) {
                            i8 = j8;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int f4 = ajq.m5121f((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (f4 > 0) {
                        i8 = f4;
                        if (this.f7446k) {
                            i8 = f4;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int d2 = ajq.m5128d((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (d2 > 0) {
                        i8 = d2;
                        if (this.f7446k) {
                            i8 = d2;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int h6 = ajq.m5115h((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (h6 > 0) {
                        i8 = h6;
                        if (this.f7446k) {
                            i8 = h6;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int i33 = ajq.m5112i((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (i33 > 0) {
                        i8 = i33;
                        if (this.f7446k) {
                            i8 = i33;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int g2 = ajq.m5118g((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (g2 > 0) {
                        i8 = g2;
                        if (this.f7446k) {
                            i8 = g2;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int c4 = ajq.m5132c((List) unsafe2.getObject(t, j7));
                    i26 = i26;
                    if (c4 > 0) {
                        i8 = c4;
                        if (this.f7446k) {
                            i8 = c4;
                            unsafe2.putInt(t, i, i8);
                        }
                        i6 = zzdrb.zzfz(i28) + zzdrb.zzgb(i8) + i8;
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzg = ajq.m5140b(i28, (List) unsafe2.getObject(t, j7), m5292a(i25));
                    i26 += zzg;
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                    zzg = this.f7454s.mo5299e(unsafe2.getObject(t, j7));
                    i26 += zzg;
                    break;
                case 51:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        zzg = zzdrb.zzc(i28, 0.0d);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        i6 = zzdrb.zzb(i28, 0.0f);
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        zzg = zzdrb.zzj(i28, m5256e(t, j7));
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        zzg = zzdrb.zzk(i28, m5256e(t, j7));
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        zzg = zzdrb.zzaf(i28, m5259d(t, j7));
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        zzg = zzdrb.zzm(i28, 0L);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        i6 = zzdrb.zzai(i28, 0);
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        i6 = zzdrb.zzi(i28, true);
                        i26 += i6;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i26 = i26;
                    if (!m5282a((aiy<T>) t, i28, i25)) {
                        break;
                    } else {
                        Object object2 = unsafe2.getObject(t, j7);
                        str = object2;
                        if (object2 instanceof zzdqk) {
                            obj = object2;
                            zzg = zzdrb.zzc(i28, (zzdqk) obj);
                            i26 += zzg;
                            break;
                        }
                        zzg = zzdrb.zzg(i28, str);
                        i26 += zzg;
                    }
                case 60:
                    i26 = i26;
                    if (!m5282a((aiy<T>) t, i28, i25)) {
                        break;
                    }
                    zzg = ajq.m5156a(i28, unsafe2.getObject(t, j7), m5292a(i25));
                    i26 += zzg;
                    break;
                case 61:
                    i26 = i26;
                    if (!m5282a((aiy<T>) t, i28, i25)) {
                        break;
                    }
                    obj = unsafe2.getObject(t, j7);
                    zzg = zzdrb.zzc(i28, (zzdqk) obj);
                    i26 += zzg;
                    break;
                case 62:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        i4 = m5259d(t, j7);
                        zzg = zzdrb.zzag(i28, i4);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        i5 = m5259d(t, j7);
                        zzg = zzdrb.zzak(i28, i5);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i26 = i26;
                    if (!m5282a((aiy<T>) t, i28, i25)) {
                        break;
                    }
                    i6 = zzdrb.zzaj(i28, 0);
                    i26 += i6;
                    break;
                case 65:
                    i26 = i26;
                    if (!m5282a((aiy<T>) t, i28, i25)) {
                        break;
                    }
                    zzg = zzdrb.zzn(i28, 0L);
                    i26 += zzg;
                    break;
                case 66:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        i7 = m5259d(t, j7);
                        zzg = zzdrb.zzah(i28, i7);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i26 = i26;
                    if (m5282a((aiy<T>) t, i28, i25)) {
                        j = m5256e(t, j7);
                        zzg = zzdrb.zzl(i28, j);
                        i26 += zzg;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i26 = i26;
                    if (!m5282a((aiy<T>) t, i28, i25)) {
                        break;
                    }
                    zzg = zzdrb.m3385c(i28, (zzdte) unsafe2.getObject(t, j7), m5292a(i25));
                    i26 += zzg;
                    break;
                default:
                    i26 = i26;
                    break;
            }
            i25 += 3;
            i14 = 1;
            i15 = 0;
            i27 = i27;
        }
        int a3 = i26 + m5287a((ake) this.f7452q, (Object) t);
        int i34 = a3;
        if (this.f7443h) {
            aia<?> a4 = this.f7453r.mo5360a(t);
            int i35 = i15;
            while (i15 < a4.f7398a.m5166c()) {
                Map.Entry<?, Object> b3 = a4.f7398a.m5168b(i15);
                i35 += aia.m5349a((zzdro) b3.getKey(), b3.getValue());
                i15++;
            }
            for (Map.Entry<?, Object> entry : a4.f7398a.m5163d()) {
                i35 += aia.m5349a((zzdro) entry.getKey(), entry.getValue());
            }
            i34 = a3 + i35;
        }
        return i34;
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: b */
    public final void mo5177b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f7438c.length; i += 3) {
                int c = m5263c(i);
                long j = 1048575 & c;
                int i2 = this.f7438c[i];
                switch ((c & 267386880) >>> 20) {
                    case 0:
                        if (m5283a((aiy<T>) t2, i)) {
                            akj.m5065a(t, j, akj.m5040e(t2, j));
                            m5268b((aiy<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m5283a((aiy<T>) t2, i)) {
                            akj.m5064a((Object) t, j, akj.m5043d(t2, j));
                            m5268b((aiy<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5062a((Object) t, j, akj.m5053b(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 3:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5062a((Object) t, j, akj.m5053b(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 4:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5063a((Object) t, j, akj.m5067a(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 5:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5062a((Object) t, j, akj.m5053b(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 6:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5063a((Object) t, j, akj.m5067a(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 7:
                        if (m5283a((aiy<T>) t2, i)) {
                            akj.m5060a(t, j, akj.m5048c(t2, j));
                            m5268b((aiy<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5061a(t, j, akj.m5038f(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 9:
                    case 17:
                        m5276a(t, t2, i);
                        break;
                    case 10:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5061a(t, j, akj.m5038f(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 11:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5063a((Object) t, j, akj.m5067a(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 12:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5063a((Object) t, j, akj.m5067a(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 13:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5063a((Object) t, j, akj.m5067a(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 14:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5062a((Object) t, j, akj.m5053b(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 15:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5063a((Object) t, j, akj.m5067a(t2, j));
                        m5268b((aiy<T>) t, i);
                        break;
                    case 16:
                        if (!m5283a((aiy<T>) t2, i)) {
                            break;
                        }
                        akj.m5062a((Object) t, j, akj.m5053b(t2, j));
                        m5268b((aiy<T>) t, i);
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
                        this.f7451p.mo5318a(t, t2, j);
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                        ajq.m5148a(this.f7454s, t, t2, j);
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
                        if (!m5282a((aiy<T>) t2, i2, i)) {
                            break;
                        }
                        akj.m5061a(t, j, akj.m5038f(t2, j));
                        m5267b((aiy<T>) t, i2, i);
                        break;
                    case 60:
                    case 68:
                        m5264b(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!m5282a((aiy<T>) t2, i2, i)) {
                            break;
                        }
                        akj.m5061a(t, j, akj.m5038f(t2, j));
                        m5267b((aiy<T>) t, i2, i);
                        break;
                }
            }
            if (!this.f7445j) {
                ajq.m5147a(this.f7452q, t, t2);
                if (this.f7443h) {
                    ajq.m5149a(this.f7453r, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: c */
    public final void mo5176c(T t) {
        int i;
        int i2 = this.f7448m;
        while (true) {
            i = this.f7449n;
            if (i2 >= i) {
                break;
            }
            long c = m5263c(this.f7447l[i2]) & 1048575;
            Object f = akj.m5038f(t, c);
            if (f != null) {
                akj.m5061a(t, c, this.f7454s.mo5300d(f));
            }
            i2++;
        }
        int length = this.f7447l.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f7451p.mo5317b(t, this.f7447l[i3]);
        }
        this.f7452q.mo5074d(t);
        if (this.f7443h) {
            this.f7453r.mo5354c(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: d */
    public final boolean mo5175d(T t) {
        int i;
        int i2 = 0;
        int i3 = -1;
        for (int i4 = 0; i4 < this.f7448m; i4++) {
            int i5 = this.f7447l[i4];
            int i6 = this.f7438c[i5];
            int c = m5263c(i5);
            if (!this.f7445j) {
                int i7 = this.f7438c[i5 + 2];
                int i8 = i7 & 1048575;
                int i9 = 1 << (i7 >>> 20);
                i3 = i3;
                i = i9;
                if (i8 != i3) {
                    i2 = f7437b.getInt(t, i8);
                    i3 = i8;
                    i = i9;
                }
            } else {
                i = 0;
                i3 = i3;
            }
            if (((268435456 & c) != 0) && !m5281a((aiy<T>) t, i5, i2, i)) {
                return false;
            }
            int i10 = (267386880 & c) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (m5282a((aiy<T>) t, i6, i5) && !m5279a(t, c, m5292a(i5))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 != 50) {
                            continue;
                        } else {
                            Map<?, ?> b = this.f7454s.mo5302b(akj.m5038f(t, c & 1048575));
                            boolean z = true;
                            if (!b.isEmpty()) {
                                z = true;
                                if (this.f7454s.mo5303b().f7431c.zzbcp() == zzdvm.MESSAGE) {
                                    ajo<T> ajoVar = null;
                                    Iterator<?> it = b.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        ajo<T> ajoVar2 = ajoVar;
                                        if (ajoVar == null) {
                                            ajoVar2 = ajd.m5247a().m5246a((Class) next.getClass());
                                        }
                                        ajoVar = ajoVar2;
                                        if (!ajoVar2.mo5175d(next)) {
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
                List list = (List) akj.m5038f(t, c & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    ajo a = m5292a(i5);
                    int i11 = 0;
                    while (true) {
                        z2 = true;
                        if (i11 >= list.size()) {
                            break;
                        } else if (!a.mo5175d(list.get(i11))) {
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
            } else if (m5281a((aiy<T>) t, i5, i2, i) && !m5279a(t, c, m5292a(i5))) {
                return false;
            }
        }
        return !this.f7443h || this.f7453r.mo5360a(t).m5336f();
    }
}
