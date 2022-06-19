package p193e.p194a.p372b0.p394b.p400j.p401e;

import android.content.Context;
import android.webkit.WebSettings;
import com.razorpay.AnalyticsConstants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.l;
import s1.z.c.l;
/* renamed from: e.a.b0.b.j.e.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/j/e/a.class */
public final class C8400a implements AbstractC8403d {

    /* renamed from: a */
    public final Context f26079a;

    public C8400a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Context applicationContext = context.getApplicationContext();
        l.d(applicationContext, "context.applicationContext");
        this.f26079a = applicationContext;
    }

    @Override // p193e.p194a.p372b0.p394b.p400j.p401e.AbstractC8403d
    /* renamed from: a */
    public String mo28610a() {
        Object obj;
        try {
            obj = WebSettings.getDefaultUserAgent(this.f26079a);
        } catch (Throwable th) {
            obj = C25225a.m3935a0(th);
        }
        Object obj2 = obj;
        if (obj instanceof l.a) {
            obj2 = null;
        }
        return (String) obj2;
    }
}
