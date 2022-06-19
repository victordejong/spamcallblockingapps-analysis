package p193e.p194a.p619d.p653r;

import android.content.ContentResolver;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.r.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/r/c.class */
public final class C11784c implements AbstractC11782a {

    /* renamed from: a */
    public final f f34608a;

    /* renamed from: b */
    public final Context f34609b;

    /* renamed from: c */
    public final ContentResolver f34610c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC17348c>> f34611d;

    @Inject
    public C11784c(@Named("IO") f fVar, Context context, ContentResolver contentResolver, a<AbstractC19854f<AbstractC17348c>> aVar) {
        l.e(fVar, "ioContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(contentResolver, "contentResolver");
        l.e(aVar, "historyManager");
        this.f34608a = fVar;
        this.f34609b = context;
        this.f34610c = contentResolver;
        this.f34611d = aVar;
    }
}
