package com.google.firebase.p074d;

import com.google.firebase.components.AbstractC3154e;
import com.google.firebase.components.C3150b;
import com.google.firebase.components.C3167n;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.google.firebase.d.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/d/b.class */
public final class C3177b implements AbstractC3182g {

    /* renamed from: a */
    private final String f19033a;

    /* renamed from: b */
    private final C3179d f19034b;

    private C3177b(Set<AbstractC3180e> set, C3179d dVar) {
        this.f19033a = m577a(set);
        this.f19034b = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ AbstractC3182g m578a(AbstractC3154e eVar) {
        return new C3177b(eVar.mo581b(AbstractC3180e.class), C3179d.m573b());
    }

    /* renamed from: a */
    private static String m577a(Set<AbstractC3180e> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractC3180e> it = set.iterator();
        while (it.hasNext()) {
            AbstractC3180e next = it.next();
            sb.append(next.mo572a());
            sb.append('/');
            sb.append(next.mo570b());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static C3150b<AbstractC3182g> m576b() {
        return C3150b.m636a(AbstractC3182g.class).m623a(C3167n.m592b(AbstractC3180e.class)).m624a(C3178c.m575a()).m621c();
    }

    @Override // com.google.firebase.p074d.AbstractC3182g
    /* renamed from: a */
    public final String mo568a() {
        if (this.f19034b.m574a().isEmpty()) {
            return this.f19033a;
        }
        return this.f19033a + ' ' + m577a(this.f19034b.m574a());
    }
}
