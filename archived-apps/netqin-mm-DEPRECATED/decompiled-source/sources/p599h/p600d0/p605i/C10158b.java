package p599h.p600d0.p605i;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.ByteString;
import p599h.p600d0.C10109c;
import p610i.AbstractC10264e;
import p610i.AbstractC10281q;
import p610i.C10260c;
import p610i.C10270k;
/* renamed from: h.d0.i.b */
/* loaded from: classes2-dex2jar.jar:h/d0/i/b.class */
public final class C10158b {

    /* renamed from: a */
    public static final C10156a[] f37498a = {new C10156a(C10156a.f37494i, ""), new C10156a(C10156a.f37491f, "GET"), new C10156a(C10156a.f37491f, "POST"), new C10156a(C10156a.f37492g, "/"), new C10156a(C10156a.f37492g, "/index.html"), new C10156a(C10156a.f37493h, "http"), new C10156a(C10156a.f37493h, "https"), new C10156a(C10156a.f37490e, "200"), new C10156a(C10156a.f37490e, "204"), new C10156a(C10156a.f37490e, "206"), new C10156a(C10156a.f37490e, "304"), new C10156a(C10156a.f37490e, "400"), new C10156a(C10156a.f37490e, "404"), new C10156a(C10156a.f37490e, "500"), new C10156a("accept-charset", ""), new C10156a("accept-encoding", "gzip, deflate"), new C10156a("accept-language", ""), new C10156a("accept-ranges", ""), new C10156a("accept", ""), new C10156a("access-control-allow-origin", ""), new C10156a("age", ""), new C10156a("allow", ""), new C10156a("authorization", ""), new C10156a("cache-control", ""), new C10156a("content-disposition", ""), new C10156a("content-encoding", ""), new C10156a("content-language", ""), new C10156a("content-length", ""), new C10156a("content-location", ""), new C10156a("content-range", ""), new C10156a("content-type", ""), new C10156a("cookie", ""), new C10156a("date", ""), new C10156a("etag", ""), new C10156a("expect", ""), new C10156a("expires", ""), new C10156a("from", ""), new C10156a("host", ""), new C10156a("if-match", ""), new C10156a("if-modified-since", ""), new C10156a("if-none-match", ""), new C10156a("if-range", ""), new C10156a("if-unmodified-since", ""), new C10156a("last-modified", ""), new C10156a("link", ""), new C10156a("location", ""), new C10156a("max-forwards", ""), new C10156a("proxy-authenticate", ""), new C10156a("proxy-authorization", ""), new C10156a("range", ""), new C10156a("referer", ""), new C10156a("refresh", ""), new C10156a("retry-after", ""), new C10156a("server", ""), new C10156a("set-cookie", ""), new C10156a("strict-transport-security", ""), new C10156a("transfer-encoding", ""), new C10156a("user-agent", ""), new C10156a("vary", ""), new C10156a("via", ""), new C10156a("www-authenticate", "")};

    /* renamed from: b */
    public static final Map<ByteString, Integer> f37499b = m1274a();

    /* renamed from: h.d0.i.b$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/b$a.class */
    public static final class C10159a {

        /* renamed from: a */
        public final List<C10156a> f37500a;

        /* renamed from: b */
        public final AbstractC10264e f37501b;

        /* renamed from: c */
        public final int f37502c;

        /* renamed from: d */
        public int f37503d;

        /* renamed from: e */
        public C10156a[] f37504e;

        /* renamed from: f */
        public int f37505f;

        /* renamed from: g */
        public int f37506g;

        /* renamed from: h */
        public int f37507h;

        public C10159a(int i, int i2, AbstractC10281q qVar) {
            this.f37500a = new ArrayList();
            C10156a[] aVarArr = new C10156a[8];
            this.f37504e = aVarArr;
            this.f37505f = aVarArr.length - 1;
            this.f37506g = 0;
            this.f37507h = 0;
            this.f37502c = i;
            this.f37503d = i2;
            this.f37501b = C10270k.m753a(qVar);
        }

        public C10159a(int i, AbstractC10281q qVar) {
            this(i, i, qVar);
        }

        /* renamed from: a */
        public final int m1271a(int i) {
            return this.f37505f + 1 + i;
        }

