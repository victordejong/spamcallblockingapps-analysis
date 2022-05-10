package p530d.p531a.p533w0.p534o.p535f;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.ByteString;
import p610i.AbstractC10264e;
import p610i.AbstractC10281q;
import p610i.C10260c;
import p610i.C10270k;
/* renamed from: d.a.w0.o.f.d */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/d.class */
public final class C9602d {

    /* renamed from: a */
    public static final ByteString f36638a = ByteString.encodeUtf8(":");

    /* renamed from: b */
    public static final C9601c[] f36639b = {new C9601c(C9601c.f36634h, ""), new C9601c(C9601c.f36631e, "GET"), new C9601c(C9601c.f36631e, "POST"), new C9601c(C9601c.f36632f, "/"), new C9601c(C9601c.f36632f, "/index.html"), new C9601c(C9601c.f36633g, "http"), new C9601c(C9601c.f36633g, "https"), new C9601c(C9601c.f36630d, "200"), new C9601c(C9601c.f36630d, "204"), new C9601c(C9601c.f36630d, "206"), new C9601c(C9601c.f36630d, "304"), new C9601c(C9601c.f36630d, "400"), new C9601c(C9601c.f36630d, "404"), new C9601c(C9601c.f36630d, "500"), new C9601c("accept-charset", ""), new C9601c("accept-encoding", "gzip, deflate"), new C9601c("accept-language", ""), new C9601c("accept-ranges", ""), new C9601c("accept", ""), new C9601c("access-control-allow-origin", ""), new C9601c("age", ""), new C9601c("allow", ""), new C9601c("authorization", ""), new C9601c("cache-control", ""), new C9601c("content-disposition", ""), new C9601c("content-encoding", ""), new C9601c("content-language", ""), new C9601c("content-length", ""), new C9601c("content-location", ""), new C9601c("content-range", ""), new C9601c("content-type", ""), new C9601c("cookie", ""), new C9601c("date", ""), new C9601c("etag", ""), new C9601c("expect", ""), new C9601c("expires", ""), new C9601c("from", ""), new C9601c("host", ""), new C9601c("if-match", ""), new C9601c("if-modified-since", ""), new C9601c("if-none-match", ""), new C9601c("if-range", ""), new C9601c("if-unmodified-since", ""), new C9601c("last-modified", ""), new C9601c("link", ""), new C9601c("location", ""), new C9601c("max-forwards", ""), new C9601c("proxy-authenticate", ""), new C9601c("proxy-authorization", ""), new C9601c("range", ""), new C9601c("referer", ""), new C9601c("refresh", ""), new C9601c("retry-after", ""), new C9601c("server", ""), new C9601c("set-cookie", ""), new C9601c("strict-transport-security", ""), new C9601c("transfer-encoding", ""), new C9601c("user-agent", ""), new C9601c("vary", ""), new C9601c("via", ""), new C9601c("www-authenticate", "")};

    /* renamed from: c */
    public static final Map<ByteString, Integer> f36640c = m2263d();

    /* renamed from: d.a.w0.o.f.d$a */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/d$a.class */
    public static final class C9603a {

        /* renamed from: a */
        public final List<C9601c> f36641a;

        /* renamed from: b */
        public final AbstractC10264e f36642b;

        /* renamed from: c */
        public int f36643c;

        /* renamed from: d */
        public int f36644d;

        /* renamed from: e */
        public C9601c[] f36645e;

        /* renamed from: f */
        public int f36646f;

        /* renamed from: g */
        public int f36647g;

        /* renamed from: h */
        public int f36648h;

        public C9603a(int i, int i2, AbstractC10281q qVar) {
            this.f36641a = new ArrayList();
            C9601c[] cVarArr = new C9601c[8];
            this.f36645e = cVarArr;
            this.f36646f = cVarArr.length - 1;
            this.f36647g = 0;
            this.f36648h = 0;
            this.f36643c = i;
            this.f36644d = i2;
            this.f36642b = C10270k.m753a(qVar);
        }

        public C9603a(int i, AbstractC10281q qVar) {
            this(i, i, qVar);
        }

