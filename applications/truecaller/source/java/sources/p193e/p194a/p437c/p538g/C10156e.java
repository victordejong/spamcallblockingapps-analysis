package p193e.p194a.p437c.p538g;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.h;
import s1.f0.v;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.g.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/e.class */
public final class C10156e implements AbstractC10139d {

    /* renamed from: a */
    public final g f30140a = C25225a.m3978P1(C10157a.f30142b);

    /* renamed from: b */
    public final List<String> f30141b = i.T(new String[]{"https://guardians.onelink.me", "https://grdns.page.link", "https://www.getguardians.com", "http://getguardians.com", "https://getguardians.com"});

    /* renamed from: e.a.c.g.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/e$a.class */
    public static final class C10157a extends m implements a<List<? extends h>> {

        /* renamed from: b */
        public static final C10157a f30142b = new C10157a();

        public C10157a() {
            super(0);
        }

        public Object invoke() {
            return i.T(new h[]{new h("trusts you to be his/her guardian"), new h("is sharing his/her location with you NOW! "), new h("is not feeling safe and needs HELP!")});
        }
    }

    @Override // p193e.p194a.p437c.p538g.AbstractC10139d
    /* renamed from: a */
    public boolean mo26651a(String str) {
        boolean z;
        boolean z2;
        l.e(str, "message");
        List<h> list = (List) this.f30140a.getValue();
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (h hVar : list) {
                Objects.requireNonNull(hVar);
                l.e(str, "input");
                if (hVar.a.matcher(str).find()) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        boolean z3 = true;
        if (!z) {
            List<String> list2 = this.f30141b;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                for (String str2 : list2) {
                    if (v.B(str, str2, false, 2)) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            z3 = z2;
        }
        return z3;
    }
}
