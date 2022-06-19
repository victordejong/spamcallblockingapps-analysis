package p193e.p194a.p852i.p869d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.tenor.android.core.constant.ViewAction;
import e.a.i.f0.m.b;
import e.a.i.f0.m.h;
import e.m.d.y.n;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.i.d.p */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/p.class */
public final class C15093p extends RecyclerView.AbstractC0313c0 implements AbstractC15085n.AbstractC15089d {

    /* renamed from: a */
    public final g f43035a;

    /* renamed from: b */
    public final NativeAdView f43036b;

    /* renamed from: c */
    public final AbstractC15076e f43037c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15093p(View view, AbstractC15191g abstractC15191g, AbstractC15076e abstractC15076e) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC15191g, "adLayout");
        l.e(abstractC15076e, "callback");
        this.f43037c = abstractC15076e;
        this.f43035a = C19286f.m13660s(view, 2131362924);
        Context context = view.getContext();
        l.d(context, "view.context");
        this.f43036b = n.p0(abstractC15191g, context);
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15085n.AbstractC15089d
    /* renamed from: b4 */
    public void mo19174b4(h hVar) {
        l.e(hVar, "ad");
        FrameLayout frameLayout = (FrameLayout) this.f43035a.getValue();
        NativeAdView nativeAdView = this.f43036b;
        AbstractC15191g abstractC15191g = C15070a.f43018a;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        ViewParent parent = nativeAdView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(nativeAdView);
        }
        n.n(nativeAdView, hVar.e(), ((b) hVar).c, false);
        if (frameLayout != null) {
            frameLayout.addView(nativeAdView);
        }
        this.f43037c.onAdShown();
    }
}
