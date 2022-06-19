package p193e.p194a.p437c.p438a.p439a.p440a.p441a;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p477g.C9077v;
import p193e.p194a.p437c.p438a.p498n.p501c.p502d.C9418a;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.a.a.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/g.class */
public final class C8667g extends AbstractC8665e<AdapterItem.C4112d> {

    /* renamed from: e */
    public final C9077v f26547e;

    /* renamed from: f */
    public final C9418a f26548f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8667g(p193e.p194a.p437c.p438a.p477g.C9077v r5, p193e.p194a.p437c.p438a.p498n.p501c.p502d.C9418a r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "binding"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            java.lang.String r1 = "collapseState"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            android.widget.FrameLayout r0 = r0.f27695a
            r7 = r0
            r0 = r7
            java.lang.String r1 = "binding.root"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r7
            r2 = 0
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r5
            r0.f26547e = r1
            r0 = r4
            r1 = r6
            r0.f26548f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8667g.<init>(e.a.c.a.g.v, e.a.c.a.n.c.d.a):void");
    }

    public /* synthetic */ C8667g(C9077v c9077v, C9418a c9418a, int i) {
        this(c9077v, (i & 2) != 0 ? new C9418a(false, false, 2) : null);
    }

    /* renamed from: U4 */
    public static final C9077v m28125U4(ViewGroup viewGroup) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C4078R.layout.date_header_item, viewGroup, false);
        int i = C4078R.C4080id.title;
        TextView textView = (TextView) inflate.findViewById(i);
        if (textView != null) {
            C9077v c9077v = new C9077v((FrameLayout) inflate, textView);
            l.d(c9077v, "DateHeaderItemBinding.in….context), parent, false)");
            return c9077v;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // p193e.p194a.p437c.p438a.p439a.p440a.p441a.AbstractC8665e
    /* renamed from: S4 */
    public void mo27509S4(AdapterItem.C4112d c4112d) {
        l.e(c4112d, "item");
    }

    /* renamed from: V4 */
    public void m28124V4(AdapterItem.C4112d c4112d) {
        l.e(c4112d, "item");
        m28126T4(this.f26548f.f28601a);
        TextView textView = this.f26547e.f27696b;
        l.d(textView, "binding.title");
        textView.setText(c4112d.f12865a);
    }
}
