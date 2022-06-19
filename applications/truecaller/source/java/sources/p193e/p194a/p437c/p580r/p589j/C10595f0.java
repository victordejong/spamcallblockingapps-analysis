package p193e.p194a.p437c.p580r.p589j;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.DomainOrigin;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.f0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/f0.class */
public final class C10595f0 extends AbstractC10584c {

    /* renamed from: h */
    public final f f31599h = this.f31575d;

    /* renamed from: i */
    public final String f31600i;

    /* renamed from: j */
    public final Context f31601j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10595f0(long j, String str, Context context) {
        super(j, DomainOrigin.SMS);
        l.e(str, "checkInUrl");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f31600i = str;
        this.f31601j = context;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        Context context = this.f31601j;
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(this.f31600i));
        intent.setFlags(268435456);
        s sVar = s.a;
        context.startActivity(intent);
        return sVar;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f31599h;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10584c
    /* renamed from: e */
    public void mo25754e() {
    }
}