        /* renamed from: a */
        public int m1270a(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int d = m1264d();
                if ((d & 128) == 0) {
                    return i2 + (d << i4);
                }
                i2 += (d & 127) << i4;
                i4 += 7;
            }
        }

        /* renamed from: a */
        public final void m1272a() {
            int i = this.f37503d;
            int i2 = this.f37507h;
            if (i >= i2) {
                return;
            }
            if (i == 0) {
                m1268b();
            } else {
                m1267b(i2 - i);
            }
        }

        /* renamed from: a */
        public final void m1269a(int i, C10156a aVar) {
            this.f37500a.add(aVar);
            int i2 = aVar.f37497c;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.f37504e[m1271a(i)].f37497c;
            }
            int i4 = this.f37503d;
            if (i3 > i4) {
                m1268b();
                return;
            }
            int b = m1267b((this.f37507h + i3) - i4);
            if (i == -1) {
                int i5 = this.f37506g;
                C10156a[] aVarArr = this.f37504e;
                if (i5 + 1 > aVarArr.length) {
                    C10156a[] aVarArr2 = new C10156a[aVarArr.length * 2];
                    System.arraycopy(aVarArr, 0, aVarArr2, aVarArr.length, aVarArr.length);
                    this.f37505f = this.f37504e.length - 1;
                    this.f37504e = aVarArr2;
                }
                int i6 = this.f37505f;
                this.f37505f = i6 - 1;
                this.f37504e[i6] = aVar;
                this.f37506g++;
            } else {
                this.f37504e[i + m1271a(i) + b] = aVar;
            }
            this.f37507h += i3;
        }

        /* renamed from: b */
        public final int m1267b(int i) {
            int i2 = 0;
            int i3 = 0;
            if (i > 0) {
                int i4 = i;
                for (int length = this.f37504e.length - 1; length >= this.f37505f && i4 > 0; length--) {
                    C10156a[] aVarArr = this.f37504e;
                    i4 -= aVarArr[length].f37497c;
                    this.f37507h -= aVarArr[length].f37497c;
                    this.f37506g--;
                    i3++;
                }
                C10156a[] aVarArr2 = this.f37504e;
                int i5 = this.f37505f;
                System.arraycopy(aVarArr2, i5 + 1, aVarArr2, i5 + 1 + i3, this.f37506g);
                this.f37505f += i3;
                i2 = i3;
            }
            return i2;
        }

        /* renamed from: b */
        public final void m1268b() {
            Arrays.fill(this.f37504e, (Object) null);
            this.f37505f = this.f37504e.length - 1;
            this.f37506g = 0;
            this.f37507h = 0;
        }

        /* renamed from: c */
        public List<C10156a> m1266c() {
            ArrayList arrayList = new ArrayList(this.f37500a);
            this.f37500a.clear();
            return arrayList;
        }

        /* renamed from: c */
        public final ByteString m1265c(int i) throws IOException {
            if (m1263d(i)) {
                return C10158b.f37498a[i].f37495a;
            }
            int a = m1271a(i - C10158b.f37498a.length);
            if (a >= 0) {
                C10156a[] aVarArr = this.f37504e;
                if (a < aVarArr.length) {
                    return aVarArr[a].f37495a;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: d */
        public final int m1264d() throws IOException {
            return this.f37501b.readByte() & 255;
        }

        /* renamed from: d */
        public final boolean m1263d(int i) {
            boolean z = true;
            if (i < 0 || i > C10158b.f37498a.length - 1) {
                z = false;
            }
            return z;
        }

        /* renamed from: e */
        public ByteString m1262e() throws IOException {
            int d = m1264d();
            boolean z = (d & 128) == 128;
            int a = m1270a(d, 127);
            return z ? ByteString.m3of(C10187i.m1128b().m1129a(this.f37501b.mo716f(a))) : this.f37501b.mo725a(a);
        }

        /* renamed from: e */
        public final void m1261e(int i) throws IOException {
            if (m1263d(i)) {
                this.f37500a.add(C10158b.f37498a[i]);
                return;
            }
            int a = m1271a(i - C10158b.f37498a.length);
            if (a >= 0) {
                C10156a[] aVarArr = this.f37504e;
                if (a < aVarArr.length) {
                    this.f37500a.add(aVarArr[a]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: f */
        public void m1260f() throws IOException {
            while (!this.f37501b.mo730M0()) {
                int readByte = this.f37501b.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                } else if ((readByte & 128) == 128) {
                    m1261e(m1270a(readByte, 127) - 1);
                } else if (readByte == 64) {
                    m1258g();
                } else if ((readByte & 64) == 64) {
                    m1259f(m1270a(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int a = m1270a(readByte, 31);
                    this.f37503d = a;
                    if (a < 0 || a > this.f37502c) {
                        throw new IOException("Invalid dynamic table size update " + this.f37503d);
                    }
                    m1272a();
                } else if (readByte == 16 || readByte == 0) {
                    m1256h();
                } else {
                    m1257g(m1270a(readByte, 15) - 1);
                }
            }
        }

        /* renamed from: f */
        public final void m1259f(int i) throws IOException {
            m1269a(-1, new C10156a(m1265c(i), m1262e()));
        }

        /* renamed from: g */
        public final void m1258g() throws IOException {
            ByteString e = m1262e();
            C10158b.m1273a(e);
            m1269a(-1, new C10156a(e, m1262e()));
        }

        /* renamed from: g */
        public final void m1257g(int i) throws IOException {
            this.f37500a.add(new C10156a(m1265c(i), m1262e()));
        }

        /* renamed from: h */
        public final void m1256h() throws IOException {
            ByteString e = m1262e();
            C10158b.m1273a(e);
            this.f37500a.add(new C10156a(e, m1262e()));
        }
    }

    /* renamed from: h.d0.i.b$b */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/b$b.class */
    public static final class C10160b {

        /* renamed from: a */
        public final C10260c f37508a;

        /* renamed from: b */
        public final boolean f37509b;

        /* renamed from: c */
        public int f37510c;

        /* renamed from: d */
        public boolean f37511d;

        /* renamed from: e */
        public int f37512e;

        /* renamed from: f */
        public C10156a[] f37513f;

        /* renamed from: g */
        public int f37514g;

        /* renamed from: h */
        public int f37515h;

        /* renamed from: i */
        public int f37516i;

        public C10160b(int i, boolean z, C10260c cVar) {
            this.f37510c = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            C10156a[] aVarArr = new C10156a[8];
            this.f37513f = aVarArr;
            this.f37514g = aVarArr.length - 1;
            this.f37515h = 0;
            this.f37516i = 0;
            this.f37512e = i;
            this.f37509b = z;
            this.f37508a = cVar;
        }

        public C10160b(C10260c cVar) {
            this(4096, true, cVar);
        }

        /* renamed from: a */
        public final int m1254a(int i) {
            int i2 = 0;
            int i3 = 0;
            if (i > 0) {
                int i4 = i;
                for (int length = this.f37513f.length - 1; length >= this.f37514g && i4 > 0; length--) {
                    C10156a[] aVarArr = this.f37513f;
                    i4 -= aVarArr[length].f37497c;
                    this.f37516i -= aVarArr[length].f37497c;
                    this.f37515h--;
                    i3++;
                }
                C10156a[] aVarArr2 = this.f37513f;
                int i5 = this.f37514g;
                System.arraycopy(aVarArr2, i5 + 1, aVarArr2, i5 + 1 + i3, this.f37515h);
                C10156a[] aVarArr3 = this.f37513f;
                int i6 = this.f37514g;
                Arrays.fill(aVarArr3, i6 + 1, i6 + 1 + i3, (Object) null);
                this.f37514g += i3;
                i2 = i3;
            }
            return i2;
        }

        /* renamed from: a */
        public final void m1255a() {
            int i = this.f37512e;
            int i2 = this.f37516i;
            if (i >= i2) {
                return;
            }
            if (i == 0) {
                m1249b();
            } else {
                m1254a(i2 - i);
            }
        }

        /* renamed from: a */
        public void m1253a(int i, int i2, int i3) {
            if (i < i2) {
                this.f37508a.writeByte(i | i3);
                return;
            }
            this.f37508a.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.f37508a.writeByte(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.f37508a.writeByte(i4);
        }

        /* renamed from: a */
        public final void m1252a(C10156a aVar) {
            int i = aVar.f37497c;
            int i2 = this.f37512e;
            if (i > i2) {
                m1249b();
                return;
            }
            m1254a((this.f37516i + i) - i2);
            int i3 = this.f37515h;
            C10156a[] aVarArr = this.f37513f;
            if (i3 + 1 > aVarArr.length) {
                C10156a[] aVarArr2 = new C10156a[aVarArr.length * 2];
                System.arraycopy(aVarArr, 0, aVarArr2, aVarArr.length, aVarArr.length);
                this.f37514g = this.f37513f.length - 1;
                this.f37513f = aVarArr2;
            }
            int i4 = this.f37514g;
            this.f37514g = i4 - 1;
            this.f37513f[i4] = aVar;
            this.f37515h++;
            this.f37516i += i;
        }

        /* renamed from: a */
        public void m1251a(List<C10156a> list) throws IOException {
            int i;
            int i2;
            if (this.f37511d) {
                int i3 = this.f37510c;
                if (i3 < this.f37512e) {
                    m1253a(i3, 31, 32);
                }
                this.f37511d = false;
                this.f37510c = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                m1253a(this.f37512e, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                C10156a aVar = list.get(i4);
                ByteString asciiLowercase = aVar.f37495a.toAsciiLowercase();
                ByteString byteString = aVar.f37496b;
                Integer num = C10158b.f37499b.get(asciiLowercase);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i > 1 && i < 8) {
                        if (C10109c.m1461a(C10158b.f37498a[i - 1].f37496b, byteString)) {
                            i2 = i;
                        } else if (C10109c.m1461a(C10158b.f37498a[i].f37496b, byteString)) {
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
                    int i7 = this.f37514g + 1;
                    int length = this.f37513f.length;
                    while (true) {
                        i5 = i;
                        i6 = i2;
                        if (i7 >= length) {
                            break;
                        }
                        i2 = i2;
                        if (C10109c.m1461a(this.f37513f[i7].f37495a, asciiLowercase)) {
                            if (C10109c.m1461a(this.f37513f[i7].f37496b, byteString)) {
                                i5 = C10158b.f37498a.length + (i7 - this.f37514g);
                                i6 = i2;
                                break;
                            }
                            i2 = i2;
                            if (i2 == -1) {
                                i2 = (i7 - this.f37514g) + C10158b.f37498a.length;
                            }
                        }
                        i7++;
                    }
                }
                if (i5 != -1) {
                    m1253a(i5, 127, 128);
                } else if (i6 == -1) {
                    this.f37508a.writeByte(64);
                    m1250a(asciiLowercase);
                    m1250a(byteString);
                    m1252a(aVar);
                } else if (!asciiLowercase.startsWith(C10156a.f37489d) || C10156a.f37494i.equals(asciiLowercase)) {
                    m1253a(i6, 63, 64);
                    m1250a(byteString);
                    m1252a(aVar);
                } else {
                    m1253a(i6, 15, 0);
                    m1250a(byteString);
                }
            }
        }

        /* renamed from: a */
        public void m1250a(ByteString byteString) throws IOException {
            if (!this.f37509b || C10187i.m1128b().m1131a(byteString) >= byteString.size()) {
                m1253a(byteString.size(), 127, 0);
                this.f37508a.mo738a(byteString);
                return;
            }
            C10260c cVar = new C10260c();
            C10187i.m1128b().m1130a(byteString, cVar);
            ByteString h = cVar.m769h();
            m1253a(h.size(), 127, 128);
            this.f37508a.mo738a(h);
        }

        /* renamed from: b */
        public final void m1249b() {
            Arrays.fill(this.f37513f, (Object) null);
            this.f37514g = this.f37513f.length - 1;
            this.f37515h = 0;
            this.f37516i = 0;
        }

        /* renamed from: b */
        public void m1248b(int i) {
            int min = Math.min(i, 16384);
            int i2 = this.f37512e;
            if (i2 != min) {
                if (min < i2) {
                    this.f37510c = Math.min(this.f37510c, min);
                }
                this.f37511d = true;
                this.f37512e = min;
                m1255a();
            }
        }
    }

    /* renamed from: a */
    public static Map<ByteString, Integer> m1274a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f37498a.length);
        int i = 0;
        while (true) {
            C10156a[] aVarArr = f37498a;
            if (i >= aVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(aVarArr[i].f37495a)) {
                linkedHashMap.put(f37498a[i].f37495a, Integer.valueOf(i));
            }
            i++;
        }
    }

    /* renamed from: a */
    public static ByteString m1273a(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i = 0; i < size; i++) {
            byte b = byteString.getByte(i);
            if (b >= 65 && b <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }
}
