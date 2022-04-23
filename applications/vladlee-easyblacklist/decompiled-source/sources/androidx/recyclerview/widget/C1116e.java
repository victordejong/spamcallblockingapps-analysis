package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.p037g.C0741t;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e.class */
public final class C1116e extends AbstractC1101am {

    /* renamed from: i */
    private static TimeInterpolator f4779i;

    /* renamed from: j */
    private ArrayList<RecyclerView.AbstractC1082t> f4787j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<RecyclerView.AbstractC1082t> f4788k = new ArrayList<>();

    /* renamed from: l */
    private ArrayList<C1118b> f4789l = new ArrayList<>();

    /* renamed from: m */
    private ArrayList<C1117a> f4790m = new ArrayList<>();

    /* renamed from: a */
    ArrayList<ArrayList<RecyclerView.AbstractC1082t>> f4780a = new ArrayList<>();

    /* renamed from: b */
    ArrayList<ArrayList<C1118b>> f4781b = new ArrayList<>();

    /* renamed from: c */
    ArrayList<ArrayList<C1117a>> f4782c = new ArrayList<>();

    /* renamed from: d */
    ArrayList<RecyclerView.AbstractC1082t> f4783d = new ArrayList<>();

    /* renamed from: e */
    ArrayList<RecyclerView.AbstractC1082t> f4784e = new ArrayList<>();

    /* renamed from: f */
    ArrayList<RecyclerView.AbstractC1082t> f4785f = new ArrayList<>();

    /* renamed from: g */
    ArrayList<RecyclerView.AbstractC1082t> f4786g = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$a.class */
    public static final class C1117a {

        /* renamed from: a */
        public RecyclerView.AbstractC1082t f4791a;

        /* renamed from: b */
        public RecyclerView.AbstractC1082t f4792b;

        /* renamed from: c */
        public int f4793c;

        /* renamed from: d */
        public int f4794d;

        /* renamed from: e */
        public int f4795e;

        /* renamed from: f */
        public int f4796f;

        private C1117a(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1082t tVar2) {
            this.f4791a = tVar;
            this.f4792b = tVar2;
        }

        C1117a(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1082t tVar2, int i, int i2, int i3, int i4) {
            this(tVar, tVar2);
            this.f4793c = i;
            this.f4794d = i2;
            this.f4795e = i3;
            this.f4796f = i4;
        }

        public final String toString() {
            return "ChangeInfo{oldHolder=" + this.f4791a + ", newHolder=" + this.f4792b + ", fromX=" + this.f4793c + ", fromY=" + this.f4794d + ", toX=" + this.f4795e + ", toY=" + this.f4796f + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$b.class */
    public static final class C1118b {

        /* renamed from: a */
        public RecyclerView.AbstractC1082t f4797a;

        /* renamed from: b */
        public int f4798b;

        /* renamed from: c */
        public int f4799c;

        /* renamed from: d */
        public int f4800d;

        /* renamed from: e */
        public int f4801e;

        C1118b(RecyclerView.AbstractC1082t tVar, int i, int i2, int i3, int i4) {
            this.f4797a = tVar;
            this.f4798b = i;
            this.f4799c = i2;
            this.f4800d = i3;
            this.f4801e = i4;
        }
    }

    /* renamed from: a */
    private void m6767a(C1117a aVar) {
        if (aVar.f4791a != null) {
            m6766a(aVar, aVar.f4791a);
        }
        if (aVar.f4792b != null) {
            m6766a(aVar, aVar.f4792b);
        }
    }

    /* renamed from: a */
    private static void m6765a(List<RecyclerView.AbstractC1082t> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f4658a.animate().cancel();
        }
    }

    /* renamed from: a */
    private void m6764a(List<C1117a> list, RecyclerView.AbstractC1082t tVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C1117a aVar = list.get(size);
            if (m6766a(aVar, tVar) && aVar.f4791a == null && aVar.f4792b == null) {
                list.remove(aVar);
            }
        }
    }

    /* renamed from: a */
    private boolean m6766a(C1117a aVar, RecyclerView.AbstractC1082t tVar) {
        if (aVar.f4792b == tVar) {
            aVar.f4792b = null;
        } else if (aVar.f4791a != tVar) {
            return false;
        } else {
            aVar.f4791a = null;
        }
        tVar.f4658a.setAlpha(1.0f);
        tVar.f4658a.setTranslationX(0.0f);
        tVar.f4658a.setTranslationY(0.0f);
        m7159f(tVar);
        return true;
    }

