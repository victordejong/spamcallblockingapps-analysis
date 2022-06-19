package p193e.p194a.p437c.p526c.p528d;

import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
/* renamed from: e.a.c.c.d.r */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/r.class */
public class CallableC9944r implements Callable<s> {

    /* renamed from: a */
    public final /* synthetic */ List f29701a;

    /* renamed from: b */
    public final /* synthetic */ C9935q f29702b;

    public CallableC9944r(C9935q c9935q, List list) {
        this.f29702b = c9935q;
        this.f29701a = list;
    }

    @Override // java.util.concurrent.Callable
    public s call() throws Exception {
        StringBuilder m8728C = C22128a.m8728C("DELETE FROM states_table where owner IN (");
        C25655d.m3086a(m8728C, this.f29701a.size());
        m8728C.append(")");
        AbstractC26154f compileStatement = this.f29702b.f29685a.compileStatement(m8728C.toString());
        int i = 1;
        for (String str : this.f29701a) {
            if (str == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2651f0(i, str);
            }
            i++;
        }
        this.f29702b.f29685a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29702b.f29685a.setTransactionSuccessful();
            return s.a;
        } finally {
            this.f29702b.f29685a.endTransaction();
        }
    }
}
