package p193e.p194a.p619d.p637c0;

import android.content.Context;
import android.graphics.Bitmap;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.voip.C4781R;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p372b0.p373a.p375a0.C8239a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.m0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/m0.class */
public final class C11433m0 {

    /* renamed from: a */
    public final Context f33590a;

    /* renamed from: b */
    public final f f33591b;

    @Inject
    public C11433m0(Context context, @Named("CPU") f fVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "cpuContext");
        this.f33590a = context;
        this.f33591b = fVar;
    }

    /* renamed from: a */
    public Object m24697a(AvatarXConfig avatarXConfig, d<? super Bitmap> dVar) {
        Context context = this.f33590a;
        context.setTheme(C4781R.style.ThemeX_Dark);
        C8239a c8239a = new C8239a(context, this.f33591b, C3700R.dimen.notification_tcx_call_avatar_size);
        C8243a.m28739ok(c8239a, avatarXConfig, false, 2, null);
        return c8239a.m28760rk(c8239a.f25401W, dVar);
    }
}
