package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.C1113d;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.af */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/af.class */
public final class C1093af implements C1113d.AbstractC1115b {

    /* renamed from: a */
    final /* synthetic */ RecyclerView f4746a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1093af(RecyclerView recyclerView) {
        this.f4746a = recyclerView;
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: a */
    public final int mo6783a() {
        return this.f4746a.getChildCount();
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: a */
    public final int mo6781a(View view) {
        return this.f4746a.indexOfChild(view);
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: a */
    public final void mo6782a(int i) {
        View childAt = this.f4746a.getChildAt(i);
        if (childAt != null) {
            this.f4746a.m7203i(childAt);
            childAt.clearAnimation();
        }
        this.f4746a.removeViewAt(i);
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: a */
    public final void mo6780a(View view, int i) {
        this.f4746a.addView(view, i);
        this.f4746a.m7201j(view);
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: a */
    public final void mo6779a(View view, int i, ViewGroup.LayoutParams layoutParams) {
        RecyclerView.AbstractC1082t d = RecyclerView.m7217d(view);
        if (d != null) {
            if (d.m7005q() || d.m7017e()) {
                d.m7010l();
            } else {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + d + this.f4746a.m7268a());
            }
        }
        this.f4746a.attachViewToParent(view, i, layoutParams);
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: b */
    public final View mo6777b(int i) {
        return this.f4746a.getChildAt(i);
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: b */
    public final RecyclerView.AbstractC1082t mo6776b(View view) {
        return RecyclerView.m7217d(view);
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: b */
    public final void mo6778b() {
        int childCount = this.f4746a.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View b = mo6777b(i);
            this.f4746a.m7203i(b);
            b.clearAnimation();
        }
        this.f4746a.removeAllViews();
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: c */
    public final void mo6775c(int i) {
        RecyclerView.AbstractC1082t d;
        View b = mo6777b(i);
        if (!(b == null || (d = RecyclerView.m7217d(b)) == null)) {
            if (!d.m7005q() || d.m7017e()) {
                d.m7020c(256);
            } else {
                throw new IllegalArgumentException("called detach on an already detached child " + d + this.f4746a.m7268a());
            }
        }
        this.f4746a.detachViewFromParent(i);
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: c */
    public final void mo6774c(View view) {
        RecyclerView.AbstractC1082t d = RecyclerView.m7217d(view);
        if (d != null) {
            d.m7025a(this.f4746a);
        }
    }

    @Override // androidx.recyclerview.widget.C1113d.AbstractC1115b
    /* renamed from: d */
    public final void mo6773d(View view) {
        RecyclerView.AbstractC1082t d = RecyclerView.m7217d(view);
        if (d != null) {
            d.m7022b(this.f4746a);
        }
    }
}
