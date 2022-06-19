package p193e.p194a.p437c.p438a.p487k.p492e;

import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.C2080R;
import com.google.android.material.snackbar.Snackbar;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.markedimportantpage.view.MarkedImportantPageActivity;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import n3.b.a.h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p437c.p438a.p477g.C9061p1;
import p193e.p194a.p437c.p438a.p487k.p490c.AbstractC9209c;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.c.a.k.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/e/b.class */
public final /* synthetic */ class C9220b extends j implements l<Set<? extends AbstractC9209c>, s> {
    public C9220b(MarkedImportantPageActivity markedImportantPageActivity) {
        super(1, markedImportantPageActivity, MarkedImportantPageActivity.class, "handlePageCommand", "handlePageCommand(Ljava/util/Set;)V", 0);
    }

    /* renamed from: d */
    public Object m27789d(Object obj) {
        Set<AbstractC9209c> set = (Set) obj;
        s1.z.c.l.e(set, "p1");
        h hVar = (MarkedImportantPageActivity) ((b) this).b;
        int i = MarkedImportantPageActivity.f12842e;
        Objects.requireNonNull(hVar);
        for (AbstractC9209c abstractC9209c : set) {
            if (abstractC9209c instanceof AbstractC9209c.C9211b) {
                List<AbstractC9235b.C9238c> list = ((AbstractC9209c.C9211b) abstractC9209c).f27996a;
                Snackbar l = Snackbar.l(hVar.m35163pa().f27407c, hVar.getResources().getQuantityString(C4078R.plurals.UndoMarkAsStarredNotification, list.size()), 0);
                s1.z.c.l.d(l, "Snackbar.make(\n         …bar.LENGTH_LONG\n        )");
                l.m(C4078R.string.undo, new View$OnClickListenerC9222d(hVar, list));
                l.n();
            } else if (abstractC9209c instanceof AbstractC9209c.C9212c) {
                if (((AbstractC9209c.C9212c) abstractC9209c).f27997a) {
                    C9061p1 c9061p1 = hVar.m35163pa().f27406b;
                    s1.z.c.l.d(c9061p1, "binding.emptyState");
                    NestedScrollView nestedScrollView = c9061p1.f27606a;
                    s1.z.c.l.d(nestedScrollView, "binding.emptyState.root");
                    C19286f.m13684T(nestedScrollView);
                } else {
                    C9061p1 c9061p12 = hVar.m35163pa().f27406b;
                    s1.z.c.l.d(c9061p12, "binding.emptyState");
                    NestedScrollView nestedScrollView2 = c9061p12.f27606a;
                    s1.z.c.l.d(nestedScrollView2, "binding.emptyState.root");
                    C19286f.m13689O(nestedScrollView2);
                }
                hVar.invalidateOptionsMenu();
            } else if (abstractC9209c instanceof AbstractC9209c.C9210a) {
                String string = ((AbstractC9209c.C9210a) abstractC9209c).f27995a ? hVar.getResources().getString(C4078R.string.failed_mark_message) : hVar.getResources().getString(C4078R.string.failed_un_mark_message);
                s1.z.c.l.d(string, "if (important) resources…g.failed_un_mark_message)");
                Snackbar l2 = Snackbar.l(hVar.m35163pa().f27407c, string, 0);
                s1.z.c.l.d(l2, "Snackbar.make(\n         …bar.LENGTH_LONG\n        )");
                TextView textView = (TextView) l2.f6766c.findViewById(C2080R.C2082id.snackbar_text);
                if (textView != null) {
                    textView.setTextColor(C17422k.m16105M(hVar, C4078R.attr.tcx_alertBackgroundRed));
                }
                l2.n();
            }
        }
        return s.a;
    }
}
