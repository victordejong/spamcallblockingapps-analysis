package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.am */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/am.class */
public abstract class AbstractC1101am extends RecyclerView.AbstractC1061f {

    /* renamed from: h */
    boolean f4753h = true;

    /* renamed from: a */
    public abstract boolean mo6771a(RecyclerView.AbstractC1082t tVar);

    /* renamed from: a */
    public abstract boolean mo6770a(RecyclerView.AbstractC1082t tVar, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: a */
    public final boolean mo6848a(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2) {
        int i = bVar.f4576a;
        int i2 = bVar.f4577b;
        View view = tVar.f4658a;
        int left = bVar2 == null ? view.getLeft() : bVar2.f4576a;
        int top = bVar2 == null ? view.getTop() : bVar2.f4577b;
        if (tVar.m7006p() || (i == left && i2 == top)) {
            return mo6771a(tVar);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return mo6770a(tVar, i, i2, left, top);
    }

    /* renamed from: a */
    public abstract boolean mo6769a(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1082t tVar2, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: a */
    public final boolean mo6847a(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1082t tVar2, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2) {
        int i;
        int i2;
        int i3 = bVar.f4576a;
        int i4 = bVar.f4577b;
        if (tVar2.m7017e()) {
            i2 = bVar.f4576a;
            i = bVar.f4577b;
        } else {
            i2 = bVar2.f4576a;
            i = bVar2.f4577b;
        }
        return mo6769a(tVar, tVar2, i3, i4, i2, i);
    }

    /* renamed from: b */
    public abstract boolean mo6762b(RecyclerView.AbstractC1082t tVar);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: b */
    public final boolean mo6846b(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2) {
        return (bVar == null || (bVar.f4576a == bVar2.f4576a && bVar.f4577b == bVar2.f4577b)) ? mo6762b(tVar) : mo6770a(tVar, bVar.f4576a, bVar.f4577b, bVar2.f4576a, bVar2.f4577b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: c */
    public final boolean mo6845c(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2) {
        if (bVar.f4576a != bVar2.f4576a || bVar.f4577b != bVar2.f4577b) {
            return mo6770a(tVar, bVar.f4576a, bVar.f4577b, bVar2.f4576a, bVar2.f4577b);
        }
        m7159f(tVar);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f
    /* renamed from: g */
    public final boolean mo6844g(RecyclerView.AbstractC1082t tVar) {
        return !this.f4753h || tVar.m7009m();
    }
}
