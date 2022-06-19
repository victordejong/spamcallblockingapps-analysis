package p193e.p194a.p437c.p438a.p487k.p492e;

import android.content.Context;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C2080R;
import com.google.android.material.snackbar.Snackbar;
import com.truecaller.insights.p168ui.C4078R;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p437c.p438a.p477g.C9036h0;
import p193e.p194a.p437c.p438a.p477g.C9061p1;
import p193e.p194a.p437c.p438a.p487k.p490c.AbstractC9209c;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.c.a.k.e.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/e/h.class */
public final /* synthetic */ class C9229h extends j implements l<Set<? extends AbstractC9209c>, s> {
    public C9229h(C9223e c9223e) {
        super(1, c9223e, C9223e.class, "handlePageCommand", "handlePageCommand(Ljava/util/Set;)V", 0);
    }

    /* renamed from: d */
    public Object m27785d(Object obj) {
        Set<AbstractC9209c> set = (Set) obj;
        s1.z.c.l.e(set, "p1");
        C9223e c9223e = (C9223e) ((b) this).b;
        s1.a.l[] lVarArr = C9223e.f28014e;
        Objects.requireNonNull(c9223e);
        for (AbstractC9209c abstractC9209c : set) {
            if (abstractC9209c instanceof AbstractC9209c.C9211b) {
                List<AbstractC9235b.C9238c> list = ((AbstractC9209c.C9211b) abstractC9209c).f27996a;
                Snackbar l = Snackbar.l(c9223e.requireView(), c9223e.getResources().getQuantityString(C4078R.plurals.UndoMarkAsStarredNotification, list.size()), 0);
                s1.z.c.l.d(l, "Snackbar.make(\n         …bar.LENGTH_LONG\n        )");
                l.m(C4078R.string.undo, new View$OnClickListenerC9233l(c9223e, list));
                l.n();
            } else if (abstractC9209c instanceof AbstractC9209c.C9212c) {
                AbstractC9209c.C9212c c9212c = (AbstractC9209c.C9212c) abstractC9209c;
                C9036h0 c9036h0 = (C9036h0) c9223e.f28019d.m34468b(c9223e, C9223e.f28014e[0]);
                if (c9212c.f27997a) {
                    C9061p1 c9061p1 = c9036h0.f27496a;
                    s1.z.c.l.d(c9061p1, "emptyState");
                    NestedScrollView nestedScrollView = c9061p1.f27606a;
                    s1.z.c.l.d(nestedScrollView, "emptyState.root");
                    C19286f.m13684T(nestedScrollView);
                    RecyclerView recyclerView = c9036h0.f27497b;
                    s1.z.c.l.d(recyclerView, "rowItemList");
                    C19286f.m13689O(recyclerView);
                } else {
                    C9061p1 c9061p12 = c9036h0.f27496a;
                    s1.z.c.l.d(c9061p12, "emptyState");
                    NestedScrollView nestedScrollView2 = c9061p12.f27606a;
                    s1.z.c.l.d(nestedScrollView2, "emptyState.root");
                    C19286f.m13689O(nestedScrollView2);
                    RecyclerView recyclerView2 = c9036h0.f27497b;
                    s1.z.c.l.d(recyclerView2, "rowItemList");
                    C19286f.m13684T(recyclerView2);
                }
            } else if (abstractC9209c instanceof AbstractC9209c.C9210a) {
                String string = ((AbstractC9209c.C9210a) abstractC9209c).f27995a ? c9223e.getResources().getString(C4078R.string.failed_mark_message) : c9223e.getResources().getString(C4078R.string.failed_un_mark_message);
                s1.z.c.l.d(string, "if (important) resources…g.failed_un_mark_message)");
                Snackbar l2 = Snackbar.l(c9223e.requireView(), string, 0);
                s1.z.c.l.d(l2, "Snackbar.make(\n         …bar.LENGTH_LONG\n        )");
                TextView textView = (TextView) l2.f6766c.findViewById(C2080R.C2082id.snackbar_text);
                if (textView != null) {
                    Context requireContext = c9223e.requireContext();
                    s1.z.c.l.d(requireContext, "requireContext()");
                    textView.setTextColor(C17422k.m16105M(requireContext, C4078R.attr.tcx_alertBackgroundRed));
                }
                l2.n();
            }
        }
        return s.a;
    }
}
