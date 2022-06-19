package p193e.p194a.p793g3;

import com.razorpay.AnalyticsConstants;
import java.util.Map;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.g3.n */
/* loaded from: classes7-dex2jar.jar:e/a/g3/n.class */
public abstract class AbstractC14434n {

    /* renamed from: a */
    public final String f41608a;

    /* renamed from: b */
    public final Object f41609b;

    public AbstractC14434n(String str, Object obj) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(obj, "value");
        this.f41608a = str;
        this.f41609b = obj;
    }

    /* renamed from: a */
    public final Map<String, Object> m20104a() {
        return i.I(new k[]{new k(this.f41608a, this.f41609b)});
    }
}
