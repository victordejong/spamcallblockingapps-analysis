package p193e.p194a.p947k.p948a.p959g.p960n0;

import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.videocallerid.p187ui.recording.customisation_option.VideoCustomisationOption;
import e.f.a.n.q.d.i;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.p1466q.p1469f.C22530c;
import p193e.p1451f.p1452a.p1476r.p1478l.C22600a;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p947k.p972m.C16139m;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.k.a.g.n0.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/n0/b.class */
public final class C15743b extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final C16139m f44380a;

    /* renamed from: b */
    public final l<VideoCustomisationOption, s> f44381b;

    /* renamed from: c */
    public final l<VideoCustomisationOption, s> f44382c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C15743b(C16139m c16139m, l<? super VideoCustomisationOption, s> lVar, l<? super VideoCustomisationOption, s> lVar2) {
        super(c16139m.f45522a);
        s1.z.c.l.e(c16139m, "binding");
        s1.z.c.l.e(lVar, "itemClickListener");
        s1.z.c.l.e(lVar2, "newBadgeVisibleListener");
        this.f44380a = c16139m;
        this.f44381b = lVar;
        this.f44382c = lVar2;
    }

    /* renamed from: N4 */
    public final void m18427N4(ImageView imageView, String str, boolean z) {
        C22234h mo8414k = ((C21853e) ComponentCallbacks2C22222c.m8445f(imageView)).mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = str;
        c21852d.f61771N = true;
        C21852d c21852d2 = (C21852d) mo8414k;
        C22530c c22530c = new C22530c();
        c22530c.f61790a = new C22600a(300, false);
        c21852d2.f61766E = c22530c;
        c21852d2.f61770M = false;
        ((C21852d) c21852d2.m8111C(new i(), true)).m8427O(imageView);
        imageView.setScaleX(z ? -1.0f : 1.0f);
    }
}
