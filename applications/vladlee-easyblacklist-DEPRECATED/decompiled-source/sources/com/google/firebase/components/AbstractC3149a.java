package com.google.firebase.components;

import com.google.firebase.p072b.AbstractC3146a;
import java.util.Set;
/* renamed from: com.google.firebase.components.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/a.class */
abstract class AbstractC3149a implements AbstractC3154e {
    @Override // com.google.firebase.components.AbstractC3154e
    /* renamed from: a */
    public <T> T mo582a(Class<T> cls) {
        AbstractC3146a<T> c = mo580c(cls);
        if (c == null) {
            return null;
        }
        return c.mo583a();
    }

    @Override // com.google.firebase.components.AbstractC3154e
    /* renamed from: b */
    public <T> Set<T> mo581b(Class<T> cls) {
        return mo579d(cls).mo583a();
    }
}
