package p193e.p194a.p773g.p785j;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.g.j.c0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/c0.class */
public final class C14272c0 implements AbstractC14268a0 {

    /* renamed from: a */
    public final Context f41314a;

    /* renamed from: b */
    public final f f41315b;

    @Inject
    public C14272c0(Context context, @Named("IO") f fVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "asyncContext");
        this.f41314a = context;
        this.f41315b = fVar;
    }
}
