package p193e.p194a.p437c.p552i.p565l.p568g;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RemoteViews;
import com.truecaller.insights.C4030R;
import javax.inject.Inject;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.p1409i.AbstractC21873e;
import p193e.p194a.p1406z3.p1409i.C21869a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p552i.p565l.C10393a;
import p193e.p194a.p437c.p580r.p590k.C10647e;
import p193e.p194a.p437c.p580r.p590k.C10648f;
import s1.z.c.l;
/* renamed from: e.a.c.i.l.g.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/l/g/d.class */
public final class C10418d {

    /* renamed from: a */
    public final Context f31010a;

    /* renamed from: b */
    public final AbstractC9691j f31011b;

    @Inject
    public C10418d(Context context, AbstractC9691j abstractC9691j) {
        l.e(context, "appContext");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f31010a = context;
        this.f31011b = abstractC9691j;
    }

    /* renamed from: a */
    public final RemoteViews m26185a(int i, C10648f c10648f, String str) {
        RemoteViews remoteViews = new RemoteViews(this.f31010a.getPackageName(), i);
        remoteViews.setTextViewText(C4030R.C4032id.textSender, c10648f.f31730d);
        remoteViews.setTextViewText(C4030R.C4032id.textCategory, c10648f.f31729c);
        remoteViews.setTextViewText(C4030R.C4032id.textContent, str);
        remoteViews.setImageViewResource(C4030R.C4032id.primaryIcon, c10648f.f31732f);
        remoteViews.setOnClickPendingIntent(C4030R.C4032id.contentContainer, c10648f.f31733g);
        C10647e c10647e = c10648f.f31735i;
        if (c10647e != null) {
            int i2 = C4030R.C4032id.primaryAction;
            remoteViews.setTextViewText(i2, c10647e.f31725a);
            remoteViews.setOnClickPendingIntent(i2, c10647e.f31726b);
            remoteViews.setViewVisibility(i2, 0);
        }
        C10647e c10647e2 = c10648f.f31736j;
        if (c10647e2 != null) {
            int i3 = C4030R.C4032id.secondaryAction;
            remoteViews.setTextViewText(i3, c10647e2.f31725a);
            remoteViews.setOnClickPendingIntent(i3, c10647e2.f31726b);
            remoteViews.setViewVisibility(i3, 0);
        }
        return remoteViews;
    }

    /* renamed from: b */
    public final void m26184b(Notification notification, Uri uri, RemoteViews remoteViews, int i, int i2) {
        if (this.f31011b.mo27238v()) {
            C21869a c21869a = new C21869a(uri, AbstractC21873e.C21875b.f60766c);
            c21869a.f60757a = true;
            Bitmap m15656N0 = C17891a1.C17902k.m15656N0(c21869a, this.f31010a);
            int i3 = C4030R.C4032id.primaryIcon;
            remoteViews.setImageViewBitmap(i3, m15656N0);
            remoteViews.setInt(i3, "setBackgroundColor", 0);
            return;
        }
        C10393a c10393a = new C10393a(this.f31010a, C4030R.C4032id.primaryIcon, remoteViews, notification, i, this.f31011b);
        C21852d<Bitmap> m8983a0 = C17891a1.C17902k.m15664K1(this.f31010a).mo8415f().m8983a0(C22591h.m8074H());
        m8983a0.f61767J = uri;
        m8983a0.f61771N = true;
        C21852d<Bitmap> mo8087u = m8983a0.mo8087u(i2);
        C10417c c10417c = new C10417c(this, remoteViews);
        mo8087u.f61768K = null;
        mo8087u.mo8433H(c10417c);
        mo8087u.m8429M(c10393a);
    }
}
