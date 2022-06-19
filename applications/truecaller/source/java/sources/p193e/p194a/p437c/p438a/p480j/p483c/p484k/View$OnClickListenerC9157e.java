package p193e.p194a.p437c.p438a.p480j.p483c.p484k;

import android.view.View;
import com.google.android.material.card.MaterialCardView;
import java.util.Objects;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.k.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/k/e.class */
public final class View$OnClickListenerC9157e implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9159g f27879a;

    /* renamed from: b */
    public final /* synthetic */ C9141j f27880b;

    public View$OnClickListenerC9157e(C9159g c9159g, C9141j c9141j) {
        this.f27879a = c9159g;
        this.f27880b = c9141j;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C9159g c9159g = this.f27879a;
        C9141j c9141j = this.f27880b;
        Objects.requireNonNull(c9159g);
        l.e(c9141j, "filterItem");
        MaterialCardView materialCardView = c9159g.f27884c.f27507b;
        p<C9141j, Boolean, s> pVar = c9159g.f27886e;
        if (pVar != null) {
            s sVar = (s) pVar.k(c9141j, Boolean.valueOf(!materialCardView.isChecked()));
        }
    }
}
