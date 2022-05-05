package androidx.core.widget;

import android.os.Build;
import android.view.View;
import android.widget.ListView;
/* renamed from: androidx.core.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/h.class */
public final class C0783h extends AbstractView$OnTouchListenerC0774a {

    /* renamed from: f */
    private final ListView f3247f;

    public C0783h(ListView listView) {
        super(listView);
        this.f3247f = listView;
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0774a
    /* renamed from: a */
    public final void mo8139a(int i) {
        View childAt;
        ListView listView = this.f3247f;
        if (Build.VERSION.SDK_INT >= 19) {
            listView.scrollListBy(i);
            return;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (firstVisiblePosition != -1 && (childAt = listView.getChildAt(0)) != null) {
            listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
        }
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0774a
    /* renamed from: b */
    public final boolean mo8138b(int i) {
        ListView listView = this.f3247f;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (i > 0) {
            return firstVisiblePosition + childCount < count || listView.getChildAt(childCount - 1).getBottom() > listView.getHeight();
        }
        if (i < 0) {
            return firstVisiblePosition > 0 || listView.getChildAt(0).getTop() < 0;
        }
        return false;
    }
}
