package p193e.p194a.p372b0.p373a.p390w;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import s1.z.c.l;
/* renamed from: e.a.b0.a.w.g */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/w/g.class */
public abstract class AbstractC8348g extends RecyclerView.AbstractC0338t {

    /* renamed from: a */
    public boolean f25677a;

    /* renamed from: b */
    public int f25678b;

    /* renamed from: c */
    public int f25679c;

    /* renamed from: d */
    public abstract void mo27784d(boolean z);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        l.e(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, i);
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        this.f25677a = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        l.e(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i, i2);
        RecyclerView.AbstractC0329o layoutManager = recyclerView.getLayoutManager();
        RecyclerView.AbstractC0329o abstractC0329o = layoutManager;
        if (!(layoutManager instanceof LinearLayoutManager)) {
            abstractC0329o = null;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) abstractC0329o;
        int findFirstVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findFirstVisibleItemPosition() : 0;
        View childAt = recyclerView.getChildAt(0);
        int top = childAt != null ? childAt.getTop() : 0;
        int i3 = this.f25678b;
        boolean z = true;
        boolean z2 = findFirstVisibleItemPosition > i3;
        if (i3 == findFirstVisibleItemPosition) {
            int i4 = this.f25679c;
            z2 = top < i4;
            z = false;
            if (Math.abs(i4 - top) > 1) {
                z = true;
            }
        }
        if (z && this.f25677a) {
            mo27784d(z2);
        }
        this.f25678b = findFirstVisibleItemPosition;
        this.f25679c = top;
    }
}
