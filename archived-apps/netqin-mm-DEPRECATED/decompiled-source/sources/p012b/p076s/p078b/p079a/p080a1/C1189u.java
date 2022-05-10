package p012b.p076s.p078b.p079a.p080a1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: b.s.b.a.a1.u */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/u.class */
public class C1189u {

    /* renamed from: h */
    public static final Comparator<C1191b> f4747h = C1187s.f4745a;

    /* renamed from: i */
    public static final Comparator<C1191b> f4748i = C1188t.f4746a;

    /* renamed from: a */
    public final int f4749a;

    /* renamed from: e */
    public int f4753e;

    /* renamed from: f */
    public int f4754f;

    /* renamed from: g */
    public int f4755g;

    /* renamed from: c */
    public final C1191b[] f4751c = new C1191b[5];

    /* renamed from: b */
    public final ArrayList<C1191b> f4750b = new ArrayList<>();

    /* renamed from: d */
    public int f4752d = -1;

    /* renamed from: b.s.b.a.a1.u$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/a1/u$b.class */
    public static class C1191b {

        /* renamed from: a */
        public int f4756a;

        /* renamed from: b */
        public int f4757b;

        /* renamed from: c */
        public float f4758c;

        public C1191b() {
        }
    }

    public C1189u(int i) {
        this.f4749a = i;
    }

    /* renamed from: a */
    public static final /* synthetic */ int m34320a(C1191b bVar, C1191b bVar2) {
        return bVar.f4756a - bVar2.f4756a;
    }

    /* renamed from: a */
    public float m34322a(float f) {
        float f2;
        m34319b();
        float f3 = this.f4754f;
        int i = 0;
        for (int i2 = 0; i2 < this.f4750b.size(); i2++) {
            C1191b bVar = this.f4750b.get(i2);
            i += bVar.f4757b;
            if (i >= f * f3) {
                return bVar.f4758c;
            }
        }
        if (this.f4750b.isEmpty()) {
            f2 = Float.NaN;
        } else {
            ArrayList<C1191b> arrayList = this.f4750b;
            f2 = arrayList.get(arrayList.size() - 1).f4758c;
        }
        return f2;
    }

    /* renamed from: a */
    public final void m34323a() {
        if (this.f4752d != 1) {
            Collections.sort(this.f4750b, f4747h);
            this.f4752d = 1;
        }
    }

    /* renamed from: a */
    public void m34321a(int i, float f) {
        C1191b bVar;
        m34323a();
        int i2 = this.f4755g;
        if (i2 > 0) {
            C1191b[] bVarArr = this.f4751c;
            int i3 = i2 - 1;
            this.f4755g = i3;
            bVar = bVarArr[i3];
        } else {
            bVar = new C1191b();
        }
        int i4 = this.f4753e;
        this.f4753e = i4 + 1;
        bVar.f4756a = i4;
        bVar.f4757b = i;
        bVar.f4758c = f;
        this.f4750b.add(bVar);
        this.f4754f += i;
        while (true) {
            int i5 = this.f4754f;
            int i6 = this.f4749a;
            if (i5 > i6) {
                int i7 = i5 - i6;
                C1191b bVar2 = this.f4750b.get(0);
                int i8 = bVar2.f4757b;
                if (i8 <= i7) {
                    this.f4754f -= i8;
                    this.f4750b.remove(0);
                    int i9 = this.f4755g;
                    if (i9 < 5) {
                        C1191b[] bVarArr2 = this.f4751c;
                        this.f4755g = i9 + 1;
                        bVarArr2[i9] = bVar2;
                    }
                } else {
                    bVar2.f4757b = i8 - i7;
                    this.f4754f -= i7;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public final void m34319b() {
        if (this.f4752d != 0) {
            Collections.sort(this.f4750b, f4748i);
            this.f4752d = 0;
        }
    }

    /* renamed from: c */
    public void m34317c() {
        this.f4750b.clear();
        this.f4752d = -1;
        this.f4753e = 0;
        this.f4754f = 0;
    }
}
