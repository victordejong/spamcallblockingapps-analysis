package com.b.a.a.b;

import b.e;
import b.f;
import b.q;
import b.r;
import com.asus.updatesdk.BuildConfig;
import com.b.a.a.b.b;
import com.b.a.a.b.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/g.class */
public final class g implements q {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f3235a = Logger.getLogger(b.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final f f3236b = f.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/g$a.class */
    public static final class a implements q {

        /* renamed from: a  reason: collision with root package name */
        int f3237a;

        /* renamed from: b  reason: collision with root package name */
        byte f3238b;
        int c;
        int d;
        short e;
        private final e f;

        public a(e eVar) {
            this.f = eVar;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // b.q
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long a(b.c r8, long r9) {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.b.g.a.a(b.c, long):long");
        }

        @Override // b.q
        public final r a() {
            return this.f.a();
        }

        @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/g$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f3239a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f3240b = new String[64];
        private static final String[] c = new String[256];

        static {
            int i;
            for (int i2 = 0; i2 < c.length; i2++) {
                c[i2] = String.format("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
            }
            f3240b[0] = BuildConfig.FLAVOR;
            f3240b[1] = "END_STREAM";
            int[] iArr = {1};
            f3240b[8] = "PADDED";
            for (int i3 = 0; i3 <= 0; i3++) {
                f3240b[iArr[i3] | 8] = f3240b[i] + "|PADDED";
            }
            f3240b[4] = "END_HEADERS";
            f3240b[32] = "PRIORITY";
            f3240b[36] = "END_HEADERS|PRIORITY";
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = new int[]{4, 32, 36}[i4];
                for (int i6 = 0; i6 <= 0; i6++) {
                    int i7 = iArr[i6];
                    f3240b[i7 | i5] = f3240b[i7] + '|' + f3240b[i5];
                    f3240b[i7 | i5 | 8] = f3240b[i7] + '|' + f3240b[i5] + "|PADDED";
                }
            }
            for (int i8 = 0; i8 < f3240b.length; i8++) {
                if (f3240b[i8] == null) {
                    f3240b[i8] = c[i8];
                }
            }
        }

        b() {
        }

        static String a(boolean z, int i, int i2, byte b2, byte b3) {
            String str;
            String format = b2 < f3239a.length ? f3239a[b2] : String.format("0x%02x", Byte.valueOf(b2));
            if (b3 != 0) {
                switch (b2) {
                    case 2:
                    case 3:
                    case 7:
                    case 8:
                        str = c[b3];
                        break;
                    case 4:
                    case 6:
                        if (b3 != 1) {
                            str = c[b3];
                            break;
                        } else {
                            str = "ACK";
                            break;
                        }
                    case 5:
                    default:
                        String str2 = b3 < f3240b.length ? f3240b[b3] : c[b3];
                        if (b2 == 5 && (b3 & 4) != 0) {
                            str = str2.replace("HEADERS", "PUSH_PROMISE");
                            break;
                        } else {
                            str = str2;
                            if (b2 == 0) {
                                str = str2;
                                if ((b3 & 32) != 0) {
                                    str = str2.replace("PRIORITY", "COMPRESSED");
                                    break;
                                }
                            }
                        }
                        break;
                }
            } else {
                str = BuildConfig.FLAVOR;
            }
            return String.format("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), format, str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/g$c.class */
    static final class c implements com.b.a.a.b.b {

        /* renamed from: a  reason: collision with root package name */
        final f.a f3241a;

        /* renamed from: b  reason: collision with root package name */
        private final e f3242b;
        private final a c;
        private final boolean d;

        c(e eVar, boolean z) {
            this.f3242b = eVar;
            this.d = z;
            this.c = new a(this.f3242b);
            this.f3241a = new f.a(this.c);
        }

        private List<com.b.a.a.b.d> a(int i, short s, byte b2, int i2) {
            a aVar = this.c;
            this.c.d = i;
            aVar.f3237a = i;
            this.c.e = s;
            this.c.f3238b = b2;
            this.c.c = i2;
            f.a aVar2 = this.f3241a;
            while (!aVar2.f3233b.d()) {
                int e = aVar2.f3233b.e() & 255;
                if (e == 128) {
                    throw new IOException("index == 0");
                } else if ((e & 128) == 128) {
                    int a2 = aVar2.a(e, 127) - 1;
                    if (f.a.c(a2)) {
                        aVar2.f3232a.add(f.f3230a[a2]);
                    } else {
                        int a3 = aVar2.a(a2 - f.f3230a.length);
                        if (a3 < 0 || a3 > aVar2.e.length - 1) {
                            throw new IOException("Header index too large " + (a2 + 1));
                        }
                        aVar2.f3232a.add(aVar2.e[a3]);
                    }
                } else if (e == 64) {
                    aVar2.a(new com.b.a.a.b.d(f.a(aVar2.b()), aVar2.b()));
                } else if ((e & 64) == 64) {
                    aVar2.a(new com.b.a.a.b.d(aVar2.b(aVar2.a(e, 63) - 1), aVar2.b()));
                } else if ((e & 32) == 32) {
                    aVar2.d = aVar2.a(e, 31);
                    if (aVar2.d < 0 || aVar2.d > aVar2.c) {
                        throw new IOException("Invalid dynamic table size update " + aVar2.d);
                    }
                    aVar2.a();
                } else if (e == 16 || e == 0) {
                    aVar2.f3232a.add(new com.b.a.a.b.d(f.a(aVar2.b()), aVar2.b()));
                } else {
                    aVar2.f3232a.add(new com.b.a.a.b.d(aVar2.b(aVar2.a(e, 15) - 1), aVar2.b()));
                }
            }
            f.a aVar3 = this.f3241a;
            ArrayList arrayList = new ArrayList(aVar3.f3232a);
            aVar3.f3232a.clear();
            return arrayList;
        }

        private void b() {
            this.f3242b.g();
            this.f3242b.e();
        }

        @Override // com.b.a.a.b.b
        public final void a() {
            if (!this.d) {
                b.f d = this.f3242b.d(g.f3236b.c.length);
                if (g.f3235a.isLoggable(Level.FINE)) {
                    g.f3235a.fine(String.format("<< CONNECTION %s", d.b()));
                }
                if (!g.f3236b.equals(d)) {
                    throw g.c("Expected a connection header but was %s", d.a());
                }
            }
        }

        @Override // com.b.a.a.b.b
        public final boolean a(b.a aVar) {
            boolean z;
            int a2;
            short s = 0;
            boolean z2 = false;
            short s2 = 0;
            try {
                this.f3242b.a(9L);
                a2 = g.a(this.f3242b);
            } catch (IOException e) {
                z = false;
            }
            if (a2 < 0 || a2 > 16384) {
                throw g.c("FRAME_SIZE_ERROR: %s", Integer.valueOf(a2));
            }
            byte e2 = (byte) (this.f3242b.e() & 255);
            byte e3 = (byte) (this.f3242b.e() & 255);
            int g = this.f3242b.g() & Integer.MAX_VALUE;
            if (g.f3235a.isLoggable(Level.FINE)) {
                g.f3235a.fine(b.a(true, g, a2, e2, e3));
            }
            switch (e2) {
                case 0:
                    boolean z3 = (e3 & 1) != 0;
                    if (!((e3 & 32) != 0)) {
                        if ((e3 & 8) != 0) {
                            s2 = (short) (this.f3242b.e() & 255);
                        }
                        aVar.a(z3, g, this.f3242b, g.a(a2, e3, s2));
                        this.f3242b.g(s2);
                        z = true;
                        break;
                    } else {
                        throw g.c("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                    }
                case 1:
                    if (g != 0) {
                        boolean z4 = (e3 & 1) != 0;
                        short e4 = (e3 & 8) != 0 ? (short) (this.f3242b.e() & 255) : (short) 0;
                        int i = a2;
                        if ((e3 & 32) != 0) {
                            b();
                            i = a2 - 5;
                        }
                        aVar.a(false, z4, g, a(g.a(i, e3, e4), e4, e3, g), e.HTTP_20_HEADERS);
                        z = true;
                        break;
                    } else {
                        throw g.c("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                    }
                case 2:
                    if (a2 != 5) {
                        throw g.c("TYPE_PRIORITY length: %d != 5", Integer.valueOf(a2));
                    } else if (g != 0) {
                        b();
                        z = true;
                        break;
                    } else {
                        throw g.c("TYPE_PRIORITY streamId == 0", new Object[0]);
                    }
                case 3:
                    if (a2 != 4) {
                        throw g.c("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(a2));
                    } else if (g != 0) {
                        int g2 = this.f3242b.g();
                        com.b.a.a.b.a b2 = com.b.a.a.b.a.b(g2);
                        if (b2 != null) {
                            aVar.a(g, b2);
                            z = true;
                            break;
                        } else {
                            throw g.c("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(g2));
                        }
                    } else {
                        throw g.c("TYPE_RST_STREAM streamId == 0", new Object[0]);
                    }
                case 4:
                    if (g != 0) {
                        throw g.c("TYPE_SETTINGS streamId != 0", new Object[0]);
                    } else if ((e3 & 1) != 0) {
                        z = true;
                        if (a2 != 0) {
                            throw g.c("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                        }
                    } else if (a2 % 6 == 0) {
                        m mVar = new m();
                        for (int i2 = 0; i2 < a2; i2 += 6) {
                            short f = this.f3242b.f();
                            int g3 = this.f3242b.g();
                            short s3 = f;
                            switch (f) {
                                case 1:
                                case 6:
                                    break;
                                case 2:
                                    s3 = f;
                                    if (g3 != 0) {
                                        s3 = f;
                                        if (g3 == 1) {
                                            break;
                                        } else {
                                            throw g.c("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                        }
                                    } else {
                                        continue;
                                    }
                                case 3:
                                    s3 = 4;
                                    break;
                                case 4:
                                    s3 = 7;
                                    if (g3 >= 0) {
                                        break;
                                    } else {
                                        throw g.c("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                    }
                                case 5:
                                    if (g3 >= 16384) {
                                        s3 = f;
                                        if (g3 <= 16777215) {
                                            break;
                                        }
                                    }
                                    throw g.c("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(g3));
                                default:
                                    throw g.c("PROTOCOL_ERROR invalid settings id: %s", Short.valueOf(f));
                            }
                            mVar.a(s3, 0, g3);
                        }
                        aVar.a(false, mVar);
                        z = true;
                        if (mVar.a() >= 0) {
                            f.a aVar2 = this.f3241a;
                            int a3 = mVar.a();
                            aVar2.c = a3;
                            aVar2.d = a3;
                            aVar2.a();
                            z = true;
                            break;
                        }
                    } else {
                        throw g.c("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(a2));
                    }
                    break;
                case 5:
                    if (g != 0) {
                        if ((e3 & 8) != 0) {
                            s = (short) (this.f3242b.e() & 255);
                        }
                        aVar.a(this.f3242b.g() & Integer.MAX_VALUE, a(g.a(a2 - 4, e3, s), s, e3, g));
                        z = true;
                        break;
                    } else {
                        throw g.c("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
                    }
                case 6:
                    if (a2 != 8) {
                        throw g.c("TYPE_PING length != 8: %s", Integer.valueOf(a2));
                    } else if (g == 0) {
                        int g4 = this.f3242b.g();
                        int g5 = this.f3242b.g();
                        if ((e3 & 1) != 0) {
                            z2 = true;
                        }
                        aVar.a(z2, g4, g5);
                        z = true;
                        break;
                    } else {
                        throw g.c("TYPE_PING streamId != 0", new Object[0]);
                    }
                case 7:
                    if (a2 < 8) {
                        throw g.c("TYPE_GOAWAY length < 8: %s", Integer.valueOf(a2));
                    } else if (g == 0) {
                        int g6 = this.f3242b.g();
                        int g7 = this.f3242b.g();
                        int i3 = a2 - 8;
                        if (com.b.a.a.b.a.b(g7) != null) {
                            b.f fVar = b.f.f321b;
                            if (i3 > 0) {
                                fVar = this.f3242b.d(i3);
                            }
                            aVar.a(g6, fVar);
                            z = true;
                            break;
                        } else {
                            throw g.c("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(g7));
                        }
                    } else {
                        throw g.c("TYPE_GOAWAY streamId != 0", new Object[0]);
                    }
                case 8:
                    if (a2 == 4) {
                        long g8 = this.f3242b.g() & 2147483647L;
                        if (g8 != 0) {
                            aVar.a(g, g8);
                            z = true;
                            break;
                        } else {
                            throw g.c("windowSizeIncrement was 0", Long.valueOf(g8));
                        }
                    } else {
                        throw g.c("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(a2));
                    }
                default:
                    this.f3242b.g(a2);
                    z = true;
                    break;
            }
            return z;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f3242b.close();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/g$d.class */
    static final class d implements com.b.a.a.b.c {

        /* renamed from: a  reason: collision with root package name */
        private final b.d f3243a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f3244b;
        private final b.c c = new b.c();
        private final f.b d = new f.b(this.c);
        private int e = 16384;
        private boolean f;

        d(b.d dVar, boolean z) {
            this.f3243a = dVar;
            this.f3244b = z;
        }

        private void a(int i, int i2, byte b2, byte b3) {
            if (g.f3235a.isLoggable(Level.FINE)) {
                g.f3235a.fine(b.a(false, i, i2, b2, b3));
            }
            if (i2 > this.e) {
                throw g.b("FRAME_SIZE_ERROR length > %d: %d", new Object[]{Integer.valueOf(this.e), Integer.valueOf(i2)});
            } else if ((Integer.MIN_VALUE & i) != 0) {
                throw g.b("reserved bit set: %s", new Object[]{Integer.valueOf(i)});
            } else {
                g.a(this.f3243a, i2);
                this.f3243a.g(b2 & 255);
                this.f3243a.g(b3 & 255);
                this.f3243a.e(Integer.MAX_VALUE & i);
            }
        }

        private void b(int i, long j) {
            while (j > 0) {
                int min = (int) Math.min(this.e, j);
                j -= min;
                a(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
                this.f3243a.a_(this.c, min);
            }
        }

        @Override // com.b.a.a.b.c
        public final void a() {
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                } else if (this.f3244b) {
                    if (g.f3235a.isLoggable(Level.FINE)) {
                        g.f3235a.fine(String.format(">> CONNECTION %s", g.f3236b.b()));
                    }
                    this.f3243a.b(g.f3236b.d());
                    this.f3243a.flush();
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(int i, long j) {
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                } else if (j == 0 || j > 2147483647L) {
                    throw g.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[]{Long.valueOf(j)});
                } else {
                    a(i, 4, (byte) 8, (byte) 0);
                    this.f3243a.e((int) j);
                    this.f3243a.flush();
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(int i, com.b.a.a.b.a aVar) {
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                } else if (aVar.t == -1) {
                    throw new IllegalArgumentException();
                } else {
                    a(i, 4, (byte) 3, (byte) 0);
                    this.f3243a.e(aVar.s);
                    this.f3243a.flush();
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(int i, com.b.a.a.b.a aVar, byte[] bArr) {
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                } else if (aVar.s == -1) {
                    throw g.b("errorCode.httpCode == -1", new Object[0]);
                } else {
                    a(0, bArr.length + 8, (byte) 7, (byte) 0);
                    this.f3243a.e(i);
                    this.f3243a.e(aVar.s);
                    if (bArr.length > 0) {
                        this.f3243a.b(bArr);
                    }
                    this.f3243a.flush();
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(m mVar) {
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                }
                int i = this.e;
                if ((mVar.f3257a & 32) != 0) {
                    i = mVar.d[5];
                }
                this.e = i;
                a(0, 0, (byte) 4, (byte) 1);
                this.f3243a.flush();
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(boolean z, int i, int i2) {
            byte b2 = 0;
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                }
                if (z) {
                    b2 = 1;
                }
                a(0, 8, (byte) 6, b2);
                this.f3243a.e(i);
                this.f3243a.e(i2);
                this.f3243a.flush();
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(boolean z, int i, b.c cVar, int i2) {
            byte b2 = 0;
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                }
                if (z) {
                    b2 = 1;
                }
                a(i, i2, (byte) 0, b2);
                if (i2 > 0) {
                    this.f3243a.a_(cVar, i2);
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void a(boolean z, int i, List<com.b.a.a.b.d> list) {
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                } else if (this.f) {
                    throw new IOException("closed");
                } else if (this.c.f318b != 0) {
                    throw new IllegalStateException();
                } else {
                    this.d.a(list);
                    long j = this.c.f318b;
                    int min = (int) Math.min(this.e, j);
                    byte b2 = j == ((long) min) ? (byte) 4 : (byte) 0;
                    byte b3 = b2;
                    if (z) {
                        b3 = (byte) (b2 | 1);
                    }
                    a(i, min, (byte) 1, b3);
                    this.f3243a.a_(this.c, min);
                    if (j > min) {
                        b(i, j - min);
                    }
                }
            }
        }

        @Override // com.b.a.a.b.c
        public final void b() {
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                }
                this.f3243a.flush();
            }
        }

        @Override // com.b.a.a.b.c
        public final void b(m mVar) {
            int i = 0;
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                }
                a(0, Integer.bitCount(mVar.f3257a) * 6, (byte) 4, (byte) 0);
                while (i < 10) {
                    if (mVar.a(i)) {
                        this.f3243a.f(i == 4 ? 3 : i == 7 ? 4 : i);
                        this.f3243a.e(mVar.d[i]);
                    }
                    i++;
                }
                this.f3243a.flush();
            }
        }

        @Override // com.b.a.a.b.c
        public final int c() {
            return this.e;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (this) {
                this.f = true;
                this.f3243a.close();
            }
        }
    }

    static /* synthetic */ int a(int i, byte b2, short s) {
        int i2 = i;
        if ((b2 & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        throw c("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
    }

    static /* synthetic */ int a(e eVar) {
        return ((eVar.e() & 255) << 16) | ((eVar.e() & 255) << 8) | (eVar.e() & 255);
    }

    static /* synthetic */ void a(b.d dVar, int i) {
        dVar.g((i >>> 16) & 255);
        dVar.g((i >>> 8) & 255);
        dVar.g(i & 255);
    }

    static /* synthetic */ IllegalArgumentException b(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IOException c(String str, Object... objArr) {
        throw new IOException(String.format(str, objArr));
    }

    @Override // com.b.a.a.b.q
    public final com.b.a.a.b.b a(e eVar, boolean z) {
        return new c(eVar, z);
    }

    @Override // com.b.a.a.b.q
    public final com.b.a.a.b.c a(b.d dVar, boolean z) {
        return new d(dVar, z);
    }
}
