package p193e.p194a.p437c.p524b;

import com.truecaller.insights.network.adapter.CountryFeature;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.z.c.l;
/* renamed from: e.a.c.b.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/b/g.class */
public final class C9688g implements AbstractC9687f {

    /* renamed from: a */
    public final AbstractC9682b f29275a;

    @Inject
    public C9688g(AbstractC9682b abstractC9682b) {
        l.e(abstractC9682b, "featureControlPref");
        this.f29275a = abstractC9682b;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9687f
    /* renamed from: a */
    public boolean mo27305a(String str) {
        l.e(str, "remoteKey");
        return this.f29275a.mo27318a(str);
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9687f
    /* renamed from: b */
    public boolean mo27304b(String str) {
        l.e(str, "remoteKey");
        return this.f29275a.mo27317b(str);
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9687f
    /* renamed from: c */
    public Object mo27303c(d<? super s> dVar) {
        Object mo27315d = this.f29275a.mo27315d(dVar);
        return mo27315d == a.a ? mo27315d : s.a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9687f
    /* renamed from: d */
    public void mo27302d(String str, boolean z) {
        l.e(str, "remoteKey");
        this.f29275a.mo27316c(C25225a.m3962T1(new CountryFeature(str, z)));
    }
}
