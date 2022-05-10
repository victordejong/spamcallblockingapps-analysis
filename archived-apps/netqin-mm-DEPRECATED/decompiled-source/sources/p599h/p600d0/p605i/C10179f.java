package p599h.p600d0.p605i;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.http2.ErrorCode;
import okio.ByteString;
import p599h.p600d0.C10109c;
import p599h.p600d0.p605i.C10158b;
import p610i.AbstractC10264e;
import p610i.AbstractC10281q;
import p610i.C10260c;
import p610i.C10282r;
/* renamed from: h.d0.i.f */
/* loaded from: classes2-dex2jar.jar:h/d0/i/f.class */
public final class C10179f implements Closeable {

    /* renamed from: e */
    public static final Logger f37593e = Logger.getLogger(C10161c.class.getName());

    /* renamed from: a */
    public final AbstractC10264e f37594a;

    /* renamed from: b */
    public final C10180a f37595b;

    /* renamed from: c */
    public final boolean f37596c;

    /* renamed from: d */
    public final C10158b.C10159a f37597d;

    /* renamed from: h.d0.i.f$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/f$a.class */
    public static final class C10180a implements AbstractC10281q {

        /* renamed from: a */
        public final AbstractC10264e f37598a;

        /* renamed from: b */
        public int f37599b;

        /* renamed from: c */
        public byte f37600c;

        /* renamed from: d */
        public int f37601d;

        /* renamed from: e */
        public int f37602e;

        /* renamed from: f */
        public short f37603f;

        public C10180a(AbstractC10264e eVar) {
            this.f37598a = eVar;
        }

        /* renamed from: a */
        public final void m1185a() throws IOException {
            int i = this.f37601d;
            int a = C10179f.m1195a(this.f37598a);
            this.f37602e = a;
            this.f37599b = a;
            byte readByte = (byte) (this.f37598a.readByte() & 255);
            this.f37600c = (byte) (this.f37598a.readByte() & 255);
            if (C10179f.f37593e.isLoggable(Level.FINE)) {
                C10179f.f37593e.fine(C10161c.m1245a(true, this.f37601d, this.f37599b, readByte, this.f37600c));
            }
            int readInt = this.f37598a.readInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f37601d = readInt;
            if (readByte != 9) {
                C10161c.m1244b("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
                throw null;
            } else if (readInt != i) {
                C10161c.m1244b("TYPE_CONTINUATION streamId changed", new Object[0]);
                throw null;
            }
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            while (true) {
                int i = this.f37602e;
                if (i == 0) {
                    this.f37598a.skip(this.f37603f);
                    this.f37603f = (short) 0;
                    if ((this.f37600c & 4) != 0) {
                        return -1L;
                    }
                    m1185a();
                } else {
                    long b = this.f37598a.mo704b(cVar, Math.min(j, i));
                    if (b == -1) {
                        return -1L;
                    }
                    this.f37602e = (int) (this.f37602e - b);
                    return b;
                }
            }
        }

        @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: f0 */
        public C10282r mo703f0() {
            return this.f37598a.mo703f0();
        }
    }

    /* renamed from: h.d0.i.f$b */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/f$b.class */
    public interface AbstractC10181b {
        /* renamed from: a */
        void mo1184a();

        /* renamed from: a */
        void mo1183a(int i, int i2, int i3, boolean z);

        /* renamed from: a */
        void mo1182a(int i, int i2, List<C10156a> list) throws IOException;

        /* renamed from: a */
        void mo1181a(int i, long j);

        /* renamed from: a */
        void mo1180a(int i, ErrorCode errorCode);

        /* renamed from: a */
        void mo1179a(int i, ErrorCode errorCode, ByteString byteString);

        /* renamed from: a */
        void mo1178a(boolean z, int i, int i2);

        /* renamed from: a */
        void mo1177a(boolean z, int i, int i2, List<C10156a> list);

        /* renamed from: a */
        void mo1176a(boolean z, int i, AbstractC10264e eVar, int i2) throws IOException;

        /* renamed from: a */
        void mo1175a(boolean z, C10191k kVar);
    }

    public C10179f(AbstractC10264e eVar, boolean z) {
        this.f37594a = eVar;
        this.f37596c = z;
        C10180a aVar = new C10180a(eVar);
        this.f37595b = aVar;
        this.f37597d = new C10158b.C10159a(4096, aVar);
    }

