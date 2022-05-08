package p081h.p082a.p083a.p088n.p090l;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import p081h.p082a.p083a.p088n.C5405c;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p092o.C5529e;
/* renamed from: h.a.a.n.l.l */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/l.class */
public class C5486l {

    /* renamed from: a */
    public final List<C5405c> f13660a;

    /* renamed from: b */
    public PointF f13661b;

    /* renamed from: c */
    public boolean f13662c;

    /* renamed from: h.a.a.n.l.l$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/l$b.class */
    public static class C5488b implements AbstractC5452m.AbstractC5453a<C5486l> {

        /* renamed from: a */
        public static final C5488b f13663a = new C5488b();

        /* renamed from: a */
        public static PointF m25374a(int i, JSONArray jSONArray) {
            if (i < jSONArray.length()) {
                JSONArray optJSONArray = jSONArray.optJSONArray(i);
                Object opt = optJSONArray.opt(0);
                Object opt2 = optJSONArray.opt(1);
                return new PointF(opt instanceof Double ? ((Double) opt).floatValue() : ((Integer) opt).intValue(), opt2 instanceof Double ? ((Double) opt2).floatValue() : ((Integer) opt2).intValue());
            }
            throw new IllegalArgumentException("Invalid index " + i + ". There are only " + jSONArray.length() + " points.");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
            if (r8.has("v") != false) goto L_0x0042;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0022, code lost:
            if (r8.has("v") != false) goto L_0x0042;
         */
        @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p081h.p082a.p083a.p088n.p090l.C5486l mo25373a(java.lang.Object r8, float r9) {
            /*
                Method dump skipped, instructions count: 590
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p082a.p083a.p088n.p090l.C5486l.C5488b.mo25373a(java.lang.Object, float):h.a.a.n.l.l");
        }
    }

    public C5486l() {
        this.f13660a = new ArrayList();
    }

    public C5486l(PointF pointF, boolean z, List<C5405c> list) {
        this.f13660a = new ArrayList();
        this.f13661b = pointF;
        this.f13662c = z;
        this.f13660a.addAll(list);
    }

    /* renamed from: a */
    public List<C5405c> m25379a() {
        return this.f13660a;
    }

    /* renamed from: a */
    public final void m25378a(float f, float f2) {
        if (this.f13661b == null) {
            this.f13661b = new PointF();
        }
        this.f13661b.set(f, f2);
    }

    /* renamed from: a */
    public void m25377a(C5486l lVar, C5486l lVar2, @FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        if (this.f13661b == null) {
            this.f13661b = new PointF();
        }
        this.f13662c = lVar.m25375c() || lVar2.m25375c();
        if (this.f13660a.isEmpty() || this.f13660a.size() == lVar.m25379a().size() || this.f13660a.size() == lVar2.m25379a().size()) {
            if (this.f13660a.isEmpty()) {
                for (int size = lVar.m25379a().size() - 1; size >= 0; size--) {
                    this.f13660a.add(new C5405c());
                }
            }
            PointF b = lVar.m25376b();
            PointF b2 = lVar2.m25376b();
            m25378a(C5529e.m25256b(b.x, b2.x, f), C5529e.m25256b(b.y, b2.y, f));
            for (int size2 = this.f13660a.size() - 1; size2 >= 0; size2--) {
                C5405c cVar = lVar.m25379a().get(size2);
                C5405c cVar2 = lVar2.m25379a().get(size2);
                PointF a = cVar.m25500a();
                PointF b3 = cVar.m25498b();
                PointF c = cVar.m25496c();
                PointF a2 = cVar2.m25500a();
                PointF b4 = cVar2.m25498b();
                PointF c2 = cVar2.m25496c();
                this.f13660a.get(size2).m25499a(C5529e.m25256b(a.x, a2.x, f), C5529e.m25256b(a.y, a2.y, f));
                this.f13660a.get(size2).m25497b(C5529e.m25256b(b3.x, b4.x, f), C5529e.m25256b(b3.y, b4.y, f));
                this.f13660a.get(size2).m25495c(C5529e.m25256b(c.x, c2.x, f), C5529e.m25256b(c.y, c2.y, f));
            }
            return;
        }
        throw new IllegalStateException("Curves must have the same number of control points. This: " + m25379a().size() + "\tShape 1: " + lVar.m25379a().size() + "\tShape 2: " + lVar2.m25379a().size());
    }

    /* renamed from: b */
    public PointF m25376b() {
        return this.f13661b;
    }

    /* renamed from: c */
    public boolean m25375c() {
        return this.f13662c;
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f13660a.size() + "closed=" + this.f13662c + '}';
    }
}
