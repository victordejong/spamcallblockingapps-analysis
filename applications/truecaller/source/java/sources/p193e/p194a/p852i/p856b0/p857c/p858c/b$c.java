package p193e.p194a.p852i.p856b0.p857c.p858c;

import com.tenor.android.core.constant.StringConstant;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.i.b0.c.c.b$c */
/* loaded from: classes3-dex2jar.jar:e/a/i/b0/c/c/b$c.class */
public class b$c implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ List f42779a;

    /* renamed from: b */
    public final /* synthetic */ String f42780b;

    /* renamed from: c */
    public final /* synthetic */ b f42781c;

    public b$c(b bVar, List list, String str) {
        this.f42781c = bVar;
        this.f42779a = list;
        this.f42780b = str;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "            DELETE FROM ad_campaigns ", StringConstant.NEW_LINE, "            WHERE phone_number = ", "?");
        C22128a.m8669S0(m8688M, " AND ", StringConstant.NEW_LINE, "                  placement_name IN (");
        C25655d.m3086a(m8688M, this.f42779a.size());
        m8688M.append(")");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("            ");
        AbstractC26154f compileStatement = this.f42781c.a.compileStatement(m8688M.toString());
        String str = this.f42780b;
        if (str == null) {
            compileStatement.mo2648y0(1);
        } else {
            compileStatement.mo2651f0(1, str);
        }
        int i = 2;
        for (String str2 : this.f42779a) {
            if (str2 == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2651f0(i, str2);
            }
            i++;
        }
        this.f42781c.a.beginTransaction();
        try {
            int m2673A = compileStatement.m2673A();
            this.f42781c.a.setTransactionSuccessful();
            this.f42781c.a.endTransaction();
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f42781c.a.endTransaction();
            throw th;
        }
    }
}
