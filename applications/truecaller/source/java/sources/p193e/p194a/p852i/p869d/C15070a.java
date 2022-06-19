package p193e.p194a.p852i.p869d;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.ads.AdLayoutTypeX;
import p193e.p194a.p1111o2.C18906n;
import p193e.p194a.p1111o2.C18907o;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p852i.AbstractC15191g;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.i.d.a */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/a.class */
public final class C15070a {

    /* renamed from: a */
    public static final AbstractC15191g f43018a = AdLayoutTypeX.SMALL;

    /* renamed from: e.a.i.d.a$c */
    /* loaded from: classes2-dex2jar.jar:e/a/i/d/a$c.class */
    public static final class C15071c extends m implements l<ViewGroup, RecyclerView.AbstractC0313c0> {

        /* renamed from: b */
        public final /* synthetic */ C20592g f43019b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC15076e f43020c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15071c(C20592g c20592g, AbstractC15076e abstractC15076e) {
            super(1);
            this.f43019b = c20592g;
            this.f43020c = abstractC15076e;
        }

        /* renamed from: d */
        public Object m19181d(Object obj) {
            ViewGroup viewGroup = (ViewGroup) obj;
            s1.z.c.l.e(viewGroup, "parent");
            C20592g c20592g = this.f43019b;
            return c20592g.f58039u5.m10941a(c20592g, C20592g.f57695p6[338]).isEnabled() ? new C15092o(C19286f.m13667l(viewGroup, C2752R.layout.ad_tcx_frame, false, 2), C15070a.f43018a, this.f43020c) : new C15093p(C19286f.m13667l(viewGroup, C2752R.layout.ad_tcx_frame, false, 2), C15070a.f43018a, this.f43020c);
        }
    }

    /* renamed from: a */
    public static final C18907o m19182a(AbstractC15101x abstractC15101x, C20592g c20592g, AbstractC15076e abstractC15076e) {
        s1.z.c.l.e(abstractC15101x, "$this$delegateX");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(abstractC15076e, "callback");
        return new C18907o(new C18906n(abstractC15101x.mo19169e(), C2752R.C2754id.view_type_native_app_install_ad, new C15071c(c20592g, abstractC15076e)), new C18906n(abstractC15101x.mo19173a(), C2752R.C2754id.view_type_native_custom_ad, new a(0, abstractC15076e)), new C18906n(abstractC15101x.mo19171c(), C2752R.C2754id.view_type_banner_ad, new a(1, abstractC15076e)), new C18906n(abstractC15101x.mo19172b(), C2752R.C2754id.view_type_house_ad, new a(2, abstractC15076e)), new C18906n(abstractC15101x.mo19168f(), C2752R.C2754id.view_type_placeholder_ad, b.c), new C18906n(abstractC15101x.mo19170d(), C2752R.C2754id.view_type_none_ad, b.d));
    }
}
