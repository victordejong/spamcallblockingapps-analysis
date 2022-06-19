package p193e.p194a.p437c.p552i.p565l;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import e.f.a.r.k.h;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import s1.z.c.l;
/* renamed from: e.a.c.i.l.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/l/a.class */
public final class C10393a extends h {

    /* renamed from: j */
    public final AbstractC9691j f30911j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10393a(Context context, int i, RemoteViews remoteViews, Notification notification, int i2, AbstractC9691j abstractC9691j) {
        super(context, i, remoteViews, notification, i2);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(remoteViews, "remoteViews");
        l.e(notification, RemoteMessageConst.NOTIFICATION);
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f30911j = abstractC9691j;
    }

    /* renamed from: e */
    public void m26234e(Object obj, AbstractC22604d abstractC22604d) {
        Bitmap bitmap = (Bitmap) obj;
        l.e(bitmap, Constants.VAST_RESOURCE);
        try {
            a(bitmap);
        } catch (SecurityException e) {
            C10263b.f30414d.m26508b(e, null);
            this.f30911j.mo27258f();
        }
    }
}