        /* renamed from: a */
        public final int m2261a(int i) {
            return this.f36646f + 1 + i;
        }

        /* renamed from: a */
        public int m2260a(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int d = m2254d();
                if ((d & 128) == 0) {
                    return i2 + (d << i4);
                }
                i2 += (d & 127) << i4;
                i4 += 7;
            }
        }

        /* renamed from: a */
        public final void m2262a() {
            int i = this.f36644d;
            int i2 = this.f36648h;
            if (i >= i2) {
                return;
            }
            if (i == 0) {
                m2258b();
            } else {
                m2257b(i2 - i);
            }
        }

        /* renamed from: a */
        public final void m2259a(int i, C9601c cVar) {
            this.f36641a.add(cVar);
            int i2 = cVar.f36637c;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.f36645e[m2261a(i)].f36637c;
            }
            int i4 = this.f36644d;
            if (i3 > i4) {
                m2258b();
                return;
            }
            int b = m2257b((this.f36648h + i3) - i4);
            if (i == -1) {
                int i5 = this.f36647g;
                C9601c[] cVarArr = this.f36645e;
                if (i5 + 1 > cVarArr.length) {
                    C9601c[] cVarArr2 = new C9601c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f36646f = this.f36645e.length - 1;
                    this.f36645e = cVarArr2;
                }
                int i6 = this.f36646f;
                this.f36646f = i6 - 1;
                this.f36645e[i6] = cVar;
                this.f36647g++;
            } else {
                this.f36645e[i + m2261a(i) + b] = cVar;
            }
            this.f36648h += i3;
        }

        /* renamed from: b */
        public final int m2257b(int i) {
            int i2 = 0;
            int i3 = 0;
            if (i > 0) {
                int i4 = i;
                for (int length = this.f36645e.length - 1; length >= this.f36646f && i4 > 0; length--) {
                    C9601c[] cVarArr = this.f36645e;
                    i4 -= cVarArr[length].f36637c;
                    this.f36648h -= cVarArr[length].f36637c;
                    this.f36647g--;
                    i3++;
                }
                C9601c[] cVarArr2 = this.f36645e;
                int i5 = this.f36646f;
                System.arraycopy(cVarArr2, i5 + 1, cVarArr2, i5 + 1 + i3, this.f36647g);
                this.f36646f += i3;
                i2 = i3;
            }
            return i2;
        }

        /* renamed from: b */
        public final void m2258b() {
            Arrays.fill(this.f36645e, (Object) null);
            this.f36646f = this.f36645e.length - 1;
            this.f36647g = 0;
            this.f36648h = 0;
        }

        /* renamed from: c */
        public List<C9601c> m2256c() {
            ArrayList arrayList = new ArrayList(this.f36641a);
            this.f36641a.clear();
            return arrayList;
        }

        /* renamed from: c */
        public final ByteString m2255c(int i) throws IOException {
            if (m2251e(i)) {
                return C9602d.f36639b[i].f36635a;
            }
            int a = m2261a(i - C9602d.f36639b.length);
            if (a >= 0) {
                C9601c[] cVarArr = this.f36645e;
                if (a < cVarArr.length) {
                    return cVarArr[a].f36635a;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: d */
        public final int m2254d() throws IOException {
            return this.f36642b.readByte() & 255;
        }

        /* renamed from: d */
        public void m2253d(int i) {
            this.f36643c = i;
            this.f36644d = i;
            m2262a();
        }

        /* renamed from: e */
        public ByteString m2252e() throws IOException {
            int d = m2254d();
            boolean z = (d & 128) == 128;
            int a = m2260a(d, 127);
            return z ? ByteString.m3of(C9610f.m2193b().m2195a(this.f36642b.mo716f(a))) : this.f36642b.mo725a(a);
        }

        /* renamed from: e */
        public final boolean m2251e(int i) {
            boolean z = true;
            if (i < 0 || i > C9602d.f36639b.length - 1) {
                z = false;
            }
            return z;
        }

        /* renamed from: f */
        public void m2250f() throws IOException {
            while (!this.f36642b.mo730M0()) {
                int readByte = this.f36642b.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                } else if ((readByte & 128) == 128) {
                    m2249f(m2260a(readByte, 127) - 1);
                } else if (readByte == 64) {
                    m2248g();
                } else if ((readByte & 64) == 64) {
                    m2247g(m2260a(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int a = m2260a(readByte, 31);
                    this.f36644d = a;
                    if (a < 0 || a > this.f36643c) {
                        throw new IOException("Invalid dynamic table size update " + this.f36644d);
                    }
                    m2262a();
                } else if (readByte == 16 || readByte == 0) {
                    m2246h();
                } else {
                    m2245h(m2260a(readByte, 15) - 1);
                }
            }
        }

        /* renamed from: f */
        public final void m2249f(int i) throws IOException {
            if (m2251e(i)) {
                this.f36641a.add(C9602d.f36639b[i]);
                return;
            }
            int a = m2261a(i - C9602d.f36639b.length);
            if (a >= 0) {
                C9601c[] cVarArr = this.f36645e;
                if (a <= cVarArr.length - 1) {
                    this.f36641a.add(cVarArr[a]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: g */
        public final void m2248g() throws IOException {
            ByteString e = m2252e();
            C9602d.m2265b(e);
            m2259a(-1, new C9601c(e, m2252e()));
        }

        /* renamed from: g */
        public final void m2247g(int i) throws IOException {
            m2259a(-1, new C9601c(m2255c(i), m2252e()));
        }

        /* renamed from: h */
        public final void m2246h() throws IOException {
            ByteString e = m2252e();
            C9602d.m2265b(e);
            this.f36641a.add(new C9601c(e, m2252e()));
        }

        /* renamed from: h */
        public final void m2245h(int i) throws IOException {
            this.f36641a.add(new C9601c(m2255c(i), m2252e()));
        }
    }

    /* renamed from: d.a.w0.o.f.d$b */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/d$b.class */
    public static final class C9604b {

        /* renamed from: a */
        public final C10260c f36649a;

        /* renamed from: b */
        public boolean f36650b;

        /* renamed from: c */
        public int f36651c;

        /* renamed from: d */
        public boolean f36652d;

        /* renamed from: e */
        public int f36653e;

        /* renamed from: f */
        public C9601c[] f36654f;

        /* renamed from: g */
        public int f36655g;

        /* renamed from: h */
        public int f36656h;

        /* renamed from: i */
        public int f36657i;

        public C9604b(int i, boolean z, C10260c cVar) {
            this.f36651c = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            C9601c[] cVarArr = new C9601c[8];
            this.f36654f = cVarArr;
            this.f36656h = cVarArr.length - 1;
            this.f36653e = i;
            this.f36650b = z;
            this.f36649a = cVar;
        }

        public C9604b(C10260c cVar) {
            this(4096, false, cVar);
        }

        /* renamed from: a */
        public final int m2243a(int i) {
            int i2 = 0;
            int i3 = 0;
            if (i > 0) {
                int i4 = i;
                for (int length = this.f36654f.length - 1; length >= this.f36656h && i4 > 0; length--) {
                    C9601c[] cVarArr = this.f36654f;
                    i4 -= cVarArr[length].f36637c;
                    this.f36657i -= cVarArr[length].f36637c;
                    this.f36655g--;
                    i3++;
                }
                C9601c[] cVarArr2 = this.f36654f;
                int i5 = this.f36656h;
                System.arraycopy(cVarArr2, i5 + 1, cVarArr2, i5 + 1 + i3, this.f36655g);
                this.f36656h += i3;
                i2 = i3;
            }
            return i2;
        }

        /* renamed from: a */
        public final void m2244a() {
            Arrays.fill(this.f36654f, (Object) null);
            this.f36656h = this.f36654f.length - 1;
            this.f36655g = 0;
            this.f36657i = 0;
        }

        /* renamed from: a */
        public void m2242a(int i, int i2, int i3) throws IOException {
            if (i < i2) {
                this.f36649a.writeByte(i | i3);
                return;
            }
            this.f36649a.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.f36649a.writeByte(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.f36649a.writeByte(i4);
        }

        /* renamed from: a */
        public final void m2241a(C9601c cVar) {
            int i = cVar.f36637c;
            int i2 = this.f36653e;
            if (i > i2) {
                m2244a();
                return;
            }
            m2243a((this.f36657i + i) - i2);
            int i3 = this.f36655g;
            C9601c[] cVarArr = this.f36654f;
            if (i3 + 1 > cVarArr.length) {
                C9601c[] cVarArr2 = new C9601c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f36656h = this.f36654f.length - 1;
                this.f36654f = cVarArr2;
            }
            int i4 = this.f36656h;
            this.f36656h = i4 - 1;
            this.f36654f[i4] = cVar;
            this.f36655g++;
            this.f36657i += i;
        }

        /* renamed from: a */
        public void m2240a(List<C9601c> list) throws IOException {
            int i;
            int i2;
            if (this.f36652d) {
                int i3 = this.f36651c;
                if (i3 < this.f36653e) {
                    m2242a(i3, 31, 32);
                }
                this.f36652d = false;
                this.f36651c = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                m2242a(this.f36653e, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                C9601c cVar = list.get(i4);
                ByteString asciiLowercase = cVar.f36635a.toAsciiLowercase();
                ByteString byteString = cVar.f36636b;
                Integer num = (Integer) C9602d.f36640c.get(asciiLowercase);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i >= 2 && i <= 7) {
                        if (C9602d.f36639b[i - 1].f36636b.equals(byteString)) {
                            i2 = i;
                        } else if (C9602d.f36639b[i].f36636b.equals(byteString)) {
                            i2 = i;
                            i++;
                        }
                    }
                    i2 = i;
                    i = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                int i5 = i;
                int i6 = i2;
                if (i == -1) {
                    int i7 = this.f36656h;
                    while (true) {
                        int i8 = i7 + 1;
                        C9601c[] cVarArr = this.f36654f;
                        i5 = i;
                        i6 = i2;
                        if (i8 >= cVarArr.length) {
                            break;
                        }
                        i2 = i2;
                        if (cVarArr[i8].f36635a.equals(asciiLowercase)) {
                            if (this.f36654f[i8].f36636b.equals(byteString)) {
                                i5 = C9602d.f36639b.length + (i8 - this.f36656h);
                                i6 = i2;
                                break;
                            }
                            i2 = i2;
                            if (i2 == -1) {
                                i2 = (i8 - this.f36656h) + C9602d.f36639b.length;
                            }
                        }
                        i7 = i8;
                    }
                }
                if (i5 != -1) {
                    m2242a(i5, 127, 128);
                } else if (i6 == -1) {
                    this.f36649a.writeByte(64);
                    m2239a(asciiLowercase);
                    m2239a(byteString);
                    m2241a(cVar);
                } else if (!asciiLowercase.startsWith(C9602d.f36638a) || C9601c.f36634h.equals(asciiLowercase)) {
                    m2242a(i6, 63, 64);
                    m2239a(byteString);
                    m2241a(cVar);
                } else {
                    m2242a(i6, 15, 0);
                    m2239a(byteString);
                }
            }
        }

        /* renamed from: a */
        public void m2239a(ByteString byteString) throws IOException {
            if (!this.f36650b || C9610f.m2193b().m2192b(byteString.toByteArray()) >= byteString.size()) {
                m2242a(byteString.size(), 127, 0);
                this.f36649a.mo738a(byteString);
                return;
            }
            C10260c cVar = new C10260c();
            C9610f.m2193b().m2194a(byteString.toByteArray(), cVar.m770g());
            ByteString h = cVar.m769h();
            m2242a(h.size(), 127, 128);
            this.f36649a.mo738a(h);
        }
    }

    /* renamed from: b */
    public static ByteString m2265b(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i = 0; i < size; i++) {
            byte b = byteString.getByte(i);
            if (b >= 65 && b <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    /* renamed from: d */
    public static Map<ByteString, Integer> m2263d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f36639b.length);
        int i = 0;
        while (true) {
            C9601c[] cVarArr = f36639b;
            if (i >= cVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(cVarArr[i].f36635a)) {
                linkedHashMap.put(f36639b[i].f36635a, Integer.valueOf(i));
            }
            i++;
        }
    }
}
