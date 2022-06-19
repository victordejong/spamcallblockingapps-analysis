package p193e.p194a.p437c.p438a.p507p.p511d;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.d.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/p.class */
public final class C9489p extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final int f28770a;

    /* renamed from: b */
    public final int f28771b;

    /* renamed from: c */
    public final int f28772c;

    /* renamed from: d */
    public final int f28773d;

    public C9489p(int i, int i2, int i3, int i4) {
        this.f28770a = i;
        this.f28771b = i2;
        this.f28772c = i3;
        this.f28773d = i4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(rect, "outRect");
        l.e(view, ViewAction.VIEW);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        int childLayoutPosition = recyclerView.getChildLayoutPosition(view);
        rect.right = this.f28772c;
        rect.left = this.f28770a;
        rect.bottom = this.f28773d;
        if (childLayoutPosition == 0) {
            rect.top = this.f28771b;
        }
    }
}
