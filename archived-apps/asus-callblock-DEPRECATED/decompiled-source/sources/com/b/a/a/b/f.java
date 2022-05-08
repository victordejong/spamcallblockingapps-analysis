package com.b.a.a.b;

import b.c;
import b.e;
import b.k;
import b.q;
import com.asus.updatesdk.BuildConfig;
import com.b.a.a.b.h;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final d[] f3230a = {new d(d.e, BuildConfig.FLAVOR), new d(d.f3227b, "GET"), new d(d.f3227b, "POST"), new d(d.c, "/"), new d(d.c, "/index.html"), new d(d.d, "http"), new d(d.d, "https"), new d(d.f3226a, "200"), new d(d.f3226a, "204"), new d(d.f3226a, "206"), new d(d.f3226a, "304"), new d(d.f3226a, "400"), new d(d.f3226a, "404"), new d(d.f3226a, "500"), new d("accept-charset", BuildConfig.FLAVOR), new d("accept-encoding", "gzip, deflate"), new d("accept-language", BuildConfig.FLAVOR), new d("accept-ranges", BuildConfig.FLAVOR), new d("accept", BuildConfig.FLAVOR), new d("access-control-allow-origin", BuildConfig.FLAVOR), new d("age", BuildConfig.FLAVOR), new d("allow", BuildConfig.FLAVOR), new d("authorization", BuildConfig.FLAVOR), new d("cache-control", BuildConfig.FLAVOR), new d("content-disposition", BuildConfig.FLAVOR), new d("content-encoding", BuildConfig.FLAVOR), new d("content-language", BuildConfig.FLAVOR), new d("content-length", BuildConfig.FLAVOR), new d("content-location", BuildConfig.FLAVOR), new d("content-range", BuildConfig.FLAVOR), new d("content-type", BuildConfig.FLAVOR), new d("cookie", BuildConfig.FLAVOR), new d("date", BuildConfig.FLAVOR), new d("etag", BuildConfig.FLAVOR), new d("expect", BuildConfig.FLAVOR), new d("expires", BuildConfig.FLAVOR), new d("from", BuildConfig.FLAVOR), new d("host", BuildConfig.FLAVOR), new d("if-match", BuildConfig.FLAVOR), new d("if-modified-since", BuildConfig.FLAVOR), new d("if-none-match", BuildConfig.FLAVOR), new d("if-range", BuildConfig.FLAVOR), new d("if-unmodified-since", BuildConfig.FLAVOR), new d("last-modified", BuildConfig.FLAVOR), new d("link", BuildConfig.FLAVOR), new d("location", BuildConfig.FLAVOR), new d("max-forwards", BuildConfig.FLAVOR), new d("proxy-authenticate", BuildConfig.FLAVOR), new d("proxy-authorization", BuildConfig.FLAVOR), new d("range", BuildConfig.FLAVOR), new d("referer", BuildConfig.FLAVOR), new d("refresh", BuildConfig.FLAVOR), new d("retry-after", BuildConfig.FLAVOR), new d("server", BuildConfig.FLAVOR), new d("set-cookie", BuildConfig.FLAVOR), new d("strict-transport-security", BuildConfig.FLAVOR), new d("transfer-encoding", BuildConfig.FLAVOR), new d("user-agent", BuildConfig.FLAVOR), new d("vary", BuildConfig.FLAVOR), new d("via", BuildConfig.FLAVOR), new d("www-authenticate", BuildConfig.FLAVOR)};

    /* renamed from: b  reason: collision with root package name */
    private static final Map<b.f, Integer> f3231b;

    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/f$a.class */
    static final class a {

        /* renamed from: b  reason: collision with root package name */
        final e f3233b;

        /* renamed from: a  reason: collision with root package name */
        final List<d> f3232a = new ArrayList();
        d[] e = new d[8];
        int f = this.e.length - 1;
        int g = 0;
        int h = 0;
        int c = 4096;
        int d = 4096;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(q qVar) {
            this.f3233b = k.a(qVar);
        }

        private void c() {
            this.f3232a.clear();
            Arrays.fill(this.e, (Object) null);
            this.f = this.e.length - 1;
            this.g = 0;
            this.h = 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean c(int i) {
            return i >= 0 && i <= f.f3230a.length - 1;
        }

        private int d() {
            return this.f3233b.e() & 255;
        }

        private int d(int i) {
            int i2 = 0;
            int i3 = 0;
            if (i > 0) {
                int i4 = i;
                for (int length = this.e.length - 1; length >= this.f && i4 > 0; length--) {
                    i4 -= this.e[length].j;
                    this.h -= this.e[length].j;
                    this.g--;
                    i3++;
                }
                System.arraycopy(this.e, this.f + 1, this.e, this.f + 1 + i3, this.g);
                this.f += i3;
                i2 = i3;
            }
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int a(int i) {
            return this.f + 1 + i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int a(int i, int i2) {
            int d;
            int i3 = i & i2;
            if (i3 >= i2) {
                int i4 = 0;
                while (true) {
                    d = d();
                    if ((d & 128) == 0) {
                        break;
                    }
                    i2 += (d & 127) << i4;
                    i4 += 7;
                }
                i3 = (d << i4) + i2;
            }
            return i3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a() {
            if (this.d >= this.h) {
                return;
            }
            if (this.d == 0) {
                c();
            } else {
                d(this.h - this.d);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(d dVar) {
            this.f3232a.add(dVar);
            int i = dVar.j;
            if (i > this.d) {
                c();
                return;
            }
            d((this.h + i) - this.d);
            if (this.g + 1 > this.e.length) {
                d[] dVarArr = new d[this.e.length * 2];
                System.arraycopy(this.e, 0, dVarArr, this.e.length, this.e.length);
                this.f = this.e.length - 1;
                this.e = dVarArr;
            }
            int i2 = this.f;
            this.f = i2 - 1;
            this.e[i2] = dVar;
            this.g++;
            this.h = i + this.h;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final b.f b() {
            b.f d;
            int i;
            h.a aVar;
            int d2 = d();
            boolean z = (d2 & 128) == 128;
            int a2 = a(d2, 127);
            if (z) {
                h a3 = h.a();
                byte[] f = this.f3233b.f(a2);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                h.a aVar2 = a3.f3246a;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    i = i3;
                    aVar = aVar2;
                    if (i2 < f.length) {
                        i4 = (i4 << 8) | (f[i2] & 255);
                        i3 += 8;
                        while (i3 >= 8) {
                            aVar2 = aVar2.f3247a[(i4 >>> (i3 - 8)) & 255];
                            if (aVar2.f3247a == null) {
                                byteArrayOutputStream.write(aVar2.f3248b);
                                i3 -= aVar2.c;
                                aVar2 = a3.f3246a;
                            } else {
                                i3 -= 8;
                            }
                        }
                        i2++;
                    }
                }
                while (i > 0) {
                    h.a aVar3 = aVar.f3247a[(i4 << (8 - i)) & 255];
                    if (aVar3.f3247a != null || aVar3.c > i) {
                        break;
                    }
                    byteArrayOutputStream.write(aVar3.f3248b);
                    i -= aVar3.c;
                    aVar = a3.f3246a;
                }
                d = b.f.a(byteArrayOutputStream.toByteArray());
            } else {
                d = this.f3233b.d(a2);
            }
            return d;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final b.f b(int i) {
            return c(i) ? f.f3230a[i].h : this.e[a(i - f.f3230a.length)].h;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/f$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final c f3234a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(c cVar) {
            this.f3234a = cVar;
        }

        private void a(int i, int i2) {
            if (i < i2) {
                this.f3234a.g(i | 0);
                return;
            }
            this.f3234a.g(i2 | 0);
            int i3 = i - i2;
            while (i3 >= 128) {
                this.f3234a.g((i3 & 127) | 128);
                i3 >>>= 7;
            }
            this.f3234a.g(i3);
        }

        private void a(b.f fVar) {
            a(fVar.c.length, 127);
            this.f3234a.b(fVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(List<d> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                b.f c = list.get(i).h.c();
                Integer num = (Integer) f.f3231b.get(c);
                if (num != null) {
                    a(num.intValue() + 1, 15);
                    a(list.get(i).i);
                } else {
                    this.f3234a.g(0);
                    a(c);
                    a(list.get(i).i);
                }
            }
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f3230a.length);
        for (int i = 0; i < f3230a.length; i++) {
            if (!linkedHashMap.containsKey(f3230a[i].h)) {
                linkedHashMap.put(f3230a[i].h, Integer.valueOf(i));
            }
        }
        f3231b = Collections.unmodifiableMap(linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ b.f a(b.f fVar) {
        int length = fVar.c.length;
        for (int i = 0; i < length; i++) {
            byte b2 = fVar.c[i];
            if (b2 >= 65 && b2 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.a());
            }
        }
        return fVar;
    }
}
