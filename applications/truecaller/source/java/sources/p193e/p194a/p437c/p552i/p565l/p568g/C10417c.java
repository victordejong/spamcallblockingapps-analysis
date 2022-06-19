package p193e.p194a.p437c.p552i.p565l.p568g;

import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.truecaller.insights.C4030R;
import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
/* renamed from: e.a.c.i.l.g.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/l/g/c.class */
public final class C10417c implements AbstractC22590g<Bitmap> {

    /* renamed from: a */
    public final /* synthetic */ C10418d f31008a;

    /* renamed from: b */
    public final /* synthetic */ RemoteViews f31009b;

    public C10417c(C10418d c10418d, RemoteViews remoteViews) {
        this.f31008a = c10418d;
        this.f31009b = remoteViews;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Bitmap> abstractC22598k, boolean z) {
        return false;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onResourceReady(Bitmap bitmap, Object obj, AbstractC22598k<Bitmap> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
        C10418d c10418d = this.f31008a;
        RemoteViews remoteViews = this.f31009b;
        Objects.requireNonNull(c10418d);
        remoteViews.setInt(C4030R.C4032id.primaryIcon, "setBackgroundColor", 0);
        return false;
    }
}
