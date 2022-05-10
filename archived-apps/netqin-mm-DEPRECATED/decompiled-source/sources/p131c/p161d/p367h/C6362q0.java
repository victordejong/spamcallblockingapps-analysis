package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.FieldType;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.ProtoSyntax;
import com.google.protobuf.Utf8;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p131c.p161d.p367h.C6291e;
import p131c.p161d.p367h.C6319h0;
import p131c.p161d.p367h.C6381y;
import sun.misc.Unsafe;
/* renamed from: c.d.h.q0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/q0.class */
public final class C6362q0<T> implements AbstractC6287c1<T> {

    /* renamed from: r */
    public static final int[] f20008r = new int[0];

    /* renamed from: s */
    public static final Unsafe f20009s = C6347m1.m21225c();

    /* renamed from: a */
    public final int[] f20010a;

    /* renamed from: b */
    public final Object[] f20011b;

    /* renamed from: c */
    public final int f20012c;

    /* renamed from: d */
    public final int f20013d;

    /* renamed from: e */
    public final AbstractC6354n0 f20014e;

    /* renamed from: f */
    public final boolean f20015f;

    /* renamed from: g */
    public final boolean f20016g;

    /* renamed from: h */
    public final boolean f20017h;

    /* renamed from: i */
    public final boolean f20018i;

    /* renamed from: j */
    public final int[] f20019j;

    /* renamed from: k */
    public final int f20020k;

    /* renamed from: l */
    public final int f20021l;

    /* renamed from: m */
    public final AbstractC6368s0 f20022m;

    /* renamed from: n */
    public final AbstractC6294e0 f20023n;

    /* renamed from: o */
    public final AbstractC6326i1<?, ?> f20024o;

    /* renamed from: p */
    public final AbstractC6361q<?> f20025p;

    /* renamed from: q */
    public final AbstractC6325i0 f20026q;

