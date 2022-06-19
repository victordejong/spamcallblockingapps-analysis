package p193e.p194a.p437c.p552i.p565l.p567f;

import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.truecaller.insights.C4030R;
import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
/* renamed from: e.a.c.i.l.f.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/l/f/c.class */
public final class C10408c implements AbstractC22590g<Bitmap> {

    /* renamed from: a */
    public final /* synthetic */ C10409d f30971a;

    public C10408c(C10409d c10409d) {
        this.f30971a = c10409d;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Bitmap> abstractC22598k, boolean z) {
        return false;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onResourceReady(Bitmap bitmap, Object obj, AbstractC22598k<Bitmap> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
        C10409d c10409d = this.f30971a;
        C10410e c10410e = c10409d.f30972b;
        RemoteViews remoteViews = c10409d.f30973c;
        Objects.requireNonNull(c10410e);
        remoteViews.setViewVisibility(C4030R.C4032id.primarySubIcon, 8);
        return false;
    }
}
