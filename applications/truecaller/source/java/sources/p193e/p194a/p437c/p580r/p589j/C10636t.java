package p193e.p194a.p437c.p580r.p589j;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p430q.C8613t;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.r.j.t */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/t.class */
public final class C10636t extends m implements l<String, s> {

    /* renamed from: b */
    public final /* synthetic */ Context f31684b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10636t(Context context) {
        super(1);
        this.f31684b = context;
    }

    /* renamed from: d */
    public Object m25762d(Object obj) {
        String str = (String) obj;
        s1.z.c.l.e(str, "link");
        Context context = this.f31684b;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(str, "deeplink");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        C8613t.m28198n(context, intent);
        return s.a;
    }
}
