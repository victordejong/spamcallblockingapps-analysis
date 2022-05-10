package p131c.p161d.p170b.p188c.p210w0.p215v;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.w0.v.c */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/c.class */
public abstract class AbstractC3087c {

    /* renamed from: a */
    public final int f11213a;

    /* renamed from: c.d.b.c.w0.v.c$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/c$a.class */
    public static final class C3088a extends AbstractC3087c {

        /* renamed from: b */
        public final long f11214b;

        /* renamed from: c */
        public final List<C3089b> f11215c = new ArrayList();

        /* renamed from: d */
        public final List<C3088a> f11216d = new ArrayList();

        public C3088a(int i, long j) {
            super(i);
            this.f11214b = j;
        }

        /* renamed from: a */
        public void m27918a(C3088a aVar) {
            this.f11216d.add(aVar);
        }

        /* renamed from: a */
        public void m27917a(C3089b bVar) {
            this.f11215c.add(bVar);
        }

        /* renamed from: d */
        public C3088a m27916d(int i) {
            int size = this.f11216d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C3088a aVar = this.f11216d.get(i2);
                if (aVar.f11213a == i) {
                    return aVar;
                }
            }
            return null;
        }

        /* renamed from: e */
        public C3089b m27915e(int i) {
            int size = this.f11215c.size();
            for (int i2 = 0; i2 < size; i2++) {
                C3089b bVar = this.f11215c.get(i2);
                if (bVar.f11213a == i) {
                    return bVar;
                }
            }
            return null;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p215v.AbstractC3087c
        public String toString() {
            return AbstractC3087c.m27921a(this.f11213a) + " leaves: " + Arrays.toString(this.f11215c.toArray()) + " containers: " + Arrays.toString(this.f11216d.toArray());
        }
    }

    /* renamed from: c.d.b.c.w0.v.c$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/c$b.class */
    public static final class C3089b extends AbstractC3087c {

        /* renamed from: b */
        public final C2904v f11217b;

        public C3089b(int i, C2904v vVar) {
            super(i);
            this.f11217b = vVar;
        }
    }

    public AbstractC3087c(int i) {
        this.f11213a = i;
    }

    /* renamed from: a */
    public static String m27921a(int i) {
        return "" + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    /* renamed from: b */
    public static int m27920b(int i) {
        return i & 16777215;
    }

    /* renamed from: c */
    public static int m27919c(int i) {
        return (i >> 24) & 255;
    }

    public String toString() {
        return m27921a(this.f11213a);
    }
}
