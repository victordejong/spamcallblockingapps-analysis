package p131c.p161d.p170b.p188c.p201f1.p202u;

import java.io.File;
import java.util.TreeSet;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
/* renamed from: c.d.b.c.f1.u.j */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/j.class */
public final class C2852j {

    /* renamed from: a */
    public final int f10376a;

    /* renamed from: b */
    public final String f10377b;

    /* renamed from: c */
    public final TreeSet<C2864r> f10378c;

    /* renamed from: d */
    public C2860o f10379d;

    /* renamed from: e */
    public boolean f10380e;

    public C2852j(int i, String str) {
        this(i, str, C2860o.f10401c);
    }

    public C2852j(int i, String str, C2860o oVar) {
        this.f10376a = i;
        this.f10377b = str;
        this.f10379d = oVar;
        this.f10378c = new TreeSet<>();
    }

    /* renamed from: a */
    public C2860o m28856a() {
        return this.f10379d;
    }

    /* renamed from: a */
    public C2864r m28855a(long j) {
        C2864r a = C2864r.m28760a(this.f10377b, j);
        C2864r floor = this.f10378c.floor(a);
        if (floor != null && floor.f10370b + floor.f10371c > j) {
            return floor;
        }
        C2864r ceiling = this.f10378c.ceiling(a);
        return ceiling == null ? C2864r.m28758b(this.f10377b, j) : C2864r.m28759a(this.f10377b, j, ceiling.f10370b - j);
    }

    /* renamed from: a */
    public C2864r m28851a(C2864r rVar, long j, boolean z) {
        C2877e.m28731b(this.f10378c.remove(rVar));
        File file = rVar.f10373e;
        File file2 = file;
        if (z) {
            file2 = C2864r.m28765a(file.getParentFile(), this.f10376a, rVar.f10370b, j);
            if (!file.renameTo(file2)) {
                C2894o.m28594d("CachedContent", "Failed to rename " + file + " to " + file2);
                file2 = file;
            }
        }
        C2864r a = rVar.m28764a(file2, j);
        this.f10378c.add(a);
        return a;
    }

    /* renamed from: a */
    public void m28852a(C2864r rVar) {
        this.f10378c.add(rVar);
    }

    /* renamed from: a */
    public void m28850a(boolean z) {
        this.f10380e = z;
    }

    /* renamed from: a */
    public boolean m28854a(C2850h hVar) {
        if (!this.f10378c.remove(hVar)) {
            return false;
        }
        hVar.f10373e.delete();
        return true;
    }

    /* renamed from: a */
    public boolean m28853a(C2859n nVar) {
        C2860o oVar = this.f10379d;
        C2860o a = oVar.m28795a(nVar);
        this.f10379d = a;
        return !a.equals(oVar);
    }

    /* renamed from: b */
    public TreeSet<C2864r> m28849b() {
        return this.f10378c;
    }

    /* renamed from: c */
    public boolean m28848c() {
        return this.f10378c.isEmpty();
    }

    /* renamed from: d */
    public boolean m28847d() {
        return this.f10380e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2852j.class != obj.getClass()) {
            return false;
        }
        C2852j jVar = (C2852j) obj;
        if (this.f10376a != jVar.f10376a || !this.f10377b.equals(jVar.f10377b) || !this.f10378c.equals(jVar.f10378c) || !this.f10379d.equals(jVar.f10379d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.f10376a * 31) + this.f10377b.hashCode()) * 31) + this.f10379d.hashCode();
    }
}
