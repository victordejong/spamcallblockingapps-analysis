package p193e.p194a.p852i.p869d;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.tenor.android.core.constant.ViewAction;
import e.a.i.f0.m.a;
import e.a.i.f0.m.b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.i.d.d */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/d.class */
public final class C15075d extends RecyclerView.AbstractC0313c0 implements AbstractC15085n.AbstractC15086a {

    /* renamed from: a */
    public final g f43024a;

    /* renamed from: b */
    public a f43025b;

    /* renamed from: c */
    public final AbstractC15076e f43026c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15075d(View view, AbstractC15076e abstractC15076e) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC15076e, "callback");
        this.f43026c = abstractC15076e;
        this.f43024a = C19286f.m13660s(view, 2131362924);
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15085n.AbstractC15086a
    /* renamed from: J1 */
    public void mo19177J1(a aVar) {
        l.e(aVar, "ad");
        if (l.a(this.f43025b, aVar)) {
            return;
        }
        this.f43025b = aVar;
        FrameLayout frameLayout = (FrameLayout) this.f43024a.getValue();
        if (frameLayout != null) {
            if (!(frameLayout.getChildCount() > 0)) {
                frameLayout = null;
            }
            if (frameLayout != null) {
                frameLayout.removeAllViews();
            }
        }
        AdManagerAdView adManagerAdView = (AdManagerAdView) ((b) aVar).b;
        ViewParent parent = adManagerAdView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(adManagerAdView);
        }
        FrameLayout frameLayout2 = (FrameLayout) this.f43024a.getValue();
        if (frameLayout2 != null) {
            frameLayout2.addView(adManagerAdView);
        }
        this.f43026c.onAdShown();
    }
}
