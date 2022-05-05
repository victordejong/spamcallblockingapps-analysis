package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.aa */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/aa.class */
public final class C1088aa extends AbstractC1148y {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1088aa(RecyclerView.AbstractC1066i iVar) {
        super(iVar, (byte) 0);
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: a */
    public final int mo6713a(View view) {
        return RecyclerView.AbstractC1066i.m7109j(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: a */
    public final void mo6714a(int i) {
        this.f4911a.mo6936g(i);
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: b */
    public final int mo6712b(View view) {
        return RecyclerView.AbstractC1066i.m7105l(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: c */
    public final int mo6711c() {
        return this.f4911a.m7096u();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: c */
    public final int mo6710c(View view) {
        this.f4911a.m7141a(view, this.f4912b);
        return this.f4912b.bottom;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: d */
    public final int mo6709d() {
        return this.f4911a.m7098s() - this.f4911a.m7094w();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: d */
    public final int mo6708d(View view) {
        this.f4911a.m7141a(view, this.f4912b);
        return this.f4912b.top;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: e */
    public final int mo6707e() {
        return this.f4911a.m7098s();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: e */
    public final int mo6706e(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return RecyclerView.AbstractC1066i.m7114h(view) + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: f */
    public final int mo6705f() {
        return (this.f4911a.m7098s() - this.f4911a.m7096u()) - this.f4911a.m7094w();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: f */
    public final int mo6704f(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return RecyclerView.AbstractC1066i.m7116g(view) + layoutParams.leftMargin + layoutParams.rightMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: g */
    public final int mo6703g() {
        return this.f4911a.m7094w();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: h */
    public final int mo6702h() {
        return this.f4911a.m7100q();
    }

    @Override // androidx.recyclerview.widget.AbstractC1148y
    /* renamed from: i */
    public final int mo6701i() {
        return this.f4911a.m7101p();
    }
}
