package androidx.viewpager2.widget;

import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/FakeDrag.class */
public final class FakeDrag {

    /* renamed from: a */
    private final ScrollEventAdapter f5610a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FakeDrag(ViewPager2 viewPager2, ScrollEventAdapter scrollEventAdapter, RecyclerView recyclerView) {
        this.f5610a = scrollEventAdapter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean m16444a() {
        return this.f5610a.m16434i();
    }
}
