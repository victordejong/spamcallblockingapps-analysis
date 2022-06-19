package p193e.p194a.p437c.p438a.p480j.p483c.p484k;

import android.view.View;
import com.google.android.material.card.MaterialCardView;
import java.util.Objects;
import p193e.p194a.p437c.p438a.p480j.p482b.C9134c;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.k.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/k/a.class */
public final class View$OnClickListenerC9153a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9154b f27874a;

    /* renamed from: b */
    public final /* synthetic */ C9134c f27875b;

    public View$OnClickListenerC9153a(C9154b c9154b, C9134c c9134c) {
        this.f27874a = c9154b;
        this.f27875b = c9134c;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C9154b c9154b = this.f27874a;
        C9134c c9134c = this.f27875b;
        Objects.requireNonNull(c9154b);
        l.e(c9134c, "filterItem");
        MaterialCardView materialCardView = c9154b.f27876b.f27499b;
        p<C9134c, Boolean, s> pVar = c9154b.f27877c;
        if (pVar != null) {
            s sVar = (s) pVar.k(c9134c, Boolean.valueOf(!materialCardView.isChecked()));
        }
    }
}
