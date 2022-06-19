package p193e.p194a.p437c.p438a.p480j.p483c;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/c.class */
public final class C9144c extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final int f27855a;

    /* renamed from: b */
    public final int f27856b;

    public C9144c(int i, int i2) {
        this.f27855a = i;
        this.f27856b = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(rect, "outRect");
        l.e(view, ViewAction.VIEW);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        float dimension = view.getResources().getDimension(this.f27855a);
        float dimension2 = view.getResources().getDimension(this.f27856b);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition != 0) {
            rect.left = (int) dimension2;
        }
        if (childAdapterPosition != c0347z.m42710b() - 1) {
            rect.right = (int) dimension2;
        }
        int i = (int) dimension;
        rect.top = i;
        rect.bottom = i;
    }
}
