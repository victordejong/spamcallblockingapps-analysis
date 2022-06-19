package p193e.p194a.p437c.p580r.p589j;

import android.content.Context;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.C4030R;
import com.truecaller.insights.models.DomainOrigin;
import p193e.p194a.p682e.C12864a2;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/e.class */
public final class C10590e extends AbstractC10584c {

    /* renamed from: h */
    public final f f31592h = this.f31575d;

    /* renamed from: i */
    public final String f31593i;

    /* renamed from: j */
    public final Context f31594j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10590e(long j, DomainOrigin domainOrigin, String str, Context context) {
        super(j, domainOrigin);
        l.e(domainOrigin, "origin");
        l.e(str, AnalyticsConstants.OTP);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f31593i = str;
        this.f31594j = context;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        C12864a2.m22560d0(this.f31594j, this.f31593i, null);
        Context context = this.f31594j;
        Toast.makeText(context, context.getString(C4030R.string.otp_copied_to_clipboard), 1).show();
        return s.a;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f31592h;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10584c
    /* renamed from: e */
    public void mo25754e() {
    }
}
