package p193e.p194a.p437c.p606w;

import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p437c.p523a0.C9609a;
import p193e.p194a.p437c.p523a0.C9614b;
import p193e.p194a.p437c.p580r.p582e.p583a.C10531a;
import q3.a.x2.f;
import s1.z.c.l;
/* renamed from: e.a.c.w.w */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/w.class */
public final class C10853w implements AbstractC10852v {

    /* renamed from: a */
    public final C9614b f32232a;

    @Inject
    public C10853w(C9614b c9614b) {
        l.e(c9614b, "accountsDataSource");
        this.f32232a = c9614b;
    }

    @Override // p193e.p194a.p437c.p606w.AbstractC10852v
    /* renamed from: a */
    public f<List<C10531a>> mo25557a() {
        C9614b c9614b = this.f32232a;
        return new C9609a(c9614b.f29057a.mo27156d(), c9614b);
    }
}
