package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzhb;
import com.google.android.gms.internal.measurement.zzhi;
import com.google.android.gms.internal.measurement.zzhs;
import com.google.android.gms.internal.measurement.zzht;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzif;
import com.google.android.gms.internal.measurement.zzij;
import com.google.android.gms.internal.measurement.zzjb;
import com.google.android.gms.internal.measurement.zzjj;
import com.google.android.gms.internal.measurement.zzks;
import com.google.android.gms.internal.measurement.zzlg;
import com.google.android.gms.internal.measurement.zzln;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* renamed from: c.d.b.d.g.f.c4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/c4.class */
public final class C4472c4<T> implements AbstractC4560o4<T> {

    /* renamed from: q */
    public static final int[] f16701q = new int[0];

    /* renamed from: r */
    public static final Unsafe f16702r = C4522j5.m25421c();

    /* renamed from: a */
    public final int[] f16703a;

    /* renamed from: b */
    public final Object[] f16704b;

    /* renamed from: c */
    public final int f16705c;

    /* renamed from: d */
    public final int f16706d;

    /* renamed from: e */
    public final zzjj f16707e;

    /* renamed from: f */
    public final boolean f16708f;

    /* renamed from: g */
    public final boolean f16709g;

    /* renamed from: h */
    public final boolean f16710h;

    /* renamed from: i */
    public final int[] f16711i;

    /* renamed from: j */
    public final int f16712j;

    /* renamed from: k */
    public final int f16713k;

    /* renamed from: l */
    public final AbstractC4493f4 f16714l;

    /* renamed from: m */
    public final AbstractC4552n3 f16715m;

    /* renamed from: n */
    public final AbstractC4487e5<?, ?> f16716n;

    /* renamed from: o */
    public final AbstractC4629z2<?> f16717o;

    /* renamed from: p */
    public final AbstractC4606v3 f16718p;

    public C4472c4(int[] iArr, Object[] objArr, int i, int i2, zzjj zzjjVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, AbstractC4493f4 f4Var, AbstractC4552n3 n3Var, AbstractC4487e5<?, ?> e5Var, AbstractC4629z2<?> z2Var, AbstractC4606v3 v3Var) {
        this.f16703a = iArr;
        this.f16704b = objArr;
        this.f16705c = i;
        this.f16706d = i2;
        this.f16709g = zzjjVar instanceof zzhy;
        this.f16710h = z;
        this.f16708f = z2Var != null && z2Var.mo25115a(zzjjVar);
        this.f16711i = iArr2;
        this.f16712j = i3;
        this.f16713k = i4;
        this.f16714l = f4Var;
        this.f16715m = n3Var;
        this.f16716n = e5Var;
        this.f16717o = z2Var;
        this.f16707e = zzjjVar;
        this.f16718p = v3Var;
    }

    /* renamed from: a */
    public static <UT, UB> int m25556a(AbstractC4487e5<UT, UB> e5Var, T t) {
        return e5Var.mo25476f(e5Var.mo25484b(t));
    }

