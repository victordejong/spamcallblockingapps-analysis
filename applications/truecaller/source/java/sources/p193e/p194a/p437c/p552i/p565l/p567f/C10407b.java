package p193e.p194a.p437c.p552i.p565l.p567f;

import android.graphics.Bitmap;
import com.truecaller.insights.core.smartnotifications.smsparser.models.NotificationBanner;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p194a.p437c.p552i.p565l.p566e.C10401a;
/* renamed from: e.a.c.i.l.f.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/l/f/b.class */
public final class C10407b implements AbstractC22590g<Bitmap> {

    /* renamed from: a */
    public final /* synthetic */ C10401a f30969a;

    /* renamed from: b */
    public final /* synthetic */ NotificationBanner f30970b;

    public C10407b(C10401a c10401a, NotificationBanner notificationBanner) {
        this.f30969a = c10401a;
        this.f30970b = notificationBanner;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Bitmap> abstractC22598k, boolean z) {
        return false;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onResourceReady(Bitmap bitmap, Object obj, AbstractC22598k<Bitmap> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
        this.f30969a.m26222b(this.f30970b.getName());
        return false;
    }
}
