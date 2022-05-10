package p012b.p122v.p123d;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: b.v.d.k */
/* loaded from: classes-dex2jar.jar:b/v/d/k.class */
public abstract class AbstractC1939k extends RecyclerView.AbstractC0505l {

    /* renamed from: g */
    public boolean f7636g = true;

    /* renamed from: a */
    public final void m31566a(RecyclerView.AbstractC0495b0 b0Var, boolean z) {
        m31562c(b0Var, z);
        m37381b(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: a */
    public boolean mo31571a(RecyclerView.AbstractC0495b0 b0Var) {
        return !this.f7636g || b0Var.isInvalid();
    }

    /* renamed from: a */
    public abstract boolean mo31570a(RecyclerView.AbstractC0495b0 b0Var, int i, int i2, int i3, int i4);

    /* renamed from: a */
    public abstract boolean mo31569a(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0495b0 b0Var2, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: a */
    public boolean mo31568a(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0495b0 b0Var2, RecyclerView.AbstractC0505l.C0508c cVar, RecyclerView.AbstractC0505l.C0508c cVar2) {
        int i;
        int i2;
        int i3 = cVar.f2592a;
        int i4 = cVar.f2593b;
        if (b0Var2.shouldIgnore()) {
            i2 = cVar.f2592a;
            i = cVar.f2593b;
        } else {
            i2 = cVar2.f2592a;
            i = cVar2.f2593b;
        }
        return mo31569a(b0Var, b0Var2, i3, i4, i2, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: a */
    public boolean mo31567a(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0505l.C0508c cVar, RecyclerView.AbstractC0505l.C0508c cVar2) {
        return (cVar == null || (cVar.f2592a == cVar2.f2592a && cVar.f2593b == cVar2.f2593b)) ? mo31560f(b0Var) : mo31570a(b0Var, cVar.f2592a, cVar.f2593b, cVar2.f2592a, cVar2.f2593b);
    }

    /* renamed from: b */
    public final void m31564b(RecyclerView.AbstractC0495b0 b0Var, boolean z) {
        m31561d(b0Var, z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: b */
    public boolean mo31565b(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0505l.C0508c cVar, RecyclerView.AbstractC0505l.C0508c cVar2) {
        int i = cVar.f2592a;
        int i2 = cVar.f2593b;
        View view = b0Var.itemView;
        int left = cVar2 == null ? view.getLeft() : cVar2.f2592a;
        int top = cVar2 == null ? view.getTop() : cVar2.f2593b;
        if (b0Var.isRemoved() || (i == left && i2 == top)) {
            return mo31559g(b0Var);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return mo31570a(b0Var, i, i2, left, top);
    }

    /* renamed from: c */
    public void m31562c(RecyclerView.AbstractC0495b0 b0Var, boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l
    /* renamed from: c */
    public boolean mo31563c(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0505l.C0508c cVar, RecyclerView.AbstractC0505l.C0508c cVar2) {
        if (cVar.f2592a != cVar2.f2592a || cVar.f2593b != cVar2.f2593b) {
            return mo31570a(b0Var, cVar.f2592a, cVar.f2593b, cVar2.f2592a, cVar2.f2593b);
        }
        m31556j(b0Var);
        return false;
    }

    /* renamed from: d */
    public void m31561d(RecyclerView.AbstractC0495b0 b0Var, boolean z) {
    }

    /* renamed from: f */
    public abstract boolean mo31560f(RecyclerView.AbstractC0495b0 b0Var);

    /* renamed from: g */
    public abstract boolean mo31559g(RecyclerView.AbstractC0495b0 b0Var);

    /* renamed from: h */
    public final void m31558h(RecyclerView.AbstractC0495b0 b0Var) {
        m31552n(b0Var);
        m37381b(b0Var);
    }

    /* renamed from: i */
    public final void m31557i(RecyclerView.AbstractC0495b0 b0Var) {
        m31551o(b0Var);
    }

    /* renamed from: j */
    public final void m31556j(RecyclerView.AbstractC0495b0 b0Var) {
        m31550p(b0Var);
        m37381b(b0Var);
    }

    /* renamed from: k */
    public final void m31555k(RecyclerView.AbstractC0495b0 b0Var) {
        m31549q(b0Var);
    }

    /* renamed from: l */
    public final void m31554l(RecyclerView.AbstractC0495b0 b0Var) {
        m31548r(b0Var);
        m37381b(b0Var);
    }

    /* renamed from: m */
    public final void m31553m(RecyclerView.AbstractC0495b0 b0Var) {
        m31547s(b0Var);
    }

    /* renamed from: n */
    public void m31552n(RecyclerView.AbstractC0495b0 b0Var) {
    }

    /* renamed from: o */
    public void m31551o(RecyclerView.AbstractC0495b0 b0Var) {
    }

    /* renamed from: p */
    public void m31550p(RecyclerView.AbstractC0495b0 b0Var) {
    }

    /* renamed from: q */
    public void m31549q(RecyclerView.AbstractC0495b0 b0Var) {
    }

    /* renamed from: r */
    public void m31548r(RecyclerView.AbstractC0495b0 b0Var) {
    }

    /* renamed from: s */
    public void m31547s(RecyclerView.AbstractC0495b0 b0Var) {
    }
}
