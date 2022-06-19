package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
/* renamed from: e.a.i.e.h.a.m$d */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/m$d.class */
public class m$d implements Callable<s> {

    /* renamed from: a */
    public final /* synthetic */ List f43145a;

    /* renamed from: b */
    public final /* synthetic */ m f43146b;

    public m$d(m mVar, List list) {
        this.f43146b = mVar;
        this.f43145a = list;
    }

    @Override // java.util.concurrent.Callable
    public s call() throws Exception {
        StringBuilder m8728C = C22128a.m8728C("Delete from offline_tracker where _id in (");
        C25655d.m3086a(m8728C, this.f43145a.size());
        m8728C.append(")");
        AbstractC26154f compileStatement = this.f43146b.a.compileStatement(m8728C.toString());
        int i = 1;
        for (Long l : this.f43145a) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f43146b.a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f43146b.a.setTransactionSuccessful();
            return s.a;
        } finally {
            this.f43146b.a.endTransaction();
        }
    }
}
