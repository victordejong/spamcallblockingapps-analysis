package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Utf8;
import com.google.protobuf.WireFormat;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
import p131c.p161d.p367h.C6319h0;
/* renamed from: c.d.h.f */
/* loaded from: classes2-dex2jar.jar:c/d/h/f.class */
public abstract class AbstractC6299f implements AbstractC6284b1 {

    /* renamed from: c.d.h.f$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/f$a.class */
    public static /* synthetic */ class C6300a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19880a;

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
            f19880a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19880a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19880a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19880a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19880a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19880a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19880a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f19880a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f19880a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f19880a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f19880a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f19880a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f19880a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f19880a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f19880a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f19880a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f19880a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    /* renamed from: c.d.h.f$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/f$b.class */
    public static final class C6301b extends AbstractC6299f {

        /* renamed from: a */
        public final boolean f19881a;

        /* renamed from: b */
        public final byte[] f19882b;

        /* renamed from: c */
        public int f19883c;

        /* renamed from: d */
        public int f19884d;

        /* renamed from: e */
        public int f19885e;

        /* renamed from: f */
        public int f19886f;

        public C6301b(ByteBuffer byteBuffer, boolean z) {
            super(null);
            this.f19881a = z;
            this.f19882b = byteBuffer.array();
            this.f19883c = byteBuffer.arrayOffset() + byteBuffer.position();
            this.f19884d = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        /* renamed from: A */
        public final long m21562A() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte t = m21546t();
                j |= (t & Byte.MAX_VALUE) << i;
                if ((t & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: B */
        public final void m21561B() throws IOException {
            int i = this.f19886f;
            this.f19886f = WireFormat.m6840a(WireFormat.m6841a(this.f19885e), 4);
            while (mo21322l() != Integer.MAX_VALUE && mo21316o()) {
            }
            if (this.f19885e == this.f19886f) {
                this.f19886f = i;
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        /* renamed from: C */
        public final void m21560C() throws IOException {
            int i = this.f19884d;
            int i2 = this.f19883c;
            if (i - i2 >= 10) {
                byte[] bArr = this.f19882b;
                int i3 = 0;
                while (i3 < 10) {
                    int i4 = i2 + 1;
                    if (bArr[i2] >= 0) {
                        this.f19883c = i4;
                        return;
                    } else {
                        i3++;
                        i2 = i4;
                    }
                }
            }
            m21559D();
        }

        /* renamed from: D */
        public final void m21559D() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (m21546t() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: a */
        public int mo21360a() {
            return this.f19885e;
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: a */
        public <T> T mo21358a(AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
            m21553c(3);
            return (T) m21552c(c1Var, pVar);
        }

        /* renamed from: a */
        public final Object m21557a(WireFormat.FieldType fieldType, Class<?> cls, C6358p pVar) throws IOException {
            switch (C6300a.f19880a[fieldType.ordinal()]) {
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
            m21553c(2);
            return (T) m21550d(C6380x0.m21016a().m21015a((Class) cls), pVar);
        }

        /* renamed from: a */
        public String m21555a(boolean z) throws IOException {
            m21553c(2);
            int y = m21541y();
            if (y == 0) {
                return "";
            }
            m21558a(y);
            if (z) {
                byte[] bArr = this.f19882b;
                int i = this.f19883c;
                if (!Utf8.m6881d(bArr, i, i + y)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
            }
            String str = new String(this.f19882b, this.f19883c, y, C6381y.f20053a);
            this.f19883c += y;
            return str;
        }

        /* renamed from: a */
        public final void m21558a(int i) throws IOException {
            if (i < 0 || i > this.f19884d - this.f19883c) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: a */
        public void mo21354a(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6379x) {
                C6379x xVar = (C6379x) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 0) {
                    do {
                        xVar.mo21001g(mo21326j());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = m21541y();
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        xVar.mo21001g(AbstractC6327j.m21461f(m21541y()));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 0) {
                    do {
                        list.add(Integer.valueOf(mo21326j()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = m21541y();
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Integer.valueOf(AbstractC6327j.m21461f(m21541y())));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: a */
        public <T> void mo21353a(List<T> list, AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
            int i;
            if (WireFormat.m6839b(this.f19885e) == 3) {
                int i2 = this.f19885e;
                do {
                    list.add(m21552c(c1Var, pVar));
                    if (!m21547s()) {
                        i = this.f19883c;
                    } else {
                        return;
                    }
                } while (m21541y() == i2);
                this.f19883c = i;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        /* renamed from: a */
        public void m21556a(List<String> list, boolean z) throws IOException {
            int i;
            int i2;
            if (WireFormat.m6839b(this.f19885e) != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else if (!(list instanceof AbstractC6289d0) || z) {
                do {
                    list.add(m21555a(z));
                    if (!m21547s()) {
                        i = this.f19883c;
                    } else {
                        return;
                    }
                } while (m21541y() == this.f19885e);
                this.f19883c = i;
            } else {
                AbstractC6289d0 d0Var = (AbstractC6289d0) list;
                do {
                    d0Var.mo21263a(mo21320m());
                    if (!m21547s()) {
                        i2 = this.f19883c;
                    } else {
                        return;
                    }
                } while (m21541y() == this.f19885e);
                this.f19883c = i2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: a */
        public <K, V> void mo21351a(Map<K, V> map, C6319h0.C6320a<K, V> aVar, C6358p pVar) throws IOException {
            m21553c(2);
            int y = m21541y();
            m21558a(y);
            int i = this.f19884d;
            this.f19884d = this.f19883c + y;
            try {
                Object obj = aVar.f19929b;
                Object obj2 = aVar.f19931d;
                while (true) {
                    int l = mo21322l();
                    if (l == Integer.MAX_VALUE) {
                        map.put(obj, obj2);
                        this.f19884d = i;
                        return;
                    } else if (l == 1) {
                        obj = m21557a(aVar.f19928a, (Class<?>) null, (C6358p) null);
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
                        obj2 = m21557a(aVar.f19930c, aVar.f19931d.getClass(), pVar);
                    }
                }
            } catch (Throwable th) {
                this.f19884d = i;
                throw th;
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: b */
        public <T> T mo21348b(AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
            m21553c(2);
            return (T) m21550d(c1Var, pVar);
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: b */
        public <T> T mo21347b(Class<T> cls, C6358p pVar) throws IOException {
            m21553c(3);
            return (T) m21552c(C6380x0.m21016a().m21015a((Class) cls), pVar);
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: b */
        public String mo21350b() throws IOException {
            return m21555a(false);
        }

        /* renamed from: b */
        public final void m21554b(int i) throws IOException {
            if (this.f19883c != i) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: b */
        public void mo21346b(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6379x) {
                C6379x xVar = (C6379x) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 2) {
                    int y = m21541y();
                    m21549e(y);
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        xVar.mo21001g(m21544v());
                    }
                } else if (b == 5) {
                    do {
                        xVar.mo21001g(mo21314p());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 2) {
                    int y2 = m21541y();
                    m21549e(y2);
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Integer.valueOf(m21544v()));
                    }
                } else if (b2 == 5) {
                    do {
                        list.add(Integer.valueOf(mo21314p()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: b */
        public <T> void mo21345b(List<T> list, AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
            int i;
            if (WireFormat.m6839b(this.f19885e) == 2) {
                int i2 = this.f19885e;
                do {
                    list.add(m21550d(c1Var, pVar));
                    if (!m21547s()) {
                        i = this.f19883c;
                    } else {
                        return;
                    }
                } while (m21541y() == i2);
                this.f19883c = i;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: c */
        public long mo21344c() throws IOException {
            m21553c(0);
            return m21540z();
        }

        /* renamed from: c */
        public final <T> T m21552c(AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
            int i = this.f19886f;
            this.f19886f = WireFormat.m6840a(WireFormat.m6841a(this.f19885e), 4);
            try {
                T a = c1Var.mo21089a();
                c1Var.mo21082a(a, this, pVar);
                c1Var.mo21083a(a);
                if (this.f19885e == this.f19886f) {
                    return a;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.f19886f = i;
            }
        }

        /* renamed from: c */
        public final void m21553c(int i) throws IOException {
            if (WireFormat.m6839b(this.f19885e) != i) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: c */
        public void mo21341c(List<Long> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6302f0) {
                C6302f0 f0Var = (C6302f0) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 0) {
                    do {
                        f0Var.m21536a(mo21324k());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = m21541y();
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        f0Var.m21536a(AbstractC6327j.m21469a(m21540z()));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 0) {
                    do {
                        list.add(Long.valueOf(mo21324k()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = m21541y();
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Long.valueOf(AbstractC6327j.m21469a(m21540z())));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: d */
        public long mo21340d() throws IOException {
            m21553c(1);
            return m21543w();
        }

        /* renamed from: d */
        public final <T> T m21550d(AbstractC6287c1<T> c1Var, C6358p pVar) throws IOException {
            int y = m21541y();
            m21558a(y);
            int i = this.f19884d;
            int i2 = this.f19883c + y;
            this.f19884d = i2;
            try {
                T a = c1Var.mo21089a();
                c1Var.mo21082a(a, this, pVar);
                c1Var.mo21083a(a);
                if (this.f19883c == i2) {
                    return a;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.f19884d = i;
            }
        }

        /* renamed from: d */
        public final void m21551d(int i) throws IOException {
            m21558a(i);
            this.f19883c += i;
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: d */
        public void mo21337d(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6379x) {
                C6379x xVar = (C6379x) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 0) {
                    do {
                        xVar.mo21001g(mo21330h());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = m21541y();
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        xVar.mo21001g(m21541y());
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 0) {
                    do {
                        list.add(Integer.valueOf(mo21330h()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = m21541y();
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Integer.valueOf(m21541y()));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: e */
        public int mo21336e() throws IOException {
            m21553c(5);
            return m21545u();
        }

        /* renamed from: e */
        public final void m21549e(int i) throws IOException {
            m21558a(i);
            if ((i & 3) != 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: e */
        public void mo21335e(List<Long> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6302f0) {
                C6302f0 f0Var = (C6302f0) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 0) {
                    do {
                        f0Var.m21536a(mo21344c());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = this.f19883c + m21541y();
                    while (this.f19883c < y) {
                        f0Var.m21536a(m21540z());
                    }
                    m21554b(y);
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 0) {
                    do {
                        list.add(Long.valueOf(mo21344c()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = this.f19883c + m21541y();
                    while (this.f19883c < y2) {
                        list.add(Long.valueOf(m21540z()));
                    }
                    m21554b(y2);
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        /* renamed from: f */
        public final void m21548f(int i) throws IOException {
            m21558a(i);
            if ((i & 7) != 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: f */
        public void mo21333f(List<String> list) throws IOException {
            m21556a(list, false);
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: f */
        public boolean mo21334f() throws IOException {
            boolean z = false;
            m21553c(0);
            if (m21541y() != 0) {
                z = true;
            }
            return z;
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: g */
        public long mo21332g() throws IOException {
            m21553c(1);
            return m21543w();
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: g */
        public void mo21331g(List<Long> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6302f0) {
                C6302f0 f0Var = (C6302f0) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 0) {
                    do {
                        f0Var.m21536a(mo21312q());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = this.f19883c + m21541y();
                    while (this.f19883c < y) {
                        f0Var.m21536a(m21540z());
                    }
                    m21554b(y);
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 0) {
                    do {
                        list.add(Long.valueOf(mo21312q()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = this.f19883c + m21541y();
                    while (this.f19883c < y2) {
                        list.add(Long.valueOf(m21540z()));
                    }
                    m21554b(y2);
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: h */
        public int mo21330h() throws IOException {
            m21553c(0);
            return m21541y();
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: h */
        public void mo21329h(List<Long> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6302f0) {
                C6302f0 f0Var = (C6302f0) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 1) {
                    do {
                        f0Var.m21536a(mo21332g());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = m21541y();
                    m21548f(y);
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        f0Var.m21536a(m21542x());
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 1) {
                    do {
                        list.add(Long.valueOf(mo21332g()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = m21541y();
                    m21548f(y2);
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Long.valueOf(m21542x()));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: i */
        public int mo21328i() throws IOException {
            m21553c(0);
            return m21541y();
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: i */
        public void mo21327i(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6379x) {
                C6379x xVar = (C6379x) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 0) {
                    do {
                        xVar.mo21001g(mo21318n());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = this.f19883c + m21541y();
                    while (this.f19883c < y) {
                        xVar.mo21001g(m21541y());
                    }
                    m21554b(y);
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 0) {
                    do {
                        list.add(Integer.valueOf(mo21318n()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = this.f19883c + m21541y();
                    while (this.f19883c < y2) {
                        list.add(Integer.valueOf(m21541y()));
                    }
                    m21554b(y2);
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: j */
        public int mo21326j() throws IOException {
            m21553c(0);
            return AbstractC6327j.m21461f(m21541y());
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: j */
        public void mo21325j(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6379x) {
                C6379x xVar = (C6379x) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 0) {
                    do {
                        xVar.mo21001g(mo21328i());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = m21541y();
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        xVar.mo21001g(m21541y());
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 0) {
                    do {
                        list.add(Integer.valueOf(mo21328i()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = m21541y();
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Integer.valueOf(m21541y()));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: k */
        public long mo21324k() throws IOException {
            m21553c(0);
            return AbstractC6327j.m21469a(m21540z());
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: k */
        public void mo21323k(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6379x) {
                C6379x xVar = (C6379x) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 2) {
                    int y = m21541y();
                    m21549e(y);
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        xVar.mo21001g(m21544v());
                    }
                } else if (b == 5) {
                    do {
                        xVar.mo21001g(mo21336e());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 2) {
                    int y2 = m21541y();
                    m21549e(y2);
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Integer.valueOf(m21544v()));
                    }
                } else if (b2 == 5) {
                    do {
                        list.add(Integer.valueOf(mo21336e()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: l */
        public int mo21322l() throws IOException {
            if (m21547s()) {
                return MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            }
            int y = m21541y();
            this.f19885e = y;
            return y == this.f19886f ? MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT : WireFormat.m6841a(y);
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: l */
        public void mo21321l(List<Boolean> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6313g) {
                C6313g gVar = (C6313g) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 0) {
                    do {
                        gVar.m21500a(mo21334f());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = this.f19883c + m21541y();
                    while (this.f19883c < y) {
                        gVar.m21500a(m21541y() != 0);
                    }
                    m21554b(y);
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 0) {
                    do {
                        list.add(Boolean.valueOf(mo21334f()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = this.f19883c + m21541y();
                    while (this.f19883c < y2) {
                        list.add(Boolean.valueOf(m21541y() != 0));
                    }
                    m21554b(y2);
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: m */
        public ByteString mo21320m() throws IOException {
            m21553c(2);
            int y = m21541y();
            if (y == 0) {
                return ByteString.EMPTY;
            }
            m21558a(y);
            ByteString wrap = this.f19881a ? ByteString.wrap(this.f19882b, this.f19883c, y) : ByteString.copyFrom(this.f19882b, this.f19883c, y);
            this.f19883c += y;
            return wrap;
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: m */
        public void mo21319m(List<String> list) throws IOException {
            m21556a(list, true);
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: n */
        public int mo21318n() throws IOException {
            m21553c(0);
            return m21541y();
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: n */
        public void mo21317n(List<Float> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6375v) {
                C6375v vVar = (C6375v) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 2) {
                    int y = m21541y();
                    m21549e(y);
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        vVar.m21039a(Float.intBitsToFloat(m21544v()));
                    }
                } else if (b == 5) {
                    do {
                        vVar.m21039a(readFloat());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 2) {
                    int y2 = m21541y();
                    m21549e(y2);
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Float.valueOf(Float.intBitsToFloat(m21544v())));
                    }
                } else if (b2 == 5) {
                    do {
                        list.add(Float.valueOf(readFloat()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: o */
        public void mo21315o(List<ByteString> list) throws IOException {
            int i;
            if (WireFormat.m6839b(this.f19885e) == 2) {
                do {
                    list.add(mo21320m());
                    if (!m21547s()) {
                        i = this.f19883c;
                    } else {
                        return;
                    }
                } while (m21541y() == this.f19885e);
                this.f19883c = i;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: o */
        public boolean mo21316o() throws IOException {
            int i;
            if (m21547s() || (i = this.f19885e) == this.f19886f) {
                return false;
            }
            int b = WireFormat.m6839b(i);
            if (b == 0) {
                m21560C();
                return true;
            } else if (b == 1) {
                m21551d(8);
                return true;
            } else if (b == 2) {
                m21551d(m21541y());
                return true;
            } else if (b == 3) {
                m21561B();
                return true;
            } else if (b == 5) {
                m21551d(4);
                return true;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: p */
        public int mo21314p() throws IOException {
            m21553c(5);
            return m21545u();
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: p */
        public void mo21313p(List<Double> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6345m) {
                C6345m mVar = (C6345m) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 1) {
                    do {
                        mVar.m21258a(readDouble());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = m21541y();
                    m21548f(y);
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        mVar.m21258a(Double.longBitsToDouble(m21542x()));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 1) {
                    do {
                        list.add(Double.valueOf(readDouble()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = m21541y();
                    m21548f(y2);
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Double.valueOf(Double.longBitsToDouble(m21542x())));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: q */
        public long mo21312q() throws IOException {
            m21553c(0);
            return m21540z();
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: q */
        public void mo21311q(List<Long> list) throws IOException {
            int i;
            int i2;
            if (list instanceof C6302f0) {
                C6302f0 f0Var = (C6302f0) list;
                int b = WireFormat.m6839b(this.f19885e);
                if (b == 1) {
                    do {
                        f0Var.m21536a(mo21340d());
                        if (!m21547s()) {
                            i2 = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i2;
                } else if (b == 2) {
                    int y = m21541y();
                    m21548f(y);
                    int i3 = this.f19883c;
                    while (this.f19883c < i3 + y) {
                        f0Var.m21536a(m21542x());
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            } else {
                int b2 = WireFormat.m6839b(this.f19885e);
                if (b2 == 1) {
                    do {
                        list.add(Long.valueOf(mo21340d()));
                        if (!m21547s()) {
                            i = this.f19883c;
                        } else {
                            return;
                        }
                    } while (m21541y() == this.f19885e);
                    this.f19883c = i;
                } else if (b2 == 2) {
                    int y2 = m21541y();
                    m21548f(y2);
                    int i4 = this.f19883c;
                    while (this.f19883c < i4 + y2) {
                        list.add(Long.valueOf(m21542x()));
                    }
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        /* renamed from: r */
        public String mo21310r() throws IOException {
            return m21555a(true);
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        public double readDouble() throws IOException {
            m21553c(1);
            return Double.longBitsToDouble(m21543w());
        }

        @Override // p131c.p161d.p367h.AbstractC6284b1
        public float readFloat() throws IOException {
            m21553c(5);
            return Float.intBitsToFloat(m21545u());
        }

        /* renamed from: s */
        public final boolean m21547s() {
            return this.f19883c == this.f19884d;
        }

        /* renamed from: t */
        public final byte m21546t() throws IOException {
            int i = this.f19883c;
            if (i != this.f19884d) {
                byte[] bArr = this.f19882b;
                this.f19883c = i + 1;
                return bArr[i];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: u */
        public final int m21545u() throws IOException {
            m21558a(4);
            return m21544v();
        }

        /* renamed from: v */
        public final int m21544v() {
            int i = this.f19883c;
            byte[] bArr = this.f19882b;
            this.f19883c = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        /* renamed from: w */
        public final long m21543w() throws IOException {
            m21558a(8);
            return m21542x();
        }

        /* renamed from: x */
        public final long m21542x() {
            int i = this.f19883c;
            byte[] bArr = this.f19882b;
            this.f19883c = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        /* renamed from: y */
        public final int m21541y() throws IOException {
            int i;
            int i2 = this.f19883c;
            int i3 = this.f19884d;
            if (i3 != i2) {
                byte[] bArr = this.f19882b;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f19883c = i4;
                    return b;
                } else if (i3 - i4 < 9) {
                    return (int) m21562A();
                } else {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i = i8 ^ 16256;
                            i5 = i7;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                int i10 = i5 + 1;
                                byte b2 = bArr[i5];
                                int i11 = (i9 ^ (b2 << 28)) ^ 266354560;
                                i = i11;
                                i5 = i10;
                                if (b2 < 0) {
                                    int i12 = i10 + 1;
                                    i = i11;
                                    i5 = i12;
                                    if (bArr[i10] < 0) {
                                        int i13 = i12 + 1;
                                        i = i11;
                                        i5 = i13;
                                        if (bArr[i12] < 0) {
                                            int i14 = i13 + 1;
                                            i = i11;
                                            i5 = i14;
                                            if (bArr[i13] < 0) {
                                                int i15 = i14 + 1;
                                                i = i11;
                                                i5 = i15;
                                                if (bArr[i14] < 0) {
                                                    i5 = i15 + 1;
                                                    if (bArr[i15] >= 0) {
                                                        i = i11;
                                                    } else {
                                                        throw InvalidProtocolBufferException.malformedVarint();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.f19883c = i5;
                    return i;
                }
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        /* renamed from: z */
        public long m21540z() throws IOException {
            long j;
            long j2;
            long j3;
            int i;
            int i2 = this.f19883c;
            int i3 = this.f19884d;
            if (i3 != i2) {
                byte[] bArr = this.f19882b;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f19883c = i4;
                    return b;
                } else if (i3 - i4 < 9) {
                    return m21562A();
                } else {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            j = i8 ^ 16256;
                            i5 = i7;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                long j4 = i9;
                                int i10 = i5 + 1;
                                long j5 = j4 ^ (bArr[i5] << 28);
                                if (j5 >= 0) {
                                    j3 = 266354560;
                                    i5 = i10;
                                } else {
                                    int i11 = i10 + 1;
                                    long j6 = j5 ^ (bArr[i10] << 35);
                                    if (j6 < 0) {
                                        j2 = -34093383808L;
                                        i5 = i11;
                                    } else {
                                        i5 = i11 + 1;
                                        j5 = j6 ^ (bArr[i11] << 42);
                                        if (j5 >= 0) {
                                            j3 = 4363953127296L;
                                        } else {
                                            int i12 = i5 + 1;
                                            j6 = j5 ^ (bArr[i5] << 49);
                                            if (j6 < 0) {
                                                j2 = -558586000294016L;
                                                i5 = i12;
                                            } else {
                                                i5 = i12 + 1;
                                                j = (j6 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                                if (j < 0) {
                                                    i5++;
                                                    if (bArr[i5] < 0) {
                                                        throw InvalidProtocolBufferException.malformedVarint();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    j = j6 ^ j2;
                                }
                                j = j3 ^ j5;
                            }
                        }
                        this.f19883c = i5;
                        return j;
                    }
                    j = i;
                    this.f19883c = i5;
                    return j;
                }
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }
    }

    public AbstractC6299f() {
    }

    public /* synthetic */ AbstractC6299f(C6300a aVar) {
        this();
    }

    /* renamed from: a */
    public static AbstractC6299f m21563a(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return new C6301b(byteBuffer, z);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }
}