    /* renamed from: c.d.h.q0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/q0$a.class */
    public static /* synthetic */ class C6363a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20027a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:78:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:82:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:76:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:80:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:58:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:54:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:66:0x00c4). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f20027a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20027a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20027a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f20027a[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f20027a[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f20027a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f20027a[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f20027a[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f20027a[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f20027a[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f20027a[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f20027a[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f20027a[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f20027a[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f20027a[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f20027a[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f20027a[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    public C6362q0(int[] iArr, Object[] objArr, int i, int i2, AbstractC6354n0 n0Var, boolean z, boolean z2, int[] iArr2, int i3, int i4, AbstractC6368s0 s0Var, AbstractC6294e0 e0Var, AbstractC6326i1<?, ?> i1Var, AbstractC6361q<?> qVar, AbstractC6325i0 i0Var) {
        this.f20010a = iArr;
        this.f20011b = objArr;
        this.f20012c = i;
        this.f20013d = i2;
        this.f20016g = n0Var instanceof GeneratedMessageLite;
        this.f20017h = z;
        this.f20015f = qVar != null && qVar.mo21097a(n0Var);
        this.f20018i = z2;
        this.f20019j = iArr2;
        this.f20020k = i3;
        this.f20021l = i4;
        this.f20022m = s0Var;
        this.f20023n = e0Var;
        this.f20024o = i1Var;
        this.f20025p = qVar;
        this.f20014e = n0Var;
        this.f20026q = i0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:176:0x096c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> p131c.p161d.p367h.C6362q0<T> m21162a(p131c.p161d.p367h.C6281a1 r18, p131c.p161d.p367h.AbstractC6368s0 r19, p131c.p161d.p367h.AbstractC6294e0 r20, p131c.p161d.p367h.AbstractC6326i1<?, ?> r21, p131c.p161d.p367h.AbstractC6361q<?> r22, p131c.p161d.p367h.AbstractC6325i0 r23) {
        /*
            Method dump skipped, instructions count: 2650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.C6362q0.m21162a(c.d.h.a1, c.d.h.s0, c.d.h.e0, c.d.h.i1, c.d.h.q, c.d.h.i0):c.d.h.q0");
    }

    /* renamed from: a */
    public static <T> C6362q0<T> m21161a(C6317g1 g1Var, AbstractC6368s0 s0Var, AbstractC6294e0 e0Var, AbstractC6326i1<?, ?> i1Var, AbstractC6361q<?> qVar, AbstractC6325i0 i0Var) {
        boolean z = g1Var.mo21266c() == ProtoSyntax.PROTO3;
        C6369t[] e = g1Var.m21489e();
        int[] iArr = null;
        if (e.length == 0) {
            int length = e.length;
            int[] iArr2 = new int[length * 3];
            Object[] objArr = new Object[length * 2];
            if (e.length <= 0) {
                int[] d = g1Var.m21490d();
                int[] iArr3 = d;
                if (d == null) {
                    iArr3 = f20008r;
                }
                if (e.length <= 0) {
                    int[] iArr4 = 0 == 0 ? f20008r : null;
                    if (0 == 0) {
                        iArr = f20008r;
                    }
                    int[] iArr5 = new int[iArr3.length + iArr4.length + iArr.length];
                    System.arraycopy(iArr3, 0, iArr5, 0, iArr3.length);
                    System.arraycopy(iArr4, 0, iArr5, iArr3.length, iArr4.length);
                    System.arraycopy(iArr, 0, iArr5, iArr3.length + iArr4.length, iArr.length);
                    return new C6362q0<>(iArr2, objArr, 0, 0, g1Var.mo21267b(), z, true, iArr5, iArr3.length, iArr3.length + iArr4.length, s0Var, e0Var, i1Var, qVar, i0Var);
                }
                e[0].m21071a();
                throw null;
            }
            e[0].m21070b();
            throw null;
        }
        e[0].m21071a();
        throw null;
    }

    /* renamed from: a */
    public static <T> C6362q0<T> m21156a(Class<T> cls, AbstractC6341l0 l0Var, AbstractC6368s0 s0Var, AbstractC6294e0 e0Var, AbstractC6326i1<?, ?> i1Var, AbstractC6361q<?> qVar, AbstractC6325i0 i0Var) {
        return l0Var instanceof C6281a1 ? m21162a((C6281a1) l0Var, s0Var, e0Var, i1Var, qVar, i0Var) : m21161a((C6317g1) l0Var, s0Var, e0Var, i1Var, qVar, i0Var);
    }

    /* renamed from: a */
    public static Field m21155a(Class<?> cls, String str) {
        Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            for (Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static boolean m21149a(Object obj, int i, AbstractC6287c1 c1Var) {
        return c1Var.mo21076c(C6347m1.m21202n(obj, m21103j(i)));
    }

    /* renamed from: a */
    public static <T> boolean m21146a(T t, long j) {
        return C6347m1.m21214e(t, j);
    }

    /* renamed from: b */
    public static <T> double m21132b(T t, long j) {
        return C6347m1.m21206j(t, j);
    }

    /* renamed from: c */
    public static <T> float m21126c(T t, long j) {
        return C6347m1.m21205k(t, j);
    }

    /* renamed from: d */
    public static <T> int m21121d(T t, long j) {
        return C6347m1.m21204l(t, j);
    }

    /* renamed from: e */
    public static List<?> m21116e(Object obj, long j) {
        return (List) C6347m1.m21202n(obj, j);
    }

    /* renamed from: f */
    public static <T> long m21112f(T t, long j) {
        return C6347m1.m21203m(t, j);
    }

    /* renamed from: g */
    public static C6334j1 m21109g(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        C6334j1 j1Var = generatedMessageLite.unknownFields;
        C6334j1 j1Var2 = j1Var;
        if (j1Var == C6334j1.m21362f()) {
            j1Var2 = C6334j1.m21361g();
            generatedMessageLite.unknownFields = j1Var2;
        }
        return j1Var2;
    }

    /* renamed from: g */
    public static <T> boolean m21108g(T t, long j) {
        return ((Boolean) C6347m1.m21202n(t, j)).booleanValue();
    }

    /* renamed from: h */
    public static <T> double m21106h(T t, long j) {
        return ((Double) C6347m1.m21202n(t, j)).doubleValue();
    }

    /* renamed from: h */
    public static boolean m21107h(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: i */
    public static <T> float m21104i(T t, long j) {
        return ((Float) C6347m1.m21202n(t, j)).floatValue();
    }

    /* renamed from: i */
    public static boolean m21105i(int i) {
        return (i & 268435456) != 0;
    }

    /* renamed from: j */
    public static <T> int m21102j(T t, long j) {
        return ((Integer) C6347m1.m21202n(t, j)).intValue();
    }

    /* renamed from: j */
    public static long m21103j(int i) {
        return i & 1048575;
    }

    /* renamed from: k */
    public static int m21101k(int i) {
        return (i & 267386880) >>> 20;
    }

    /* renamed from: k */
    public static <T> long m21100k(T t, long j) {
        return ((Long) C6347m1.m21202n(t, j)).longValue();
    }

    /* renamed from: a */
    public final int m21165a(int i, int i2) {
        if (i < this.f20012c || i > this.f20013d) {
            return -1;
        }
        return m21136b(i, i2);
    }

    /* renamed from: a */
    public final <UT, UB> int m21159a(AbstractC6326i1<UT, UB> i1Var, T t) {
        return i1Var.mo21280c(i1Var.mo21286b(t));
    }

    /* renamed from: a */
    public final int m21143a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C6291e.C6293b bVar) throws IOException {
        Unsafe unsafe = f20009s;
        long j2 = this.f20010a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(C6291e.m21658a(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(C6291e.m21645d(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = C6291e.m21641e(bArr, i, bVar);
                    unsafe.putObject(t, j, Long.valueOf(bVar.f19870b));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = C6291e.m21644d(bArr, i, bVar);
                    unsafe.putObject(t, j, Integer.valueOf(bVar.f19869a));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(C6291e.m21649c(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(C6291e.m21653b(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = C6291e.m21641e(bArr, i, bVar);
                    unsafe.putObject(t, j, Boolean.valueOf(bVar.f19870b != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = C6291e.m21644d(bArr, i, bVar);
                    int i9 = bVar.f19869a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || Utf8.m6881d(bArr, i, i + i9)) {
                        unsafe.putObject(t, j, new String(bArr, i, i9, C6381y.f20053a));
                        i += i9;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = C6291e.m21659a(m21128c(i8), bArr, i, i2, bVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, bVar.f19871c);
                    } else {
                        unsafe.putObject(t, j, C6381y.m21008a(object, bVar.f19871c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = C6291e.m21657a(bArr, i, bVar);
                    unsafe.putObject(t, j, bVar.f19871c);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = C6291e.m21644d(bArr, i, bVar);
                    int i10 = bVar.f19869a;
                    C6381y.AbstractC6386e a = m21166a(i8);
                    if (a != null && !a.mo6796a(i10)) {
                        m21109g(t).m21376a(i3, Long.valueOf(i10));
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
                    i = C6291e.m21644d(bArr, i, bVar);
                    unsafe.putObject(t, j, Integer.valueOf(AbstractC6327j.m21461f(bVar.f19869a)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = C6291e.m21641e(bArr, i, bVar);
                    unsafe.putObject(t, j, Long.valueOf(AbstractC6327j.m21469a(bVar.f19870b)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = C6291e.m21660a(m21128c(i8), bArr, i, i2, (i3 & (-8)) | 4, bVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, bVar.f19871c);
                    } else {
                        unsafe.putObject(t, j, C6381y.m21008a(object2, bVar.f19871c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* renamed from: a */
    public final int m21142a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, C6291e.C6293b bVar) throws IOException {
        C6381y.AbstractC6390i iVar = (C6381y.AbstractC6390i) f20009s.getObject(t, j2);
        C6381y.AbstractC6390i iVar2 = iVar;
        if (!iVar.mo21000L()) {
            int size = iVar.size();
            iVar2 = iVar.mo20996b(size == 0 ? 10 : size * 2);
            f20009s.putObject(t, j2, iVar2);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 != 2) {
                    if (i5 == 1) {
                        i = C6291e.m21650c(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                } else {
                    i = C6291e.m21651b(bArr, i, iVar2, bVar);
                    break;
                }
                break;
            case 19:
            case 36:
                if (i5 != 2) {
                    if (i5 == 5) {
                        i = C6291e.m21639f(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                } else {
                    i = C6291e.m21640e(bArr, i, iVar2, bVar);
                    break;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = C6291e.m21629l(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                } else {
                    i = C6291e.m21632i(bArr, i, iVar2, bVar);
                    break;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = C6291e.m21630k(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                } else {
                    i = C6291e.m21634h(bArr, i, iVar2, bVar);
                    break;
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 != 2) {
                    if (i5 == 1) {
                        i = C6291e.m21642e(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                } else {
                    i = C6291e.m21643d(bArr, i, iVar2, bVar);
                    break;
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 != 2) {
                    if (i5 == 5) {
                        i = C6291e.m21646d(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                } else {
                    i = C6291e.m21647c(bArr, i, iVar2, bVar);
                    break;
                }
                break;
            case 25:
            case 42:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = C6291e.m21666a(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                } else {
                    i = C6291e.m21656a(bArr, i, iVar2, bVar);
                    break;
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) != 0) {
                        i = C6291e.m21631j(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    } else {
                        i = C6291e.m21633i(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    i = C6291e.m21654b(m21128c(i6), i3, bArr, i, i2, iVar2, bVar);
                    break;
                }
                break;
            case 28:
                if (i5 == 2) {
                    i = C6291e.m21655b(i3, bArr, i, i2, iVar2, bVar);
                    break;
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    i = C6291e.m21634h(bArr, i, iVar2, bVar);
                } else if (i5 == 0) {
                    i = C6291e.m21630k(i3, bArr, i, i2, iVar2, bVar);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t;
                C6334j1 j1Var = generatedMessageLite.unknownFields;
                C6334j1 j1Var2 = j1Var;
                if (j1Var == C6334j1.m21362f()) {
                    j1Var2 = null;
                }
                C6334j1 j1Var3 = (C6334j1) C6298e1.m21614a(i4, (List<Integer>) iVar2, m21166a(i6), j1Var2, (AbstractC6326i1<UT, C6334j1>) this.f20024o);
                if (j1Var3 != null) {
                    generatedMessageLite.unknownFields = j1Var3;
                    break;
                }
                break;
            case 33:
            case 47:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = C6291e.m21637g(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                } else {
                    i = C6291e.m21638f(bArr, i, iVar2, bVar);
                    break;
                }
                break;
            case 34:
            case 48:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = C6291e.m21635h(i3, bArr, i, i2, iVar2, bVar);
                        break;
                    }
                } else {
                    i = C6291e.m21636g(bArr, i, iVar2, bVar);
                    break;
                }
                break;
            case 49:
                if (i5 == 3) {
                    i = C6291e.m21661a(m21128c(i6), i3, bArr, i, i2, iVar2, bVar);
                    break;
                }
                break;
        }
        return i;
    }

    /* renamed from: a */
    public final <K, V> int m21141a(T t, byte[] bArr, int i, int i2, int i3, long j, C6291e.C6293b bVar) throws IOException {
        Unsafe unsafe = f20009s;
        Object b = m21137b(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.f20026q.mo21379e(object)) {
            obj = this.f20026q.mo21380d(b);
            this.f20026q.mo21382b(obj, object);
            unsafe.putObject(t, j, obj);
        }
        return m21139a(bArr, i, i2, this.f20026q.mo21383b(b), this.f20026q.mo21381c(obj), bVar);
    }

    /* renamed from: a */
    public int m21140a(T t, byte[] bArr, int i, int i2, int i3, C6291e.C6293b bVar) throws IOException {
        C6362q0<T> q0Var;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = i2;
        int i11 = i3;
        Unsafe unsafe = f20009s;
        int i12 = -1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = -1;
        while (true) {
            if (i < i10) {
                int i17 = i + 1;
                byte b = bArr[i];
                int i18 = b;
                if (b < 0) {
                    i17 = C6291e.m21663a((int) b, bArr, i17, bVar);
                    i18 = bVar.f19869a;
                }
                int i19 = i18 >>> 3;
                int i20 = i18 & 7;
                i13 = i19 > i12 ? m21165a(i19, i13 / 3) : m21118e(i19);
                if (i13 == -1) {
                    i5 = i15;
                    i6 = i16;
                    i7 = i11;
                    i13 = 0;
                    i8 = i17;
                    i9 = i18;
                } else {
                    int i21 = this.f20010a[i13 + 1];
                    int k = m21101k(i21);
                    long j = m21103j(i21);
                    if (k <= 17) {
                        int i22 = this.f20010a[i13 + 2];
                        int i23 = 1 << (i22 >>> 20);
                        int i24 = i22 & 1048575;
                        if (i24 != i16) {
                            if (i16 != -1) {
                                unsafe.putInt(t, i16, i15);
                            }
                            i15 = unsafe.getInt(t, i24);
                            i16 = i24;
                        } else {
                            i15 = i15;
                        }
                        switch (k) {
                            case 0:
                                if (i20 == 1) {
                                    C6347m1.m21242a(t, j, C6291e.m21658a(bArr, i17));
                                    i = i17 + 8;
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    break;
                                } else {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                }
                            case 1:
                                if (i20 == 5) {
                                    C6347m1.m21241a((Object) t, j, C6291e.m21645d(bArr, i17));
                                    i = i17 + 4;
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    break;
                                } else {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                }
                            case 2:
                            case 3:
                                if (i20 != 0) {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                } else {
                                    i = C6291e.m21641e(bArr, i17, bVar);
                                    unsafe.putLong(t, j, bVar.f19870b);
                                    i15 |= i23;
                                    i14 = i18;
                                    i10 = i2;
                                    i13 = i13;
                                    i12 = i19;
                                    i11 = i3;
                                }
                            case 4:
                            case 11:
                                if (i20 == 0) {
                                    i = C6291e.m21644d(bArr, i17, bVar);
                                    unsafe.putInt(t, j, bVar.f19869a);
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    break;
                                } else {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                }
                            case 5:
                            case 14:
                                if (i20 == 1) {
                                    unsafe.putLong(t, j, C6291e.m21649c(bArr, i17));
                                    i = i17 + 8;
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    break;
                                } else {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                }
                            case 6:
                            case 13:
                                if (i20 != 5) {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                } else {
                                    unsafe.putInt(t, j, C6291e.m21653b(bArr, i17));
                                    i = i17 + 4;
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    i10 = i2;
                                    i11 = i3;
                                }
                            case 7:
                                if (i20 != 0) {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                } else {
                                    i = C6291e.m21641e(bArr, i17, bVar);
                                    C6347m1.m21221c(t, j, bVar.f19870b != 0);
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    i10 = i2;
                                    i11 = i3;
                                }
                            case 8:
                                if (i20 != 2) {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                } else {
                                    i = (i21 & 536870912) == 0 ? C6291e.m21652b(bArr, i17, bVar) : C6291e.m21648c(bArr, i17, bVar);
                                    unsafe.putObject(t, j, bVar.f19871c);
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    i10 = i2;
                                    i11 = i3;
                                }
                            case 9:
                                if (i20 != 2) {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                } else {
                                    i = C6291e.m21659a(m21128c(i13), bArr, i17, i2, bVar);
                                    if ((i15 & i23) == 0) {
                                        unsafe.putObject(t, j, bVar.f19871c);
                                    } else {
                                        unsafe.putObject(t, j, C6381y.m21008a(unsafe.getObject(t, j), bVar.f19871c));
                                    }
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    i10 = i2;
                                    i11 = i3;
                                }
                            case 10:
                                if (i20 == 2) {
                                    i = C6291e.m21657a(bArr, i17, bVar);
                                    unsafe.putObject(t, j, bVar.f19871c);
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    break;
                                } else {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                }
                            case 12:
                                if (i20 != 0) {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                } else {
                                    i = C6291e.m21644d(bArr, i17, bVar);
                                    int i25 = bVar.f19869a;
                                    C6381y.AbstractC6386e a = m21166a(i13);
                                    if (a == null || a.mo6796a(i25)) {
                                        unsafe.putInt(t, j, i25);
                                        i15 |= i23;
                                        i13 = i13;
                                        i14 = i18;
                                        i12 = i19;
                                        break;
                                    } else {
                                        m21109g(t).m21376a(i18, Long.valueOf(i25));
                                        i13 = i13;
                                        i14 = i18;
                                        i12 = i19;
                                    }
                                }
                                break;
                            case 15:
                                if (i20 == 0) {
                                    i = C6291e.m21644d(bArr, i17, bVar);
                                    unsafe.putInt(t, j, AbstractC6327j.m21461f(bVar.f19869a));
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    break;
                                } else {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                }
                            case 16:
                                if (i20 != 0) {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                } else {
                                    i = C6291e.m21641e(bArr, i17, bVar);
                                    unsafe.putLong(t, j, AbstractC6327j.m21469a(bVar.f19870b));
                                    i15 |= i23;
                                    i14 = i18;
                                    i10 = i2;
                                    i13 = i13;
                                    i12 = i19;
                                    i11 = i3;
                                }
                            case 17:
                                if (i20 == 3) {
                                    i = C6291e.m21660a(m21128c(i13), bArr, i17, i2, (i19 << 3) | 4, bVar);
                                    if ((i15 & i23) == 0) {
                                        unsafe.putObject(t, j, bVar.f19871c);
                                    } else {
                                        unsafe.putObject(t, j, C6381y.m21008a(unsafe.getObject(t, j), bVar.f19871c));
                                    }
                                    i15 |= i23;
                                    i13 = i13;
                                    i14 = i18;
                                    i12 = i19;
                                    break;
                                } else {
                                    i6 = i16;
                                    i9 = i18;
                                    i7 = i3;
                                    i8 = i17;
                                    i5 = i15;
                                    break;
                                }
                            default:
                                i6 = i16;
                                i9 = i18;
                                i7 = i3;
                                i8 = i17;
                                i5 = i15;
                                break;
                        }
                        i11 = i3;
                        i10 = i2;
                    } else {
                        if (k == 27) {
                            if (i20 == 2) {
                                C6381y.AbstractC6390i iVar = (C6381y.AbstractC6390i) unsafe.getObject(t, j);
                                C6381y.AbstractC6390i iVar2 = iVar;
                                if (!iVar.mo21000L()) {
                                    int size = iVar.size();
                                    iVar2 = iVar.mo20996b(size == 0 ? 10 : size * 2);
                                    unsafe.putObject(t, j, iVar2);
                                }
                                i = C6291e.m21654b(m21128c(i13), i18, bArr, i17, i2, iVar2, bVar);
                                i14 = i18;
                                i13 = i13;
                                i12 = i19;
                                i11 = i3;
                                i10 = i2;
                            }
                        } else if (k <= 49) {
                            int a2 = m21142a((C6362q0<T>) t, bArr, i17, i2, i18, i19, i20, i13, i21, k, j, bVar);
                            i8 = a2;
                            if (a2 != i17) {
                                i = a2;
                                i12 = i19;
                                i15 = i15;
                                i11 = i3;
                                i14 = i18;
                                i13 = i13;
                                i10 = i2;
                            }
                            i7 = i3;
                            i5 = i15;
                            i13 = i13;
                            i6 = i16;
                            i9 = i18;
                        } else if (k != 50) {
                            int a3 = m21143a((C6362q0<T>) t, bArr, i17, i2, i18, i19, i20, i21, k, j, i13, bVar);
                            i8 = a3;
                            if (a3 != i17) {
                                i = a3;
                                i12 = i19;
                                i15 = i15;
                                i11 = i3;
                                i14 = i18;
                                i13 = i13;
                                i10 = i2;
                            }
                            i7 = i3;
                            i5 = i15;
                            i13 = i13;
                            i6 = i16;
                            i9 = i18;
                        } else if (i20 == 2) {
                            int a4 = m21141a((C6362q0<T>) t, bArr, i17, i2, i13, j, bVar);
                            i8 = a4;
                            if (a4 != i17) {
                                i = a4;
                                i12 = i19;
                                i15 = i15;
                                i11 = i3;
                                i14 = i18;
                                i13 = i13;
                                i10 = i2;
                            }
                            i7 = i3;
                            i5 = i15;
                            i13 = i13;
                            i6 = i16;
                            i9 = i18;
                        }
                        i6 = i16;
                        i7 = i3;
                        i8 = i17;
                        i9 = i18;
                        i5 = i15;
                    }
                }
                if (i9 != i7 || i7 == 0) {
                    i = (!this.f20015f || bVar.f19872d == C6358p.m21173a()) ? C6291e.m21667a(i9, bArr, i8, i2, m21109g(t), bVar) : C6291e.m21664a(i9, bArr, i8, i2, (Object) t, this.f20014e, (AbstractC6326i1<C6334j1, C6334j1>) this.f20024o, bVar);
                    i15 = i5;
                    i12 = i19;
                    i14 = i9;
                    i16 = i6;
                    i11 = i7;
                    i10 = i2;
                } else {
                    q0Var = this;
                    i4 = i8;
                    i16 = i6;
                    i15 = i5;
                    i14 = i9;
                    i11 = i7;
                }
            } else {
                q0Var = this;
                i4 = i;
            }
        }
        if (i16 != -1) {
            unsafe.putInt(t, i16, i15);
        }
        C6334j1 j1Var = null;
        for (int i26 = q0Var.f20020k; i26 < q0Var.f20021l; i26++) {
            j1Var = (C6334j1) q0Var.m21148a((Object) t, q0Var.f20019j[i26], (int) j1Var, (AbstractC6326i1<UT, int>) q0Var.f20024o);
        }
        if (j1Var != null) {
            q0Var.f20024o.mo21282b((Object) t, (T) j1Var);
        }
        if (i11 == 0) {
            if (i4 != i2) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (i4 > i2 || i14 != i11) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <K, V> int m21139a(byte[] bArr, int i, int i2, C6319h0.C6320a<K, V> aVar, Map<K, V> map, C6291e.C6293b bVar) throws IOException {
        int i3;
        int i4;
        int d = C6291e.m21644d(bArr, i, bVar);
        int i5 = bVar.f19869a;
        if (i5 < 0 || i5 > i2 - d) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i6 = d + i5;
        Object obj = aVar.f19929b;
        Object obj2 = aVar.f19931d;
        while (d < i6) {
            int i7 = d + 1;
            byte b = bArr[d];
            if (b < 0) {
                i4 = C6291e.m21663a((int) b, bArr, i7, bVar);
                i3 = bVar.f19869a;
            } else {
                i4 = i7;
                i3 = b;
            }
            int i8 = i3 >>> 3;
            int i9 = i3 & 7;
            if (i8 != 1) {
                if (i8 == 2 && i9 == aVar.f19930c.getWireType()) {
                    d = m21138a(bArr, i4, i2, aVar.f19930c, aVar.f19931d.getClass(), bVar);
                    obj2 = bVar.f19871c;
                }
                d = C6291e.m21668a(i3, bArr, i4, i2, bVar);
            } else if (i9 == aVar.f19928a.getWireType()) {
                d = m21138a(bArr, i4, i2, aVar.f19928a, (Class<?>) null, bVar);
                obj = bVar.f19871c;
            } else {
                d = C6291e.m21668a(i3, bArr, i4, i2, bVar);
            }
        }
        if (d == i6) {
            map.put(obj, obj2);
            return i6;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    /* renamed from: a */
    public final int m21138a(byte[] bArr, int i, int i2, WireFormat.FieldType fieldType, Class<?> cls, C6291e.C6293b bVar) throws IOException {
        int i3;
        switch (C6363a.f20027a[fieldType.ordinal()]) {
            case 1:
                i3 = C6291e.m21641e(bArr, i, bVar);
                bVar.f19871c = Boolean.valueOf(bVar.f19870b != 0);
                break;
            case 2:
                i3 = C6291e.m21657a(bArr, i, bVar);
                break;
            case 3:
                bVar.f19871c = Double.valueOf(C6291e.m21658a(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                bVar.f19871c = Integer.valueOf(C6291e.m21653b(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                bVar.f19871c = Long.valueOf(C6291e.m21649c(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                bVar.f19871c = Float.valueOf(C6291e.m21645d(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = C6291e.m21644d(bArr, i, bVar);
                bVar.f19871c = Integer.valueOf(bVar.f19869a);
                break;
            case 12:
            case 13:
                i3 = C6291e.m21641e(bArr, i, bVar);
                bVar.f19871c = Long.valueOf(bVar.f19870b);
                break;
            case 14:
                i3 = C6291e.m21659a(C6380x0.m21016a().m21015a((Class) cls), bArr, i, i2, bVar);
                break;
            case 15:
                i3 = C6291e.m21644d(bArr, i, bVar);
                bVar.f19871c = Integer.valueOf(AbstractC6327j.m21461f(bVar.f19869a));
                break;
            case 16:
                i3 = C6291e.m21641e(bArr, i, bVar);
                bVar.f19871c = Long.valueOf(AbstractC6327j.m21469a(bVar.f19870b));
                break;
            case 17:
                i3 = C6291e.m21648c(bArr, i, bVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* renamed from: a */
    public final C6381y.AbstractC6386e m21166a(int i) {
        return (C6381y.AbstractC6386e) this.f20011b[((i / 3) * 2) + 1];
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public T mo21089a() {
        return (T) this.f20022m.mo21069a(this.f20014e);
    }

    /* renamed from: a */
    public final <K, V, UT, UB> UB m21164a(int i, int i2, Map<K, V> map, C6381y.AbstractC6386e eVar, UB ub, AbstractC6326i1<UT, UB> i1Var) {
        C6319h0.C6320a<?, ?> b = this.f20026q.mo21383b(m21137b(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!eVar.mo6796a(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = i1Var.mo21306a();
                }
                ByteString.C7922g newCodedBuilder = ByteString.newCodedBuilder(C6319h0.m21478a(b, next.getKey(), next.getValue()));
                try {
                    C6319h0.m21477a(newCodedBuilder.m7087b(), b, next.getKey(), next.getValue());
                    i1Var.mo21294a((AbstractC6326i1<UT, UB>) ub2, i2, newCodedBuilder.m7088a());
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
    public final <UT, UB> UB m21148a(Object obj, int i, UB ub, AbstractC6326i1<UT, UB> i1Var) {
        C6381y.AbstractC6386e a;
        int d = m21123d(i);
        Object n = C6347m1.m21202n(obj, m21103j(m21110g(i)));
        if (!(n == null || (a = m21166a(i)) == null)) {
            return (UB) m21164a(i, d, this.f20026q.mo21381c(n), a, (C6381y.AbstractC6386e) ub, (AbstractC6326i1<UT, C6381y.AbstractC6386e>) i1Var);
        }
        return ub;
    }

    /* renamed from: a */
    public final void m21163a(int i, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.mo6828a(i, (String) obj);
        } else {
            writer.mo6831a(i, (ByteString) obj);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x010c, code lost:
        r18 = r8.f20020k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0118, code lost:
        if (r18 >= r8.f20021l) goto L_0x0132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x011b, code lost:
        r20 = m21148a((java.lang.Object) r11, r8.f20019j[r18], (int) r20, (p131c.p161d.p367h.AbstractC6326i1<UT, int>) r9);
        r18 = r18 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:579:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0134, code lost:
        if (r20 == null) goto L_?;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0137, code lost:
        r9.mo21282b((java.lang.Object) r11, (T) r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013e, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <UT, UB, ET extends p131c.p161d.p367h.C6371u.AbstractC6373b<ET>> void m21160a(p131c.p161d.p367h.AbstractC6326i1<UT, UB> r9, p131c.p161d.p367h.AbstractC6361q<ET> r10, T r11, p131c.p161d.p367h.AbstractC6284b1 r12, p131c.p161d.p367h.C6358p r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4077
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.C6362q0.m21160a(c.d.h.i1, c.d.h.q, java.lang.Object, c.d.h.b1, c.d.h.p):void");
    }

    /* renamed from: a */
    public final <UT, UB> void m21158a(AbstractC6326i1<UT, UB> i1Var, T t, Writer writer) throws IOException {
        i1Var.mo21283b((AbstractC6326i1<UT, UB>) i1Var.mo21286b(t), writer);
    }

    /* renamed from: a */
    public final <K, V> void m21157a(Writer writer, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            writer.mo6832a(i, this.f20026q.mo21383b(m21137b(i2)), this.f20026q.mo21378f(obj));
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public void mo21083a(T t) {
        int i;
        int i2 = this.f20020k;
        while (true) {
            i = this.f20021l;
            if (i2 >= i) {
                break;
            }
            long j = m21103j(m21110g(this.f20019j[i2]));
            Object n = C6347m1.m21202n(t, j);
            if (n != null) {
                C6347m1.m21238a(t, j, this.f20026q.mo21386a(n));
            }
            i2++;
        }
        int length = this.f20019j.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f20023n.mo21624a(t, this.f20019j[i3]);
        }
        this.f20024o.mo21277e(t);
        if (this.f20015f) {
            this.f20025p.mo21090c(t);
        }
    }

    /* renamed from: a */
    public final void m21151a(Object obj, int i, AbstractC6284b1 b1Var) throws IOException {
        if (m21107h(i)) {
            C6347m1.m21238a(obj, m21103j(i), b1Var.mo21310r());
        } else if (this.f20016g) {
            C6347m1.m21238a(obj, m21103j(i), b1Var.mo21350b());
        } else {
            C6347m1.m21238a(obj, m21103j(i), b1Var.mo21320m());
        }
    }

    /* renamed from: a */
    public final <E> void m21150a(Object obj, int i, AbstractC6284b1 b1Var, AbstractC6287c1<E> c1Var, C6358p pVar) throws IOException {
        b1Var.mo21345b(this.f20023n.mo21622b(obj, m21103j(i)), c1Var, pVar);
    }

    /* renamed from: a */
    public final <K, V> void m21147a(Object obj, int i, Object obj2, C6358p pVar, AbstractC6284b1 b1Var) throws IOException {
        Object obj3;
        long j = m21103j(m21110g(i));
        Object n = C6347m1.m21202n(obj, j);
        if (n == null) {
            obj3 = this.f20026q.mo21380d(obj2);
            C6347m1.m21238a(obj, j, obj3);
        } else {
            obj3 = n;
            if (this.f20026q.mo21379e(n)) {
                obj3 = this.f20026q.mo21380d(obj2);
                this.f20026q.mo21382b(obj3, n);
                C6347m1.m21238a(obj, j, obj3);
            }
        }
        b1Var.mo21351a(this.f20026q.mo21381c(obj3), this.f20026q.mo21383b(obj2), pVar);
    }

    /* renamed from: a */
    public final <E> void m21145a(Object obj, long j, AbstractC6284b1 b1Var, AbstractC6287c1<E> c1Var, C6358p pVar) throws IOException {
        b1Var.mo21353a(this.f20023n.mo21622b(obj, j), c1Var, pVar);
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public void mo21082a(T t, AbstractC6284b1 b1Var, C6358p pVar) throws IOException {
        if (pVar != null) {
            m21160a(this.f20024o, this.f20025p, (AbstractC6361q) t, b1Var, pVar);
            return;
        }
        throw null;
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public void mo21081a(T t, Writer writer) throws IOException {
        if (writer.mo6838a() == Writer.FieldOrder.DESCENDING) {
            m21120d((C6362q0<T>) t, writer);
        } else if (this.f20017h) {
            m21125c((C6362q0<T>) t, writer);
        } else {
            m21131b((C6362q0<T>) t, writer);
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public void mo21079a(T t, byte[] bArr, int i, int i2, C6291e.C6293b bVar) throws IOException {
        if (this.f20017h) {
            m21129b(t, bArr, i, i2, bVar);
        } else {
            m21140a((C6362q0<T>) t, bArr, i, i2, 0, bVar);
        }
    }

    /* renamed from: a */
    public final boolean m21154a(T t, int i) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        if (this.f20017h) {
            int g = m21110g(i);
            long j = m21103j(g);
            switch (m21101k(g)) {
                case 0:
                    if (C6347m1.m21206j(t, j) != 0.0d) {
                        z14 = true;
                    }
                    return z14;
                case 1:
                    if (C6347m1.m21205k(t, j) != 0.0f) {
                        z13 = true;
                    }
                    return z13;
                case 2:
                    if (C6347m1.m21203m(t, j) != 0) {
                        z12 = true;
                    }
                    return z12;
                case 3:
                    if (C6347m1.m21203m(t, j) != 0) {
                        z11 = true;
                    }
                    return z11;
                case 4:
                    if (C6347m1.m21204l(t, j) != 0) {
                        z10 = true;
                    }
                    return z10;
                case 5:
                    if (C6347m1.m21203m(t, j) != 0) {
                        z9 = true;
                    }
                    return z9;
                case 6:
                    if (C6347m1.m21204l(t, j) != 0) {
                        z8 = true;
                    }
                    return z8;
                case 7:
                    return C6347m1.m21214e(t, j);
                case 8:
                    Object n = C6347m1.m21202n(t, j);
                    if (n instanceof String) {
                        return !((String) n).isEmpty();
                    }
                    if (n instanceof ByteString) {
                        return !ByteString.EMPTY.equals(n);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (C6347m1.m21202n(t, j) != null) {
                        z7 = true;
                    }
                    return z7;
                case 10:
                    return !ByteString.EMPTY.equals(C6347m1.m21202n(t, j));
                case 11:
                    if (C6347m1.m21204l(t, j) != 0) {
                        z6 = true;
                    }
                    return z6;
                case 12:
                    if (C6347m1.m21204l(t, j) != 0) {
                        z5 = true;
                    }
                    return z5;
                case 13:
                    if (C6347m1.m21204l(t, j) != 0) {
                        z4 = true;
                    }
                    return z4;
                case 14:
                    if (C6347m1.m21203m(t, j) != 0) {
                        z3 = true;
                    }
                    return z3;
                case 15:
                    if (C6347m1.m21204l(t, j) != 0) {
                        z2 = true;
                    }
                    return z2;
                case 16:
                    if (C6347m1.m21203m(t, j) != 0) {
                        z = true;
                    }
                    return z;
                case 17:
                    if (C6347m1.m21202n(t, j) != null) {
                        z16 = true;
                    }
                    return z16;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int f = m21114f(i);
            if ((C6347m1.m21204l(t, f & 1048575) & (1 << (f >>> 20))) != 0) {
                z15 = true;
            }
            return z15;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <N> boolean m21153a(Object obj, int i, int i2) {
        List list = (List) C6347m1.m21202n(obj, m21103j(i));
        if (list.isEmpty()) {
            return true;
        }
        AbstractC6287c1 c = m21128c(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!c.mo21076c(list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m21152a(T t, int i, int i2, int i3) {
        if (this.f20017h) {
            return m21154a((C6362q0<T>) t, i);
        }
        return (i2 & i3) != 0;
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public boolean mo21080a(T t, T t2) {
        int length = this.f20010a.length;
        for (int i = 0; i < length; i += 3) {
            if (!m21130b(t, t2, i)) {
                return false;
            }
        }
        if (!this.f20024o.mo21286b(t).equals(this.f20024o.mo21286b(t2))) {
            return false;
        }
        if (this.f20015f) {
            return this.f20025p.mo21093a(t).equals(this.f20025p.mo21093a(t2));
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m21144a(T t, T t2, int i) {
        return m21154a((C6362q0<T>) t, i) == m21154a((C6362q0<T>) t2, i);
    }

    /* renamed from: b */
    public final int m21136b(int i, int i2) {
        int length = (this.f20010a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int d = m21123d(i4);
            if (i == d) {
                return i4;
            }
            if (i < d) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: b */
    public int mo21078b(T t) {
        int i;
        int i2;
        int length = this.f20010a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int g = m21110g(i4);
            int d = m21123d(i4);
            long j = m21103j(g);
            int i5 = 37;
            switch (m21101k(g)) {
                case 0:
                    i = i3 * 53;
                    i2 = C6381y.m21010a(Double.doubleToLongBits(C6347m1.m21206j(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(C6347m1.m21205k(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = C6381y.m21010a(C6347m1.m21203m(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = C6381y.m21010a(C6347m1.m21203m(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = C6347m1.m21204l(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = C6381y.m21010a(C6347m1.m21203m(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = C6347m1.m21204l(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = C6381y.m21006a(C6347m1.m21214e(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) C6347m1.m21202n(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object n = C6347m1.m21202n(t, j);
                    if (n != null) {
                        i5 = n.hashCode();
                    }
                    i3 = (i3 * 53) + i5;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = C6347m1.m21202n(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = C6347m1.m21204l(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = C6347m1.m21204l(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = C6347m1.m21204l(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = C6381y.m21010a(C6347m1.m21203m(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = C6347m1.m21204l(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = C6381y.m21010a(C6347m1.m21203m(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object n2 = C6347m1.m21202n(t, j);
                    if (n2 != null) {
                        i5 = n2.hashCode();
                    }
                    i3 = (i3 * 53) + i5;
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
                    i2 = C6347m1.m21202n(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = C6347m1.m21202n(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6381y.m21010a(Double.doubleToLongBits(m21106h(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(m21104i(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6381y.m21010a(m21100k(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6381y.m21010a(m21100k(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = m21102j(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6381y.m21010a(m21100k(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = m21102j(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6381y.m21006a(m21108g(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = ((String) C6347m1.m21202n(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6347m1.m21202n(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6347m1.m21202n(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = m21102j(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = m21102j(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = m21102j(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6381y.m21010a(m21100k(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = m21102j(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6381y.m21010a(m21100k(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (m21127c((C6362q0<T>) t, d, i4)) {
                        i = i3 * 53;
                        i2 = C6347m1.m21202n(t, j).hashCode();
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
        int hashCode = (i3 * 53) + this.f20024o.mo21286b(t).hashCode();
        int i6 = hashCode;
        if (this.f20015f) {
            i6 = (hashCode * 53) + this.f20025p.mo21093a(t).hashCode();
        }
        return i6;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x03e5, code lost:
        if (r28 != r28) goto L_0x0430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0414, code lost:
        if (r28 != r28) goto L_0x0430;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m21129b(T r17, byte[] r18, int r19, int r20, p131c.p161d.p367h.C6291e.C6293b r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1128
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.C6362q0.m21129b(java.lang.Object, byte[], int, int, c.d.h.e$b):int");
    }

    /* renamed from: b */
    public final Object m21137b(int i) {
        return this.f20011b[(i / 3) * 2];
    }

    /* renamed from: b */
    public final void m21135b(T t, int i) {
        if (!this.f20017h) {
            int f = m21114f(i);
            long j = f & 1048575;
            C6347m1.m21240a((Object) t, j, C6347m1.m21204l(t, j) | (1 << (f >>> 20)));
        }
    }

    /* renamed from: b */
    public final void m21133b(Object obj, int i, AbstractC6284b1 b1Var) throws IOException {
        if (m21107h(i)) {
            b1Var.mo21319m(this.f20023n.mo21622b(obj, m21103j(i)));
        } else {
            b1Var.mo21333f(this.f20023n.mo21622b(obj, m21103j(i)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0968  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21131b(T r9, com.google.protobuf.Writer r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.C6362q0.m21131b(java.lang.Object, com.google.protobuf.Writer):void");
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: b */
    public void mo21077b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f20010a.length; i += 3) {
                m21111f(t, t2, i);
            }
            C6298e1.m21608a(this.f20024o, t, t2);
            if (this.f20015f) {
                C6298e1.m21607a(this.f20025p, t, t2);
                return;
            }
            return;
        }
        throw null;
    }

    /* renamed from: b */
    public final boolean m21134b(T t, int i, int i2) {
        Map<?, ?> f = this.f20026q.mo21378f(C6347m1.m21202n(t, m21103j(i)));
        if (f.isEmpty()) {
            return true;
        }
        if (this.f20026q.mo21383b(m21137b(i2)).f19930c.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        AbstractC6287c1<T> c1Var = null;
        for (Object obj : f.values()) {
            AbstractC6287c1<T> c1Var2 = c1Var;
            if (c1Var == null) {
                c1Var2 = C6380x0.m21016a().m21015a((Class) obj.getClass());
            }
            c1Var = c1Var2;
            if (!c1Var2.mo21076c(obj)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public final boolean m21130b(T t, T t2, int i) {
        int g = m21110g(i);
        long j = m21103j(g);
        switch (m21101k(g)) {
            case 0:
                boolean z = false;
                if (m21144a(t, t2, i)) {
                    z = false;
                    if (Double.doubleToLongBits(C6347m1.m21206j(t, j)) == Double.doubleToLongBits(C6347m1.m21206j(t2, j))) {
                        z = true;
                    }
                }
                return z;
            case 1:
                boolean z2 = false;
                if (m21144a(t, t2, i)) {
                    z2 = false;
                    if (Float.floatToIntBits(C6347m1.m21205k(t, j)) == Float.floatToIntBits(C6347m1.m21205k(t2, j))) {
                        z2 = true;
                    }
                }
                return z2;
            case 2:
                boolean z3 = false;
                if (m21144a(t, t2, i)) {
                    z3 = false;
                    if (C6347m1.m21203m(t, j) == C6347m1.m21203m(t2, j)) {
                        z3 = true;
                    }
                }
                return z3;
            case 3:
                boolean z4 = false;
                if (m21144a(t, t2, i)) {
                    z4 = false;
                    if (C6347m1.m21203m(t, j) == C6347m1.m21203m(t2, j)) {
                        z4 = true;
                    }
                }
                return z4;
            case 4:
                boolean z5 = false;
                if (m21144a(t, t2, i)) {
                    z5 = false;
                    if (C6347m1.m21204l(t, j) == C6347m1.m21204l(t2, j)) {
                        z5 = true;
                    }
                }
                return z5;
            case 5:
                boolean z6 = false;
                if (m21144a(t, t2, i)) {
                    z6 = false;
                    if (C6347m1.m21203m(t, j) == C6347m1.m21203m(t2, j)) {
                        z6 = true;
                    }
                }
                return z6;
            case 6:
                boolean z7 = false;
                if (m21144a(t, t2, i)) {
                    z7 = false;
                    if (C6347m1.m21204l(t, j) == C6347m1.m21204l(t2, j)) {
                        z7 = true;
                    }
                }
                return z7;
            case 7:
                boolean z8 = false;
                if (m21144a(t, t2, i)) {
                    z8 = false;
                    if (C6347m1.m21214e(t, j) == C6347m1.m21214e(t2, j)) {
                        z8 = true;
                    }
                }
                return z8;
            case 8:
                boolean z9 = false;
                if (m21144a(t, t2, i)) {
                    z9 = false;
                    if (C6298e1.m21605a(C6347m1.m21202n(t, j), C6347m1.m21202n(t2, j))) {
                        z9 = true;
                    }
                }
                return z9;
            case 9:
                boolean z10 = false;
                if (m21144a(t, t2, i)) {
                    z10 = false;
                    if (C6298e1.m21605a(C6347m1.m21202n(t, j), C6347m1.m21202n(t2, j))) {
                        z10 = true;
                    }
                }
                return z10;
            case 10:
                boolean z11 = false;
                if (m21144a(t, t2, i)) {
                    z11 = false;
                    if (C6298e1.m21605a(C6347m1.m21202n(t, j), C6347m1.m21202n(t2, j))) {
                        z11 = true;
                    }
                }
                return z11;
            case 11:
                boolean z12 = false;
                if (m21144a(t, t2, i)) {
                    z12 = false;
                    if (C6347m1.m21204l(t, j) == C6347m1.m21204l(t2, j)) {
                        z12 = true;
                    }
                }
                return z12;
            case 12:
                boolean z13 = false;
                if (m21144a(t, t2, i)) {
                    z13 = false;
                    if (C6347m1.m21204l(t, j) == C6347m1.m21204l(t2, j)) {
                        z13 = true;
                    }
                }
                return z13;
            case 13:
                boolean z14 = false;
                if (m21144a(t, t2, i)) {
                    z14 = false;
                    if (C6347m1.m21204l(t, j) == C6347m1.m21204l(t2, j)) {
                        z14 = true;
                    }
                }
                return z14;
            case 14:
                boolean z15 = false;
                if (m21144a(t, t2, i)) {
                    z15 = false;
                    if (C6347m1.m21203m(t, j) == C6347m1.m21203m(t2, j)) {
                        z15 = true;
                    }
                }
                return z15;
            case 15:
                boolean z16 = false;
                if (m21144a(t, t2, i)) {
                    z16 = false;
                    if (C6347m1.m21204l(t, j) == C6347m1.m21204l(t2, j)) {
                        z16 = true;
                    }
                }
                return z16;
            case 16:
                boolean z17 = false;
                if (m21144a(t, t2, i)) {
                    z17 = false;
                    if (C6347m1.m21203m(t, j) == C6347m1.m21203m(t2, j)) {
                        z17 = true;
                    }
                }
                return z17;
            case 17:
                boolean z18 = false;
                if (m21144a(t, t2, i)) {
                    z18 = false;
                    if (C6298e1.m21605a(C6347m1.m21202n(t, j), C6347m1.m21202n(t2, j))) {
                        z18 = true;
                    }
                }
                return z18;
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
                return C6298e1.m21605a(C6347m1.m21202n(t, j), C6347m1.m21202n(t2, j));
            case 50:
                return C6298e1.m21605a(C6347m1.m21202n(t, j), C6347m1.m21202n(t2, j));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                boolean z19 = false;
                if (m21124c(t, t2, i)) {
                    z19 = false;
                    if (C6298e1.m21605a(C6347m1.m21202n(t, j), C6347m1.m21202n(t2, j))) {
                        z19 = true;
                    }
                }
                return z19;
            default:
                return true;
        }
    }

    /* renamed from: c */
    public final AbstractC6287c1 m21128c(int i) {
        int i2 = (i / 3) * 2;
        AbstractC6287c1 c1Var = (AbstractC6287c1) this.f20011b[i2];
        if (c1Var != null) {
            return c1Var;
        }
        AbstractC6287c1<T> a = C6380x0.m21016a().m21015a((Class) ((Class) this.f20011b[i2 + 1]));
        this.f20011b[i2] = a;
        return a;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0994  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21125c(T r8, com.google.protobuf.Writer r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.C6362q0.m21125c(java.lang.Object, com.google.protobuf.Writer):void");
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: c */
    public final boolean mo21076c(T t) {
        int i;
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f20020k; i4++) {
            int i5 = this.f20019j[i4];
            int d = m21123d(i5);
            int g = m21110g(i5);
            if (!this.f20017h) {
                int i6 = this.f20010a[i5 + 2];
                int i7 = 1048575 & i6;
                int i8 = 1 << (i6 >>> 20);
                i2 = i2;
                i = i8;
                if (i7 != i2) {
                    i3 = f20009s.getInt(t, i7);
                    i2 = i7;
                    i = i8;
                }
            } else {
                i = 0;
                i2 = i2;
            }
            if (m21105i(g) && !m21152a((C6362q0<T>) t, i5, i3, i)) {
                return false;
            }
            int k = m21101k(g);
            if (k != 9 && k != 17) {
                if (k != 27) {
                    if (k == 60 || k == 68) {
                        if (m21127c((C6362q0<T>) t, d, i5) && !m21149a(t, g, m21128c(i5))) {
                            return false;
                        }
                    } else if (k != 49) {
                        if (k == 50 && !m21134b((C6362q0<T>) t, g, i5)) {
                            return false;
                        }
                    }
                }
                if (!m21153a(t, g, i5)) {
                    return false;
                }
            } else if (m21152a((C6362q0<T>) t, i5, i3, i) && !m21149a(t, g, m21128c(i5))) {
                return false;
            }
        }
        return !this.f20015f || this.f20025p.mo21093a(t).m21047f();
    }

    /* renamed from: c */
    public final boolean m21127c(T t, int i, int i2) {
        return C6347m1.m21204l(t, (long) (m21114f(i2) & 1048575)) == i;
    }

    /* renamed from: c */
    public final boolean m21124c(T t, T t2, int i) {
        long f = m21114f(i) & 1048575;
        return C6347m1.m21204l(t, f) == C6347m1.m21204l(t2, f);
    }

    /* renamed from: d */
    public final int m21123d(int i) {
        return this.f20010a[i];
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: d */
    public int mo21075d(T t) {
        return this.f20017h ? m21113f((C6362q0<T>) t) : m21117e((C6362q0<T>) t);
    }

    /* renamed from: d */
    public final void m21122d(T t, int i, int i2) {
        C6347m1.m21240a((Object) t, m21114f(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x099c  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21120d(T r8, com.google.protobuf.Writer r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.C6362q0.m21120d(java.lang.Object, com.google.protobuf.Writer):void");
    }

    /* renamed from: d */
    public final void m21119d(T t, T t2, int i) {
        long j = m21103j(m21110g(i));
        if (m21154a((C6362q0<T>) t2, i)) {
            Object n = C6347m1.m21202n(t, j);
            Object n2 = C6347m1.m21202n(t2, j);
            if (n != null && n2 != null) {
                C6347m1.m21238a(t, j, C6381y.m21008a(n, n2));
                m21135b((C6362q0<T>) t, i);
            } else if (n2 != null) {
                C6347m1.m21238a(t, j, n2);
                m21135b((C6362q0<T>) t, i);
            }
        }
    }

    /* renamed from: e */
    public final int m21118e(int i) {
        if (i < this.f20012c || i > this.f20013d) {
            return -1;
        }
        return m21136b(i, 0);
    }

    /* renamed from: e */
    public final int m21117e(T t) {
        int i;
        int i2;
        int i3;
        int b;
        int i4;
        int i5;
        int i6;
        int i7;
        Unsafe unsafe = f20009s;
        int i8 = -1;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 < this.f20010a.length) {
            int g = m21110g(i9);
            int d = m21123d(i9);
            int k = m21101k(g);
            if (k <= 17) {
                i2 = this.f20010a[i9 + 2];
                int i12 = 1048575 & i2;
                i8 = i8;
                if (i12 != i8) {
                    i11 = unsafe.getInt(t, i12);
                    i8 = i12;
                }
                i = 1 << (i2 >>> 20);
            } else {
                i2 = (!this.f20018i || k < FieldType.DOUBLE_LIST_PACKED.m6962id() || k > FieldType.SINT64_LIST_PACKED.m6962id()) ? 0 : this.f20010a[i9 + 2] & 1048575;
                i = 0;
                i11 = i11;
                i8 = i8;
            }
            long j = m21103j(g);
            switch (k) {
                case 0:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.m7065b(d, 0.0d);
                        i10 += i3;
                        break;
                    }
                case 1:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.m7064b(d, 0.0f);
                        i10 += i3;
                        break;
                    }
                case 2:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.m7029g(d, unsafe.getLong(t, j));
                        i10 += i3;
                        break;
                    }
                case 3:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.m7017j(d, unsafe.getLong(t, j));
                        i10 += i3;
                        break;
                    }
                case 4:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.m7018j(d, unsafe.getInt(t, j));
                        i10 += i3;
                        break;
                    }
                case 5:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.m7032f(d, 0L);
                        i10 += i3;
                        break;
                    }
                case 6:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        i3 = CodedOutputStream.m7022i(d, 0);
                        i10 += i3;
                        break;
                    }
                    break;
                case 7:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        b = CodedOutputStream.m7060b(d, true);
                        i10 += b;
                    }
                    break;
                case 8:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        Object object = unsafe.getObject(t, j);
                        b = object instanceof ByteString ? CodedOutputStream.m7049c(d, (ByteString) object) : CodedOutputStream.m7061b(d, (String) object);
                        i10 += b;
                    }
                    break;
                case 9:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        b = C6298e1.m21618a(d, unsafe.getObject(t, j), m21128c(i9));
                        i10 += b;
                    }
                    break;
                case 10:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        b = CodedOutputStream.m7049c(d, (ByteString) unsafe.getObject(t, j));
                        i10 += b;
                    }
                    break;
                case 11:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        b = CodedOutputStream.m7009m(d, unsafe.getInt(t, j));
                        i10 += b;
                    }
                    break;
                case 12:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        b = CodedOutputStream.m7026h(d, unsafe.getInt(t, j));
                        i10 += b;
                    }
                    break;
                case 13:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        i4 = CodedOutputStream.m7014k(d, 0);
                        i10 += i4;
                    }
                    break;
                case 14:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        b = CodedOutputStream.m7025h(d, 0L);
                        i10 += b;
                    }
                    break;
                case 15:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        b = CodedOutputStream.m7011l(d, unsafe.getInt(t, j));
                        i10 += b;
                    }
                    break;
                case 16:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        b = CodedOutputStream.m7021i(d, unsafe.getLong(t, j));
                        i10 += b;
                    }
                    break;
                case 17:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        b = CodedOutputStream.m7050c(d, (AbstractC6354n0) unsafe.getObject(t, j), m21128c(i9));
                        i10 += b;
                    }
                    break;
                case 18:
                    b = C6298e1.m21588d(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 19:
                    b = C6298e1.m21592c(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 20:
                    b = C6298e1.m21581f(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 21:
                    b = C6298e1.m21569j(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 22:
                    b = C6298e1.m21584e(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 23:
                    b = C6298e1.m21588d(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 24:
                    b = C6298e1.m21592c(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 25:
                    b = C6298e1.m21610a(d, (List<?>) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 26:
                    b = C6298e1.m21601b(d, (List) unsafe.getObject(t, j));
                    i10 += b;
                    break;
                case 27:
                    b = C6298e1.m21600b(d, (List) unsafe.getObject(t, j), m21128c(i9));
                    i10 += b;
                    break;
                case 28:
                    b = C6298e1.m21617a(d, (List) unsafe.getObject(t, j));
                    i10 += b;
                    break;
                case 29:
                    b = C6298e1.m21572i(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 30:
                    b = C6298e1.m21596b(d, (List<Integer>) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 31:
                    b = C6298e1.m21592c(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 32:
                    b = C6298e1.m21588d(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 33:
                    b = C6298e1.m21578g(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 34:
                    b = C6298e1.m21575h(d, (List) unsafe.getObject(t, j), false);
                    i10 += b;
                    break;
                case 35:
                    int d2 = C6298e1.m21587d((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (d2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, d2);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(d2);
                        i7 = d2;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 36:
                    int c = C6298e1.m21591c((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (c > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, c);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(c);
                        i7 = c;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 37:
                    int f = C6298e1.m21580f((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (f > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, f);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(f);
                        i7 = f;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 38:
                    int j2 = C6298e1.m21568j((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (j2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, j2);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(j2);
                        i7 = j2;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 39:
                    int e = C6298e1.m21583e((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (e > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, e);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(e);
                        i7 = e;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 40:
                    int d3 = C6298e1.m21587d((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (d3 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, d3);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(d3);
                        i7 = d3;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 41:
                    int c2 = C6298e1.m21591c((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (c2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, c2);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(c2);
                        i7 = c2;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 42:
                    int a = C6298e1.m21604a((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (a > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, a);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(a);
                        i7 = a;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 43:
                    int i13 = C6298e1.m21571i((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (i13 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, i13);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(i13);
                        i7 = i13;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 44:
                    int b2 = C6298e1.m21595b((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (b2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, b2);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(b2);
                        i7 = b2;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 45:
                    int c3 = C6298e1.m21591c((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (c3 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, c3);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(c3);
                        i7 = c3;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 46:
                    int d4 = C6298e1.m21587d((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (d4 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, d4);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(d4);
                        i7 = d4;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 47:
                    int g2 = C6298e1.m21577g((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (g2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, g2);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(g2);
                        i7 = g2;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 48:
                    int h = C6298e1.m21574h((List) unsafe.getObject(t, j));
                    i10 = i10;
                    if (h > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i2, h);
                        }
                        i6 = CodedOutputStream.m7007o(d);
                        i5 = CodedOutputStream.m7006p(h);
                        i7 = h;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 49:
                    b = C6298e1.m21616a(d, (List<AbstractC6354n0>) unsafe.getObject(t, j), m21128c(i9));
                    i10 += b;
                    break;
                case 50:
                    b = this.f20026q.mo21387a(d, unsafe.getObject(t, j), m21137b(i9));
                    i10 += b;
                    break;
                case 51:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7065b(d, 0.0d);
                        i10 += b;
                    }
                    break;
                case 52:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7064b(d, 0.0f);
                        i10 += b;
                    }
                    break;
                case 53:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7029g(d, m21100k(t, j));
                        i10 += b;
                    }
                    break;
                case 54:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7017j(d, m21100k(t, j));
                        i10 += b;
                    }
                    break;
                case 55:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7018j(d, m21102j(t, j));
                        i10 += b;
                    }
                    break;
                case 56:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7032f(d, 0L);
                        i10 += b;
                    }
                    break;
                case 57:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        i4 = CodedOutputStream.m7022i(d, 0);
                        i10 += i4;
                    }
                    break;
                case 58:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7060b(d, true);
                        i10 += b;
                    }
                    break;
                case 59:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        Object object2 = unsafe.getObject(t, j);
                        b = object2 instanceof ByteString ? CodedOutputStream.m7049c(d, (ByteString) object2) : CodedOutputStream.m7061b(d, (String) object2);
                        i10 += b;
                    }
                    break;
                case 60:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = C6298e1.m21618a(d, unsafe.getObject(t, j), m21128c(i9));
                        i10 += b;
                    }
                    break;
                case 61:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7049c(d, (ByteString) unsafe.getObject(t, j));
                        i10 += b;
                    }
                    break;
                case 62:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7009m(d, m21102j(t, j));
                        i10 += b;
                    }
                    break;
                case 63:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7026h(d, m21102j(t, j));
                        i10 += b;
                    }
                    break;
                case 64:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        i4 = CodedOutputStream.m7014k(d, 0);
                        i10 += i4;
                    }
                    break;
                case 65:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7025h(d, 0L);
                        i10 += b;
                    }
                    break;
                case 66:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7011l(d, m21102j(t, j));
                        i10 += b;
                    }
                    break;
                case 67:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7021i(d, m21100k(t, j));
                        i10 += b;
                    }
                    break;
                case 68:
                    i10 = i10;
                    if (m21127c((C6362q0<T>) t, d, i9)) {
                        b = CodedOutputStream.m7050c(d, (AbstractC6354n0) unsafe.getObject(t, j), m21128c(i9));
                        i10 += b;
                    }
                    break;
                default:
                    i10 = i10;
                    break;
            }
            i9 += 3;
            i11 = i11;
        }
        int a2 = i10 + m21159a(this.f20024o, (AbstractC6326i1) t);
        int i14 = a2;
        if (this.f20015f) {
            i14 = a2 + this.f20025p.mo21093a(t).m21053c();
        }
        return i14;
    }

    /* renamed from: e */
    public final void m21115e(T t, T t2, int i) {
        int g = m21110g(i);
        int d = m21123d(i);
        long j = m21103j(g);
        if (m21127c((C6362q0<T>) t2, d, i)) {
            Object n = C6347m1.m21202n(t, j);
            Object n2 = C6347m1.m21202n(t2, j);
            if (n != null && n2 != null) {
                C6347m1.m21238a(t, j, C6381y.m21008a(n, n2));
                m21122d((C6362q0<T>) t, d, i);
            } else if (n2 != null) {
                C6347m1.m21238a(t, j, n2);
                m21122d((C6362q0<T>) t, d, i);
            }
        }
    }

    /* renamed from: f */
    public final int m21114f(int i) {
        return this.f20010a[i + 2];
    }

    /* renamed from: f */
    public final int m21113f(T t) {
        int b;
        int i;
        int i2;
        int i3;
        Unsafe unsafe = f20009s;
        int i4 = 0;
        for (int i5 = 0; i5 < this.f20010a.length; i5 += 3) {
            int g = m21110g(i5);
            int k = m21101k(g);
            int d = m21123d(i5);
            long j = m21103j(g);
            int i6 = (k < FieldType.DOUBLE_LIST_PACKED.m6962id() || k > FieldType.SINT64_LIST_PACKED.m6962id()) ? 0 : this.f20010a[i5 + 2] & 1048575;
            switch (k) {
                case 0:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7065b(d, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7064b(d, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7029g(d, C6347m1.m21203m(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7017j(d, C6347m1.m21203m(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7018j(d, C6347m1.m21204l(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7032f(d, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7022i(d, 0);
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7060b(d, true);
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        Object n = C6347m1.m21202n(t, j);
                        if (n instanceof ByteString) {
                            b = CodedOutputStream.m7049c(d, (ByteString) n);
                            break;
                        } else {
                            b = CodedOutputStream.m7061b(d, (String) n);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = C6298e1.m21618a(d, C6347m1.m21202n(t, j), m21128c(i5));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7049c(d, (ByteString) C6347m1.m21202n(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 11:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7009m(d, C6347m1.m21204l(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7026h(d, C6347m1.m21204l(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7014k(d, 0);
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7025h(d, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7011l(d, C6347m1.m21204l(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7021i(d, C6347m1.m21203m(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    i4 = i4;
                    if (m21154a((C6362q0<T>) t, i5)) {
                        b = CodedOutputStream.m7050c(d, (AbstractC6354n0) C6347m1.m21202n(t, j), m21128c(i5));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    b = C6298e1.m21588d(d, m21116e(t, j), false);
                    break;
                case 19:
                    b = C6298e1.m21592c(d, m21116e(t, j), false);
                    break;
                case 20:
                    b = C6298e1.m21581f(d, m21116e(t, j), false);
                    break;
                case 21:
                    b = C6298e1.m21569j(d, m21116e(t, j), false);
                    break;
                case 22:
                    b = C6298e1.m21584e(d, m21116e(t, j), false);
                    break;
                case 23:
                    b = C6298e1.m21588d(d, m21116e(t, j), false);
                    break;
                case 24:
                    b = C6298e1.m21592c(d, m21116e(t, j), false);
                    break;
                case 25:
                    b = C6298e1.m21610a(d, m21116e(t, j), false);
                    break;
                case 26:
                    b = C6298e1.m21601b(d, m21116e(t, j));
                    break;
                case 27:
                    b = C6298e1.m21600b(d, m21116e(t, j), m21128c(i5));
                    break;
                case 28:
                    b = C6298e1.m21617a(d, (List<ByteString>) m21116e(t, j));
                    break;
                case 29:
                    b = C6298e1.m21572i(d, m21116e(t, j), false);
                    break;
                case 30:
                    b = C6298e1.m21596b(d, (List<Integer>) m21116e(t, j), false);
                    break;
                case 31:
                    b = C6298e1.m21592c(d, m21116e(t, j), false);
                    break;
                case 32:
                    b = C6298e1.m21588d(d, m21116e(t, j), false);
                    break;
                case 33:
                    b = C6298e1.m21578g(d, m21116e(t, j), false);
                    break;
                case 34:
                    b = C6298e1.m21575h(d, m21116e(t, j), false);
                    break;
                case 35:
                    int d2 = C6298e1.m21587d((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (d2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, d2);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(d2);
                        i2 = d2;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 36:
                    int c = C6298e1.m21591c((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (c > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, c);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(c);
                        i2 = c;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 37:
                    int f = C6298e1.m21580f((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (f > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, f);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(f);
                        i2 = f;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 38:
                    int j2 = C6298e1.m21568j((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (j2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, j2);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(j2);
                        i2 = j2;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 39:
                    int e = C6298e1.m21583e((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (e > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, e);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(e);
                        i2 = e;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 40:
                    int d3 = C6298e1.m21587d((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (d3 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, d3);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(d3);
                        i2 = d3;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 41:
                    int c2 = C6298e1.m21591c((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (c2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, c2);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(c2);
                        i2 = c2;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 42:
                    int a = C6298e1.m21604a((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (a > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, a);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(a);
                        i2 = a;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 43:
                    int i7 = C6298e1.m21571i((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (i7 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, i7);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(i7);
                        i2 = i7;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 44:
                    int b2 = C6298e1.m21595b((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (b2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, b2);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(b2);
                        i2 = b2;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 45:
                    int c3 = C6298e1.m21591c((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (c3 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, c3);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(c3);
                        i2 = c3;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 46:
                    int d4 = C6298e1.m21587d((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (d4 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, d4);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(d4);
                        i2 = d4;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 47:
                    int g2 = C6298e1.m21577g((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (g2 > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, g2);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(g2);
                        i2 = g2;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 48:
                    int h = C6298e1.m21574h((List) unsafe.getObject(t, j));
                    i4 = i4;
                    if (h > 0) {
                        if (this.f20018i) {
                            unsafe.putInt(t, i6, h);
                        }
                        i3 = CodedOutputStream.m7007o(d);
                        i = CodedOutputStream.m7006p(h);
                        i2 = h;
                        b = i3 + i + i2;
                        break;
                    } else {
                        continue;
                    }
                case 49:
                    b = C6298e1.m21616a(d, (List<AbstractC6354n0>) m21116e(t, j), m21128c(i5));
                    break;
                case 50:
                    b = this.f20026q.mo21387a(d, C6347m1.m21202n(t, j), m21137b(i5));
                    break;
                case 51:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7065b(d, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7064b(d, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7029g(d, m21100k(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7017j(d, m21100k(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7018j(d, m21102j(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7032f(d, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7022i(d, 0);
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7060b(d, true);
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        Object n2 = C6347m1.m21202n(t, j);
                        if (n2 instanceof ByteString) {
                            b = CodedOutputStream.m7049c(d, (ByteString) n2);
                            break;
                        } else {
                            b = CodedOutputStream.m7061b(d, (String) n2);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = C6298e1.m21618a(d, C6347m1.m21202n(t, j), m21128c(i5));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7049c(d, (ByteString) C6347m1.m21202n(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 62:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7009m(d, m21102j(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7026h(d, m21102j(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7014k(d, 0);
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7025h(d, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7011l(d, m21102j(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7021i(d, m21100k(t, j));
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    i4 = i4;
                    if (m21127c((C6362q0<T>) t, d, i5)) {
                        b = CodedOutputStream.m7050c(d, (AbstractC6354n0) C6347m1.m21202n(t, j), m21128c(i5));
                        break;
                    } else {
                        continue;
                    }
                default:
                    i4 = i4;
                    continue;
            }
            i4 += b;
        }
        return i4 + m21159a(this.f20024o, (AbstractC6326i1) t);
    }

    /* renamed from: f */
    public final void m21111f(T t, T t2, int i) {
        int g = m21110g(i);
        long j = m21103j(g);
        int d = m21123d(i);
        switch (m21101k(g)) {
            case 0:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21242a(t, j, C6347m1.m21206j(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 1:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21241a((Object) t, j, C6347m1.m21205k(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 2:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21239a((Object) t, j, C6347m1.m21203m(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 3:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21239a((Object) t, j, C6347m1.m21203m(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 4:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21240a((Object) t, j, C6347m1.m21204l(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 5:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21239a((Object) t, j, C6347m1.m21203m(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 6:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21240a((Object) t, j, C6347m1.m21204l(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 7:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21221c(t, j, C6347m1.m21214e(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 8:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21238a(t, j, C6347m1.m21202n(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 9:
                m21119d(t, t2, i);
                return;
            case 10:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21238a(t, j, C6347m1.m21202n(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 11:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21240a((Object) t, j, C6347m1.m21204l(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 12:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21240a((Object) t, j, C6347m1.m21204l(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 13:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21240a((Object) t, j, C6347m1.m21204l(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 14:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21239a((Object) t, j, C6347m1.m21203m(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 15:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21240a((Object) t, j, C6347m1.m21204l(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 16:
                if (m21154a((C6362q0<T>) t2, i)) {
                    C6347m1.m21239a((Object) t, j, C6347m1.m21203m(t2, j));
                    m21135b((C6362q0<T>) t, i);
                    return;
                }
                return;
            case 17:
                m21119d(t, t2, i);
                return;
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
                this.f20023n.mo21623a(t, t2, j);
                return;
            case 50:
                C6298e1.m21609a(this.f20026q, t, t2, j);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (m21127c((C6362q0<T>) t2, d, i)) {
                    C6347m1.m21238a(t, j, C6347m1.m21202n(t2, j));
                    m21122d((C6362q0<T>) t, d, i);
                    return;
                }
                return;
            case 60:
                m21115e(t, t2, i);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (m21127c((C6362q0<T>) t2, d, i)) {
                    C6347m1.m21238a(t, j, C6347m1.m21202n(t2, j));
                    m21122d((C6362q0<T>) t, d, i);
                    return;
                }
                return;
            case 68:
                m21115e(t, t2, i);
                return;
            default:
                return;
        }
    }

    /* renamed from: g */
    public final int m21110g(int i) {
        return this.f20010a[i + 1];
    }
}
