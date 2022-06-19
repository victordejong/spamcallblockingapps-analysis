package p193e.p194a.p437c.p580r.p589j;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.DomainOrigin;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.d0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/d0.class */
public final class C10589d0 extends AbstractC10584c {

    /* renamed from: h */
    public final f f31589h = this.f31575d;

    /* renamed from: i */
    public final String f31590i;

    /* renamed from: j */
    public final Context f31591j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10589d0(long j, String str, Context context) {
        super(j, DomainOrigin.SMS);
        l.e(str, "number");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f31590i = str;
        this.f31591j = context;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        Context context = this.f31591j;
        Intent intent = new Intent("android.intent.action.DIAL");
        StringBuilder m8728C = C22128a.m8728C("tel:");
        m8728C.append(this.f31590i);
        intent.setData(Uri.parse(m8728C.toString()));
        intent.setFlags(268435456);
        s sVar = s.a;
        context.startActivity(intent);
        return sVar;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f31589h;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10584c
    /* renamed from: e */
    public void mo25754e() {
    }
}
