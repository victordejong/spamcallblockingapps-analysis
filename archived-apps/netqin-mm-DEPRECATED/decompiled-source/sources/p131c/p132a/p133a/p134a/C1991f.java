package p131c.p132a.p133a.p134a;

import java.util.ArrayList;
/* renamed from: c.a.a.a.f */
/* loaded from: classes-dex2jar.jar:c/a/a/a/f.class */
public class C1991f {

    /* renamed from: a */
    public boolean f7825a;

    /* renamed from: b */
    public String f7826b;

    /* renamed from: c */
    public String f7827c;

    /* renamed from: d */
    public String f7828d;

    /* renamed from: e */
    public String f7829e;

    /* renamed from: f */
    public int f7830f = 0;

    /* renamed from: g */
    public ArrayList<C2004k> f7831g;

    /* renamed from: h */
    public boolean f7832h;

    /* renamed from: c.a.a.a.f$a */
    /* loaded from: classes-dex2jar.jar:c/a/a/a/f$a.class */
    public static class C1992a {

        /* renamed from: a */
        public String f7833a;

        /* renamed from: b */
        public String f7834b;

        /* renamed from: c */
        public String f7835c;

        /* renamed from: d */
        public String f7836d;

        /* renamed from: e */
        public int f7837e = 0;

        /* renamed from: f */
        public ArrayList<C2004k> f7838f;

        /* renamed from: g */
        public boolean f7839g;

        public /* synthetic */ C1992a(C2027w wVar) {
        }

        /* renamed from: a */
        public C1992a m31295a(C2004k kVar) {
            ArrayList<C2004k> arrayList = new ArrayList<>();
            arrayList.add(kVar);
            this.f7838f = arrayList;
            return this;
        }

        /* renamed from: a */
        public C1991f m31296a() {
            ArrayList<C2004k> arrayList = this.f7838f;
            if (arrayList == null || arrayList.isEmpty()) {
                throw new IllegalArgumentException("SkuDetails must be provided.");
            }
            ArrayList<C2004k> arrayList2 = this.f7838f;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                if (arrayList2.get(i) == null) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            }
            if (this.f7838f.size() > 1) {
                C2004k kVar = this.f7838f.get(0);
                String d = kVar.m31266d();
                ArrayList<C2004k> arrayList3 = this.f7838f;
                int size2 = arrayList3.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    if (!d.equals(arrayList3.get(i2).m31266d())) {
                        throw new IllegalArgumentException("SKUs should have the same type.");
                    }
                }
                String e = kVar.m31265e();
                ArrayList<C2004k> arrayList4 = this.f7838f;
                int size3 = arrayList4.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    if (!e.equals(arrayList4.get(i3).m31265e())) {
                        throw new IllegalArgumentException("All SKUs must have the same package name.");
                    }
                }
            }
            C1991f fVar = new C1991f(null);
            fVar.f7825a = true ^ this.f7838f.get(0).m31265e().isEmpty();
            fVar.f7826b = this.f7833a;
            fVar.f7829e = this.f7836d;
            fVar.f7827c = this.f7834b;
            fVar.f7828d = this.f7835c;
            fVar.f7830f = this.f7837e;
            fVar.f7831g = this.f7838f;
            fVar.f7832h = this.f7839g;
            return fVar;
        }
    }

    public /* synthetic */ C1991f(C2027w wVar) {
    }

    /* renamed from: i */
    public static C1992a m31297i() {
        return new C1992a(null);
    }

    /* renamed from: a */
    public String m31313a() {
        return this.f7827c;
    }

    /* renamed from: b */
    public String m31308b() {
        return this.f7828d;
    }

    /* renamed from: c */
    public int m31305c() {
        return this.f7830f;
    }

    /* renamed from: d */
    public boolean m31303d() {
        return this.f7832h;
    }

    /* renamed from: e */
    public final ArrayList<C2004k> m31301e() {
        ArrayList<C2004k> arrayList = new ArrayList<>();
        arrayList.addAll(this.f7831g);
        return arrayList;
    }

    /* renamed from: f */
    public final String m31300f() {
        return this.f7826b;
    }

    /* renamed from: g */
    public final boolean m31299g() {
        return (!this.f7832h && this.f7826b == null && this.f7829e == null && this.f7830f == 0 && !this.f7825a) ? false : true;
    }

    /* renamed from: h */
    public final String m31298h() {
        return this.f7829e;
    }
}
