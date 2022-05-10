package p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
/* renamed from: c.d.e.q.p0.j.r.a.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/r/a/c.class */
public class C5628c {

    /* renamed from: a */
    public List<C5630d> f18700a = new ArrayList();

    /* renamed from: b */
    public int f18701b = 0;

    /* renamed from: c */
    public int f18702c = 0;

    /* renamed from: c.d.e.q.p0.j.r.a.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/r/a/c$a.class */
    public class C5629a implements Comparator<C5630d> {
        public C5629a(C5628c cVar) {
        }

        /* renamed from: a */
        public int compare(C5630d dVar, C5630d dVar2) {
            if (dVar.m23374a() > dVar2.m23374a()) {
                return -1;
            }
            return dVar.m23374a() < dVar2.m23374a() ? 1 : 0;
        }
    }

    /* renamed from: a */
    public int m23381a() {
        int i = 0;
        for (C5630d dVar : this.f18700a) {
            if (!dVar.m23369d()) {
                i += dVar.m23374a();
            }
        }
        return i;
    }

    /* renamed from: a */
    public void m23380a(int i) {
        float f;
        ArrayList<C5630d> arrayList = new ArrayList();
        for (C5630d dVar : this.f18700a) {
            if (dVar.m23369d()) {
                arrayList.add(dVar);
            }
        }
        Collections.sort(arrayList, new C5629a(this));
        int i2 = 0;
        for (C5630d dVar2 : arrayList) {
            i2 += dVar2.m23374a();
        }
        int size = arrayList.size();
        if (size < 6) {
            float f2 = 1.0f - ((size - 1) * 0.2f);
            C5562j.m23513a("VVGM (minFrac, maxFrac)", 0.2f, f2);
            float f3 = 0.0f;
            for (C5630d dVar3 : arrayList) {
                float a = dVar3.m23374a() / i2;
                if (a > f2) {
                    f3 += a - f2;
                    f = f2;
                } else {
                    f = a;
                }
                f3 = f3;
                if (a < 0.2f) {
                    float min = Math.min(0.2f - a, f3);
                    f3 -= min;
                    f = a + min;
                }
                C5562j.m23513a("\t(desired, granted)", a, f);
                dVar3.m23371b(this.f18701b, (int) (f * i));
            }
            return;
        }
        throw new IllegalStateException("VerticalViewGroupMeasure only supports up to 5 children");
    }

    /* renamed from: a */
    public void m23379a(int i, int i2) {
        this.f18701b = i;
        this.f18702c = i2;
        this.f18700a = new ArrayList();
    }

    /* renamed from: a */
    public void m23378a(View view, boolean z) {
        C5630d dVar = new C5630d(view, z);
        dVar.m23371b(this.f18701b, this.f18702c);
        this.f18700a.add(dVar);
    }

    /* renamed from: b */
    public int m23377b() {
        int i = 0;
        for (C5630d dVar : this.f18700a) {
            i += dVar.m23374a();
        }
        return i;
    }

    /* renamed from: c */
    public List<C5630d> m23376c() {
        return this.f18700a;
    }
}
