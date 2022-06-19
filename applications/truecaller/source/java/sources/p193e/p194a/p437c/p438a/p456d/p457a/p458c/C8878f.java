package p193e.p194a.p437c.p438a.p456d.p457a.p458c;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.a.c.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/a/c/f.class */
public final class C8878f extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final int f27044a;

    public C8878f(int i) {
        this.f27044a = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(rect, "outRect");
        l.e(view, ViewAction.VIEW);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        if (recyclerView.getChildAdapterPosition(view) != 0) {
            rect.left = this.f27044a;
        } else {
            rect.left = 0;
        }
    }
}
