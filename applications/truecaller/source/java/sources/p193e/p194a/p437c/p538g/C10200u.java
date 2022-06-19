package p193e.p194a.p437c.p538g;

import javax.inject.Inject;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p538g.p540b0.AbstractC10126c;
import p193e.p194a.p437c.p538g.p540b0.AbstractC10130e;
import p193e.p194a.p437c.p538g.p540b0.AbstractC10132g;
import p193e.p194a.p437c.p538g.p540b0.C10127d;
import p193e.p194a.p437c.p538g.p543e0.C10158a;
import p193e.p194a.p437c.p538g.p546y.AbstractC10236n;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.g.u */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/u.class */
public final class C10200u implements AbstractC10199t {

    /* renamed from: a */
    public final AbstractC10126c f30270a;

    /* renamed from: b */
    public final AbstractC10193n f30271b;

    @e(c = "com.truecaller.insights.categorizer.UpdatesClassifierImpl", f = "UpdatesClassifier.kt", l = {43}, m = "classify")
    /* renamed from: e.a.c.g.u$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/u$a.class */
    public static final class C10201a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30272d;

        /* renamed from: e */
        public int f30273e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10201a(d dVar) {
            super(dVar);
            C10200u.this = r4;
        }

        /* renamed from: s */
        public final Object m26597s(Object obj) {
            this.f30272d = obj;
            this.f30273e |= Integer.MIN_VALUE;
            return C10200u.this.mo26598a(null, this);
        }
    }

    @Inject
    public C10200u(AbstractC10132g abstractC10132g, AbstractC10236n abstractC10236n, AbstractC10130e abstractC10130e, AbstractC9691j abstractC9691j, AbstractC10193n abstractC10193n) {
        C10127d c10127d;
        l.e(abstractC10132g, "multiClassProbCalculator");
        l.e(abstractC10236n, "multiClassMetadataRepository");
        l.e(abstractC10130e, "multiClassClassifierTrainer");
        l.e(abstractC9691j, "statusProvider");
        l.e(abstractC10193n, "localeAwareStemmer");
        this.f30271b = abstractC10193n;
        if (abstractC9691j.mo27249k()) {
            c10127d = new C10127d(abstractC10132g, abstractC10236n, abstractC10130e, new C10158a(abstractC10236n), new C10123b(2, 4, 200, -1, 200, 4, 50));
        } else {
            c10127d = null;
        }
        this.f30270a = c10127d;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c0  */
    @Override // p193e.p194a.p437c.p538g.AbstractC10199t
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26598a(java.lang.String r6, s1.w.d<? super p193e.p194a.p437c.p538g.C10198s> r7) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.C10200u.mo26598a(java.lang.String, s1.w.d):java.lang.Object");
    }
}
