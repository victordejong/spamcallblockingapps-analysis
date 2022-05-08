package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p204a.p206b.AbstractC6498g;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p357o.C9833a;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/datatransport/TransportRegistrar.class */
public class TransportRegistrar implements AbstractC9489h {
    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    public List<C9480d<?>> getComponents() {
        C9480d.C9482b a = C9480d.m15099a(AbstractC6498g.class);
        a.m15082a(C9498n.m15046c(Context.class));
        a.m15083a(C9833a.m14119a());
        return Collections.singletonList(a.m15080b());
    }
}
