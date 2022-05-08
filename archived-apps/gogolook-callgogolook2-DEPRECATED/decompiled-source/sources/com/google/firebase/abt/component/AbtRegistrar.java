package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p081h.p203i.p325c.p326a0.C9391h;
import p081h.p203i.p325c.p329j.p330d.C9450a;
import p081h.p203i.p325c.p329j.p330d.C9451b;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/abt/component/AbtRegistrar.class */
public class AbtRegistrar implements AbstractC9489h {
    public static /* synthetic */ C9450a lambda$getComponents$0(AbstractC9483e eVar) {
        return new C9450a((Context) eVar.mo15033a(Context.class), (AbstractC9452a) eVar.mo15033a(AbstractC9452a.class));
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    public List<C9480d<?>> getComponents() {
        C9480d.C9482b a = C9480d.m15099a(C9450a.class);
        a.m15082a(C9498n.m15046c(Context.class));
        a.m15082a(C9498n.m15050a(AbstractC9452a.class));
        a.m15083a(C9451b.m15126a());
        return Arrays.asList(a.m15080b(), C9391h.m15323a("fire-abt", "20.0.0"));
    }
}