    /* renamed from: h */
    private void m6758h(RecyclerView.AbstractC1082t tVar) {
        if (f4779i == null) {
            f4779i = new ValueAnimator().getInterpolator();
        }
        tVar.f4658a.animate().setInterpolator(f4779i);
        mo6760c(tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: a */
    public final void mo6772a() {
        boolean z = !this.f4787j.isEmpty();
        boolean z2 = !this.f4789l.isEmpty();
        boolean z3 = !this.f4790m.isEmpty();
        boolean z4 = !this.f4788k.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.AbstractC1082t> it = this.f4787j.iterator();
            while (it.hasNext()) {
                RecyclerView.AbstractC1082t next = it.next();
                View view = next.f4658a;
                ViewPropertyAnimator animate = view.animate();
                this.f4785f.add(next);
                animate.setDuration(m7158g()).alpha(0.0f).setListener(new C1122i(this, next, animate, view)).start();
            }
            this.f4787j.clear();
            if (z2) {
                ArrayList<C1118b> arrayList = new ArrayList<>();
                arrayList.addAll(this.f4789l);
                this.f4781b.add(arrayList);
                this.f4789l.clear();
                RunnableC1119f fVar = new RunnableC1119f(this, arrayList);
                if (z) {
                    C0741t.m8343a(arrayList.get(0).f4797a.f4658a, fVar, m7158g());
                } else {
                    fVar.run();
                }
            }
            if (z3) {
                ArrayList<C1117a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f4790m);
                this.f4782c.add(arrayList2);
                this.f4790m.clear();
                RunnableC1120g gVar = new RunnableC1120g(this, arrayList2);
                if (z) {
                    C0741t.m8343a(arrayList2.get(0).f4791a.f4658a, gVar, m7158g());
                } else {
                    gVar.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.AbstractC1082t> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f4788k);
                this.f4780a.add(arrayList3);
                this.f4788k.clear();
                RunnableC1121h hVar = new RunnableC1121h(this, arrayList3);
                if (z || z2 || z3) {
                    long j = 0;
                    long g = z ? m7158g() : 0L;
                    long e = z2 ? m7162e() : 0L;
                    if (z3) {
                        j = m7157h();
                    }
                    C0741t.m8343a(arrayList3.get(0).f4658a, hVar, g + Math.max(e, j));
                    return;
                }
                hVar.run();
            }
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC1101am
    /* renamed from: a */
    public final boolean mo6771a(RecyclerView.AbstractC1082t tVar) {
        m6758h(tVar);
        this.f4787j.add(tVar);
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC1101am
    /* renamed from: a */
    public final boolean mo6770a(RecyclerView.AbstractC1082t tVar, int i, int i2, int i3, int i4) {
        View view = tVar.f4658a;
        int translationX = i + ((int) tVar.f4658a.getTranslationX());
        int translationY = i2 + ((int) tVar.f4658a.getTranslationY());
        m6758h(tVar);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            m7159f(tVar);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f4789l.add(new C1118b(tVar, translationX, translationY, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC1101am
    /* renamed from: a */
    public final boolean mo6769a(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1082t tVar2, int i, int i2, int i3, int i4) {
        if (tVar == tVar2) {
            return mo6770a(tVar, i, i2, i3, i4);
        }
        float translationX = tVar.f4658a.getTranslationX();
        float translationY = tVar.f4658a.getTranslationY();
        float alpha = tVar.f4658a.getAlpha();
        m6758h(tVar);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        tVar.f4658a.setTranslationX(translationX);
        tVar.f4658a.setTranslationY(translationY);
        tVar.f4658a.setAlpha(alpha);
        if (tVar2 != null) {
            m6758h(tVar2);
            tVar2.f4658a.setTranslationX(-i5);
            tVar2.f4658a.setTranslationY(-i6);
            tVar2.f4658a.setAlpha(0.0f);
        }
        this.f4790m.add(new C1117a(tVar, tVar2, i, i2, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: a */
    public final boolean mo6768a(RecyclerView.AbstractC1082t tVar, List<Object> list) {
        return !list.isEmpty() || super.mo6768a(tVar, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: b */
    public final boolean mo6763b() {
        return !this.f4788k.isEmpty() || !this.f4790m.isEmpty() || !this.f4789l.isEmpty() || !this.f4787j.isEmpty() || !this.f4784e.isEmpty() || !this.f4785f.isEmpty() || !this.f4783d.isEmpty() || !this.f4786g.isEmpty() || !this.f4781b.isEmpty() || !this.f4780a.isEmpty() || !this.f4782c.isEmpty();
    }

    @Override // androidx.recyclerview.widget.AbstractC1101am
    /* renamed from: b */
    public final boolean mo6762b(RecyclerView.AbstractC1082t tVar) {
        m6758h(tVar);
        tVar.f4658a.setAlpha(0.0f);
        this.f4788k.add(tVar);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m6761c() {
        if (!mo6763b()) {
            m7156i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: c */
    public final void mo6760c(RecyclerView.AbstractC1082t tVar) {
        View view = tVar.f4658a;
        view.animate().cancel();
        for (int size = this.f4789l.size() - 1; size >= 0; size--) {
            if (this.f4789l.get(size).f4797a == tVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                m7159f(tVar);
                this.f4789l.remove(size);
            }
        }
        m6764a(this.f4790m, tVar);
        if (this.f4787j.remove(tVar)) {
            view.setAlpha(1.0f);
            m7159f(tVar);
        }
        if (this.f4788k.remove(tVar)) {
            view.setAlpha(1.0f);
            m7159f(tVar);
        }
        for (int size2 = this.f4782c.size() - 1; size2 >= 0; size2--) {
            ArrayList<C1117a> arrayList = this.f4782c.get(size2);
            m6764a(arrayList, tVar);
            if (arrayList.isEmpty()) {
                this.f4782c.remove(size2);
            }
        }
        for (int size3 = this.f4781b.size() - 1; size3 >= 0; size3--) {
            ArrayList<C1118b> arrayList2 = this.f4781b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f4797a == tVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    m7159f(tVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f4781b.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f4780a.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.AbstractC1082t> arrayList3 = this.f4780a.get(size5);
            if (arrayList3.remove(tVar)) {
                view.setAlpha(1.0f);
                m7159f(tVar);
                if (arrayList3.isEmpty()) {
                    this.f4780a.remove(size5);
                }
            }
        }
        this.f4785f.remove(tVar);
        this.f4783d.remove(tVar);
        this.f4786g.remove(tVar);
        this.f4784e.remove(tVar);
        m6761c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: d */
    public final void mo6759d() {
        for (int size = this.f4789l.size() - 1; size >= 0; size--) {
            C1118b bVar = this.f4789l.get(size);
            View view = bVar.f4797a.f4658a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            m7159f(bVar.f4797a);
            this.f4789l.remove(size);
        }
        for (int size2 = this.f4787j.size() - 1; size2 >= 0; size2--) {
            m7159f(this.f4787j.get(size2));
            this.f4787j.remove(size2);
        }
        for (int size3 = this.f4788k.size() - 1; size3 >= 0; size3--) {
            RecyclerView.AbstractC1082t tVar = this.f4788k.get(size3);
            tVar.f4658a.setAlpha(1.0f);
            m7159f(tVar);
            this.f4788k.remove(size3);
        }
        for (int size4 = this.f4790m.size() - 1; size4 >= 0; size4--) {
            m6767a(this.f4790m.get(size4));
        }
        this.f4790m.clear();
        if (mo6763b()) {
            for (int size5 = this.f4781b.size() - 1; size5 >= 0; size5--) {
                ArrayList<C1118b> arrayList = this.f4781b.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    C1118b bVar2 = arrayList.get(size6);
                    View view2 = bVar2.f4797a.f4658a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    m7159f(bVar2.f4797a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f4781b.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f4780a.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.AbstractC1082t> arrayList2 = this.f4780a.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.AbstractC1082t tVar2 = arrayList2.get(size8);
                    tVar2.f4658a.setAlpha(1.0f);
                    m7159f(tVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f4780a.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f4782c.size() - 1; size9 >= 0; size9--) {
                ArrayList<C1117a> arrayList3 = this.f4782c.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    m6767a(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f4782c.remove(arrayList3);
                    }
                }
            }
            m6765a(this.f4785f);
            m6765a(this.f4784e);
            m6765a(this.f4783d);
            m6765a(this.f4786g);
            m7156i();
        }
    }
}
