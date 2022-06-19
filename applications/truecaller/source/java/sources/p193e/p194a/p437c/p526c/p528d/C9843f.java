package p193e.p194a.p437c.p526c.p528d;

import java.util.Objects;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p437c.p531c0.C10020g;
import p193e.p194a.p437c.p580r.p582e.p583a.C10534d;
/* renamed from: e.a.c.c.d.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/f.class */
public final class C9843f implements AbstractC9804e {

    /* renamed from: a */
    public final C10020g f29524a = new C10020g();

    /* renamed from: e.a.c.c.d.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/f$a.class */
    public class C9844a extends AbstractC25663k<C10534d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9844a(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9843f.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C10534d c10534d) {
            C10534d c10534d2 = c10534d;
            Objects.requireNonNull(c10534d2);
            abstractC26154f.mo2650l0(1, 0L);
            Long l = c10534d2.f31443a;
            if (l == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2650l0(2, l.longValue());
            }
            Long l2 = c10534d2.f31444b;
            if (l2 == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2650l0(3, l2.longValue());
            }
            abstractC26154f.mo2650l0(4, 0);
            Long m26909a = C9843f.this.f29524a.m26909a(c10534d2.mo4126a());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2650l0(5, m26909a.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `account_relation_model` (`id`,`from_account`,`to_account`,`transaction_count`,`created_at`) VALUES (nullif(?, 0),?,?,?,?)";
        }
    }

    public C9843f(AbstractC25677q abstractC25677q) {
        new C9844a(abstractC25677q);
    }
}
