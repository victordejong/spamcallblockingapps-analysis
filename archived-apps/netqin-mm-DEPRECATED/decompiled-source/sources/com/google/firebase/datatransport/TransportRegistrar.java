package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p173b.AbstractC2497f;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p309m.C5454a;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/datatransport/TransportRegistrar.class */
public class TransportRegistrar implements AbstractC5171h {
    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    public List<C5162d<?>> getComponents() {
        C5162d.C5164b a = C5162d.m24395a(AbstractC2497f.class);
        a.m24378a(C5180n.m24343c(Context.class));
        a.m24379a(C5454a.m23756a());
        return Collections.singletonList(a.m24382a());
    }
}