    /* renamed from: a */
    public static int m25539a(byte[] bArr, int i, int i2, zzlg zzlgVar, Class<?> cls, C4530k2 k2Var) throws IOException {
        int i3;
        switch (C4465b4.f16691a[zzlgVar.ordinal()]) {
            case 1:
                i3 = C4505h2.m25459b(bArr, i, k2Var);
                k2Var.f16802c = Boolean.valueOf(k2Var.f16801b != 0);
                break;
            case 2:
                i3 = C4505h2.m25454e(bArr, i, k2Var);
                break;
            case 3:
                k2Var.f16802c = Double.valueOf(C4505h2.m25458c(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                k2Var.f16802c = Integer.valueOf(C4505h2.m25463a(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                k2Var.f16802c = Long.valueOf(C4505h2.m25460b(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                k2Var.f16802c = Float.valueOf(C4505h2.m25456d(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = C4505h2.m25462a(bArr, i, k2Var);
                k2Var.f16802c = Integer.valueOf(k2Var.f16800a);
                break;
            case 12:
            case 13:
                i3 = C4505h2.m25459b(bArr, i, k2Var);
                k2Var.f16802c = Long.valueOf(k2Var.f16801b);
                break;
            case 14:
                i3 = C4505h2.m25464a(C4521j4.m25442a().m25441a((Class) cls), bArr, i, i2, k2Var);
                break;
            case 15:
                i3 = C4505h2.m25462a(bArr, i, k2Var);
                k2Var.f16802c = Integer.valueOf(zzhb.m9777e(k2Var.f16800a));
                break;
            case 16:
                i3 = C4505h2.m25459b(bArr, i, k2Var);
                k2Var.f16802c = Long.valueOf(zzhb.m9786a(k2Var.f16801b));
                break;
            case 17:
                i3 = C4505h2.m25455d(bArr, i, k2Var);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:179:0x092c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> p131c.p161d.p170b.p224d.p252g.p258f.C4472c4<T> m25553a(java.lang.Class<T> r18, p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4630z3 r19, p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4493f4 r20, p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4552n3 r21, p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4487e5<?, ?> r22, p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4629z2<?> r23, p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4606v3 r24) {
        /*
            Method dump skipped, instructions count: 2553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4472c4.m25553a(java.lang.Class, c.d.b.d.g.f.z3, c.d.b.d.g.f.f4, c.d.b.d.g.f.n3, c.d.b.d.g.f.e5, c.d.b.d.g.f.z2, c.d.b.d.g.f.v3):c.d.b.d.g.f.c4");
    }

    /* renamed from: a */
    public static Field m25552a(Class<?> cls, String str) {
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
    public static List<?> m25545a(Object obj, long j) {
        return (List) C4522j5.m25407f(obj, j);
    }

    /* renamed from: a */
    public static void m25557a(int i, Object obj, AbstractC4582r5 r5Var) throws IOException {
        if (obj instanceof String) {
            r5Var.mo25155a(i, (String) obj);
        } else {
            r5Var.mo25158a(i, (zzgp) obj);
        }
    }

    /* renamed from: a */
    public static <UT, UB> void m25555a(AbstractC4487e5<UT, UB> e5Var, T t, AbstractC4582r5 r5Var) throws IOException {
        e5Var.mo25487a((AbstractC4487e5<UT, UB>) e5Var.mo25484b(t), r5Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static boolean m25547a(Object obj, int i, AbstractC4560o4 o4Var) {
        return o4Var.mo25343f(C4522j5.m25407f(obj, i & 1048575));
    }

    /* renamed from: b */
    public static <T> double m25534b(T t, long j) {
        return ((Double) C4522j5.m25407f(t, j)).doubleValue();
    }

    /* renamed from: c */
    public static <T> float m25530c(T t, long j) {
        return ((Float) C4522j5.m25407f(t, j)).floatValue();
    }

    /* renamed from: d */
    public static <T> int m25526d(T t, long j) {
        return ((Integer) C4522j5.m25407f(t, j)).intValue();
    }

    /* renamed from: d */
    public static zzks m25527d(Object obj) {
        zzhy zzhyVar = (zzhy) obj;
        zzks zzksVar = zzhyVar.zzb;
        zzks zzksVar2 = zzksVar;
        if (zzksVar == zzks.m9600d()) {
            zzksVar2 = zzks.m9599e();
            zzhyVar.zzb = zzksVar2;
        }
        return zzksVar2;
    }

    /* renamed from: e */
    public static <T> long m25524e(T t, long j) {
        return ((Long) C4522j5.m25407f(t, j)).longValue();
    }

    /* renamed from: f */
    public static <T> boolean m25522f(T t, long j) {
        return ((Boolean) C4522j5.m25407f(t, j)).booleanValue();
    }

    /* renamed from: g */
    public static boolean m25521g(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: a */
    public final int m25559a(int i, int i2) {
        if (i < this.f16705c || i > this.f16706d) {
            return -1;
        }
        return m25537b(i, i2);
    }

    /* renamed from: a */
    public final int m25543a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C4530k2 k2Var) throws IOException {
        Unsafe unsafe = f16702r;
        long j2 = this.f16703a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(C4505h2.m25458c(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(C4505h2.m25456d(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = C4505h2.m25459b(bArr, i, k2Var);
                    unsafe.putObject(t, j, Long.valueOf(k2Var.f16801b));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = C4505h2.m25462a(bArr, i, k2Var);
                    unsafe.putObject(t, j, Integer.valueOf(k2Var.f16800a));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(C4505h2.m25460b(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(C4505h2.m25463a(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = C4505h2.m25459b(bArr, i, k2Var);
                    unsafe.putObject(t, j, Boolean.valueOf(k2Var.f16801b != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = C4505h2.m25462a(bArr, i, k2Var);
                    int i9 = k2Var.f16800a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || C4547m5.m25362a(bArr, i, i + i9)) {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzia.f29511a));
                        i += i9;
                    } else {
                        throw zzij.zzh();
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = C4505h2.m25464a(m25560a(i8), bArr, i, i2, k2Var);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, k2Var.f16802c);
                    } else {
                        unsafe.putObject(t, j, zzia.m9637a(object, k2Var.f16802c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = C4505h2.m25454e(bArr, i, k2Var);
                    unsafe.putObject(t, j, k2Var.f16802c);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = C4505h2.m25462a(bArr, i, k2Var);
                    int i10 = k2Var.f16800a;
                    zzif c = m25531c(i8);
                    if (c != null && !c.zza(i10)) {
                        m25527d(t).m9608a(i3, Long.valueOf(i10));
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                        break;
                    }
                }
                break;
            case 66:
                if (i5 == 0) {
                    i = C4505h2.m25462a(bArr, i, k2Var);
                    unsafe.putObject(t, j, Integer.valueOf(zzhb.m9777e(k2Var.f16800a)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = C4505h2.m25459b(bArr, i, k2Var);
                    unsafe.putObject(t, j, Long.valueOf(zzhb.m9786a(k2Var.f16801b)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = C4505h2.m25465a(m25560a(i8), bArr, i, i2, (i3 & (-8)) | 4, k2Var);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, k2Var.f16802c);
                    } else {
                        unsafe.putObject(t, j, zzia.m9637a(object2, k2Var.f16802c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0970 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x096d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0371  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0453 -> B:114:0x0458). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0361 -> B:80:0x0367). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m25542a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, p131c.p161d.p170b.p224d.p252g.p258f.C4530k2 r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4472c4.m25542a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, c.d.b.d.g.f.k2):int");
    }

    /* renamed from: a */
    public final <K, V> int m25541a(T t, byte[] bArr, int i, int i2, int i3, long j, C4530k2 k2Var) throws IOException {
        Unsafe unsafe = f16702r;
        Object b = m25538b(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.f16718p.mo25171a(object)) {
            obj = this.f16718p.mo25166e(b);
            this.f16718p.mo25170a(obj, object);
            unsafe.putObject(t, j, obj);
        }
        C4600u3<?, ?> d = this.f16718p.mo25167d(b);
        Map<?, ?> c = this.f16718p.mo25168c(obj);
        int a = C4505h2.m25462a(bArr, i, k2Var);
        int i4 = k2Var.f16800a;
        if (i4 < 0 || i4 > i2 - a) {
            throw zzij.zza();
        }
        int i5 = i4 + a;
        Object obj2 = (K) d.f16902b;
        Object obj3 = (V) d.f16904d;
        while (a < i5) {
            int i6 = a + 1;
            byte b2 = bArr[a];
            int i7 = i6;
            int i8 = b2;
            if (b2 < 0) {
                i7 = C4505h2.m25467a(b2, bArr, i6, k2Var);
                i8 = k2Var.f16800a;
            }
            int i9 = i8 >>> 3;
            int i10 = i8 & 7;
            if (i9 != 1) {
                if (i9 == 2 && i10 == d.f16903c.zzb()) {
                    a = m25539a(bArr, i7, i2, d.f16903c, d.f16904d.getClass(), k2Var);
                    obj3 = (V) k2Var.f16802c;
                }
                a = C4505h2.m25470a(i8, bArr, i7, i2, k2Var);
            } else if (i10 == d.f16901a.zzb()) {
                a = m25539a(bArr, i7, i2, d.f16901a, (Class<?>) null, k2Var);
                obj2 = (K) k2Var.f16802c;
            } else {
                a = C4505h2.m25470a(i8, bArr, i7, i2, k2Var);
            }
        }
        if (a == i5) {
            c.put(obj2, obj3);
            return i5;
        }
        throw zzij.zzg();
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x0777, code lost:
        if (r33 == 1048575) goto L_0x0785;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x077a, code lost:
        r28.putInt(r17, r33, r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0785, code lost:
        r22 = null;
        r19 = r18.f16712j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0792, code lost:
        if (r19 >= r18.f16713k) goto L_0x07b1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0795, code lost:
        r22 = (com.google.android.gms.internal.measurement.zzks) r18.m25546a((java.lang.Object) r17, r18.f16711i[r19], (int) r22, (p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4487e5<UT, int>) r18.f16716n);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x07b3, code lost:
        if (r22 == null) goto L_0x07c0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x07b6, code lost:
        r18.f16716n.mo25481b((java.lang.Object) r17, (T) r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x07c2, code lost:
        if (r29 != 0) goto L_0x07d3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x07c9, code lost:
        if (r21 != r20) goto L_0x07cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x07d2, code lost:
        throw com.google.android.gms.internal.measurement.zzij.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x07d7, code lost:
        if (r21 > r20) goto L_0x07e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x07de, code lost:
        if (r31 != r29) goto L_0x07e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x07e3, code lost:
        return r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x07ec, code lost:
        throw com.google.android.gms.internal.measurement.zzij.zzg();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m25540a(T r17, byte[] r18, int r19, int r20, int r21, p131c.p161d.p170b.p224d.p252g.p258f.C4530k2 r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2032
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4472c4.m25540a(java.lang.Object, byte[], int, int, int, c.d.b.d.g.f.k2):int");
    }

    /* renamed from: a */
    public final AbstractC4560o4 m25560a(int i) {
        int i2 = (i / 3) << 1;
        AbstractC4560o4 o4Var = (AbstractC4560o4) this.f16704b[i2];
        if (o4Var != null) {
            return o4Var;
        }
        AbstractC4560o4<T> a = C4521j4.m25442a().m25441a((Class) ((Class) this.f16704b[i2 + 1]));
        this.f16704b[i2] = a;
        return a;
    }

    /* renamed from: a */
    public final <K, V, UT, UB> UB m25558a(int i, int i2, Map<K, V> map, zzif zzifVar, UB ub, AbstractC4487e5<UT, UB> e5Var) {
        C4600u3<?, ?> d = this.f16718p.mo25167d(m25538b(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzifVar.zza(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = e5Var.mo25494a();
                }
                C4572q2 zzc = zzgp.zzc(zzjb.m9623a(d, next.getKey(), next.getValue()));
                try {
                    zzjb.m9622a(zzc.m25315b(), d, next.getKey(), next.getValue());
                    e5Var.mo25489a((AbstractC4487e5<UT, UB>) ub2, i2, zzc.m25316a());
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
    public final <UT, UB> UB m25546a(Object obj, int i, UB ub, AbstractC4487e5<UT, UB> e5Var) {
        zzif c;
        int i2 = this.f16703a[i];
        Object f = C4522j5.m25407f(obj, m25528d(i) & 1048575);
        if (!(f == null || (c = m25531c(i)) == null)) {
            return (UB) m25558a(i, i2, this.f16718p.mo25168c(f), c, (zzif) ub, (AbstractC4487e5<UT, zzif>) e5Var);
        }
        return ub;
    }

    /* renamed from: a */
    public final <K, V> void m25554a(AbstractC4582r5 r5Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            r5Var.mo25159a(i, this.f16718p.mo25167d(m25538b(i2)), this.f16718p.mo25169b(obj));
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    public final void mo25351a(T t) {
        int i;
        int i2 = this.f16712j;
        while (true) {
            i = this.f16713k;
            if (i2 >= i) {
                break;
            }
            long d = m25528d(this.f16711i[i2]) & 1048575;
            Object f = C4522j5.m25407f(t, d);
            if (f != null) {
                C4522j5.m25430a(t, d, this.f16718p.mo25165f(f));
            }
            i2++;
        }
        int length = this.f16711i.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f16715m.mo25338b(t, this.f16711i[i3]);
        }
        this.f16716n.mo25478d(t);
        if (this.f16708f) {
            this.f16717o.mo25111c(t);
        }
    }

    /* renamed from: a */
    public final void m25548a(Object obj, int i, AbstractC4532k4 k4Var) throws IOException {
        if (m25521g(i)) {
            C4522j5.m25430a(obj, i & 1048575, k4Var.mo25231B());
        } else if (this.f16709g) {
            C4522j5.m25430a(obj, i & 1048575, k4Var.mo25185z());
        } else {
            C4522j5.m25430a(obj, i & 1048575, k4Var.mo25187u());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:388:0x105c A[LOOP:5: B:386:0x1053->B:388:0x105c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:391:0x1079  */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo25350a(T r9, p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4 r10, com.google.android.gms.internal.measurement.zzhl r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4472c4.mo25350a(java.lang.Object, c.d.b.d.g.f.k4, com.google.android.gms.internal.measurement.zzhl):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x09a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x09a2  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x09f1  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x1341  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x134b  */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo25349a(T r8, p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5 r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4472c4.mo25349a(java.lang.Object, c.d.b.d.g.f.r5):void");
    }

    /* renamed from: a */
    public final void m25544a(T t, T t2, int i) {
        long d = m25528d(i) & 1048575;
        if (m25551a((C4472c4<T>) t2, i)) {
            Object f = C4522j5.m25407f(t, d);
            Object f2 = C4522j5.m25407f(t2, d);
            if (f != null && f2 != null) {
                C4522j5.m25430a(t, d, zzia.m9637a(f, f2));
                m25536b((C4472c4<T>) t, i);
            } else if (f2 != null) {
                C4522j5.m25430a(t, d, f2);
                m25536b((C4472c4<T>) t, i);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x04d4, code lost:
        if (r28 == r28) goto L_0x04da;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x050d, code lost:
        if (r28 == r28) goto L_0x04da;
     */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo25347a(T r17, byte[] r18, int r19, int r20, p131c.p161d.p170b.p224d.p252g.p258f.C4530k2 r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4472c4.mo25347a(java.lang.Object, byte[], int, int, c.d.b.d.g.f.k2):void");
    }

    /* renamed from: a */
    public final boolean m25551a(T t, int i) {
        int e = m25525e(i);
        long j = e & 1048575;
        if (j != 1048575) {
            return (C4522j5.m25436a(t, j) & (1 << (e >>> 20))) != 0;
        }
        int d = m25528d(i);
        long j2 = d & 1048575;
        switch ((d & 267386880) >>> 20) {
            case 0:
                return C4522j5.m25410e(t, j2) != 0.0d;
            case 1:
                return C4522j5.m25414d(t, j2) != 0.0f;
            case 2:
                return C4522j5.m25424b(t, j2) != 0;
            case 3:
                return C4522j5.m25424b(t, j2) != 0;
            case 4:
                return C4522j5.m25436a(t, j2) != 0;
            case 5:
                return C4522j5.m25424b(t, j2) != 0;
            case 6:
                return C4522j5.m25436a(t, j2) != 0;
            case 7:
                return C4522j5.m25419c(t, j2);
            case 8:
                Object f = C4522j5.m25407f(t, j2);
                if (f instanceof String) {
                    return !((String) f).isEmpty();
                }
                if (f instanceof zzgp) {
                    return !zzgp.zza.equals(f);
                }
                throw new IllegalArgumentException();
            case 9:
                return C4522j5.m25407f(t, j2) != null;
            case 10:
                return !zzgp.zza.equals(C4522j5.m25407f(t, j2));
            case 11:
                return C4522j5.m25436a(t, j2) != 0;
            case 12:
                return C4522j5.m25436a(t, j2) != 0;
            case 13:
                return C4522j5.m25436a(t, j2) != 0;
            case 14:
                return C4522j5.m25424b(t, j2) != 0;
            case 15:
                return C4522j5.m25436a(t, j2) != 0;
            case 16:
                return C4522j5.m25424b(t, j2) != 0;
            case 17:
                return C4522j5.m25407f(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public final boolean m25550a(T t, int i, int i2) {
        return C4522j5.m25436a(t, (long) (m25525e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    public final boolean m25549a(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m25551a((C4472c4<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4574q4.m25297a(p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r7, r0), p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4574q4.m25297a(p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r7, r0), p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4574q4.m25297a(p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r7, r0), p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4574q4.m25297a(p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r7, r0), p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4574q4.m25297a(p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r7, r0), p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25407f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25419c(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25419c(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25436a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25424b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25414d(r7, r0)) == java.lang.Float.floatToIntBits(p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25414d(r8, r0))) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25410e(r7, r0)) == java.lang.Double.doubleToLongBits(p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.m25410e(r8, r0))) goto L_0x03cf;
     */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo25348a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4472c4.mo25348a(java.lang.Object, java.lang.Object):boolean");
    }

    /* renamed from: b */
    public final int m25537b(int i, int i2) {
        int length = (this.f16703a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f16703a[i4];
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

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: b */
    public final int mo25346b(T t) {
        int i;
        int i2;
        int c;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int b;
        int i8;
        int i9;
        int i10;
        if (this.f16710h) {
            Unsafe unsafe = f16702r;
            int i11 = 0;
            for (int i12 = 0; i12 < this.f16703a.length; i12 += 3) {
                int d = m25528d(i12);
                int i13 = (d & 267386880) >>> 20;
                int i14 = this.f16703a[i12];
                long j = d & 1048575;
                if (i13 >= zzhs.DOUBLE_LIST_PACKED.zza() && i13 <= zzhs.SINT64_LIST_PACKED.zza()) {
                    int i15 = this.f16703a[i12 + 2];
                }
                switch (i13) {
                    case 0:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9748b(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 1:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9747b(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9728d(i14, C4522j5.m25424b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9724e(i14, C4522j5.m25424b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9721f(i14, C4522j5.m25436a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9716g(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9709i(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9741b(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            Object f = C4522j5.m25407f(t, j);
                            if (f instanceof zzgp) {
                                b = zzhi.m9732c(i14, (zzgp) f);
                                break;
                            } else {
                                b = zzhi.m9742b(i14, (String) f);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 9:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = C4574q4.m25309a(i14, C4522j5.m25407f(t, j), m25560a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 10:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9732c(i14, (zzgp) C4522j5.m25407f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9717g(i14, C4522j5.m25436a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9704k(i14, C4522j5.m25436a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9706j(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9712h(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9713h(i14, C4522j5.m25436a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9720f(i14, C4522j5.m25424b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i11 = i11;
                        if (m25551a((C4472c4<T>) t, i12)) {
                            b = zzhi.m9731c(i14, (zzjj) C4522j5.m25407f(t, j), m25560a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 18:
                        b = C4574q4.m25264i(i14, m25545a(t, j), false);
                        break;
                    case 19:
                        b = C4574q4.m25267h(i14, m25545a(t, j), false);
                        break;
                    case 20:
                        b = C4574q4.m25302a(i14, (List<Long>) m25545a(t, j), false);
                        break;
                    case 21:
                        b = C4574q4.m25288b(i14, (List<Long>) m25545a(t, j), false);
                        break;
                    case 22:
                        b = C4574q4.m25276e(i14, m25545a(t, j), false);
                        break;
                    case 23:
                        b = C4574q4.m25264i(i14, m25545a(t, j), false);
                        break;
                    case 24:
                        b = C4574q4.m25267h(i14, m25545a(t, j), false);
                        break;
                    case 25:
                        b = C4574q4.m25261j(i14, m25545a(t, j), false);
                        break;
                    case 26:
                        b = C4574q4.m25308a(i14, m25545a(t, j));
                        break;
                    case 27:
                        b = C4574q4.m25307a(i14, m25545a(t, j), m25560a(i12));
                        break;
                    case 28:
                        b = C4574q4.m25293b(i14, m25545a(t, j));
                        break;
                    case 29:
                        b = C4574q4.m25273f(i14, m25545a(t, j), false);
                        break;
                    case 30:
                        b = C4574q4.m25280d(i14, m25545a(t, j), false);
                        break;
                    case 31:
                        b = C4574q4.m25267h(i14, m25545a(t, j), false);
                        break;
                    case 32:
                        b = C4574q4.m25264i(i14, m25545a(t, j), false);
                        break;
                    case 33:
                        b = C4574q4.m25270g(i14, m25545a(t, j), false);
                        break;
                    case 34:
                        b = C4574q4.m25284c(i14, m25545a(t, j), false);
                        break;
                    case 35:
                        i10 = C4574q4.m25263i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        i10 = C4574q4.m25266h((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        i10 = C4574q4.m25296a((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        i10 = C4574q4.m25287b((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        i10 = C4574q4.m25275e((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        i10 = C4574q4.m25263i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        i10 = C4574q4.m25266h((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        i10 = C4574q4.m25260j((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        i10 = C4574q4.m25272f((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        i10 = C4574q4.m25279d((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        i10 = C4574q4.m25266h((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        i10 = C4574q4.m25263i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        i10 = C4574q4.m25269g((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        i10 = C4574q4.m25283c((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhi.m9725e(i14);
                            i8 = zzhi.m9718g(i10);
                            b = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        b = C4574q4.m25292b(i14, (List<zzjj>) m25545a(t, j), m25560a(i12));
                        break;
                    case 50:
                        b = this.f16718p.mo25172a(i14, C4522j5.m25407f(t, j), m25538b(i12));
                        break;
                    case 51:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9748b(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 52:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9747b(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 53:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9728d(i14, m25524e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9724e(i14, m25524e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9721f(i14, m25526d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9716g(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 57:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9709i(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 58:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9741b(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 59:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            Object f2 = C4522j5.m25407f(t, j);
                            if (f2 instanceof zzgp) {
                                b = zzhi.m9732c(i14, (zzgp) f2);
                                break;
                            } else {
                                b = zzhi.m9742b(i14, (String) f2);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 60:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = C4574q4.m25309a(i14, C4522j5.m25407f(t, j), m25560a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 61:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9732c(i14, (zzgp) C4522j5.m25407f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 62:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9717g(i14, m25526d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9704k(i14, m25526d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9706j(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 65:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9712h(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 66:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9713h(i14, m25526d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9720f(i14, m25524e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i11 = i11;
                        if (m25550a((C4472c4<T>) t, i14, i12)) {
                            b = zzhi.m9731c(i14, (zzjj) C4522j5.m25407f(t, j), m25560a(i12));
                            break;
                        } else {
                            continue;
                        }
                    default:
                        i11 = i11;
                        continue;
                }
                i11 += b;
            }
            return i11 + m25556a((AbstractC4487e5) this.f16716n, (Object) t);
        }
        Unsafe unsafe2 = f16702r;
        int i16 = 0;
        int i17 = 1048575;
        int i18 = 0;
        for (int i19 = 0; i19 < this.f16703a.length; i19 += 3) {
            int d2 = m25528d(i19);
            int[] iArr = this.f16703a;
            int i20 = iArr[i19];
            int i21 = (d2 & 267386880) >>> 20;
            if (i21 <= 17) {
                int i22 = iArr[i19 + 2];
                int i23 = i22 & 1048575;
                int i24 = 1 << (i22 >>> 20);
                i17 = i17;
                i = i24;
                if (i23 != i17) {
                    i18 = unsafe2.getInt(t, i23);
                    i17 = i23;
                    i = i24;
                }
            } else {
                i = 0;
                i17 = i17;
            }
            long j2 = d2 & 1048575;
            switch (i21) {
                case 0:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += zzhi.m9748b(i20, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += zzhi.m9747b(i20, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i16 = i16;
                    if ((i & i18) != 0) {
                        i2 = zzhi.m9728d(i20, unsafe2.getLong(t, j2));
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i16 = i16;
                    if ((i & i18) != 0) {
                        i2 = zzhi.m9724e(i20, unsafe2.getLong(t, j2));
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i16 = i16;
                    if ((i & i18) != 0) {
                        i2 = zzhi.m9721f(i20, unsafe2.getInt(t, j2));
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i2 = zzhi.m9716g(i20, 0L);
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += zzhi.m9709i(i20, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += zzhi.m9741b(i20, true);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        Object object = unsafe2.getObject(t, j2);
                        c = object instanceof zzgp ? zzhi.m9732c(i20, (zzgp) object) : zzhi.m9742b(i20, (String) object);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = C4574q4.m25309a(i20, unsafe2.getObject(t, j2), m25560a(i19));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = zzhi.m9732c(i20, (zzgp) unsafe2.getObject(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = zzhi.m9717g(i20, unsafe2.getInt(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = zzhi.m9704k(i20, unsafe2.getInt(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i3 = zzhi.m9706j(i20, 0);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = zzhi.m9712h(i20, 0L);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = zzhi.m9713h(i20, unsafe2.getInt(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = zzhi.m9720f(i20, unsafe2.getLong(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = zzhi.m9731c(i20, (zzjj) unsafe2.getObject(t, j2), m25560a(i19));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    c = C4574q4.m25264i(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 19:
                    i4 = C4574q4.m25267h(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 20:
                    i4 = C4574q4.m25302a(i20, (List<Long>) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 21:
                    i4 = C4574q4.m25288b(i20, (List<Long>) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 22:
                    i4 = C4574q4.m25276e(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 23:
                    i4 = C4574q4.m25264i(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 24:
                    i4 = C4574q4.m25267h(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 25:
                    i4 = C4574q4.m25261j(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 26:
                    c = C4574q4.m25308a(i20, (List) unsafe2.getObject(t, j2));
                    i16 += c;
                    break;
                case 27:
                    c = C4574q4.m25307a(i20, (List<?>) unsafe2.getObject(t, j2), m25560a(i19));
                    i16 += c;
                    break;
                case 28:
                    c = C4574q4.m25293b(i20, (List) unsafe2.getObject(t, j2));
                    i16 += c;
                    break;
                case 29:
                    c = C4574q4.m25273f(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 30:
                    i4 = C4574q4.m25280d(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 31:
                    i4 = C4574q4.m25267h(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 32:
                    i4 = C4574q4.m25264i(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 33:
                    i4 = C4574q4.m25270g(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 34:
                    i4 = C4574q4.m25284c(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 35:
                    int i25 = C4574q4.m25263i((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (i25 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(i25);
                        i6 = i25;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int h = C4574q4.m25266h((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (h > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(h);
                        i6 = h;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int a = C4574q4.m25296a((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (a > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(a);
                        i6 = a;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int b2 = C4574q4.m25287b((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (b2 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(b2);
                        i6 = b2;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int e = C4574q4.m25275e((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (e > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(e);
                        i6 = e;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int i26 = C4574q4.m25263i((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (i26 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(i26);
                        i6 = i26;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int h2 = C4574q4.m25266h((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (h2 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(h2);
                        i6 = h2;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int j3 = C4574q4.m25260j((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (j3 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(j3);
                        i6 = j3;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int f3 = C4574q4.m25272f((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (f3 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(f3);
                        i6 = f3;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int d3 = C4574q4.m25279d((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (d3 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(d3);
                        i6 = d3;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int h3 = C4574q4.m25266h((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (h3 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(h3);
                        i6 = h3;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int i27 = C4574q4.m25263i((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (i27 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(i27);
                        i6 = i27;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int g = C4574q4.m25269g((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (g > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(g);
                        i6 = g;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int c2 = C4574q4.m25283c((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (c2 > 0) {
                        i7 = zzhi.m9725e(i20);
                        i5 = zzhi.m9718g(c2);
                        i6 = c2;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    c = C4574q4.m25292b(i20, (List) unsafe2.getObject(t, j2), m25560a(i19));
                    i16 += c;
                    break;
                case 50:
                    c = this.f16718p.mo25172a(i20, unsafe2.getObject(t, j2), m25538b(i19));
                    i16 += c;
                    break;
                case 51:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9748b(i20, 0.0d);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        i3 = zzhi.m9747b(i20, 0.0f);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9728d(i20, m25524e(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9724e(i20, m25524e(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9721f(i20, m25526d(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9716g(i20, 0L);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        i3 = zzhi.m9709i(i20, 0);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        i3 = zzhi.m9741b(i20, true);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        Object object2 = unsafe2.getObject(t, j2);
                        c = object2 instanceof zzgp ? zzhi.m9732c(i20, (zzgp) object2) : zzhi.m9742b(i20, (String) object2);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = C4574q4.m25309a(i20, unsafe2.getObject(t, j2), m25560a(i19));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9732c(i20, (zzgp) unsafe2.getObject(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9717g(i20, m25526d(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9704k(i20, m25526d(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        i3 = zzhi.m9706j(i20, 0);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9712h(i20, 0L);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9713h(i20, m25526d(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9720f(i20, m25524e(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i16 = i16;
                    if (m25550a((C4472c4<T>) t, i20, i19)) {
                        c = zzhi.m9731c(i20, (zzjj) unsafe2.getObject(t, j2), m25560a(i19));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                default:
                    i16 = i16;
                    break;
            }
        }
        int i28 = 0;
        int a2 = i16 + m25556a((AbstractC4487e5) this.f16716n, (Object) t);
        int i29 = a2;
        if (this.f16708f) {
            C4478d3<?> a3 = this.f16717o.mo25114a(t);
            for (int i30 = 0; i30 < a3.f16727a.m25328c(); i30++) {
                Map.Entry<?, Object> a4 = a3.f16727a.m25336a(i30);
                i28 += C4478d3.m25508b((zzht) a4.getKey(), a4.getValue());
            }
            for (Map.Entry<?, Object> entry : a3.f16727a.m25325d()) {
                i28 += C4478d3.m25508b((zzht) entry.getKey(), entry.getValue());
            }
            i29 = a2 + i28;
        }
        return i29;
    }

    /* renamed from: b */
    public final Object m25538b(int i) {
        return this.f16704b[(i / 3) << 1];
    }

    /* renamed from: b */
    public final void m25536b(T t, int i) {
        int e = m25525e(i);
        long j = 1048575 & e;
        if (j != 1048575) {
            C4522j5.m25432a((Object) t, j, (1 << (e >>> 20)) | C4522j5.m25436a(t, j));
        }
    }

    /* renamed from: b */
    public final void m25535b(T t, int i, int i2) {
        C4522j5.m25432a((Object) t, m25525e(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0959  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0963  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m25533b(T r9, p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5 r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4472c4.m25533b(java.lang.Object, c.d.b.d.g.f.r5):void");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: b */
    public final void mo25345b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f16703a.length; i += 3) {
                int d = m25528d(i);
                long j = 1048575 & d;
                int i2 = this.f16703a[i];
                switch ((d & 267386880) >>> 20) {
                    case 0:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25434a(t, j, C4522j5.m25410e(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25433a((Object) t, j, C4522j5.m25414d(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25431a((Object) t, j, C4522j5.m25424b(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25431a((Object) t, j, C4522j5.m25424b(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25432a((Object) t, j, C4522j5.m25436a(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25431a((Object) t, j, C4522j5.m25424b(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25432a((Object) t, j, C4522j5.m25436a(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25429a(t, j, C4522j5.m25419c(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25430a(t, j, C4522j5.m25407f(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        m25544a(t, t2, i);
                        break;
                    case 10:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25430a(t, j, C4522j5.m25407f(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25432a((Object) t, j, C4522j5.m25436a(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25432a((Object) t, j, C4522j5.m25436a(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25432a((Object) t, j, C4522j5.m25436a(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25431a((Object) t, j, C4522j5.m25424b(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25432a((Object) t, j, C4522j5.m25436a(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m25551a((C4472c4<T>) t2, i)) {
                            C4522j5.m25431a((Object) t, j, C4522j5.m25424b(t2, j));
                            m25536b((C4472c4<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        m25544a(t, t2, i);
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
                    case 34:
                    case 35:
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
                        this.f16715m.mo25339a(t, t2, j);
                        break;
                    case 50:
                        C4574q4.m25300a(this.f16718p, t, t2, j);
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
                        if (m25550a((C4472c4<T>) t2, i2, i)) {
                            C4522j5.m25430a(t, j, C4522j5.m25407f(t2, j));
                            m25535b((C4472c4<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        m25532b(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (m25550a((C4472c4<T>) t2, i2, i)) {
                            C4522j5.m25430a(t, j, C4522j5.m25407f(t2, j));
                            m25535b((C4472c4<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        m25532b(t, t2, i);
                        break;
                }
            }
            C4574q4.m25301a(this.f16716n, t, t2);
            if (this.f16708f) {
                C4574q4.m25299a(this.f16717o, t, t2);
                return;
            }
            return;
        }
        throw null;
    }

    /* renamed from: b */
    public final void m25532b(T t, T t2, int i) {
        int d = m25528d(i);
        int i2 = this.f16703a[i];
        long j = d & 1048575;
        if (m25550a((C4472c4<T>) t2, i2, i)) {
            Object obj = null;
            if (m25550a((C4472c4<T>) t, i2, i)) {
                obj = C4522j5.m25407f(t, j);
            }
            Object f = C4522j5.m25407f(t2, j);
            if (obj != null && f != null) {
                C4522j5.m25430a(t, j, zzia.m9637a(obj, f));
                m25535b((C4472c4<T>) t, i2, i);
            } else if (f != null) {
                C4522j5.m25430a(t, j, f);
                m25535b((C4472c4<T>) t, i2, i);
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: c */
    public final int mo25344c(T t) {
        int i;
        int i2;
        int length = this.f16703a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int d = m25528d(i4);
            int i5 = this.f16703a[i4];
            long j = 1048575 & d;
            int i6 = 37;
            switch ((d & 267386880) >>> 20) {
                case 0:
                    i = i3 * 53;
                    i2 = zzia.m9640a(Double.doubleToLongBits(C4522j5.m25410e(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(C4522j5.m25414d(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = zzia.m9640a(C4522j5.m25424b(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = zzia.m9640a(C4522j5.m25424b(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = C4522j5.m25436a(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = zzia.m9640a(C4522j5.m25424b(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = C4522j5.m25436a(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = zzia.m9635a(C4522j5.m25419c(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) C4522j5.m25407f(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object f = C4522j5.m25407f(t, j);
                    if (f != null) {
                        i6 = f.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = C4522j5.m25407f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = C4522j5.m25436a(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = C4522j5.m25436a(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = C4522j5.m25436a(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = zzia.m9640a(C4522j5.m25424b(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = C4522j5.m25436a(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = zzia.m9640a(C4522j5.m25424b(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object f2 = C4522j5.m25407f(t, j);
                    if (f2 != null) {
                        i6 = f2.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
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
                case 34:
                case 35:
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
                    i = i3 * 53;
                    i2 = C4522j5.m25407f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = C4522j5.m25407f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzia.m9640a(Double.doubleToLongBits(m25534b(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(m25530c(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzia.m9640a(m25524e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzia.m9640a(m25524e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m25526d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzia.m9640a(m25524e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m25526d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzia.m9635a(m25522f(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ((String) C4522j5.m25407f(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C4522j5.m25407f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C4522j5.m25407f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m25526d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m25526d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m25526d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzia.m9640a(m25524e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m25526d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzia.m9640a(m25524e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (m25550a((C4472c4<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C4522j5.m25407f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                default:
                    i3 = i3;
                    break;
            }
        }
        int hashCode = (i3 * 53) + this.f16716n.mo25484b(t).hashCode();
        int i7 = hashCode;
        if (this.f16708f) {
            i7 = (hashCode * 53) + this.f16717o.mo25114a(t).hashCode();
        }
        return i7;
    }

    /* renamed from: c */
    public final zzif m25531c(int i) {
        return (zzif) this.f16704b[((i / 3) << 1) + 1];
    }

    /* renamed from: c */
    public final boolean m25529c(T t, T t2, int i) {
        return m25551a((C4472c4<T>) t, i) == m25551a((C4472c4<T>) t2, i);
    }

    /* renamed from: d */
    public final int m25528d(int i) {
        return this.f16703a[i + 1];
    }

    /* renamed from: e */
    public final int m25525e(int i) {
        return this.f16703a[i + 2];
    }

    /* renamed from: f */
    public final int m25523f(int i) {
        if (i < this.f16705c || i > this.f16706d) {
            return -1;
        }
        return m25537b(i, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: f */
    public final boolean mo25343f(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f16712j; i3++) {
            int i4 = this.f16711i[i3];
            int i5 = this.f16703a[i4];
            int d = m25528d(i4);
            int i6 = this.f16703a[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f16702r.getInt(t, i7);
                }
                i = i7;
            }
            if (((268435456 & d) != 0) && !m25549a((C4472c4<T>) t, i4, i, i2, i8)) {
                return false;
            }
            int i9 = (267386880 & d) >>> 20;
            if (i9 != 9 && i9 != 17) {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (m25550a((C4472c4<T>) t, i5, i4) && !m25547a(t, d, m25560a(i4))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Map<?, ?> b = this.f16718p.mo25169b(C4522j5.m25407f(t, d & 1048575));
                            boolean z = true;
                            if (!b.isEmpty()) {
                                z = true;
                                if (this.f16718p.mo25167d(m25538b(i4)).f16903c.zza() == zzln.MESSAGE) {
                                    AbstractC4560o4<T> o4Var = null;
                                    Iterator<?> it = b.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        AbstractC4560o4<T> o4Var2 = o4Var;
                                        if (o4Var == null) {
                                            o4Var2 = C4521j4.m25442a().m25441a((Class) next.getClass());
                                        }
                                        o4Var = o4Var2;
                                        if (!o4Var2.mo25343f(next)) {
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
                List list = (List) C4522j5.m25407f(t, d & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    AbstractC4560o4 a = m25560a(i4);
                    int i10 = 0;
                    while (true) {
                        z2 = true;
                        if (i10 >= list.size()) {
                            break;
                        } else if (!a.mo25343f(list.get(i10))) {
                            z2 = false;
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
                if (!z2) {
                    return false;
                }
            } else if (m25549a((C4472c4<T>) t, i4, i, i2, i8) && !m25547a(t, d, m25560a(i4))) {
                return false;
            }
        }
        return !this.f16708f || this.f16717o.mo25114a(t).m25502e();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    public final T zza() {
        return (T) this.f16714l.mo25495c(this.f16707e);
    }
}
