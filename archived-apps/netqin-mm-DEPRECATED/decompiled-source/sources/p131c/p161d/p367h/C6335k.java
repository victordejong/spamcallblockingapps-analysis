package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import p131c.p161d.p367h.C6319h0;
/* renamed from: c.d.h.k */
/* loaded from: classes2-dex2jar.jar:c/d/h/k.class */
public final class C6335k implements AbstractC6284b1 {

    /* renamed from: a */
    public final AbstractC6327j f19971a;

    /* renamed from: b */
    public int f19972b;

    /* renamed from: c */
    public int f19973c;

    /* renamed from: d */
    public int f19974d = 0;

    /* renamed from: c.d.h.k$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/k$a.class */
    public static /* synthetic */ class C6336a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19975a;

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
            f19975a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19975a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19975a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19975a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19975a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19975a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19975a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f19975a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f19975a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f19975a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f19975a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f19975a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f19975a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f19975a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f19975a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f19975a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f19975a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    public C6335k(AbstractC6327j jVar) {
        C6381y.m21007a(jVar, "input");
        AbstractC6327j jVar2 = jVar;
        this.f19971a = jVar2;
        jVar2.f19936d = this;
    }

    /* renamed from: a */
    public static C6335k m21357a(AbstractC6327j jVar) {
        C6335k kVar = jVar.f19936d;
        return kVar != null ? kVar : new C6335k(jVar);
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: a */
    public int mo21360a() {
        return this.f19972b;
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: a */
    public <T> T mo21358a(AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
        m21349b(3);
        return (T) m21342c(c1Var, pVar);
    }

    /* renamed from: a */
    public final Object m21356a(WireFormat.FieldType fieldType, Class<?> cls, C6358p pVar) throws IOException {
        switch (C6336a.f19975a[fieldType.ordinal()]) {
            case 1:
                return Boolean.valueOf(mo21334f());
            case 2:
                return mo21320m();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(mo21328i());
            case 5:
                return Integer.valueOf(mo21336e());
            case 6:
                return Long.valueOf(mo21340d());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(mo21318n());
            case 9:
                return Long.valueOf(mo21312q());
            case 10:
                return mo21355a(cls, pVar);
            case 11:
                return Integer.valueOf(mo21314p());
            case 12:
                return Long.valueOf(mo21332g());
            case 13:
                return Integer.valueOf(mo21326j());
            case 14:
                return Long.valueOf(mo21324k());
            case 15:
                return mo21310r();
            case 16:
                return Integer.valueOf(mo21330h());
            case 17:
                return Long.valueOf(mo21344c());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: a */
    public <T> T mo21355a(Class<T> cls, C6358p pVar) throws IOException {
        m21349b(2);
        return (T) m21338d(C6380x0.m21016a().m21015a((Class) cls), pVar);
    }

    /* renamed from: a */
    public final void m21359a(int i) throws IOException {
        if (this.f19971a.mo21420a() != i) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: a */
    public void mo21354a(List<Integer> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6379x) {
            C6379x xVar = (C6379x) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 0) {
                do {
                    xVar.mo21001g(this.f19971a.mo21400n());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int a = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    xVar.mo21001g(this.f19971a.mo21400n());
                } while (this.f19971a.mo21420a() < a);
                m21359a(a);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21400n()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int a2 = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21400n()));
                } while (this.f19971a.mo21420a() < a2);
                m21359a(a2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: a */
    public <T> void mo21353a(List<T> list, AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
        int r;
        if (WireFormat.m6839b(this.f19972b) == 3) {
            int i = this.f19972b;
            do {
                list.add(m21342c(c1Var, pVar));
                if (!this.f19971a.mo21417b() && this.f19974d == 0) {
                    r = this.f19971a.mo21396r();
                } else {
                    return;
                }
            } while (r == i);
            this.f19974d = r;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    /* renamed from: a */
    public void m21352a(List<String> list, boolean z) throws IOException {
        int r;
        int r2;
        if (WireFormat.m6839b(this.f19972b) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else if (!(list instanceof AbstractC6289d0) || z) {
            do {
                list.add(z ? mo21310r() : mo21350b());
                if (!this.f19971a.mo21417b()) {
                    r = this.f19971a.mo21396r();
                } else {
                    return;
                }
            } while (r == this.f19972b);
            this.f19974d = r;
        } else {
            AbstractC6289d0 d0Var = (AbstractC6289d0) list;
            do {
                d0Var.mo21263a(mo21320m());
                if (!this.f19971a.mo21417b()) {
                    r2 = this.f19971a.mo21396r();
                } else {
                    return;
                }
            } while (r2 == this.f19972b);
            this.f19974d = r2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: a */
    public <K, V> void mo21351a(Map<K, V> map, C6319h0.C6320a<K, V> aVar, C6358p pVar) throws IOException {
        m21349b(2);
        int c = this.f19971a.mo21413c(this.f19971a.mo21395s());
        Object obj = aVar.f19929b;
        Object obj2 = aVar.f19931d;
        while (true) {
            try {
                int l = mo21322l();
                if (l == Integer.MAX_VALUE || this.f19971a.mo21417b()) {
                    break;
                } else if (l == 1) {
                    obj = m21356a(aVar.f19928a, (Class<?>) null, (C6358p) null);
                } else if (l != 2) {
                    try {
                        if (!mo21316o()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            break;
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException e) {
                        if (!mo21316o()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    }
                } else {
                    obj2 = m21356a(aVar.f19930c, aVar.f19931d.getClass(), pVar);
                }
            } catch (Throwable th) {
                this.f19971a.mo21416b(c);
                throw th;
            }
        }
        map.put(obj, obj2);
        this.f19971a.mo21416b(c);
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: b */
    public <T> T mo21348b(AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
        m21349b(2);
        return (T) m21338d(c1Var, pVar);
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: b */
    public <T> T mo21347b(Class<T> cls, C6358p pVar) throws IOException {
        m21349b(3);
        return (T) m21342c(C6380x0.m21016a().m21015a((Class) cls), pVar);
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: b */
    public String mo21350b() throws IOException {
        m21349b(2);
        return this.f19971a.mo21398p();
    }

    /* renamed from: b */
    public final void m21349b(int i) throws IOException {
        if (WireFormat.m6839b(this.f19972b) != i) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: b */
    public void mo21346b(List<Integer> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6379x) {
            C6379x xVar = (C6379x) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 2) {
                int s = this.f19971a.mo21395s();
                m21343c(s);
                int a = this.f19971a.mo21420a();
                do {
                    xVar.mo21001g(this.f19971a.mo21402l());
                } while (this.f19971a.mo21420a() < a + s);
            } else if (b == 5) {
                do {
                    xVar.mo21001g(this.f19971a.mo21402l());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 2) {
                int s2 = this.f19971a.mo21395s();
                m21343c(s2);
                int a2 = this.f19971a.mo21420a();
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21402l()));
                } while (this.f19971a.mo21420a() < a2 + s2);
            } else if (b2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21402l()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: b */
    public <T> void mo21345b(List<T> list, AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
        int r;
        if (WireFormat.m6839b(this.f19972b) == 2) {
            int i = this.f19972b;
            do {
                list.add(m21338d(c1Var, pVar));
                if (!this.f19971a.mo21417b() && this.f19974d == 0) {
                    r = this.f19971a.mo21396r();
                } else {
                    return;
                }
            } while (r == i);
            this.f19974d = r;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: c */
    public long mo21344c() throws IOException {
        m21349b(0);
        return this.f19971a.mo21394t();
    }

    /* renamed from: c */
    public final <T> T m21342c(AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
        int i = this.f19973c;
        this.f19973c = WireFormat.m6840a(WireFormat.m6841a(this.f19972b), 4);
        try {
            T a = c1Var.mo21089a();
            c1Var.mo21082a(a, this, pVar);
            c1Var.mo21083a(a);
            if (this.f19972b == this.f19973c) {
                return a;
            }
            throw InvalidProtocolBufferException.parseFailure();
        } finally {
            this.f19973c = i;
        }
    }

    /* renamed from: c */
    public final void m21343c(int i) throws IOException {
        if ((i & 3) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: c */
    public void mo21341c(List<Long> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6302f0) {
            C6302f0 f0Var = (C6302f0) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 0) {
                do {
                    f0Var.m21536a(this.f19971a.mo21399o());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int a = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    f0Var.m21536a(this.f19971a.mo21399o());
                } while (this.f19971a.mo21420a() < a);
                m21359a(a);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 0) {
                do {
                    list.add(Long.valueOf(this.f19971a.mo21399o()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int a2 = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    list.add(Long.valueOf(this.f19971a.mo21399o()));
                } while (this.f19971a.mo21420a() < a2);
                m21359a(a2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: d */
    public long mo21340d() throws IOException {
        m21349b(1);
        return this.f19971a.mo21406h();
    }

    /* renamed from: d */
    public final <T> T m21338d(AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
        int s = this.f19971a.mo21395s();
        AbstractC6327j jVar = this.f19971a;
        if (jVar.f19933a < jVar.f19934b) {
            int c = jVar.mo21413c(s);
            T a = c1Var.mo21089a();
            this.f19971a.f19933a++;
            c1Var.mo21082a(a, this, pVar);
            c1Var.mo21083a(a);
            this.f19971a.mo21419a(0);
            AbstractC6327j jVar2 = this.f19971a;
            jVar2.f19933a--;
            jVar2.mo21416b(c);
            return a;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    /* renamed from: d */
    public final void m21339d(int i) throws IOException {
        if ((i & 7) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: d */
    public void mo21337d(List<Integer> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6379x) {
            C6379x xVar = (C6379x) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 0) {
                do {
                    xVar.mo21001g(this.f19971a.mo21395s());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int a = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    xVar.mo21001g(this.f19971a.mo21395s());
                } while (this.f19971a.mo21420a() < a);
                m21359a(a);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21395s()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int a2 = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21395s()));
                } while (this.f19971a.mo21420a() < a2);
                m21359a(a2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: e */
    public int mo21336e() throws IOException {
        m21349b(5);
        return this.f19971a.mo21408g();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: e */
    public void mo21335e(List<Long> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6302f0) {
            C6302f0 f0Var = (C6302f0) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 0) {
                do {
                    f0Var.m21536a(this.f19971a.mo21394t());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int a = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    f0Var.m21536a(this.f19971a.mo21394t());
                } while (this.f19971a.mo21420a() < a);
                m21359a(a);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 0) {
                do {
                    list.add(Long.valueOf(this.f19971a.mo21394t()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int a2 = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    list.add(Long.valueOf(this.f19971a.mo21394t()));
                } while (this.f19971a.mo21420a() < a2);
                m21359a(a2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: f */
    public void mo21333f(List<String> list) throws IOException {
        m21352a(list, false);
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: f */
    public boolean mo21334f() throws IOException {
        m21349b(0);
        return this.f19971a.mo21414c();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: g */
    public long mo21332g() throws IOException {
        m21349b(1);
        return this.f19971a.mo21401m();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: g */
    public void mo21331g(List<Long> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6302f0) {
            C6302f0 f0Var = (C6302f0) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 0) {
                do {
                    f0Var.m21536a(this.f19971a.mo21403k());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int a = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    f0Var.m21536a(this.f19971a.mo21403k());
                } while (this.f19971a.mo21420a() < a);
                m21359a(a);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 0) {
                do {
                    list.add(Long.valueOf(this.f19971a.mo21403k()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int a2 = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    list.add(Long.valueOf(this.f19971a.mo21403k()));
                } while (this.f19971a.mo21420a() < a2);
                m21359a(a2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: h */
    public int mo21330h() throws IOException {
        m21349b(0);
        return this.f19971a.mo21395s();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: h */
    public void mo21329h(List<Long> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6302f0) {
            C6302f0 f0Var = (C6302f0) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 1) {
                do {
                    f0Var.m21536a(this.f19971a.mo21401m());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int s = this.f19971a.mo21395s();
                m21339d(s);
                int a = this.f19971a.mo21420a();
                do {
                    f0Var.m21536a(this.f19971a.mo21401m());
                } while (this.f19971a.mo21420a() < a + s);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 1) {
                do {
                    list.add(Long.valueOf(this.f19971a.mo21401m()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int s2 = this.f19971a.mo21395s();
                m21339d(s2);
                int a2 = this.f19971a.mo21420a();
                do {
                    list.add(Long.valueOf(this.f19971a.mo21401m()));
                } while (this.f19971a.mo21420a() < a2 + s2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: i */
    public int mo21328i() throws IOException {
        m21349b(0);
        return this.f19971a.mo21409f();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: i */
    public void mo21327i(List<Integer> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6379x) {
            C6379x xVar = (C6379x) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 0) {
                do {
                    xVar.mo21001g(this.f19971a.mo21404j());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int a = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    xVar.mo21001g(this.f19971a.mo21404j());
                } while (this.f19971a.mo21420a() < a);
                m21359a(a);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21404j()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int a2 = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21404j()));
                } while (this.f19971a.mo21420a() < a2);
                m21359a(a2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: j */
    public int mo21326j() throws IOException {
        m21349b(0);
        return this.f19971a.mo21400n();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: j */
    public void mo21325j(List<Integer> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6379x) {
            C6379x xVar = (C6379x) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 0) {
                do {
                    xVar.mo21001g(this.f19971a.mo21409f());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int a = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    xVar.mo21001g(this.f19971a.mo21409f());
                } while (this.f19971a.mo21420a() < a);
                m21359a(a);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21409f()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int a2 = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21409f()));
                } while (this.f19971a.mo21420a() < a2);
                m21359a(a2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: k */
    public long mo21324k() throws IOException {
        m21349b(0);
        return this.f19971a.mo21399o();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: k */
    public void mo21323k(List<Integer> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6379x) {
            C6379x xVar = (C6379x) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 2) {
                int s = this.f19971a.mo21395s();
                m21343c(s);
                int a = this.f19971a.mo21420a();
                do {
                    xVar.mo21001g(this.f19971a.mo21408g());
                } while (this.f19971a.mo21420a() < a + s);
            } else if (b == 5) {
                do {
                    xVar.mo21001g(this.f19971a.mo21408g());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 2) {
                int s2 = this.f19971a.mo21395s();
                m21343c(s2);
                int a2 = this.f19971a.mo21420a();
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21408g()));
                } while (this.f19971a.mo21420a() < a2 + s2);
            } else if (b2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f19971a.mo21408g()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: l */
    public int mo21322l() throws IOException {
        int i = this.f19974d;
        if (i != 0) {
            this.f19972b = i;
            this.f19974d = 0;
        } else {
            this.f19972b = this.f19971a.mo21396r();
        }
        int i2 = this.f19972b;
        return (i2 == 0 || i2 == this.f19973c) ? MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT : WireFormat.m6841a(i2);
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: l */
    public void mo21321l(List<Boolean> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6313g) {
            C6313g gVar = (C6313g) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 0) {
                do {
                    gVar.m21500a(this.f19971a.mo21414c());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int a = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    gVar.m21500a(this.f19971a.mo21414c());
                } while (this.f19971a.mo21420a() < a);
                m21359a(a);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f19971a.mo21414c()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int a2 = this.f19971a.mo21420a() + this.f19971a.mo21395s();
                do {
                    list.add(Boolean.valueOf(this.f19971a.mo21414c()));
                } while (this.f19971a.mo21420a() < a2);
                m21359a(a2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: m */
    public ByteString mo21320m() throws IOException {
        m21349b(2);
        return this.f19971a.mo21412d();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: m */
    public void mo21319m(List<String> list) throws IOException {
        m21352a(list, true);
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: n */
    public int mo21318n() throws IOException {
        m21349b(0);
        return this.f19971a.mo21404j();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: n */
    public void mo21317n(List<Float> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6375v) {
            C6375v vVar = (C6375v) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 2) {
                int s = this.f19971a.mo21395s();
                m21343c(s);
                int a = this.f19971a.mo21420a();
                do {
                    vVar.m21039a(this.f19971a.mo21405i());
                } while (this.f19971a.mo21420a() < a + s);
            } else if (b == 5) {
                do {
                    vVar.m21039a(this.f19971a.mo21405i());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 2) {
                int s2 = this.f19971a.mo21395s();
                m21343c(s2);
                int a2 = this.f19971a.mo21420a();
                do {
                    list.add(Float.valueOf(this.f19971a.mo21405i()));
                } while (this.f19971a.mo21420a() < a2 + s2);
            } else if (b2 == 5) {
                do {
                    list.add(Float.valueOf(this.f19971a.mo21405i()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: o */
    public void mo21315o(List<ByteString> list) throws IOException {
        int r;
        if (WireFormat.m6839b(this.f19972b) == 2) {
            do {
                list.add(mo21320m());
                if (!this.f19971a.mo21417b()) {
                    r = this.f19971a.mo21396r();
                } else {
                    return;
                }
            } while (r == this.f19972b);
            this.f19974d = r;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: o */
    public boolean mo21316o() throws IOException {
        int i;
        if (this.f19971a.mo21417b() || (i = this.f19972b) == this.f19973c) {
            return false;
        }
        return this.f19971a.mo21410e(i);
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: p */
    public int mo21314p() throws IOException {
        m21349b(5);
        return this.f19971a.mo21402l();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: p */
    public void mo21313p(List<Double> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6345m) {
            C6345m mVar = (C6345m) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 1) {
                do {
                    mVar.m21258a(this.f19971a.mo21411e());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int s = this.f19971a.mo21395s();
                m21339d(s);
                int a = this.f19971a.mo21420a();
                do {
                    mVar.m21258a(this.f19971a.mo21411e());
                } while (this.f19971a.mo21420a() < a + s);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 1) {
                do {
                    list.add(Double.valueOf(this.f19971a.mo21411e()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int s2 = this.f19971a.mo21395s();
                m21339d(s2);
                int a2 = this.f19971a.mo21420a();
                do {
                    list.add(Double.valueOf(this.f19971a.mo21411e()));
                } while (this.f19971a.mo21420a() < a2 + s2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: q */
    public long mo21312q() throws IOException {
        m21349b(0);
        return this.f19971a.mo21403k();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: q */
    public void mo21311q(List<Long> list) throws IOException {
        int r;
        int r2;
        if (list instanceof C6302f0) {
            C6302f0 f0Var = (C6302f0) list;
            int b = WireFormat.m6839b(this.f19972b);
            if (b == 1) {
                do {
                    f0Var.m21536a(this.f19971a.mo21406h());
                    if (!this.f19971a.mo21417b()) {
                        r2 = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r2 == this.f19972b);
                this.f19974d = r2;
            } else if (b == 2) {
                int s = this.f19971a.mo21395s();
                m21339d(s);
                int a = this.f19971a.mo21420a();
                do {
                    f0Var.m21536a(this.f19971a.mo21406h());
                } while (this.f19971a.mo21420a() < a + s);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m6839b(this.f19972b);
            if (b2 == 1) {
                do {
                    list.add(Long.valueOf(this.f19971a.mo21406h()));
                    if (!this.f19971a.mo21417b()) {
                        r = this.f19971a.mo21396r();
                    } else {
                        return;
                    }
                } while (r == this.f19972b);
                this.f19974d = r;
            } else if (b2 == 2) {
                int s2 = this.f19971a.mo21395s();
                m21339d(s2);
                int a2 = this.f19971a.mo21420a();
                do {
                    list.add(Long.valueOf(this.f19971a.mo21406h()));
                } while (this.f19971a.mo21420a() < a2 + s2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    /* renamed from: r */
    public String mo21310r() throws IOException {
        m21349b(2);
        return this.f19971a.mo21397q();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    public double readDouble() throws IOException {
        m21349b(1);
        return this.f19971a.mo21411e();
    }

    @Override // p131c.p161d.p367h.AbstractC6284b1
    public float readFloat() throws IOException {
        m21349b(5);
        return this.f19971a.mo21405i();
    }
}
