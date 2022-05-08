package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* renamed from: h.i.a.e.j.l.ya */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ya.class */
public final class C8467ya<T> implements AbstractC8212kb<T> {

    /* renamed from: l */
    public static final int[] f19449l = new int[0];

    /* renamed from: m */
    public static final Unsafe f19450m = C8190k.m18424c();

    /* renamed from: a */
    public final int[] f19451a;

    /* renamed from: b */
    public final Object[] f19452b;

    /* renamed from: c */
    public final boolean f19453c;

    /* renamed from: d */
    public final boolean f19454d;

    /* renamed from: e */
    public final int[] f19455e;

    /* renamed from: f */
    public final int f19456f;

    /* renamed from: g */
    public final int f19457g;

    /* renamed from: h */
    public final AbstractC8088ea f19458h;

    /* renamed from: i */
    public final AbstractC8071e<?, ?> f19459i;

    /* renamed from: j */
    public final AbstractC8068d9<?> f19460j;

    /* renamed from: k */
    public final AbstractC8339ra f19461k;

    public C8467ya(int[] iArr, Object[] objArr, int i, int i2, AbstractC8390ua uaVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, AbstractC8030bb bbVar, AbstractC8088ea eaVar, AbstractC8071e<?, ?> eVar, AbstractC8068d9<?> d9Var, AbstractC8339ra raVar) {
        this.f19451a = iArr;
        this.f19452b = objArr;
        boolean z3 = uaVar instanceof AbstractC8228l9;
        this.f19454d = z;
        this.f19453c = d9Var != null && d9Var.mo18618a(uaVar);
        this.f19455e = iArr2;
        this.f19456f = i3;
        this.f19457g = i4;
        this.f19458h = eaVar;
        this.f19459i = eVar;
        this.f19460j = d9Var;
        this.f19461k = raVar;
    }

    /* renamed from: a */
    public static <UT, UB> int m17987a(AbstractC8071e<UT, UB> eVar, T t) {
        return eVar.mo18538a(eVar.mo18534b(t));
    }

