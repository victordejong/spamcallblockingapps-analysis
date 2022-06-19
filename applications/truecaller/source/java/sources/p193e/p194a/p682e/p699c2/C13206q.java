package p193e.p194a.p682e.p699c2;

import android.graphics.drawable.Drawable;
import com.truecaller.p183ui.components.AvatarView;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
/* renamed from: e.a.e.c2.q */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/q.class */
public class C13206q implements AbstractC22590g<Drawable> {

    /* renamed from: a */
    public final /* synthetic */ AvatarView f38354a;

    public C13206q(AvatarView avatarView) {
        this.f38354a = avatarView;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Drawable> abstractC22598k, boolean z) {
        this.f38354a.f15694k = false;
        return false;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onResourceReady(Drawable drawable, Object obj, AbstractC22598k<Drawable> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
        this.f38354a.f15694k = true;
        return false;
    }
}
