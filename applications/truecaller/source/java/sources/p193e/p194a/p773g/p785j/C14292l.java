package p193e.p194a.p773g.p785j;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p1357x3.p1358h.C21404d;
import s1.z.c.l;
/* renamed from: e.a.g.j.l */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/l.class */
public final class C14292l {

    /* renamed from: a */
    public final a<AbstractC21396c> f41355a;

    @Inject
    public C14292l(a<AbstractC21396c> aVar) {
        l.e(aVar, "forcedUpdateManager");
        this.f41355a = aVar;
    }

    /* renamed from: a */
    public boolean m20285a(Context context, FragmentManager fragmentManager) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fragmentManager, "fragmentManager");
        Object obj = this.f41355a.get();
        l.d(obj, "forcedUpdateManager.get()");
        return C21404d.C21405a.m9766a(fragmentManager, (AbstractC21396c) obj);
    }
}
