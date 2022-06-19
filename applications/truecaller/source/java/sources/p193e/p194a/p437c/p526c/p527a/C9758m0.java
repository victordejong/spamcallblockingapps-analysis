package p193e.p194a.p437c.p526c.p527a;

import com.truecaller.insights.source.SourceType;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.f0.n;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.m0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/m0.class */
public final class C9758m0 extends AbstractC25649a {
    public C9758m0() {
        super(45, 46);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0(n.c("\n            DELETE FROM sender_info \n            WHERE source_type = '" + SourceType.FIREBASE + "'\n            "));
        abstractC26147b.mo2668S0("DELETE FROM states_table \nWHERE owner = 'INSIGHTS.FIREBASE.SENDER_BLOCK.PREFERENCE'");
    }
}