    /* renamed from: a */
    public static int m1200a(int i, byte b, short s) throws IOException {
        int i2 = i;
        if ((b & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        C10161c.m1244b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
        throw null;
    }

    /* renamed from: a */
    public static int m1195a(AbstractC10264e eVar) throws IOException {
        return (eVar.readByte() & 255) | ((eVar.readByte() & 255) << 16) | ((eVar.readByte() & 255) << 8);
    }

    /* renamed from: a */
    public final List<C10156a> m1199a(int i, short s, byte b, int i2) throws IOException {
        C10180a aVar = this.f37595b;
        aVar.f37602e = i;
        aVar.f37599b = i;
        aVar.f37603f = s;
        aVar.f37600c = b;
        aVar.f37601d = i2;
        this.f37597d.m1260f();
        return this.f37597d.m1266c();
    }

    /* renamed from: a */
    public void m1198a(AbstractC10181b bVar) throws IOException {
        if (!this.f37596c) {
            ByteString a = this.f37594a.mo725a(C10161c.f37517a.size());
            if (f37593e.isLoggable(Level.FINE)) {
                f37593e.fine(C10109c.m1452a("<< CONNECTION %s", a.hex()));
            }
            if (!C10161c.f37517a.equals(a)) {
                C10161c.m1244b("Expected a connection header but was %s", a.utf8());
                throw null;
            }
        } else if (!m1194a(true, bVar)) {
            C10161c.m1244b("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
    }

    /* renamed from: a */
    public final void m1197a(AbstractC10181b bVar, int i) throws IOException {
        int readInt = this.f37594a.readInt();
        bVar.mo1183a(i, readInt & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, (this.f37594a.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }

    /* renamed from: a */
    public final void m1196a(AbstractC10181b bVar, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 != 0) {
            boolean z = true;
            boolean z2 = (b & 1) != 0;
            if ((b & 32) == 0) {
                z = false;
            }
            if (!z) {
                if ((b & 8) != 0) {
                    s = (short) (this.f37594a.readByte() & 255);
                }
                bVar.mo1176a(z2, i2, this.f37594a, m1200a(i, b, s));
                this.f37594a.skip(s);
                return;
            }
            C10161c.m1244b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            throw null;
        }
        C10161c.m1244b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        throw null;
    }

    /* renamed from: a */
    public boolean m1194a(boolean z, AbstractC10181b bVar) throws IOException {
        try {
            this.f37594a.mo715g(9L);
            int a = m1195a(this.f37594a);
            if (a < 0 || a > 16384) {
                C10161c.m1244b("FRAME_SIZE_ERROR: %s", Integer.valueOf(a));
                throw null;
            }
            byte readByte = (byte) (this.f37594a.readByte() & 255);
            if (!z || readByte == 4) {
                byte readByte2 = (byte) (this.f37594a.readByte() & 255);
                int readInt = this.f37594a.readInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                if (f37593e.isLoggable(Level.FINE)) {
                    f37593e.fine(C10161c.m1245a(true, readInt, a, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        m1196a(bVar, a, readByte2, readInt);
                        return true;
                    case 1:
                        m1192c(bVar, a, readByte2, readInt);
                        return true;
                    case 2:
                        m1190e(bVar, a, readByte2, readInt);
                        return true;
                    case 3:
                        m1188g(bVar, a, readByte2, readInt);
                        return true;
                    case 4:
                        m1187h(bVar, a, readByte2, readInt);
                        return true;
                    case 5:
                        m1189f(bVar, a, readByte2, readInt);
                        return true;
                    case 6:
                        m1191d(bVar, a, readByte2, readInt);
                        return true;
                    case 7:
                        m1193b(bVar, a, readByte2, readInt);
                        return true;
                    case 8:
                        m1186i(bVar, a, readByte2, readInt);
                        return true;
                    default:
                        this.f37594a.skip(a);
                        return true;
                }
            } else {
                C10161c.m1244b("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
                throw null;
            }
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: b */
    public final void m1193b(AbstractC10181b bVar, int i, byte b, int i2) throws IOException {
        if (i < 8) {
            C10161c.m1244b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            throw null;
        } else if (i2 == 0) {
            int readInt = this.f37594a.readInt();
            int readInt2 = this.f37594a.readInt();
            int i3 = i - 8;
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt2);
            if (fromHttp2 != null) {
                ByteString byteString = ByteString.EMPTY;
                if (i3 > 0) {
                    byteString = this.f37594a.mo725a(i3);
                }
                bVar.mo1179a(readInt, fromHttp2, byteString);
                return;
            }
            C10161c.m1244b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            throw null;
        } else {
            C10161c.m1244b("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        }
    }

    /* renamed from: c */
    public final void m1192c(AbstractC10181b bVar, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 != 0) {
            boolean z = (b & 1) != 0;
            if ((b & 8) != 0) {
                s = (short) (this.f37594a.readByte() & 255);
            }
            int i3 = i;
            if ((b & 32) != 0) {
                m1197a(bVar, i2);
                i3 = i - 5;
            }
            bVar.mo1177a(z, i2, -1, m1199a(m1200a(i3, b, s), s, b, i2));
            return;
        }
        C10161c.m1244b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f37594a.close();
    }

    /* renamed from: d */
    public final void m1191d(AbstractC10181b bVar, int i, byte b, int i2) throws IOException {
        boolean z = false;
        if (i != 8) {
            C10161c.m1244b("TYPE_PING length != 8: %s", Integer.valueOf(i));
            throw null;
        } else if (i2 == 0) {
            int readInt = this.f37594a.readInt();
            int readInt2 = this.f37594a.readInt();
            if ((b & 1) != 0) {
                z = true;
            }
            bVar.mo1178a(z, readInt, readInt2);
        } else {
            C10161c.m1244b("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        }
    }

    /* renamed from: e */
    public final void m1190e(AbstractC10181b bVar, int i, byte b, int i2) throws IOException {
        if (i != 5) {
            C10161c.m1244b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
            throw null;
        } else if (i2 != 0) {
            m1197a(bVar, i2);
        } else {
            C10161c.m1244b("TYPE_PRIORITY streamId == 0", new Object[0]);
            throw null;
        }
    }

    /* renamed from: f */
    public final void m1189f(AbstractC10181b bVar, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 != 0) {
            if ((b & 8) != 0) {
                s = (short) (this.f37594a.readByte() & 255);
            }
            bVar.mo1182a(i2, this.f37594a.readInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, m1199a(m1200a(i - 4, b, s), s, b, i2));
            return;
        }
        C10161c.m1244b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        throw null;
    }

    /* renamed from: g */
    public final void m1188g(AbstractC10181b bVar, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            C10161c.m1244b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
            throw null;
        } else if (i2 != 0) {
            int readInt = this.f37594a.readInt();
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt);
            if (fromHttp2 != null) {
                bVar.mo1180a(i2, fromHttp2);
            } else {
                C10161c.m1244b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
                throw null;
            }
        } else {
            C10161c.m1244b("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        }
    }

    /* renamed from: h */
    public final void m1187h(AbstractC10181b bVar, int i, byte b, int i2) throws IOException {
        int i3;
        if (i2 != 0) {
            C10161c.m1244b("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        } else if ((b & 1) != 0) {
            if (i == 0) {
                bVar.mo1184a();
            } else {
                C10161c.m1244b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
        } else if (i % 6 == 0) {
            C10191k kVar = new C10191k();
            for (int i4 = 0; i4 < i; i4 += 6) {
                int readShort = this.f37594a.readShort() & 65535;
                int readInt = this.f37594a.readInt();
                if (readShort == 2) {
                    i3 = readShort;
                    if (readInt == 0) {
                        continue;
                    } else if (readInt == 1) {
                        i3 = readShort;
                    } else {
                        C10161c.m1244b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        throw null;
                    }
                } else if (readShort == 3) {
                    i3 = 4;
                } else if (readShort == 4) {
                    i3 = 7;
                    if (readInt < 0) {
                        C10161c.m1244b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        throw null;
                    }
                } else if (readShort != 5) {
                    i3 = readShort;
                } else if (readInt < 16384 || readInt > 16777215) {
                    C10161c.m1244b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                    throw null;
                } else {
                    i3 = readShort;
                }
                kVar.m1121a(i3, readInt);
            }
            bVar.mo1175a(false, kVar);
        } else {
            C10161c.m1244b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            throw null;
        }
    }

    /* renamed from: i */
    public final void m1186i(AbstractC10181b bVar, int i, byte b, int i2) throws IOException {
        if (i == 4) {
            long readInt = this.f37594a.readInt() & 2147483647L;
            if (readInt != 0) {
                bVar.mo1181a(i2, readInt);
            } else {
                C10161c.m1244b("windowSizeIncrement was 0", Long.valueOf(readInt));
                throw null;
            }
        } else {
            C10161c.m1244b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            throw null;
        }
    }
}
