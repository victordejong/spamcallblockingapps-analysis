package p193e.p194a.p751f4.p762g;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.UUID;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.f4.g.s */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/s.class */
public final class C14029s implements AbstractC14028r {

    /* renamed from: a */
    public final Context f40579a;

    @Inject
    public C14029s(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f40579a = context;
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14028r
    /* renamed from: a */
    public C14020n mo20840a(UUID uuid, String str) {
        l.e(uuid, "requestId");
        l.e(str, "searchSource");
        return new C14020n(this.f40579a, uuid, str);
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14028r
    /* renamed from: b */
    public C14022p mo20839b(UUID uuid, String str) {
        l.e(uuid, "requestId");
        l.e(str, "searchSource");
        return new C14022p(this.f40579a, uuid, str);
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14028r
    /* renamed from: c */
    public C14012i mo20838c(UUID uuid, String str) {
        l.e(uuid, "requestId");
        l.e(str, "searchSource");
        return new C14012i(this.f40579a, uuid, str);
    }
}
