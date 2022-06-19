package p193e.p194a.p616c5.p617a;

import com.facebook.AccessToken;
import com.facebook.login.C1284v;
import javax.inject.Inject;
import javax.inject.Named;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c5.a.j */
/* loaded from: classes13-dex2jar.jar:e/a/c5/a/j.class */
public final class C10958j implements AbstractC10956h, AbstractC10948a {

    /* renamed from: a */
    public final String f32473a = "me";

    /* renamed from: b */
    public final String f32474b = "fields";

    /* renamed from: c */
    public final f f32475c;

    @Inject
    public C10958j(@Named("IO") f fVar) {
        l.e(fVar, "ioContext");
        this.f32475c = fVar;
    }

    @Override // p193e.p194a.p616c5.p617a.AbstractC10948a
    /* renamed from: G1 */
    public boolean mo25470G1() {
        AccessToken.C0907c c0907c = AccessToken.f2460l;
        return AccessToken.C0907c.m42030b() != null;
    }

    @Override // p193e.p194a.p616c5.p617a.AbstractC10948a
    /* renamed from: O1 */
    public void mo25469O1() {
        C1284v.f3498b.m41542a().m41546f();
    }
}
