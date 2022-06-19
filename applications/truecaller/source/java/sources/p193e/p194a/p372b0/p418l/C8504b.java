package p193e.p194a.p372b0.p418l;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
/* renamed from: e.a.b0.l.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/l/b.class */
public final class C8504b implements AbstractC8503a {

    /* renamed from: a */
    public volatile boolean f26288a;

    @Override // p193e.p194a.p372b0.p418l.AbstractC8503a
    /* renamed from: a */
    public void mo28434a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (this.f26288a) {
            return;
        }
        synchronized (this) {
            if (this.f26288a) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            l.d(applicationContext, "context.applicationContext");
            C23228f0.m7342m(applicationContext);
            this.f26288a = true;
        }
    }

    @Override // p193e.p194a.p372b0.p418l.AbstractC8503a
    /* renamed from: b */
    public void mo28433b() {
        C23228f0.m7338q(false);
        C23228f0.m7340o(false);
        C23228f0.m7339p(false);
    }

    @Override // p193e.p194a.p372b0.p418l.AbstractC8503a
    /* renamed from: c */
    public void mo28432c() {
        C23228f0.m7338q(true);
        C23228f0.m7340o(true);
        C23228f0.m7339p(true);
        C23228f0.f64311u = true;
    }
}
