package p459j.p460a.p604y0.p608d.p609h;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.y0.d.h.c */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/c.class */
public final class C14539c extends RecyclerView.ItemDecoration {

    /* renamed from: a */
    public final int f32488a;

    public C14539c(int i) {
        this.f32488a = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        C15149k.m377b(rect, "outRect");
        C15149k.m377b(view, "view");
        C15149k.m377b(recyclerView, "parent");
        C15149k.m377b(state, IapProductRealmObject.STATE);
        if (recyclerView.getChildAdapterPosition(view) > 0) {
            int i = this.f32488a;
            rect.left = i;
            rect.right = i;
            rect.bottom = i;
        }
    }
}
