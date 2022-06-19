package p193e.p194a.p947k.p948a.p959g;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import p1727n3.p1807k.p1812c.C26494b;
import p1727n3.p1807k.p1821i.AbstractC26609n;
import p1727n3.p1807k.p1821i.C26568d0;
import p193e.p194a.p947k.p972m.C16137k;
import s1.a.l;
/* renamed from: e.a.k.a.g.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/g.class */
public final class C15727g implements AbstractC26609n {

    /* renamed from: a */
    public final /* synthetic */ C15715f f44351a;

    public C15727g(C15715f c15715f) {
        this.f44351a = c15715f;
    }

    @Override // p1727n3.p1807k.p1821i.AbstractC26609n
    /* renamed from: b */
    public final C26568d0 mo1532b(View view, C26568d0 c26568d0) {
        C15715f c15715f = this.f44351a;
        l[] lVarArr = C15715f.f44326r;
        C16137k m18450QA = c15715f.m18450QA();
        C26494b m1665b = c26568d0.m1665b(7);
        s1.z.c.l.d(m1665b, "insets.getInsets(WindowI…Compat.Type.systemBars())");
        m18450QA.f45512t.setGuidelineBegin(m1665b.f74278b);
        ConstraintLayout constraintLayout = m18450QA.f45493a;
        s1.z.c.l.d(constraintLayout, "root");
        ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams2 = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        if (marginLayoutParams != null) {
            ConstraintLayout constraintLayout2 = m18450QA.f45493a;
            s1.z.c.l.d(constraintLayout2, "root");
            marginLayoutParams.bottomMargin = m1665b.f74280d;
            constraintLayout2.setLayoutParams(marginLayoutParams);
        }
        return c26568d0;
    }
}
