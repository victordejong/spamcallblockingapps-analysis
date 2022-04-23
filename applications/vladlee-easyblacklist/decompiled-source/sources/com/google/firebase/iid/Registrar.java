package com.google.firebase.iid;

import com.google.firebase.FirebaseApp;
import com.google.firebase.components.AbstractC3159h;
import com.google.firebase.components.C3150b;
import com.google.firebase.components.C3167n;
import com.google.firebase.iid.p075a.AbstractC3186a;
import com.google.firebase.p071a.AbstractC3138d;
import com.google.firebase.p074d.AbstractC3182g;
import com.google.firebase.p074d.C3181f;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Registrar.class */
public final class Registrar implements AbstractC3159h {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.iid.Registrar$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Registrar$a.class */
    public static final class C3184a implements AbstractC3186a {

        /* renamed from: a */
        private final FirebaseInstanceId f19055a;

        public C3184a(FirebaseInstanceId firebaseInstanceId) {
            this.f19055a = firebaseInstanceId;
        }
    }

    @Override // com.google.firebase.components.AbstractC3159h
    public final List<C3150b<?>> getComponents() {
        return Arrays.asList(C3150b.m636a(FirebaseInstanceId.class).m623a(C3167n.m594a(FirebaseApp.class)).m623a(C3167n.m594a(AbstractC3138d.class)).m623a(C3167n.m594a(AbstractC3182g.class)).m624a(C3226q.f19134a).m627a().m621c(), C3150b.m636a(AbstractC3186a.class).m623a(C3167n.m594a(FirebaseInstanceId.class)).m624a(C3225p.f19133a).m621c(), C3181f.m569a("fire-iid", "18.0.0"));
    }
}