    /* JADX WARN: Removed duplicated region for block: B:180:0x08a2  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> p081h.p203i.p204a.p224e.p259j.p271l.C8467ya<T> m17984a(java.lang.Class<T> r18, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8354sa r19, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8030bb r20, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8088ea r21, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8071e<?, ?> r22, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8068d9<?> r23, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8339ra r24) {
        /*
            Method dump skipped, instructions count: 2394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.C8467ya.m17984a(java.lang.Class, h.i.a.e.j.l.sa, h.i.a.e.j.l.bb, h.i.a.e.j.l.ea, h.i.a.e.j.l.e, h.i.a.e.j.l.d9, h.i.a.e.j.l.ra):h.i.a.e.j.l.ya");
    }

    /* renamed from: a */
    public static Field m17983a(Class<?> cls, String str) {
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
    public static List<?> m17977a(Object obj, long j) {
        return (List) C8190k.m18410f(obj, j);
    }

    /* renamed from: a */
    public static void m17988a(int i, Object obj, AbstractC8468z zVar) throws IOException {
        if (obj instanceof String) {
            zVar.mo17947a(i, (String) obj);
        } else {
            zVar.mo17951a(i, (AbstractC8209k8) obj);
        }
    }

    /* renamed from: a */
    public static <UT, UB> void m17986a(AbstractC8071e<UT, UB> eVar, T t, AbstractC8468z zVar) throws IOException {
        eVar.mo18536a((AbstractC8071e<UT, UB>) eVar.mo18534b(t), zVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static boolean m17978a(Object obj, int i, AbstractC8212kb kbVar) {
        return kbVar.mo17964c(C8190k.m18410f(obj, i & 1048575));
    }

    /* renamed from: b */
    public static <T> double m17969b(T t, long j) {
        return ((Double) C8190k.m18410f(t, j)).doubleValue();
    }

    /* renamed from: c */
    public static <T> float m17963c(T t, long j) {
        return ((Float) C8190k.m18410f(t, j)).floatValue();
    }

    /* renamed from: d */
    public static <T> int m17959d(T t, long j) {
        return ((Integer) C8190k.m18410f(t, j)).intValue();
    }

    /* renamed from: e */
    public static <T> long m17958e(T t, long j) {
        return ((Long) C8190k.m18410f(t, j)).longValue();
    }

    /* renamed from: f */
    public static <T> boolean m17957f(T t, long j) {
        return ((Boolean) C8190k.m18410f(t, j)).booleanValue();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: a */
    public final int mo17982a(T t) {
        int i;
        int i2;
        int length = this.f19451a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int c = m17965c(i4);
            int i5 = this.f19451a[i4];
            long j = 1048575 & c;
            int i6 = 37;
            switch ((c & 267386880) >>> 20) {
                case 0:
                    i = i3 * 53;
                    i2 = C8302p9.m18207a(Double.doubleToLongBits(C8190k.m18413e(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(C8190k.m18417d(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = C8302p9.m18207a(C8190k.m18427b(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = C8302p9.m18207a(C8190k.m18427b(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = C8190k.m18439a(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = C8302p9.m18207a(C8190k.m18427b(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = C8190k.m18439a(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = C8302p9.m18202a(C8190k.m18422c(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) C8190k.m18410f(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object f = C8190k.m18410f(t, j);
                    if (f != null) {
                        i6 = f.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = C8190k.m18410f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = C8190k.m18439a(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = C8190k.m18439a(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = C8190k.m18439a(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = C8302p9.m18207a(C8190k.m18427b(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = C8190k.m18439a(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = C8302p9.m18207a(C8190k.m18427b(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object f2 = C8190k.m18410f(t, j);
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
                    i2 = C8190k.m18410f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = C8190k.m18410f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8302p9.m18207a(Double.doubleToLongBits(m17969b(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(m17963c(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8302p9.m18207a(m17958e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8302p9.m18207a(m17958e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17959d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8302p9.m18207a(m17958e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17959d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8302p9.m18202a(m17957f(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ((String) C8190k.m18410f(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8190k.m18410f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8190k.m18410f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17959d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17959d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17959d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8302p9.m18207a(m17958e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17959d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8302p9.m18207a(m17958e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (m17980a((C8467ya<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8190k.m18410f(t, j).hashCode();
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
        int hashCode = (i3 * 53) + this.f19459i.mo18534b(t).hashCode();
        int i7 = hashCode;
        if (this.f19453c) {
            i7 = (hashCode * 53) + this.f19460j.mo18616a(t).hashCode();
        }
        return i7;
    }

    /* renamed from: a */
    public final AbstractC8212kb m17989a(int i) {
        int i2 = (i / 3) << 1;
        AbstractC8212kb kbVar = (AbstractC8212kb) this.f19452b[i2];
        if (kbVar != null) {
            return kbVar;
        }
        AbstractC8212kb<T> a = C8170ib.m18462a().m18461a((Class) ((Class) this.f19452b[i2 + 1]));
        this.f19452b[i2] = a;
        return a;
    }

    /* renamed from: a */
    public final <K, V> void m17985a(AbstractC8468z zVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zVar.mo17950a(i, this.f19461k.mo18181c(m17973b(i2)), this.f19461k.mo18183b(obj));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x09a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x09a2  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x09f1  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x1341  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x134b  */
    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo17976a(T r8, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.C8467ya.mo17976a(java.lang.Object, h.i.a.e.j.l.z):void");
    }

    /* renamed from: a */
    public final void m17974a(T t, T t2, int i) {
        long c = m17965c(i) & 1048575;
        if (m17981a((C8467ya<T>) t2, i)) {
            Object f = C8190k.m18410f(t, c);
            Object f2 = C8190k.m18410f(t2, c);
            if (f != null && f2 != null) {
                C8190k.m18433a(t, c, C8302p9.m18204a(f, f2));
                m17971b((C8467ya<T>) t, i);
            } else if (f2 != null) {
                C8190k.m18433a(t, c, f2);
                m17971b((C8467ya<T>) t, i);
            }
        }
    }

    /* renamed from: a */
    public final boolean m17981a(T t, int i) {
        int d = m17961d(i);
        long j = d & 1048575;
        if (j != 1048575) {
            return (C8190k.m18439a(t, j) & (1 << (d >>> 20))) != 0;
        }
        int c = m17965c(i);
        long j2 = c & 1048575;
        switch ((c & 267386880) >>> 20) {
            case 0:
                return C8190k.m18413e(t, j2) != 0.0d;
            case 1:
                return C8190k.m18417d(t, j2) != 0.0f;
            case 2:
                return C8190k.m18427b(t, j2) != 0;
            case 3:
                return C8190k.m18427b(t, j2) != 0;
            case 4:
                return C8190k.m18439a(t, j2) != 0;
            case 5:
                return C8190k.m18427b(t, j2) != 0;
            case 6:
                return C8190k.m18439a(t, j2) != 0;
            case 7:
                return C8190k.m18422c(t, j2);
            case 8:
                Object f = C8190k.m18410f(t, j2);
                if (f instanceof String) {
                    return !((String) f).isEmpty();
                }
                if (f instanceof AbstractC8209k8) {
                    return !AbstractC8209k8.f19017b.equals(f);
                }
                throw new IllegalArgumentException();
            case 9:
                return C8190k.m18410f(t, j2) != null;
            case 10:
                return !AbstractC8209k8.f19017b.equals(C8190k.m18410f(t, j2));
            case 11:
                return C8190k.m18439a(t, j2) != 0;
            case 12:
                return C8190k.m18439a(t, j2) != 0;
            case 13:
                return C8190k.m18439a(t, j2) != 0;
            case 14:
                return C8190k.m18427b(t, j2) != 0;
            case 15:
                return C8190k.m18439a(t, j2) != 0;
            case 16:
                return C8190k.m18427b(t, j2) != 0;
            case 17:
                return C8190k.m18410f(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public final boolean m17980a(T t, int i, int i2) {
        return C8190k.m18439a(t, (long) (m17961d(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    public final boolean m17979a(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m17981a((C8467ya<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8236lb.m18324a(p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r7, r0), p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8236lb.m18324a(p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r7, r0), p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8236lb.m18324a(p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r7, r0), p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8236lb.m18324a(p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r7, r0), p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8236lb.m18324a(p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r7, r0), p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18410f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18422c(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18422c(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18439a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18427b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18417d(r7, r0)) == java.lang.Float.floatToIntBits(p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18417d(r8, r0))) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18413e(r7, r0)) == java.lang.Double.doubleToLongBits(p081h.p203i.p204a.p224e.p259j.p271l.C8190k.m18413e(r8, r0))) goto L_0x03cf;
     */
    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo17975a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.C8467ya.mo17975a(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: b */
    public final int mo17972b(T t) {
        int i;
        int i2;
        int c;
        int i3;
        int i4;
        int i5;
        int i6;
        int b;
        int i7;
        int i8;
        int i9;
        if (this.f19454d) {
            Unsafe unsafe = f19450m;
            int i10 = 0;
            for (int i11 = 0; i11 < this.f19451a.length; i11 += 3) {
                int c2 = m17965c(i11);
                int i12 = (c2 & 267386880) >>> 20;
                int i13 = this.f19451a[i11];
                long j = c2 & 1048575;
                if (i12 >= EnumC8187j9.DOUBLE_LIST_PACKED.m18448a() && i12 <= EnumC8187j9.SINT64_LIST_PACKED.m18448a()) {
                    int i14 = this.f19451a[i11 + 2];
                }
                switch (i12) {
                    case 0:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18067b(i13, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 1:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18066b(i13, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18049d(i13, C8190k.m18427b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18045e(i13, C8190k.m18427b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18042f(i13, C8190k.m18439a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18037g(i13, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18030i(i13, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18062b(i13, true);
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            Object f = C8190k.m18410f(t, j);
                            if (f instanceof AbstractC8209k8) {
                                b = AbstractC8447x8.m18053c(i13, (AbstractC8209k8) f);
                                break;
                            } else {
                                b = AbstractC8447x8.m18063b(i13, (String) f);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 9:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = C8236lb.m18335a(i13, C8190k.m18410f(t, j), m17989a(i11));
                            break;
                        } else {
                            continue;
                        }
                    case 10:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18053c(i13, (AbstractC8209k8) C8190k.m18410f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18038g(i13, C8190k.m18439a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18025k(i13, C8190k.m18439a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18027j(i13, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18033h(i13, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18034h(i13, C8190k.m18439a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18041f(i13, C8190k.m18427b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i10 = i10;
                        if (m17981a((C8467ya<T>) t, i11)) {
                            b = AbstractC8447x8.m18052c(i13, (AbstractC8390ua) C8190k.m18410f(t, j), m17989a(i11));
                            break;
                        } else {
                            continue;
                        }
                    case 18:
                        b = C8236lb.m18291i(i13, m17977a(t, j), false);
                        break;
                    case 19:
                        b = C8236lb.m18294h(i13, m17977a(t, j), false);
                        break;
                    case 20:
                        b = C8236lb.m18329a(i13, (List<Long>) m17977a(t, j), false);
                        break;
                    case 21:
                        b = C8236lb.m18315b(i13, (List<Long>) m17977a(t, j), false);
                        break;
                    case 22:
                        b = C8236lb.m18303e(i13, m17977a(t, j), false);
                        break;
                    case 23:
                        b = C8236lb.m18291i(i13, m17977a(t, j), false);
                        break;
                    case 24:
                        b = C8236lb.m18294h(i13, m17977a(t, j), false);
                        break;
                    case 25:
                        b = C8236lb.m18288j(i13, m17977a(t, j), false);
                        break;
                    case 26:
                        b = C8236lb.m18334a(i13, m17977a(t, j));
                        break;
                    case 27:
                        b = C8236lb.m18333a(i13, m17977a(t, j), m17989a(i11));
                        break;
                    case 28:
                        b = C8236lb.m18320b(i13, m17977a(t, j));
                        break;
                    case 29:
                        b = C8236lb.m18300f(i13, m17977a(t, j), false);
                        break;
                    case 30:
                        b = C8236lb.m18307d(i13, m17977a(t, j), false);
                        break;
                    case 31:
                        b = C8236lb.m18294h(i13, m17977a(t, j), false);
                        break;
                    case 32:
                        b = C8236lb.m18291i(i13, m17977a(t, j), false);
                        break;
                    case 33:
                        b = C8236lb.m18297g(i13, m17977a(t, j), false);
                        break;
                    case 34:
                        b = C8236lb.m18311c(i13, m17977a(t, j), false);
                        break;
                    case 35:
                        i9 = C8236lb.m18290i((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        i9 = C8236lb.m18293h((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        i9 = C8236lb.m18323a((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        i9 = C8236lb.m18314b((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        i9 = C8236lb.m18302e((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        i9 = C8236lb.m18290i((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        i9 = C8236lb.m18293h((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        i9 = C8236lb.m18287j((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        i9 = C8236lb.m18299f((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        i9 = C8236lb.m18306d((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        i9 = C8236lb.m18293h((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        i9 = C8236lb.m18290i((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        i9 = C8236lb.m18296g((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        i9 = C8236lb.m18310c((List) unsafe.getObject(t, j));
                        i10 = i10;
                        if (i9 > 0) {
                            i8 = AbstractC8447x8.m18046e(i13);
                            i7 = AbstractC8447x8.m18039g(i9);
                            b = i8 + i7 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        b = C8236lb.m18319b(i13, (List<AbstractC8390ua>) m17977a(t, j), m17989a(i11));
                        break;
                    case 50:
                        b = this.f19461k.mo18185a(i13, C8190k.m18410f(t, j), m17973b(i11));
                        break;
                    case 51:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18067b(i13, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 52:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18066b(i13, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 53:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18049d(i13, m17958e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18045e(i13, m17958e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18042f(i13, m17959d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18037g(i13, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 57:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18030i(i13, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 58:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18062b(i13, true);
                            break;
                        } else {
                            continue;
                        }
                    case 59:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            Object f2 = C8190k.m18410f(t, j);
                            if (f2 instanceof AbstractC8209k8) {
                                b = AbstractC8447x8.m18053c(i13, (AbstractC8209k8) f2);
                                break;
                            } else {
                                b = AbstractC8447x8.m18063b(i13, (String) f2);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 60:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = C8236lb.m18335a(i13, C8190k.m18410f(t, j), m17989a(i11));
                            break;
                        } else {
                            continue;
                        }
                    case 61:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18053c(i13, (AbstractC8209k8) C8190k.m18410f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 62:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18038g(i13, m17959d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18025k(i13, m17959d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18027j(i13, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 65:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18033h(i13, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 66:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18034h(i13, m17959d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18041f(i13, m17958e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i10 = i10;
                        if (m17980a((C8467ya<T>) t, i13, i11)) {
                            b = AbstractC8447x8.m18052c(i13, (AbstractC8390ua) C8190k.m18410f(t, j), m17989a(i11));
                            break;
                        } else {
                            continue;
                        }
                    default:
                        i10 = i10;
                        continue;
                }
                i10 += b;
            }
            return i10 + m17987a((AbstractC8071e) this.f19459i, (Object) t);
        }
        Unsafe unsafe2 = f19450m;
        int i15 = 0;
        int i16 = 0;
        int i17 = 1048575;
        int i18 = 0;
        while (i15 < this.f19451a.length) {
            int c3 = m17965c(i15);
            int[] iArr = this.f19451a;
            int i19 = iArr[i15];
            int i20 = (c3 & 267386880) >>> 20;
            if (i20 <= 17) {
                int i21 = iArr[i15 + 2];
                int i22 = i21 & 1048575;
                i = 1 << (i21 >>> 20);
                if (i22 != i17) {
                    i18 = unsafe2.getInt(t, i22);
                    i17 = i22;
                }
            } else {
                i = 0;
                i18 = i18;
                i17 = i17;
            }
            long j2 = c3 & 1048575;
            switch (i20) {
                case 0:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += AbstractC8447x8.m18067b(i19, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += AbstractC8447x8.m18066b(i19, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i2 = AbstractC8447x8.m18049d(i19, unsafe2.getLong(t, j2));
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i2 = AbstractC8447x8.m18045e(i19, unsafe2.getLong(t, j2));
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i2 = AbstractC8447x8.m18042f(i19, unsafe2.getInt(t, j2));
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i2 = AbstractC8447x8.m18037g(i19, 0L);
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += AbstractC8447x8.m18030i(i19, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += AbstractC8447x8.m18062b(i19, true);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        Object object = unsafe2.getObject(t, j2);
                        c = object instanceof AbstractC8209k8 ? AbstractC8447x8.m18053c(i19, (AbstractC8209k8) object) : AbstractC8447x8.m18063b(i19, (String) object);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = C8236lb.m18335a(i19, unsafe2.getObject(t, j2), m17989a(i15));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = AbstractC8447x8.m18053c(i19, (AbstractC8209k8) unsafe2.getObject(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = AbstractC8447x8.m18038g(i19, unsafe2.getInt(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = AbstractC8447x8.m18025k(i19, unsafe2.getInt(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i3 = AbstractC8447x8.m18027j(i19, 0);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = AbstractC8447x8.m18033h(i19, 0L);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = AbstractC8447x8.m18034h(i19, unsafe2.getInt(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = AbstractC8447x8.m18041f(i19, unsafe2.getLong(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        c = AbstractC8447x8.m18052c(i19, (AbstractC8390ua) unsafe2.getObject(t, j2), m17989a(i15));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    c = C8236lb.m18291i(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 19:
                    c = C8236lb.m18294h(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 20:
                    c = C8236lb.m18329a(i19, (List<Long>) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 21:
                    c = C8236lb.m18315b(i19, (List<Long>) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 22:
                    c = C8236lb.m18303e(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 23:
                    c = C8236lb.m18291i(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 24:
                    c = C8236lb.m18294h(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 25:
                    c = C8236lb.m18288j(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 26:
                    c = C8236lb.m18334a(i19, (List) unsafe2.getObject(t, j2));
                    i16 += c;
                    break;
                case 27:
                    c = C8236lb.m18333a(i19, (List<?>) unsafe2.getObject(t, j2), m17989a(i15));
                    i16 += c;
                    break;
                case 28:
                    c = C8236lb.m18320b(i19, (List) unsafe2.getObject(t, j2));
                    i16 += c;
                    break;
                case 29:
                    c = C8236lb.m18300f(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 30:
                    c = C8236lb.m18307d(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 31:
                    c = C8236lb.m18294h(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 32:
                    c = C8236lb.m18291i(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 33:
                    c = C8236lb.m18297g(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 34:
                    c = C8236lb.m18311c(i19, (List) unsafe2.getObject(t, j2), false);
                    i16 += c;
                    break;
                case 35:
                    int i23 = C8236lb.m18290i((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (i23 > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(i23);
                        i5 = i23;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int h = C8236lb.m18293h((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (h > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(h);
                        i5 = h;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int a = C8236lb.m18323a((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (a > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(a);
                        i5 = a;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int b2 = C8236lb.m18314b((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (b2 > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(b2);
                        i5 = b2;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int e = C8236lb.m18302e((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (e > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(e);
                        i5 = e;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int i24 = C8236lb.m18290i((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (i24 > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(i24);
                        i5 = i24;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int h2 = C8236lb.m18293h((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (h2 > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(h2);
                        i5 = h2;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int j3 = C8236lb.m18287j((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (j3 > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(j3);
                        i5 = j3;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int f3 = C8236lb.m18299f((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (f3 > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(f3);
                        i5 = f3;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int d = C8236lb.m18306d((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (d > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(d);
                        i5 = d;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int h3 = C8236lb.m18293h((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (h3 > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(h3);
                        i5 = h3;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int i25 = C8236lb.m18290i((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (i25 > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(i25);
                        i5 = i25;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int g = C8236lb.m18296g((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (g > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(g);
                        i5 = g;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int c4 = C8236lb.m18310c((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (c4 > 0) {
                        i6 = AbstractC8447x8.m18046e(i19);
                        i4 = AbstractC8447x8.m18039g(c4);
                        i5 = c4;
                        i3 = i6 + i4 + i5;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    c = C8236lb.m18319b(i19, (List) unsafe2.getObject(t, j2), m17989a(i15));
                    i16 += c;
                    break;
                case 50:
                    c = this.f19461k.mo18185a(i19, unsafe2.getObject(t, j2), m17973b(i15));
                    i16 += c;
                    break;
                case 51:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18067b(i19, 0.0d);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        i3 = AbstractC8447x8.m18066b(i19, 0.0f);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18049d(i19, m17958e(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18045e(i19, m17958e(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18042f(i19, m17959d(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18037g(i19, 0L);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        i3 = AbstractC8447x8.m18030i(i19, 0);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        i3 = AbstractC8447x8.m18062b(i19, true);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        Object object2 = unsafe2.getObject(t, j2);
                        c = object2 instanceof AbstractC8209k8 ? AbstractC8447x8.m18053c(i19, (AbstractC8209k8) object2) : AbstractC8447x8.m18063b(i19, (String) object2);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = C8236lb.m18335a(i19, unsafe2.getObject(t, j2), m17989a(i15));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18053c(i19, (AbstractC8209k8) unsafe2.getObject(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18038g(i19, m17959d(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18025k(i19, m17959d(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        i3 = AbstractC8447x8.m18027j(i19, 0);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18033h(i19, 0L);
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18034h(i19, m17959d(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18041f(i19, m17958e(t, j2));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i16 = i16;
                    if (m17980a((C8467ya<T>) t, i19, i15)) {
                        c = AbstractC8447x8.m18052c(i19, (AbstractC8390ua) unsafe2.getObject(t, j2), m17989a(i15));
                        i16 += c;
                        break;
                    } else {
                        break;
                    }
                default:
                    i16 = i16;
                    break;
            }
            i15 += 3;
            i18 = i18;
        }
        int a2 = i16 + m17987a((AbstractC8071e) this.f19459i, (Object) t);
        int i26 = a2;
        if (this.f19453c) {
            C8087e9<?> a3 = this.f19460j.mo18616a(t);
            if (a3.f18818a.m18228c() <= 0) {
                Iterator<Map.Entry<?, Object>> it = a3.f18818a.m18225d().iterator();
                if (!it.hasNext()) {
                    i26 = a2 + 0;
                } else {
                    Map.Entry<?, Object> next = it.next();
                    C8087e9.m18571b((AbstractC8127g9) next.getKey(), next.getValue());
                    throw null;
                }
            } else {
                Map.Entry<?, Object> a4 = a3.f18818a.m18236a(0);
                C8087e9.m18571b((AbstractC8127g9) a4.getKey(), a4.getValue());
                throw null;
            }
        }
        return i26;
    }

    /* renamed from: b */
    public final Object m17973b(int i) {
        return this.f19452b[(i / 3) << 1];
    }

    /* renamed from: b */
    public final void m17971b(T t, int i) {
        int d = m17961d(i);
        long j = 1048575 & d;
        if (j != 1048575) {
            C8190k.m18435a((Object) t, j, (1 << (d >>> 20)) | C8190k.m18439a(t, j));
        }
    }

    /* renamed from: b */
    public final void m17970b(T t, int i, int i2) {
        C8190k.m18435a((Object) t, m17961d(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x095d  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0967  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17968b(T r9, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.C8467ya.m17968b(java.lang.Object, h.i.a.e.j.l.z):void");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: b */
    public final void mo17967b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f19451a.length; i += 3) {
                int c = m17965c(i);
                long j = 1048575 & c;
                int i2 = this.f19451a[i];
                switch ((c & 267386880) >>> 20) {
                    case 0:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18437a(t, j, C8190k.m18413e(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18436a((Object) t, j, C8190k.m18417d(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18434a((Object) t, j, C8190k.m18427b(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18434a((Object) t, j, C8190k.m18427b(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18435a((Object) t, j, C8190k.m18439a(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18434a((Object) t, j, C8190k.m18427b(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18435a((Object) t, j, C8190k.m18439a(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18432a(t, j, C8190k.m18422c(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18433a(t, j, C8190k.m18410f(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        m17974a(t, t2, i);
                        break;
                    case 10:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18433a(t, j, C8190k.m18410f(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18435a((Object) t, j, C8190k.m18439a(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18435a((Object) t, j, C8190k.m18439a(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18435a((Object) t, j, C8190k.m18439a(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18434a((Object) t, j, C8190k.m18427b(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18435a((Object) t, j, C8190k.m18439a(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m17981a((C8467ya<T>) t2, i)) {
                            C8190k.m18434a((Object) t, j, C8190k.m18427b(t2, j));
                            m17971b((C8467ya<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        m17974a(t, t2, i);
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
                        this.f19458h.mo18446a(t, t2, j);
                        break;
                    case 50:
                        C8236lb.m18326a(this.f19461k, t, t2, j);
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
                        if (m17980a((C8467ya<T>) t2, i2, i)) {
                            C8190k.m18433a(t, j, C8190k.m18410f(t2, j));
                            m17970b((C8467ya<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        m17966b(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (m17980a((C8467ya<T>) t2, i2, i)) {
                            C8190k.m18433a(t, j, C8190k.m18410f(t2, j));
                            m17970b((C8467ya<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        m17966b(t, t2, i);
                        break;
                }
            }
            C8236lb.m18327a(this.f19459i, t, t2);
            if (this.f19453c) {
                C8236lb.m18328a(this.f19460j, t, t2);
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: b */
    public final void m17966b(T t, T t2, int i) {
        int c = m17965c(i);
        int i2 = this.f19451a[i];
        long j = c & 1048575;
        if (m17980a((C8467ya<T>) t2, i2, i)) {
            Object f = C8190k.m18410f(t, j);
            Object f2 = C8190k.m18410f(t2, j);
            if (f != null && f2 != null) {
                C8190k.m18433a(t, j, C8302p9.m18204a(f, f2));
                m17970b((C8467ya<T>) t, i2, i);
            } else if (f2 != null) {
                C8190k.m18433a(t, j, f2);
                m17970b((C8467ya<T>) t, i2, i);
            }
        }
    }

    /* renamed from: c */
    public final int m17965c(int i) {
        return this.f19451a[i + 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: c */
    public final boolean mo17964c(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f19456f; i3++) {
            int i4 = this.f19455e[i3];
            int i5 = this.f19451a[i4];
            int c = m17965c(i4);
            int i6 = this.f19451a[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f19450m.getInt(t, i7);
                }
                i = i7;
            }
            if (((268435456 & c) != 0) && !m17979a(t, i4, i, i2, i8)) {
                return false;
            }
            int i9 = (267386880 & c) >>> 20;
            if (i9 != 9 && i9 != 17) {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (m17980a((C8467ya<T>) t, i5, i4) && !m17978a(t, c, m17989a(i4))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Map<?, ?> b = this.f19461k.mo18183b(C8190k.m18410f(t, c & 1048575));
                            boolean z = true;
                            if (!b.isEmpty()) {
                                z = true;
                                if (this.f19461k.mo18181c(m17973b(i4)).f19253b.m18159a() == EnumC8432x.MESSAGE) {
                                    AbstractC8212kb<T> kbVar = null;
                                    Iterator<?> it = b.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        AbstractC8212kb<T> kbVar2 = kbVar;
                                        if (kbVar == null) {
                                            kbVar2 = C8170ib.m18462a().m18461a((Class) next.getClass());
                                        }
                                        kbVar = kbVar2;
                                        if (!kbVar2.mo17964c(next)) {
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
                List list = (List) C8190k.m18410f(t, c & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    AbstractC8212kb a = m17989a(i4);
                    int i10 = 0;
                    while (true) {
                        z2 = true;
                        if (i10 >= list.size()) {
                            break;
                        } else if (!a.mo17964c(list.get(i10))) {
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
            } else if (m17979a(t, i4, i, i2, i8) && !m17978a(t, c, m17989a(i4))) {
                return false;
            }
        }
        return !this.f19453c || this.f19460j.mo18616a(t).m18569c();
    }

    /* renamed from: c */
    public final boolean m17962c(T t, T t2, int i) {
        return m17981a((C8467ya<T>) t, i) == m17981a((C8467ya<T>) t2, i);
    }

    /* renamed from: d */
    public final int m17961d(int i) {
        return this.f19451a[i + 2];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: d */
    public final void mo17960d(T t) {
        int i;
        int i2 = this.f19456f;
        while (true) {
            i = this.f19457g;
            if (i2 >= i) {
                break;
            }
            long c = m17965c(this.f19455e[i2]) & 1048575;
            Object f = C8190k.m18410f(t, c);
            if (f != null) {
                this.f19461k.mo18184a(f);
                C8190k.m18433a(t, c, f);
            }
            i2++;
        }
        int length = this.f19455e.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f19458h.mo18447a(t, this.f19455e[i3]);
        }
        this.f19459i.mo18530d(t);
        if (this.f19453c) {
            this.f19460j.mo18613c(t);
        }
    }
}
