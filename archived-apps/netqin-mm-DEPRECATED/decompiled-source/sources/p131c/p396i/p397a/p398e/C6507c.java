package p131c.p396i.p397a.p398e;

import android.view.ViewGroup;
import com.library.p518ad.core.BaseAdResult;
import java.util.List;
/* renamed from: c.i.a.e.c */
/* loaded from: classes2-dex2jar.jar:c/i/a/e/c.class */
public class C6507c {
    /* renamed from: a */
    public static int m20630a(String str) {
        return C6505a.m20638a().m20637a(str);
    }

    /* renamed from: a */
    public static C6520j m20629a(List<AbstractC6508d<?>> list) {
        return new C6520j(list);
    }

    /* renamed from: a */
    public static C6520j m20628a(AbstractC6508d<?>... dVarArr) {
        return new C6520j(dVarArr);
    }

    /* renamed from: a */
    public static boolean m20631a(BaseAdResult baseAdResult, ViewGroup viewGroup) {
        if (baseAdResult == null) {
            return false;
        }
        if ((baseAdResult.m5314d() == 1 || baseAdResult.m5314d() == 2) && viewGroup == null) {
            return false;
        }
        AbstractC6514f<?> b = C6505a.m20638a().m20635b(baseAdResult.m5312f());
        boolean a = baseAdResult.m5328a(viewGroup, b);
        if (a && !b.mo20607d()) {
            C6505a.m20638a().m20634c(baseAdResult.m5312f());
        }
        return a;
    }

    /* renamed from: b */
    public static boolean m20627b(String str) {
        return m20630a(str) > 0;
    }
}
