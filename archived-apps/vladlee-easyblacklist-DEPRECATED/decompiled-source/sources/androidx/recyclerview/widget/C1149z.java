package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.z */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/z.class */
public final class C1149z extends AbstractC1148y {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1149z(RecyclerView.AbstractC1066i iVar) {
        super(iVar, (byte) 0);
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: a */
    public final int mo6713a(View view) {
        return RecyclerView.AbstractC1066i.m7111i(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: a */
    public final void mo6714a(int i) {
        this.f4911a.mo6939f(i);
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: b */
    public final int mo6712b(View view) {
        return RecyclerView.AbstractC1066i.m7107k(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: c */
    public final int mo6711c() {
        return this.f4911a.m7097t();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: c */
    public final int mo6710c(View view) {
        this.f4911a.m7141a(view, this.f4912b);
        return this.f4912b.right;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: d */
    public final int mo6709d() {
        return this.f4911a.m7099r() - this.f4911a.m7095v();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: d */
    public final int mo6708d(View view) {
        this.f4911a.m7141a(view, this.f4912b);
        return this.f4912b.left;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: e */
    public final int mo6707e() {
        return this.f4911a.m7099r();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: e */
    public final int mo6706e(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return RecyclerView.AbstractC1066i.m7116g(view) + layoutParams.leftMargin + layoutParams.rightMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: f */
    public final int mo6705f() {
        return (this.f4911a.m7099r() - this.f4911a.m7097t()) - this.f4911a.m7095v();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: f */
    public final int mo6704f(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return RecyclerView.AbstractC1066i.m7114h(view) + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: g */
    public final int mo6703g() {
        return this.f4911a.m7095v();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: h */
    public final int mo6702h() {
        return this.f4911a.m7101p();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: i */
    public final int mo6701i() {
        return this.f4911a.m7100q();
    }
}
