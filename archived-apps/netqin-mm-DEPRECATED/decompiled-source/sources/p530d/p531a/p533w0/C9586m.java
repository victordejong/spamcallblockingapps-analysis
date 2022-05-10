package p530d.p531a.p533w0;

import com.google.common.collect.RegularImmutableMap;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.p533w0.p534o.p535f.AbstractC9600b;
import p610i.C10260c;
/* renamed from: d.a.w0.m */
/* loaded from: classes2-dex2jar.jar:d/a/w0/m.class */
public class C9586m {

    /* renamed from: a */
    public final C9571f f36594a;

    /* renamed from: b */
    public final AbstractC9600b f36595b;

    /* renamed from: c */
    public int f36596c = RegularImmutableMap.SHORT_MASK;

    /* renamed from: d */
    public final C9588b f36597d = new C9588b(0, (int) RegularImmutableMap.SHORT_MASK);

    /* renamed from: d.a.w0.m$b */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/m$b.class */
    public final class C9588b {

        /* renamed from: a */
        public final C10260c f36598a;

        /* renamed from: b */
        public final int f36599b;

        /* renamed from: c */
        public int f36600c;

        /* renamed from: d */
        public int f36601d;

        /* renamed from: e */
        public C9568e f36602e;

        /* renamed from: f */
        public boolean f36603f;

        public C9588b(int i, int i2) {
            this.f36603f = false;
            this.f36599b = i;
            this.f36600c = i2;
            this.f36598a = new C10260c();
        }

        public C9588b(C9586m mVar, C9568e eVar, int i) {
            this(eVar.m2452l(), i);
            this.f36602e = eVar;
        }

        /* renamed from: a */
        public int m2336a() {
            return this.f36601d;
        }

        /* renamed from: a */
        public int m2334a(int i, C9589c cVar) {
            int min = Math.min(i, m2325g());
            int i2 = 0;
            while (m2329c() && min > 0) {
                if (min >= this.f36598a.size()) {
                    i2 += (int) this.f36598a.size();
                    C10260c cVar2 = this.f36598a;
                    m2330b(cVar2, (int) cVar2.size(), this.f36603f);
                } else {
                    i2 += min;
                    m2330b(this.f36598a, min, false);
                }
                cVar.m2323b();
                min = Math.min(i - i2, m2325g());
            }
            return i2;
        }

        /* renamed from: a */
        public void m2335a(int i) {
            this.f36601d += i;
        }

        /* renamed from: a */
        public void m2333a(C10260c cVar, int i, boolean z) {
            this.f36598a.mo706a(cVar, i);
            this.f36603f |= z;
        }

        /* renamed from: b */
        public int m2331b(int i) {
            if (i <= 0 || MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i >= this.f36600c) {
                int i2 = this.f36600c + i;
                this.f36600c = i2;
                return i2;
            }
            throw new IllegalArgumentException("Window size overflow for stream: " + this.f36599b);
        }

        /* renamed from: b */
        public void m2332b() {
            this.f36601d = 0;
        }

        /* renamed from: b */
        public void m2330b(C10260c cVar, int i, boolean z) {
            int i2;
            do {
                int min = Math.min(i, C9586m.this.f36595b.mo2200a2());
                int i3 = -min;
                C9586m.this.f36597d.m2331b(i3);
                m2331b(i3);
                try {
                    C9586m.this.f36595b.mo2203a(cVar.size() == ((long) min) && z, this.f36599b, cVar, min);
                    this.f36602e.mo2461e().m2900b(min);
                    i2 = i - min;
                    i = i2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            } while (i2 > 0);
        }

        /* renamed from: c */
        public boolean m2329c() {
            return this.f36598a.size() > 0;
        }

        /* renamed from: d */
        public int m2328d() {
            return Math.max(0, Math.min(this.f36600c, (int) this.f36598a.size()));
        }

        /* renamed from: e */
        public int m2327e() {
            return m2328d() - this.f36601d;
        }

        /* renamed from: f */
        public int m2326f() {
            return this.f36600c;
        }

        /* renamed from: g */
        public int m2325g() {
            return Math.min(this.f36600c, C9586m.this.f36597d.m2326f());
        }
    }

