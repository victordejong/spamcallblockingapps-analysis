package p193e.p194a.p372b0.p373a.p377b0;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.b0.a.b0.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/b0/a.class */
public final class C8250a extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final int f25460a;

    public C8250a(int i) {
        this.f25460a = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(rect, "outRect");
        l.e(view, ViewAction.VIEW);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        int childLayoutPosition = recyclerView.getChildLayoutPosition(view);
        int i = this.f25460a;
        rect.right = i;
        rect.left = i;
        rect.bottom = i;
        if (childLayoutPosition == 0) {
            rect.top = i;
        }
    }
}
