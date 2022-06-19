package p193e.p194a.p773g.p774a.p776b;

import android.graphics.drawable.Drawable;
import androidx.constraintlayout.widget.ConstraintLayout;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import s1.z.c.l;
/* renamed from: e.a.g.a.b.c */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/c.class */
public final class C14144c implements AbstractC22604d.AbstractC22605a {

    /* renamed from: a */
    public final /* synthetic */ ConstraintLayout f40843a;

    public C14144c(ConstraintLayout constraintLayout) {
        this.f40843a = constraintLayout;
    }

    @Override // p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d.AbstractC22605a
    /* renamed from: a */
    public Drawable mo8039a() {
        ConstraintLayout constraintLayout = this.f40843a;
        l.d(constraintLayout, "targetView");
        return constraintLayout.getBackground();
    }

    @Override // p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d.AbstractC22605a
    /* renamed from: f */
    public void mo8038f(Drawable drawable) {
        ConstraintLayout constraintLayout = this.f40843a;
        l.d(constraintLayout, "targetView");
        constraintLayout.setBackground(drawable);
    }
}
