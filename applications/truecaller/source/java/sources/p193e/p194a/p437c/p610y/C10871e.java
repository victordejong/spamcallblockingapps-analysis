package p193e.p194a.p437c.p610y;

import android.content.Context;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.C4030R;
import p193e.p194a.p682e.C12864a2;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.y.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/e.class */
public final class C10871e extends AbstractC10864a {

    /* renamed from: g */
    public final f f32280g = this.f32265d;

    /* renamed from: h */
    public final String f32281h;

    public C10871e(String str) {
        l.e(str, AnalyticsConstants.OTP);
        this.f32281h = str;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        s sVar = s.a;
        if (this.f32281h.length() == 0) {
            return sVar;
        }
        C12864a2.m22560d0(this.f32267f, this.f32281h, null);
        Context context = this.f32267f;
        Toast.makeText(context, context.getString(C4030R.string.otp_copied_to_clipboard), 1).show();
        return sVar;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f32280g;
    }
}
