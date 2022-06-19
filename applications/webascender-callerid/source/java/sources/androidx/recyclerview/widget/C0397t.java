package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/t.class */
class C0397t {
    /* renamed from: a */
    static int m4883a(RecyclerView$a0 recyclerView$a0, AbstractC0396q abstractC0396q, View view, View view2, RecyclerView$o recyclerView$o, boolean z) {
        if (recyclerView$o.m5235J() == 0 || recyclerView$a0.m5295b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(recyclerView$o.m5177h0(view) - recyclerView$o.m5177h0(view2)) + 1;
        }
        return Math.min(abstractC0396q.m4889n(), abstractC0396q.m4899d(view2) - abstractC0396q.m4896g(view));
    }

    /* renamed from: b */
    static int m4882b(RecyclerView$a0 recyclerView$a0, AbstractC0396q abstractC0396q, View view, View view2, RecyclerView$o recyclerView$o, boolean z, boolean z2) {
        if (recyclerView$o.m5235J() == 0 || recyclerView$a0.m5295b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (recyclerView$a0.m5295b() - Math.max(recyclerView$o.m5177h0(view), recyclerView$o.m5177h0(view2))) - 1) : Math.max(0, Math.min(recyclerView$o.m5177h0(view), recyclerView$o.m5177h0(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(abstractC0396q.m4899d(view2) - abstractC0396q.m4896g(view)) / (Math.abs(recyclerView$o.m5177h0(view) - recyclerView$o.m5177h0(view2)) + 1))) + (abstractC0396q.m4890m() - abstractC0396q.m4896g(view)));
    }

    /* renamed from: c */
    static int m4881c(RecyclerView$a0 recyclerView$a0, AbstractC0396q abstractC0396q, View view, View view2, RecyclerView$o recyclerView$o, boolean z) {
        if (recyclerView$o.m5235J() == 0 || recyclerView$a0.m5295b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return recyclerView$a0.m5295b();
        }
        return (int) (((abstractC0396q.m4899d(view2) - abstractC0396q.m4896g(view)) / (Math.abs(recyclerView$o.m5177h0(view) - recyclerView$o.m5177h0(view2)) + 1)) * recyclerView$a0.m5295b());
    }
}