    /* renamed from: d.a.w0.m$c */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/m$c.class */
    public static final class C9589c {

        /* renamed from: a */
        public int f36605a;

        public C9589c() {
        }

        /* renamed from: a */
        public boolean m2324a() {
            return this.f36605a > 0;
        }

        /* renamed from: b */
        public void m2323b() {
            this.f36605a++;
        }
    }

    public C9586m(C9571f fVar, AbstractC9600b bVar) {
        C4933n.m24794a(fVar, "transport");
        this.f36594a = fVar;
        C4933n.m24794a(bVar, "frameWriter");
        this.f36595b = bVar;
    }

    /* renamed from: a */
    public int m2341a(C9568e eVar, int i) {
        int i2;
        if (eVar == null) {
            i2 = this.f36597d.m2331b(i);
            m2338b();
        } else {
            C9588b a = m2342a(eVar);
            i2 = a.m2331b(i);
            C9589c cVar = new C9589c();
            a.m2334a(a.m2325g(), cVar);
            if (cVar.m2324a()) {
                m2344a();
            }
        }
        return i2;
    }

    /* renamed from: a */
    public final C9588b m2342a(C9568e eVar) {
        C9588b bVar = (C9588b) eVar.m2454j();
        C9588b bVar2 = bVar;
        if (bVar == null) {
            bVar2 = new C9588b(this, eVar, this.f36596c);
            eVar.m2468a(bVar2);
        }
        return bVar2;
    }

    /* renamed from: a */
    public void m2344a() {
        try {
            this.f36595b.flush();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public void m2339a(boolean z, int i, C10260c cVar, boolean z2) {
        C4933n.m24794a(cVar, "source");
        C9568e a = this.f36594a.m2429a(i);
        if (a != null) {
            C9588b a2 = m2342a(a);
            int g = a2.m2325g();
            boolean c = a2.m2329c();
            int size = (int) cVar.size();
            if (c || g < size) {
                if (!c && g > 0) {
                    a2.m2330b(cVar, g, false);
                }
                a2.m2333a(cVar, (int) cVar.size(), z);
            } else {
                a2.m2330b(cVar, size, z);
            }
            if (z2) {
                m2344a();
            }
        }
    }

    /* renamed from: a */
    public boolean m2343a(int i) {
        C9568e[] a;
        if (i >= 0) {
            int i2 = i - this.f36596c;
            this.f36596c = i;
            boolean z = false;
            for (C9568e eVar : this.f36594a.m2430a()) {
                C9588b bVar = (C9588b) eVar.m2454j();
                if (bVar == null) {
                    eVar.m2468a(new C9588b(this, eVar, this.f36596c));
                } else {
                    bVar.m2331b(i2);
                }
            }
            if (i2 > 0) {
                z = true;
            }
            return z;
        }
        throw new IllegalArgumentException("Invalid initial window size: " + i);
    }

    /* renamed from: b */
    public void m2338b() {
        int i;
        C9568e[] a = this.f36594a.m2430a();
        int f = this.f36597d.m2326f();
        int length = a.length;
        while (true) {
            int i2 = 0;
            if (length <= 0 || f <= 0) {
                break;
            }
            int ceil = (int) Math.ceil(f / length);
            for (int i3 = 0; i3 < length && f > 0; i3++) {
                C9568e eVar = a[i3];
                C9588b a2 = m2342a(eVar);
                int min = Math.min(f, Math.min(a2.m2327e(), ceil));
                f = f;
                if (min > 0) {
                    a2.m2335a(min);
                    f -= min;
                }
                i2 = i2;
                if (a2.m2327e() > 0) {
                    a[i2] = eVar;
                    i2++;
                }
            }
            length = i2;
        }
        C9589c cVar = new C9589c();
        for (C9568e eVar2 : this.f36594a.m2430a()) {
            C9588b a3 = m2342a(eVar2);
            a3.m2334a(a3.m2336a(), cVar);
            a3.m2332b();
        }
        if (cVar.m2324a()) {
            m2344a();
        }
    }
}
