package com.google.firebase.perf;

import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p170b.p173b.AbstractC2497f;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p340u.C5925b;
import p131c.p161d.p282e.p340u.C5926c;
import p131c.p161d.p282e.p351v.C6061h;
import p131c.p161d.p282e.p352w.C6078m;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/FirebasePerfRegistrar.class */
public class FirebasePerfRegistrar implements AbstractC5171h {
    public static /* synthetic */ C5926c lambda$getComponents$0(AbstractC5165e eVar) {
        return new C5926c((C5128c) eVar.mo24330a(C5128c.class), eVar.mo24329b(C6078m.class), (AbstractC5898g) eVar.mo24330a(AbstractC5898g.class), eVar.mo24329b(AbstractC2497f.class));
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    @Keep
    public List<C5162d<?>> getComponents() {
        C5162d.C5164b a = C5162d.m24395a(C5926c.class);
        a.m24378a(C5180n.m24343c(C5128c.class));
        a.m24378a(C5180n.m24341d(C6078m.class));
        a.m24378a(C5180n.m24343c(AbstractC5898g.class));
        a.m24378a(C5180n.m24341d(AbstractC2497f.class));
        a.m24379a(C5925b.m22692a());
        a.m24376b();
        return Arrays.asList(a.m24382a(), C6061h.m22163a("fire-perf", "19.0.10"));
    }
}
