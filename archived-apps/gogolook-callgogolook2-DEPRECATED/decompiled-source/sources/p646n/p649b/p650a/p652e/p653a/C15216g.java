package p646n.p649b.p650a.p652e.p653a;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipException;
/* renamed from: n.b.a.e.a.g */
/* loaded from: classes3-dex2jar.jar:n/b/a/e/a/g.class */
public final class C15216g implements Closeable {

    /* renamed from: a */
    public final C15210a f33237a;

    /* renamed from: n.b.a.e.a.g$b */
    /* loaded from: classes3-dex2jar.jar:n/b/a/e/a/g$b.class */
    public static class C15218b {

        /* renamed from: a */
        public String f33238a;

        /* renamed from: b */
        public long f33239b;

        public C15218b() {
            this.f33239b = -1L;
        }

        /* renamed from: a */
        public long m195a() {
            return this.f33239b;
        }

        /* renamed from: a */
        public void m194a(long j) {
        }

        /* renamed from: a */
        public void m193a(String str) {
            this.f33238a = str;
        }

        /* renamed from: b */
        public String m192b() {
            return this.f33238a;
        }

        /* renamed from: b */
        public void m191b(long j) {
            this.f33239b = j;
        }

        /* renamed from: c */
        public void m190c(long j) {
        }
    }

    /* renamed from: n.b.a.e.a.g$c */
    /* loaded from: classes3-dex2jar.jar:n/b/a/e/a/g$c.class */
    public static class C15219c {

        /* renamed from: a */
        public final C15210a f33240a;

        /* renamed from: b */
        public final ByteBuffer f33241b;

        /* renamed from: c */
        public final ByteBuffer f33242c;

        /* renamed from: d */
        public final ByteBuffer f33243d;

        public C15219c(C15210a aVar) {
            this.f33241b = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
            this.f33242c = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
            this.f33243d = ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN);
            this.f33240a = aVar;
        }

        /* renamed from: a */
        public final Map<String, List<C15218b>> m187a(List<C15218b> list) {
            List list2;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (C15218b bVar : list) {
                long a = bVar.m195a();
                this.f33240a.m221a(26 + a);
                bVar.m194a(a + 28 + 2 + m183d() + m183d());
                String b = bVar.m192b();
                if (linkedHashMap.containsKey(b)) {
                    list2 = (List) linkedHashMap.get(b);
                } else {
                    list2 = new ArrayList();
                    linkedHashMap.put(b, list2);
                }
                list2.add(bVar);
            }
            return linkedHashMap;
        }

        /* renamed from: a */
        public final void m188a(int i) throws IOException {
            long a = this.f33240a.m222a() + i;
            if (a <= this.f33240a.m219b()) {
                this.f33240a.m221a(a);
                return;
            }
            throw new EOFException();
        }

        /* renamed from: a */
        public final boolean m189a() {
            return ((long) m185b()) == 33639248;
        }

        /* renamed from: b */
        public final int m185b() {
            this.f33242c.rewind();
            this.f33240a.m220a(this.f33242c);
            this.f33242c.flip();
            return this.f33242c.getInt();
        }

        /* renamed from: c */
        public final long m184c() {
            this.f33241b.rewind();
            this.f33240a.m220a(this.f33241b);
            this.f33241b.flip();
            return this.f33241b.getLong();
        }

        /* renamed from: d */
        public final int m183d() {
            this.f33243d.rewind();
            this.f33240a.m220a(this.f33243d);
            this.f33243d.flip();
            return this.f33243d.getShort();
        }

        /* renamed from: e */
        public final void m182e() throws IOException {
            if (this.f33240a.m219b() >= 22) {
                this.f33240a.m221a(this.f33240a.m219b() - 22);
                if (m184c() == 101010256) {
                    m188a(8);
                    this.f33240a.m221a(m185b());
                    return;
                }
                throw new ZipException("The archive is not a ZIP archive.");
            }
            throw new ZipException("The archive is not a ZIP archive.");
        }

        /* renamed from: f */
        public final List<C15218b> m181f() throws IOException {
            ArrayList arrayList = new ArrayList();
            m182e();
            while (m189a()) {
                arrayList.add(m180g());
            }
            return arrayList;
        }

        /* renamed from: g */
        public final C15218b m180g() throws IOException {
            m188a(16);
            long b = m185b();
            m188a(4);
            int d = m183d();
            int d2 = m183d();
            int d3 = m183d();
            m188a(8);
            long b2 = m185b();
            byte[] bArr = new byte[d];
            this.f33240a.m220a(ByteBuffer.wrap(bArr));
            String str = new String(bArr, Charset.forName("UTF-8"));
            m188a(d2 + d3);
            C15218b bVar = new C15218b();
            bVar.m190c(b);
            bVar.m191b(b2);
            bVar.m193a(str);
            return bVar;
        }

        /* renamed from: h */
        public final Map<String, List<C15218b>> m179h() throws IOException {
            return m187a(m181f());
        }
    }

    public C15216g(C15210a aVar, Map<String, List<C15218b>> map) {
        this.f33237a = aVar;
    }

    /* renamed from: a */
    public static C15216g m196a(C15210a aVar) throws IOException {
        C15214e.m199a(aVar);
        return new C15216g(aVar, new C15219c(aVar).m179h());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f33237a.close();
    }
}
