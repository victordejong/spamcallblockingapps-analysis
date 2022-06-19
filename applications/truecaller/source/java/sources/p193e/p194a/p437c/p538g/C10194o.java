package p193e.p194a.p437c.p538g;

import javax.inject.Inject;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import s1.z.c.l;
import w3.e.a.c.a;
/* renamed from: e.a.c.g.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/o.class */
public final class C10194o implements AbstractC10193n {

    /* renamed from: a */
    public final a f30262a = new a();

    /* renamed from: b */
    public final AbstractC9686e f30263b;

    @Inject
    public C10194o(AbstractC9686e abstractC9686e) {
        l.e(abstractC9686e, "environmentHelper");
        this.f30263b = abstractC9686e;
    }

    @Override // p193e.p194a.p437c.p538g.AbstractC10193n
    /* renamed from: a */
    public String mo26599a(String str) {
        l.e(str, "message");
        String str2 = str;
        try {
            if (l.a(this.f30263b.mo27306g(), "EG")) {
                String i = this.f30262a.i(str);
                str2 = str;
                if (i != null) {
                    str2 = i;
                }
            }
        } catch (Throwable th) {
            C10263b.f30414d.m26508b(th, null);
            str2 = str;
        }
        return str2;
    }
}
