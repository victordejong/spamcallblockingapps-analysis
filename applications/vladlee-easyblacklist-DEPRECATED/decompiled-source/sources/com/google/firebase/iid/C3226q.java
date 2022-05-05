package com.google.firebase.iid;

import com.google.firebase.FirebaseApp;
import com.google.firebase.components.AbstractC3154e;
import com.google.firebase.components.AbstractC3158g;
import com.google.firebase.p071a.AbstractC3138d;
import com.google.firebase.p074d.AbstractC3182g;
/* renamed from: com.google.firebase.iid.q */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/q.class */
final /* synthetic */ class C3226q implements AbstractC3158g {

    /* renamed from: a */
    static final AbstractC3158g f19134a = new C3226q();

    private C3226q() {
    }

    @Override // com.google.firebase.components.AbstractC3158g
    /* renamed from: a */
    public final Object mo460a(AbstractC3154e eVar) {
        return new FirebaseInstanceId((FirebaseApp) eVar.mo582a(FirebaseApp.class), (AbstractC3138d) eVar.mo582a(AbstractC3138d.class), (AbstractC3182g) eVar.mo582a(AbstractC3182g.class));
    }
}
