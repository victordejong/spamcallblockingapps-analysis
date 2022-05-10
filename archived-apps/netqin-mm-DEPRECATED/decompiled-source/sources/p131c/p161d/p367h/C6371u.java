package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p131c.p161d.p367h.AbstractC6354n0;
import p131c.p161d.p367h.C6277a0;
import p131c.p161d.p367h.C6371u.AbstractC6373b;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.h.u */
/* loaded from: classes2-dex2jar.jar:c/d/h/u.class */
public final class C6371u<T extends AbstractC6373b<T>> {

    /* renamed from: d */
    public static final C6371u f20035d = new C6371u(true);

    /* renamed from: a */
    public final C6303f1<T, Object> f20036a;

    /* renamed from: b */
    public boolean f20037b;

    /* renamed from: c */
    public boolean f20038c;

    /* renamed from: c.d.h.u$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/u$a.class */
    public static /* synthetic */ class C6372a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20039a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f20040b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x014d -> B:97:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0151 -> B:93:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0155 -> B:105:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0159 -> B:101:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x015d -> B:113:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0161 -> B:109:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0165 -> B:121:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0169 -> B:117:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x016d -> B:129:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0171 -> B:125:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0175 -> B:133:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0179 -> B:131:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x017d -> B:137:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0181 -> B:135:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x0185 -> B:89:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0189 -> B:85:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x018d -> B:95:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0191 -> B:38:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x0195 -> B:103:0x00f0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x0199 -> B:99:0x00fb). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x019d -> B:111:0x0106). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01a1 -> B:107:0x0111). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x01a5 -> B:119:0x011c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x01a9 -> B:115:0x0128). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x01ad -> B:127:0x0134). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x01b1 -> B:123:0x0140). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f20040b = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20040b[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20040b[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f20040b[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f20040b[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f20040b[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f20040b[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f20040b[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f20040b[WireFormat.FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f20040b[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f20040b[WireFormat.FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f20040b[WireFormat.FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f20040b[WireFormat.FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f20040b[WireFormat.FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f20040b[WireFormat.FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f20040b[WireFormat.FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f20040b[WireFormat.FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f20040b[WireFormat.FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            f20039a = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f20039a[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f20039a[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f20039a[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f20039a[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f20039a[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError e24) {
            }
            try {
                f20039a[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError e25) {
            }
            try {
                f20039a[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError e26) {
            }
            try {
                f20039a[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError e27) {
            }
        }
    }

    /* renamed from: c.d.h.u$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/u$b.class */
    public interface AbstractC6373b<T extends AbstractC6373b<T>> extends Comparable<T> {
        /* renamed from: J */
        WireFormat.JavaType mo6923J();

        /* renamed from: a */
        AbstractC6354n0.AbstractC6355a mo6921a(AbstractC6354n0.AbstractC6355a aVar, AbstractC6354n0 n0Var);

        int getNumber();

        boolean isPacked();

        /* renamed from: k */
        boolean mo6919k();

        /* renamed from: n */
        WireFormat.FieldType mo6918n();
    }

    public C6371u() {
        this.f20036a = C6303f1.m21520c(16);
    }

    public C6371u(C6303f1<T, Object> f1Var) {
        this.f20036a = f1Var;
        m21045h();
    }

    public C6371u(boolean z) {
        this(C6303f1.m21520c(0));
        m21045h();
    }

    /* renamed from: a */
    public static int m21062a(WireFormat.FieldType fieldType, int i, Object obj) {
        int o = CodedOutputStream.m7007o(i);
        int i2 = o;
        if (fieldType == WireFormat.FieldType.GROUP) {
            i2 = o * 2;
        }
        return i2 + m21055b(fieldType, obj);
    }

    /* renamed from: a */
    public static int m21060a(WireFormat.FieldType fieldType, boolean z) {
        if (z) {
            return 2;
        }
        return fieldType.getWireType();
    }

    /* renamed from: a */
    public static Object m21059a(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: a */
    public static void m21064a(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i, Object obj) throws IOException {
        if (fieldType == WireFormat.FieldType.GROUP) {
            codedOutputStream.m7076a(i, (AbstractC6354n0) obj);
            return;
        }
        codedOutputStream.mo6965f(i, m21060a(fieldType, false));
        m21063a(codedOutputStream, fieldType, obj);
    }

    /* renamed from: a */
    public static void m21063a(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (C6372a.f20040b[fieldType.ordinal()]) {
            case 1:
                codedOutputStream.m7083a(((Double) obj).doubleValue());
                return;
            case 2:
                codedOutputStream.m7082a(((Float) obj).floatValue());
                return;
            case 3:
                codedOutputStream.m7059b(((Long) obj).longValue());
                return;
            case 4:
                codedOutputStream.mo6968e(((Long) obj).longValue());
                return;
            case 5:
                codedOutputStream.mo6974c(((Integer) obj).intValue());
                return;
            case 6:
                codedOutputStream.mo6988a(((Long) obj).longValue());
                return;
            case 7:
                codedOutputStream.mo6982b(((Integer) obj).intValue());
                return;
            case 8:
                codedOutputStream.m7069a(((Boolean) obj).booleanValue());
                return;
            case 9:
                codedOutputStream.m7073a((AbstractC6354n0) obj);
                return;
            case 10:
                codedOutputStream.mo6977b((AbstractC6354n0) obj);
                return;
            case 11:
                if (obj instanceof ByteString) {
                    codedOutputStream.mo6987a((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.mo6986a((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof ByteString) {
                    codedOutputStream.mo6987a((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.m7068a((byte[]) obj);
                    return;
                }
            case 13:
                codedOutputStream.mo6966f(((Integer) obj).intValue());
                return;
            case 14:
                codedOutputStream.m7043d(((Integer) obj).intValue());
                return;
            case 15:
                codedOutputStream.m7048c(((Long) obj).longValue());
                return;
            case 16:
                codedOutputStream.m7034e(((Integer) obj).intValue());
                return;
            case 17:
                codedOutputStream.m7037d(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof C6381y.AbstractC6384c) {
                    codedOutputStream.m7081a(((C6381y.AbstractC6384c) obj).getNumber());
                    return;
                } else {
                    codedOutputStream.m7081a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: b */
    public static int m21055b(WireFormat.FieldType fieldType, Object obj) {
        switch (C6372a.f20040b[fieldType.ordinal()]) {
            case 1:
                return CodedOutputStream.m7067b(((Double) obj).doubleValue());
            case 2:
                return CodedOutputStream.m7066b(((Float) obj).floatValue());
            case 3:
                return CodedOutputStream.m7028g(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.m7016j(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.m7023i(((Integer) obj).intValue());
            case 6:
                return CodedOutputStream.m7031f(((Long) obj).longValue());
            case 7:
                return CodedOutputStream.m7027h(((Integer) obj).intValue());
            case 8:
                return CodedOutputStream.m7055b(((Boolean) obj).booleanValue());
            case 9:
                return CodedOutputStream.m7047c((AbstractC6354n0) obj);
            case 10:
                return obj instanceof C6277a0 ? CodedOutputStream.m7074a((C6277a0) obj) : CodedOutputStream.m7036d((AbstractC6354n0) obj);
            case 11:
                return obj instanceof ByteString ? CodedOutputStream.m7057b((ByteString) obj) : CodedOutputStream.m7056b((String) obj);
            case 12:
                return obj instanceof ByteString ? CodedOutputStream.m7057b((ByteString) obj) : CodedOutputStream.m7054b((byte[]) obj);
            case 13:
                return CodedOutputStream.m7006p(((Integer) obj).intValue());
            case 14:
                return CodedOutputStream.m7010m(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.m7024h(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.m7008n(((Integer) obj).intValue());
            case 17:
                return CodedOutputStream.m7020i(((Long) obj).longValue());
            case 18:
                return obj instanceof C6381y.AbstractC6384c ? CodedOutputStream.m7030g(((C6381y.AbstractC6384c) obj).getNumber()) : CodedOutputStream.m7030g(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: c */
    public static int m21052c(AbstractC6373b<?> bVar, Object obj) {
        WireFormat.FieldType n = bVar.mo6918n();
        int number = bVar.getNumber();
        if (!bVar.mo6919k()) {
            return m21062a(n, number, obj);
        }
        int i = 0;
        int i2 = 0;
        if (bVar.isPacked()) {
            for (Object obj2 : (List) obj) {
                i2 += m21055b(n, obj2);
            }
            return CodedOutputStream.m7007o(number) + i2 + CodedOutputStream.m7012l(i2);
        }
        for (Object obj3 : (List) obj) {
            i += m21062a(n, number, obj3);
        }
        return i;
    }

    /* renamed from: c */
    public static boolean m21051c(WireFormat.FieldType fieldType, Object obj) {
        C6381y.m21009a(obj);
        switch (C6372a.f20039a[fieldType.getJavaType().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                boolean z = true;
                if (!(obj instanceof ByteString)) {
                    z = obj instanceof byte[];
                }
                return z;
            case 8:
                boolean z2 = true;
                if (!(obj instanceof Integer)) {
                    z2 = obj instanceof C6381y.AbstractC6384c;
                }
                return z2;
            case 9:
                boolean z3 = true;
                if (!(obj instanceof AbstractC6354n0)) {
                    z3 = obj instanceof C6277a0;
                }
                return z3;
            default:
                return false;
        }
    }

    /* renamed from: c */
    public static <T extends AbstractC6373b<T>> boolean m21050c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.mo6923J() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        if (key.mo6919k()) {
            for (AbstractC6354n0 n0Var : (List) entry.getValue()) {
                if (!n0Var.isInitialized()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof AbstractC6354n0) {
            return ((AbstractC6354n0) value).isInitialized();
        }
        if (value instanceof C6277a0) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: i */
    public static <T extends AbstractC6373b<T>> C6371u<T> m21044i() {
        return f20035d;
    }

    /* renamed from: j */
    public static <T extends AbstractC6373b<T>> C6371u<T> m21043j() {
        return new C6371u<>();
    }

    /* renamed from: a */
    public final int m21058a(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.mo6923J() != WireFormat.JavaType.MESSAGE || key.mo6919k() || key.isPacked()) ? m21052c((AbstractC6373b<?>) key, value) : value instanceof C6277a0 ? CodedOutputStream.m7077a(entry.getKey().getNumber(), (C6277a0) value) : CodedOutputStream.m7051c(entry.getKey().getNumber(), (AbstractC6354n0) value);
    }

    /* renamed from: a */
    public Object m21067a(T t) {
        Object obj = this.f20036a.get(t);
        AbstractC6354n0 n0Var = obj;
        if (obj instanceof C6277a0) {
            n0Var = ((C6277a0) obj).m21689c();
        }
        return n0Var;
    }

    /* renamed from: a */
    public Iterator<Map.Entry<T, Object>> m21068a() {
        return this.f20038c ? new C6277a0.C6280c(this.f20036a.m21524b().iterator()) : this.f20036a.m21524b().iterator();
    }

    /* renamed from: a */
    public void m21066a(T t, Object obj) {
        List list;
        if (t.mo6919k()) {
            m21061a(t.mo6918n(), obj);
            Object a = m21067a((C6371u<T>) t);
            if (a == null) {
                ArrayList arrayList = new ArrayList();
                this.f20036a.m21525a((C6303f1<T, Object>) t, (T) arrayList);
                list = arrayList;
            } else {
                list = (List) a;
            }
            list.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    /* renamed from: a */
    public void m21065a(C6371u<T> uVar) {
        for (int i = 0; i < uVar.f20036a.m21518d(); i++) {
            m21054b(uVar.f20036a.m21529a(i));
        }
        for (Map.Entry<T, Object> entry : uVar.f20036a.m21515f()) {
            m21054b(entry);
        }
    }

    /* renamed from: a */
    public final void m21061a(WireFormat.FieldType fieldType, Object obj) {
        if (!m21051c(fieldType, obj)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: b */
    public int m21057b() {
        int i = 0;
        for (int i2 = 0; i2 < this.f20036a.m21518d(); i2++) {
            i += m21058a((Map.Entry) this.f20036a.m21529a(i2));
        }
        for (Map.Entry<T, Object> entry : this.f20036a.m21515f()) {
            i += m21058a((Map.Entry) entry);
        }
        return i;
    }

    /* renamed from: b */
    public void m21056b(T t, Object obj) {
        if (!t.mo6919k()) {
            m21061a(t.mo6918n(), obj);
        } else if (obj instanceof List) {
            ArrayList<Object> arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            for (Object obj2 : arrayList) {
                m21061a(t.mo6918n(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof C6277a0) {
            this.f20038c = true;
        }
        this.f20036a.m21525a((C6303f1<T, Object>) t, (T) obj);
    }

    /* renamed from: b */
    public final void m21054b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        AbstractC6354n0 n0Var = value;
        if (value instanceof C6277a0) {
            n0Var = ((C6277a0) value).m21689c();
        }
        if (key.mo6919k()) {
            Object a = m21067a((C6371u<T>) key);
            Object obj = a;
            if (a == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) n0Var) {
                ((List) obj).add(m21059a(obj2));
            }
            this.f20036a.m21525a((C6303f1<T, Object>) key, (T) obj);
        } else if (key.mo6923J() == WireFormat.JavaType.MESSAGE) {
            Object a2 = m21067a((C6371u<T>) key);
            if (a2 == null) {
                this.f20036a.m21525a((C6303f1<T, Object>) key, (T) m21059a(n0Var));
                return;
            }
            this.f20036a.m21525a((C6303f1<T, Object>) key, (T) key.mo6921a(((AbstractC6354n0) a2).mo6926h(), (AbstractC6354n0) n0Var).mo6937a());
        } else {
            this.f20036a.m21525a((C6303f1<T, Object>) key, (T) m21059a(n0Var));
        }
    }

    /* renamed from: c */
    public int m21053c() {
        int i = 0;
        for (int i2 = 0; i2 < this.f20036a.m21518d(); i2++) {
            Map.Entry<T, Object> a = this.f20036a.m21529a(i2);
            i += m21052c((AbstractC6373b<?>) a.getKey(), a.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f20036a.m21515f()) {
            i += m21052c((AbstractC6373b<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    public C6371u<T> clone() {
        C6371u<T> j = m21043j();
        for (int i = 0; i < this.f20036a.m21518d(); i++) {
            Map.Entry<T, Object> a = this.f20036a.m21529a(i);
            j.m21056b((C6371u<T>) a.getKey(), a.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f20036a.m21515f()) {
            j.m21056b((C6371u<T>) entry.getKey(), entry.getValue());
        }
        j.f20038c = this.f20038c;
        return j;
    }

    /* renamed from: d */
    public boolean m21049d() {
        return this.f20036a.isEmpty();
    }

    /* renamed from: e */
    public boolean m21048e() {
        return this.f20037b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6371u)) {
            return false;
        }
        return this.f20036a.equals(((C6371u) obj).f20036a);
    }

    /* renamed from: f */
    public boolean m21047f() {
        for (int i = 0; i < this.f20036a.m21518d(); i++) {
            if (!m21050c(this.f20036a.m21529a(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f20036a.m21515f()) {
            if (!m21050c(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public Iterator<Map.Entry<T, Object>> m21046g() {
        return this.f20038c ? new C6277a0.C6280c(this.f20036a.entrySet().iterator()) : this.f20036a.entrySet().iterator();
    }

    /* renamed from: h */
    public void m21045h() {
        if (!this.f20037b) {
            this.f20036a.mo21512i();
            this.f20037b = true;
        }
    }

    public int hashCode() {
        return this.f20036a.hashCode();
    }
}
