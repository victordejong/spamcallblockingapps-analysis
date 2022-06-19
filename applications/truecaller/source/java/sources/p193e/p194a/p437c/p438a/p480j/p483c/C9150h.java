package p193e.p194a.p437c.p438a.p480j.p483c;

import android.widget.CompoundButton;
import java.util.Objects;
import java.util.Set;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import p193e.p194a.p437c.p579q.C10511h;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/h.class */
public final class C9150h implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C9141j f27867a;

    /* renamed from: b */
    public final /* synthetic */ Set f27868b;

    /* renamed from: c */
    public final /* synthetic */ p f27869c;

    public C9150h(C9152j c9152j, C9141j c9141j, C8243a c8243a, Set set, p pVar) {
        this.f27867a = c9141j;
        this.f27868b = set;
        this.f27869c = pVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Set set = this.f27868b;
        Integer valueOf = Integer.valueOf(this.f27867a.hashCode());
        if (z) {
            set.add(valueOf);
        } else {
            set.remove(valueOf);
        }
        p pVar = this.f27869c;
        if (pVar != null) {
            C9141j c9141j = this.f27867a;
            C10511h c10511h = c9141j.f27850c;
            String str = c9141j.f27851d;
            Objects.requireNonNull(c9141j);
            l.e(c10511h, "model");
            l.e(str, "label");
            s sVar = (s) pVar.k(new C9141j(c10511h, str, z), Boolean.valueOf(z));
        }
    }
}
