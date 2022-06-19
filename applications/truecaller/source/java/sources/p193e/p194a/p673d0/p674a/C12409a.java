package p193e.p194a.p673d0.p674a;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.ads.campaigns.AdCampaign;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.bizmon.callReason.ModularCallReasonView;
import com.truecaller.callerid.window.InfoLineStyle;
import com.truecaller.common.p156ui.tag.TagXView;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerView;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.settings.CallingSettings;
import com.truecaller.timezone.AddressTimezoneView;
import com.truecaller.truecontext.TrueContext;
import com.truecaller.videocallerid.p187ui.utils.ToastWithActionView;
import com.truecaller.videocallerid.p187ui.videoplayer.AvatarVideoPlayerView;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Provider;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1010k5.AbstractC16550a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1080o.p1081a.p1096j.C18661b;
import p193e.p194a.p1080o.p1097b.AbstractC18742m;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1359x4.AbstractC21423g;
import p193e.p194a.p1359x4.p1364l.C21464b;
import p193e.p194a.p1405z2.AbstractC21847a;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p288a0.AbstractC7395n;
import p193e.p194a.p288a0.AbstractC7401p;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p294b.p344j.C7951b;
import p193e.p194a.p372b0.p373a.C8289d;
import p193e.p194a.p372b0.p373a.C8311g;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p673d0.p674a.AbstractC12464x;
import p193e.p194a.p673d0.p674a.AbstractC12468y;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p852i.p856b0.AbstractC14992a;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p898k.AbstractC15168a;
import p193e.p194a.p947k.AbstractC16107d;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p947k.p948a.p963j.C15804a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import p193e.p194a.p947k.p969c.AbstractC15964c2;
import p193e.p194a.p997k3.AbstractC16458h;
import s1.g;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d0.a.a */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/a.class */
public final class C12409a extends AbstractC12468y implements AbstractC12438l {
    @Inject

    /* renamed from: f0 */
    public AbstractC12437k f36225f0;
    @Inject

    /* renamed from: g0 */
    public AbstractC7401p f36226g0;
    @Inject

    /* renamed from: h0 */
    public AbstractC18742m f36227h0;
    @Inject

    /* renamed from: i0 */
    public AbstractC16111h f36228i0;

    /* renamed from: j0 */
    public PopupWindow f36229j0;

    /* renamed from: m */
    public View f36230m;

    /* renamed from: n */
    public C8289d f36231n;

    /* renamed from: o */
    public AbstractC19233h0 f36232o;

    /* renamed from: p */
    public C15804a f36233p;

    /* renamed from: q */
    public final g f36234q = C25225a.m3978P1(a.d);

    /* renamed from: r */
    public final g f36235r = C25225a.m3978P1(a.c);

    /* renamed from: s */
    public final g f36236s = C25225a.m3978P1(new c(3, this));

    /* renamed from: t */
    public final g f36237t = C25225a.m3978P1(new b(1, this));

    /* renamed from: u */
    public final g f36238u = C25225a.m3978P1(new d(6, this));

    /* renamed from: v */
    public final g f36239v = C25225a.m3978P1(new d(0, this));

    /* renamed from: w */
    public final g f36240w = C25225a.m3978P1(new d(1, this));

    /* renamed from: x */
    public final g f36241x = C25225a.m3978P1(new d(2, this));

    /* renamed from: y */
    public final g f36242y = C25225a.m3978P1(new b(2, this));

    /* renamed from: z */
    public final g f36243z = C25225a.m3978P1(new b(3, this));

    /* renamed from: A */
    public final g f36194A = C25225a.m3978P1(new c(5, this));

    /* renamed from: B */
    public final g f36195B = C25225a.m3978P1(new d(3, this));

    /* renamed from: C */
    public final g f36196C = C25225a.m3978P1(new b(0, this));

    /* renamed from: D */
    public final g f36197D = C25225a.m3978P1(new C12413h());

    /* renamed from: E */
    public final g f36198E = C25225a.m3978P1(new C12411f(0, this));

    /* renamed from: F */
    public final g f36199F = C25225a.m3978P1(new c(1, this));

    /* renamed from: G */
    public final g f36200G = C25225a.m3978P1(new C12423r());

    /* renamed from: H */
    public final g f36201H = C25225a.m3978P1(new C12412g());

    /* renamed from: I */
    public final g f36202I = C25225a.m3978P1(new c(0, this));

    /* renamed from: J */
    public final g f36203J = C25225a.m3978P1(new c(4, this));

    /* renamed from: K */
    public final g f36204K = C25225a.m3978P1(new C12411f(1, this));

    /* renamed from: L */
    public final g f36205L = C25225a.m3978P1(new d(4, this));

    /* renamed from: M */
    public final g f36206M = C25225a.m3978P1(new C12416k());

    /* renamed from: N */
    public final g f36207N = C25225a.m3978P1(new C12425t());

    /* renamed from: O */
    public final g f36208O = C25225a.m3978P1(new C12417l());

    /* renamed from: P */
    public final g f36209P = C25225a.m3978P1(new c(2, this));

    /* renamed from: Q */
    public final g f36210Q = C25225a.m3978P1(new C12424s());

    /* renamed from: R */
    public final g f36211R = C25225a.m3978P1(new d(5, this));

    /* renamed from: S */
    public final g f36212S = C25225a.m3978P1(new C12411f(2, this));

    /* renamed from: T */
    public final g f36213T = C25225a.m3978P1(new C12418m());

    /* renamed from: U */
    public final g f36214U = C25225a.m3978P1(new C12410e(0, this));

    /* renamed from: V */
    public final g f36215V = C25225a.m3978P1(new C12410e(8, this));

    /* renamed from: W */
    public final g f36216W = C25225a.m3978P1(new C12415j());

    /* renamed from: X */
    public final g f36217X = C25225a.m3978P1(new C12410e(7, this));

    /* renamed from: Y */
    public final g f36218Y = C25225a.m3978P1(new C12410e(2, this));

    /* renamed from: Z */
    public final g f36219Z = C25225a.m3978P1(new C12410e(3, this));

    /* renamed from: a0 */
    public final g f36220a0 = C25225a.m3978P1(new C12410e(1, this));

    /* renamed from: b0 */
    public final g f36221b0 = C25225a.m3978P1(new C12410e(9, this));

    /* renamed from: c0 */
    public final g f36222c0 = C25225a.m3978P1(new C12410e(5, this));

    /* renamed from: d0 */
    public final g f36223d0 = C25225a.m3978P1(new C12410e(6, this));

    /* renamed from: e0 */
    public final g f36224e0 = C25225a.m3978P1(new C12410e(4, this));

    /* renamed from: e.a.d0.a.a$e */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$e.class */
    public static final class C12410e extends m implements a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ int f36244b;

        /* renamed from: c */
        public final /* synthetic */ Object f36245c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12410e(int i, Object obj) {
            super(0);
            this.f36244b = i;
            this.f36245c = obj;
        }

        public final Object invoke() {
            switch (this.f36244b) {
                case 0:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(2130970002));
                case 1:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(2130970072));
                case 2:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(2130970253));
                case 3:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(2130970255));
                case 4:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(2130970083));
                case 5:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(2130970090));
                case 6:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(2130970091));
                case 7:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(2130970214));
                case 8:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(C2752R.attr.tcx_callerIdSpamBackground));
                case 9:
                    return Integer.valueOf(C12409a.m23086q((C12409a) this.f36245c).mo13758l(2130970275));
                default:
                    throw null;
            }
        }
    }

    /* renamed from: e.a.d0.a.a$f */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$f.class */
    public static final class C12411f extends m implements a<ImageView> {

        /* renamed from: b */
        public final /* synthetic */ int f36246b;

        /* renamed from: c */
        public final /* synthetic */ Object f36247c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12411f(int i, Object obj) {
            super(0);
            this.f36246b = i;
            this.f36247c = obj;
        }

        public final Object invoke() {
            int i = this.f36246b;
            if (i != 0) {
                if (i == 1) {
                    return (ImageView) C12409a.m23085r((C12409a) this.f36247c).findViewById(2131365099);
                }
                if (i != 2) {
                    throw null;
                }
                return (ImageView) ((C12409a) this.f36247c).m23078y().findViewById(2131364801);
            }
            return (ImageView) C12409a.m23085r((C12409a) this.f36247c).findViewById(2131362998);
        }
    }

    /* renamed from: e.a.d0.a.a$g */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$g.class */
    public static final class C12412g extends m implements a<AvatarVideoPlayerView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12412g() {
            super(0);
            C12409a.this = r4;
        }

        public Object invoke() {
            return (AvatarVideoPlayerView) C12409a.m23085r(C12409a.this).findViewById(2131362247);
        }
    }

    /* renamed from: e.a.d0.a.a$h */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$h.class */
    public static final class C12413h extends m implements a<CardView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12413h() {
            super(0);
            C12409a.this = r4;
        }

        public Object invoke() {
            return (CardView) C12409a.m23085r(C12409a.this).findViewById(C2752R.C2754id.callerIdContainer);
        }
    }

    /* renamed from: e.a.d0.a.a$i */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$i.class */
    public static final class C12414i implements AbstractC22590g<Drawable> {
        public C12414i() {
            C12409a.this = r4;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Drawable> abstractC22598k, boolean z) {
            l.e(abstractC22598k, "target");
            View m23084s = C12409a.this.m23084s();
            l.d(m23084s, "adView");
            C19286f.m13689O(m23084s);
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onResourceReady(Drawable drawable, Object obj, AbstractC22598k<Drawable> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
            l.e(drawable, Constants.VAST_RESOURCE);
            l.e(abstractC22598k, "target");
            l.e(enumC22258a, "dataSource");
            return false;
        }
    }

    /* renamed from: e.a.d0.a.a$j */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$j.class */
    public static final class C12415j extends m implements a<C8311g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12415j() {
            super(0);
            C12409a.this = r4;
        }

        public Object invoke() {
            C8311g c8311g = new C8311g(C12409a.m23086q(C12409a.this));
            c8311g.setCornerRadius(c8311g.f25597a.mo13770H(2131165429));
            return c8311g;
        }
    }

    /* renamed from: e.a.d0.a.a$k */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$k.class */
    public static final class C12416k extends m implements a<AddressTimezoneView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12416k() {
            super(0);
            C12409a.this = r4;
        }

        public Object invoke() {
            return (AddressTimezoneView) C12409a.m23085r(C12409a.this).findViewById(C2752R.C2754id.infoLineAddress);
        }
    }

    /* renamed from: e.a.d0.a.a$l */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$l.class */
    public static final class C12417l extends m implements a<ModularCallReasonView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12417l() {
            super(0);
            C12409a.this = r4;
        }

        public Object invoke() {
            return (ModularCallReasonView) C12409a.m23085r(C12409a.this).findViewById(2131364812);
        }
    }

    /* renamed from: e.a.d0.a.a$m */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$m.class */
    public static final class C12418m extends m implements a<OnDemandCallReasonPickerView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12418m() {
            super(0);
            C12409a.this = r4;
        }

        public Object invoke() {
            return (OnDemandCallReasonPickerView) C12409a.m23085r(C12409a.this).findViewById(C2752R.C2754id.onDemandCallReasonPicker);
        }
    }

    /* renamed from: e.a.d0.a.a$n */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$n.class */
    public static final class View$OnClickListenerC12419n implements View.OnClickListener {
        public View$OnClickListenerC12419n() {
            C12409a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12439m c12439m = (C12439m) C12409a.this.m23096C();
            Objects.requireNonNull(c12439m);
            l.e("callerId", AnalyticsConstants.CONTEXT);
            l.e("CloseButton", "subAction");
            l.e("dismissed", "action");
            n.B0(new ViewActionEvent("dismissed", "CloseButton", "callerId"), c12439m.f36328r);
            AbstractC12438l abstractC12438l = (AbstractC12438l) c12439m.f57683a;
            if (abstractC12438l != null) {
                abstractC12438l.m23055L5(false);
            }
        }
    }

    /* renamed from: e.a.d0.a.a$o */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$o.class */
    public static final class C12420o implements PopupWindow.OnDismissListener {
        public C12420o() {
            C12409a.this = r4;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            C12409a.this.f36229j0 = null;
        }
    }

    /* renamed from: e.a.d0.a.a$p */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$p.class */
    public static final class C12421p implements TrueContext.AbstractC4652a {
        public C12421p() {
            C12409a.this = r4;
        }

        @Override // com.truecaller.truecontext.TrueContext.AbstractC4652a
        /* renamed from: a */
        public void mo20717a(boolean z) {
            C12439m c12439m = (C12439m) C12409a.this.m23096C();
            AbstractC12438l abstractC12438l = (AbstractC12438l) c12439m.f57683a;
            if (abstractC12438l != null) {
                abstractC12438l.mo23017y5(!z);
            }
            if (c12439m.f36316f != null) {
                boolean z2 = c12439m.f36315e || !z;
                AbstractC12438l abstractC12438l2 = (AbstractC12438l) c12439m.f57683a;
                if (abstractC12438l2 == null) {
                    return;
                }
                abstractC12438l2.mo23043V5(z2);
            }
        }
    }

    @e(c = "com.truecaller.callerid.window.CallerIdWindow", f = "CallerIdWindow.kt", l = {527}, m = "showVideoCallerIdToast")
    /* renamed from: e.a.d0.a.a$q */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$q.class */
    public static final class C12422q extends c {

        /* renamed from: d */
        public /* synthetic */ Object f36258d;

        /* renamed from: e */
        public int f36259e;

        /* renamed from: g */
        public Object f36261g;

        /* renamed from: h */
        public Object f36262h;

        /* renamed from: i */
        public long f36263i;

        /* renamed from: j */
        public boolean f36264j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12422q(d dVar) {
            super(dVar);
            C12409a.this = r4;
        }

        /* renamed from: s */
        public final Object m23076s(Object obj) {
            this.f36258d = obj;
            this.f36259e |= Integer.MIN_VALUE;
            return C12409a.this.mo23059H5(null, 0L, false, this);
        }
    }

    /* renamed from: e.a.d0.a.a$r */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$r.class */
    public static final class C12423r extends m implements a<TagXView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12423r() {
            super(0);
            C12409a.this = r4;
        }

        public Object invoke() {
            return (TagXView) C12409a.m23085r(C12409a.this).findViewById(2131366209);
        }
    }

    /* renamed from: e.a.d0.a.a$s */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$s.class */
    public static final class C12424s extends m implements a<ToastWithActionView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12424s() {
            super(0);
            C12409a.this = r4;
        }

        public Object invoke() {
            return (ToastWithActionView) C12409a.m23085r(C12409a.this).findViewById(C2752R.C2754id.toastWithActionView);
        }
    }

    /* renamed from: e.a.d0.a.a$t */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/a$t.class */
    public static final class C12425t extends m implements a<TrueContext> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12425t() {
            super(0);
            C12409a.this = r4;
        }

        public Object invoke() {
            return (TrueContext) C12409a.m23085r(C12409a.this).findViewById(2131366563);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12409a(Context context, AbstractC12468y.AbstractC12470b abstractC12470b, CallingSettings callingSettings) {
        super(context, abstractC12470b, callingSettings);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC12470b, "callback");
        l.e(callingSettings, "callingSettings");
    }

    /* renamed from: q */
    public static final /* synthetic */ AbstractC19233h0 m23086q(C12409a c12409a) {
        AbstractC19233h0 abstractC19233h0 = c12409a.f36232o;
        if (abstractC19233h0 != null) {
            return abstractC19233h0;
        }
        l.l("resourceProvider");
        throw null;
    }

    /* renamed from: r */
    public static final /* synthetic */ View m23085r(C12409a c12409a) {
        View view = c12409a.f36230m;
        if (view != null) {
            return view;
        }
        l.l(ViewAction.VIEW);
        throw null;
    }

    /* renamed from: A */
    public final OnDemandCallReasonPickerView m23098A() {
        return (OnDemandCallReasonPickerView) this.f36213T.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: A5 */
    public void mo23067A5() {
        m23083t().setCardBackgroundColor(((Number) this.f36215V.getValue()).intValue());
    }

    /* renamed from: B */
    public final View m23097B() {
        return (View) this.f36203J.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: B5 */
    public void mo23066B5() {
        mo23063D5(null);
    }

    /* renamed from: C */
    public final AbstractC12437k m23096C() {
        AbstractC12437k abstractC12437k = this.f36225f0;
        if (abstractC12437k != null) {
            return abstractC12437k;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: C0 */
    public void mo23065C0() {
        m23089J().m34604g1(new C12421p());
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: C5 */
    public void mo23064C5() {
        m23082u().setImageResource(2131232776);
    }

    /* renamed from: D */
    public final TintedImageView m23095D() {
        return (TintedImageView) this.f36242y.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: D5 */
    public void mo23063D5(AbstractC12464x.C12467c c12467c) {
        View m23078y = m23078y();
        l.d(m23078y, "infoLineSpam");
        C19286f.m13683U(m23078y, c12467c != null);
        TextView textView = (TextView) this.f36211R.getValue();
        l.d(textView, "spamLabel");
        textView.setText(c12467c != null ? c12467c.f36415a : null);
    }

    /* renamed from: E */
    public final TintedImageView m23094E() {
        return (TintedImageView) this.f36243z.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: E5 */
    public void mo23062E5(int i) {
        TintedImageView m23095D = m23095D();
        l.d(m23095D, "simArrow");
        C19286f.m13684T(m23095D);
        TintedImageView m23094E = m23094E();
        l.d(m23094E, "simSlotView");
        C19286f.m13684T(m23094E);
        if (i == 0) {
            m23094E().setImageResource(2131232326);
        } else if (i != 1) {
        } else {
            m23094E().setImageResource(2131232327);
        }
    }

    /* renamed from: F */
    public final ImageView m23093F() {
        return (ImageView) this.f36212S.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: F5 */
    public void mo23061F5(String str) {
        l.e(str, "text");
        TextView textView = (TextView) this.f36241x.getValue();
        l.d(textView, "number");
        C19291g.m13637C1(textView, str);
    }

    /* renamed from: G */
    public final TagXView m23092G() {
        return (TagXView) this.f36200G.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: G5 */
    public void mo23060G5() {
        m23082u().setImageResource(2131232392);
    }

    /* renamed from: H */
    public final TextView m23091H() {
        return (TextView) this.f36238u.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0093  */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: H5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23059H5(java.lang.String r23, long r24, boolean r26, s1.w.d<? super s1.s> r27) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p673d0.p674a.C12409a.mo23059H5(java.lang.String, long, boolean, s1.w.d):java.lang.Object");
    }

    /* renamed from: I */
    public final ToastWithActionView m23090I() {
        return (ToastWithActionView) this.f36210Q.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: I5 */
    public void mo23058I5(String str, long j, boolean z, boolean z2) {
        l.e(str, "message");
        if (!z2) {
            ToastWithActionView m23090I = m23090I();
            Context context = m23090I.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            String string = context.getResources().getString(2131888585, str);
            l.d(string, "context.resources.getStr…ng_call_message, message)");
            m23090I.m34451j(string, z, null);
            C19286f.m13684T(m23090I);
            return;
        }
        C15804a c15804a = this.f36233p;
        if (c15804a == null) {
            l.l("toastViewQueue");
            throw null;
        }
        Context context2 = this.f36416a;
        l.d(context2, AnalyticsConstants.CONTEXT);
        String string2 = context2.getResources().getString(2131888585, str);
        l.d(string2, "context.resources.getStr…ng_call_message, message)");
        c15804a.m18284a(new C15804a.C15805a(string2, z, j, null, 8));
    }

    /* renamed from: J */
    public final TrueContext m23089J() {
        return (TrueContext) this.f36207N.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: J5 */
    public void mo23057J5(boolean z) {
        OnDemandCallReasonPickerView m23098A = m23098A();
        l.d(m23098A, "onDemandCallReasonPickerView");
        C19286f.m13683U(m23098A, z);
    }

    /* renamed from: K */
    public final void m23088K(int i, int i2, int i3, int i4) {
        m23091H().setTextColor(i);
        m23079x().setTextColor(i);
        ((TextView) this.f36240w.getValue()).setTextColor(i2);
        m23080w().m34613h1(i2, i);
        ((TextView) this.f36241x.getValue()).setTextColor(i);
        ((TextView) this.f36195B.getValue()).setTextColor(i2);
        m23082u().setTint(i);
        m23095D().setTint(i);
        m23094E().setTint(i);
        m23081v().setTint(i);
        ((View) this.f36199F.getValue()).setBackgroundColor(i3);
        TextView m23091H = m23091H();
        l.d(m23091H, "title");
        C19291g.m13519q1(m23091H, i);
        m23092G().setIconTint(i);
        m23092G().setTitleColor(i);
        m23092G().setBackgroundResource(i4);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: K5 */
    public void mo23056K5() {
        m23083t().setCardBackgroundColor(((Number) this.f36214U.getValue()).intValue());
    }

    /* renamed from: L */
    public final void m23087L(TextView textView, AbstractC12464x.C12466b c12466b) {
        C19291g.m13637C1(textView, c12466b != null ? c12466b.f36413a : null);
        if ((c12466b != null ? c12466b.f36414b : null) != InfoLineStyle.PRIORITY) {
            textView.setCompoundDrawables(null, null, null, null);
            textView.setTypeface((Typeface) this.f36234q.getValue());
            textView.setAllCaps(false);
            return;
        }
        AbstractC19233h0 abstractC19233h0 = this.f36232o;
        if (abstractC19233h0 == null) {
            l.l("resourceProvider");
            throw null;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(abstractC19233h0.mo13764f(2131232219, 2130970253), (Drawable) null, (Drawable) null, (Drawable) null);
        textView.setTypeface((Typeface) this.f36235r.getValue());
        textView.setAllCaps(true);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: M5 */
    public void mo23054M5(AdCampaign.Style style) {
        l.e(style, "style");
        View m23084s = m23084s();
        l.d(m23084s, "adView");
        C19286f.m13684T(m23084s);
        View m23084s2 = m23084s();
        l.d(m23084s2, "adView");
        m23084s2.getBackground().setTint(style.f9829a);
        ((TextView) m23084s().findViewById(C2752R.C2754id.callerIdAdText)).setTextColor(style.f9830b);
        ImageView imageView = (ImageView) m23084s().findViewById(C2752R.C2754id.callerIdAdLogo);
        C21852d<Drawable> m8964B = C17891a1.C17902k.m15664K1(this.f36416a).m8964B(style.f9833e);
        C12414i c12414i = new C12414i();
        m8964B.f61768K = null;
        m8964B.mo8433H(c12414i);
        m8964B.m8427O(imageView);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: N5 */
    public void mo23053N5(String str, String str2) {
        l.e(str2, "address");
        m23080w().m34615f1(str, str2);
        AddressTimezoneView m23080w = m23080w();
        l.d(m23080w, "infoLineAddress");
        C19286f.m13684T(m23080w);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: O3 */
    public void mo23052O3(OnDemandMessageSource onDemandMessageSource) {
        l.e(onDemandMessageSource, "source");
        m23098A().setSource(onDemandMessageSource);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: O5 */
    public void mo23051O5() {
        m23088K(((Number) this.f36222c0.getValue()).intValue(), ((Number) this.f36223d0.getValue()).intValue(), ((Number) this.f36224e0.getValue()).intValue(), 2131231048);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: P */
    public void mo23050P(AbstractC18240c abstractC18240c) {
        l.e(abstractC18240c, "presenter");
        TrueContext m23089J = m23089J();
        l.d(m23089J, "truecontext");
        C19286f.m13684T(m23089J);
        m23089J().setPresenter(abstractC18240c);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: P5 */
    public void mo23049P5() {
        m23083t().setCardBackgroundColor(((Number) this.f36217X.getValue()).intValue());
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: Q5 */
    public void mo23048Q5() {
        m23088K(((Number) this.f36218Y.getValue()).intValue(), ((Number) this.f36219Z.getValue()).intValue(), ((Number) this.f36220a0.getValue()).intValue(), 2131231046);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: R5 */
    public void mo23047R5() {
        ToastWithActionView m23090I = m23090I();
        l.d(m23090I, "toastWithActionView");
        C19286f.m13689O(m23090I);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: S5 */
    public void mo23046S5() {
        C17891a1.C17902k.m15664K1(this.f36416a).m8965A(2131231309).m8427O((ImageView) this.f36198E.getValue());
        ImageView imageView = (ImageView) this.f36198E.getValue();
        l.d(imageView, "credBackground");
        C19286f.m13684T(imageView);
        m23083t().setCardBackgroundColor(0);
        TextView m23079x = m23079x();
        AbstractC19233h0 abstractC19233h0 = this.f36232o;
        if (abstractC19233h0 == null) {
            l.l("resourceProvider");
            throw null;
        }
        m23079x.setTextColor(abstractC19233h0.mo13769a(2131099848));
        TintedImageView m23081v = m23081v();
        AbstractC19233h0 abstractC19233h02 = this.f36232o;
        if (abstractC19233h02 != null) {
            m23081v.setTint(abstractC19233h02.mo13769a(2131099848));
        } else {
            l.l("resourceProvider");
            throw null;
        }
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: T5 */
    public void mo23045T5() {
        View view = (View) this.f36194A.getValue();
        l.d(view, "stubCallerIdSwipeHint");
        C19286f.m13689O(view);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: U5 */
    public void mo23044U5() {
        AddressTimezoneView m23080w = m23080w();
        l.d(m23080w, "infoLineAddress");
        C19286f.m13689O(m23080w);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: V5 */
    public void mo23043V5(boolean z) {
        TagXView m23092G = m23092G();
        l.d(m23092G, "tagView");
        C19286f.m13683U(m23092G, z);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: W5 */
    public void mo23042W5(AbstractC18240c abstractC18240c) {
        l.e(abstractC18240c, "presenter");
        ModularCallReasonView m23077z = m23077z();
        l.d(m23077z, "modularCallReason");
        C19286f.m13684T(m23077z);
        CardView cardView = m23077z().getBinding().f24897a;
        l.d(cardView, "modularCallReason.binding.cardCallReason");
        cardView.setUseCompatPadding(true);
        m23077z().setPresenter(abstractC18240c);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: X5 */
    public void mo23041X5() {
        View m23097B = m23097B();
        l.d(m23097B, "partnerContainer");
        C19286f.m13689O(m23097B);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: Y5 */
    public void mo23040Y5(AbstractC12464x.C12466b c12466b) {
        TextView m23079x = m23079x();
        l.d(m23079x, "infoLineOne");
        m23087L(m23079x, c12466b);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: Z5 */
    public void mo23039Z5() {
        View view = (View) this.f36194A.getValue();
        l.d(view, "stubCallerIdSwipeHint");
        C19286f.m13684T(view);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: a0 */
    public void mo23038a0() {
        C8289d c8289d = this.f36231n;
        if (c8289d != null) {
            c8289d.m28738pk(true);
        } else {
            l.l("avatarPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: a4 */
    public void mo23037a4() {
        ModularCallReasonView m23077z = m23077z();
        l.d(m23077z, "modularCallReason");
        C19286f.m13689O(m23077z);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: a6 */
    public void mo23036a6(C12471z c12471z) {
        l.e(c12471z, RemoteMessageConst.Notification.TAG);
        TagXView m23092G = m23092G();
        l.d(m23092G, "tagView");
        C19286f.m13684T(m23092G);
        m23092G().setIcon(c12471z.f36431b);
        m23092G().setTitle(c12471z.f36430a);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: b0 */
    public void mo23035b0() {
        C8289d c8289d = this.f36231n;
        if (c8289d != null) {
            c8289d.m28738pk(false);
        } else {
            l.l("avatarPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: b6 */
    public void mo23034b6() {
        CardView m23083t = m23083t();
        l.d(m23083t, "callerIdContainer");
        m23083t.setBackground((C8311g) this.f36216W.getValue());
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: c5 */
    public void mo23033c5(int i, int i2) {
        ImageView m23093F = m23093F();
        Context context = this.f36416a;
        Object obj = C26467a.f74235a;
        m23093F.setColorFilter(C26467a.C26471d.m1787a(context, i));
        ((TextView) this.f36211R.getValue()).setTextColor(C26467a.C26471d.m1787a(this.f36416a, i));
        m23078y().setBackgroundResource(i2);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: c6 */
    public void mo23032c6(OnDemandMessageSource onDemandMessageSource, String str) {
        l.e(onDemandMessageSource, "source");
        m22970L5(false);
        AbstractC18742m abstractC18742m = this.f36227h0;
        if (abstractC18742m == null) {
            l.l("contextCallRouter");
            throw null;
        }
        Context context = this.f36416a;
        l.d(context, AnalyticsConstants.CONTEXT);
        abstractC18742m.mo14559d(context, (OnDemandMessageSource.MidCall) onDemandMessageSource, str);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: d6 */
    public void mo23031d6() {
        m23082u().setImageResource(2131232391);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12468y
    /* renamed from: e */
    public int mo22965e() {
        return C2752R.layout.view_callerid;
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: e4 */
    public void mo23030e4() {
        m23091H().setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 2131232706, 0);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: e6 */
    public void mo23029e6() {
        TintedImageView m23095D = m23095D();
        l.d(m23095D, "simArrow");
        C19286f.m13689O(m23095D);
        TintedImageView m23094E = m23094E();
        l.d(m23094E, "simSlotView");
        C19286f.m13689O(m23094E);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12468y
    /* renamed from: f */
    public View$OnTouchListenerC12429e mo22964f() {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(this.f36416a);
        l.d(viewConfiguration, "ViewConfiguration.get(mContext)");
        return new View$OnTouchListenerC12429e(this, viewConfiguration.getScaledTouchSlop());
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: f6 */
    public void mo23028f6() {
        TextView textView = (TextView) this.f36240w.getValue();
        l.d(textView, "infoLineTwo");
        m23087L(textView, null);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: g6 */
    public void mo23027g6() {
        m23091H().setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x041c, code lost:
        if (r15 != null) goto L137;
     */
    @Override // p193e.p194a.p673d0.p674a.AbstractC12468y
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo22960j(p193e.p194a.p673d0.C12560v r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 2256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p673d0.p674a.C12409a.mo22960j(e.a.d0.v, boolean):void");
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12468y
    /* renamed from: k */
    public void mo22959k() {
        AbstractC12437k abstractC12437k = this.f36225f0;
        if (abstractC12437k != null) {
            ((AbstractC20574a) abstractC12437k).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12468y
    /* renamed from: l */
    public void mo22958l() {
        super.mo22958l();
        PopupWindow popupWindow = this.f36229j0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12468y
    /* renamed from: m */
    public void mo22957m() {
        this.f36427l.postDelayed(new RunnableC12434h(this), 1000L);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: m2 */
    public void mo23026m2() {
        Context context = this.f36416a;
        l.d(context, AnalyticsConstants.CONTEXT);
        C19291g.m13589S1(context, 2131888571, null, 0, 6);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: n */
    public void mo23025n() {
        TrueContext m23089J = m23089J();
        l.d(m23089J, "truecontext");
        C19286f.m13689O(m23089J);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12468y
    /* renamed from: o */
    public void mo22956o(View view) {
        l.e(view, ViewAction.VIEW);
        Context context = view.getContext();
        l.d(context, "view.context");
        this.f36232o = new C19235i0(context);
        Context context2 = this.f36416a;
        l.d(context2, AnalyticsConstants.CONTEXT);
        Context applicationContext = context2.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        l.d(mo10154s, "(context.applicationCont…GraphHolder).objectsGraph");
        AbstractC19233h0 abstractC19233h0 = this.f36232o;
        if (abstractC19233h0 == null) {
            l.l("resourceProvider");
            throw null;
        }
        Objects.requireNonNull(abstractC19233h0);
        C12461w c12461w = new C12461w(new C12436j(), mo10154s, abstractC19233h0, null);
        AbstractC19854f<AbstractC17348c> mo12471Z0 = mo10154s.mo12471Z0();
        Objects.requireNonNull(mo12471Z0, "Cannot return null from a non-@Nullable component method");
        AbstractC19870l mo12119z1 = c12461w.f36403b.mo12119z1();
        Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
        AbstractC18951b0 mo12399e7 = c12461w.f36403b.mo12399e7();
        Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
        AbstractC16458h mo12196t6 = c12461w.f36403b.mo12196t6();
        Objects.requireNonNull(mo12196t6, "Cannot return null from a non-@Nullable component method");
        AbstractC15168a mo12441b6 = c12461w.f36403b.mo12441b6();
        Objects.requireNonNull(mo12441b6, "Cannot return null from a non-@Nullable component method");
        f mo12378g = c12461w.f36403b.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        AbstractC15163d mo12356h7 = c12461w.f36403b.mo12356h7();
        Objects.requireNonNull(mo12356h7, "Cannot return null from a non-@Nullable component method");
        AbstractC14537p mo12619O = c12461w.f36403b.mo12619O();
        Objects.requireNonNull(mo12619O, "Cannot return null from a non-@Nullable component method");
        AbstractC19462a mo12776C4 = c12461w.f36403b.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        AbstractC19321u mo12725G1 = c12461w.f36403b.mo12725G1();
        Objects.requireNonNull(mo12725G1, "Cannot return null from a non-@Nullable component method");
        CallingSettings mo12414d6 = c12461w.f36403b.mo12414d6();
        Objects.requireNonNull(mo12414d6, "Cannot return null from a non-@Nullable component method");
        AbstractC18977k mo12172v2 = c12461w.f36403b.mo12172v2();
        Objects.requireNonNull(mo12172v2, "Cannot return null from a non-@Nullable component method");
        C12436j c12436j = c12461w.f36404c;
        Context mo12335j = c12461w.f36403b.mo12335j();
        Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
        AbstractC18977k mo12172v22 = c12461w.f36403b.mo12172v2();
        Objects.requireNonNull(mo12172v22, "Cannot return null from a non-@Nullable component method");
        Objects.requireNonNull(c12436j);
        l.e(mo12335j, AnalyticsConstants.CONTEXT);
        l.e(mo12172v22, "partnerBase");
        AbstractC18977k.C18980c mo14263b = mo12172v22.mo14263b(mo12335j);
        l.d(mo14263b, "partnerBase.getTheme(context)");
        AbstractC8426f mo12525V = c12461w.f36403b.mo12525V();
        Objects.requireNonNull(mo12525V, "Cannot return null from a non-@Nullable component method");
        AbstractC7395n mo12304l5 = c12461w.f36403b.mo12304l5();
        Objects.requireNonNull(mo12304l5, "Cannot return null from a non-@Nullable component method");
        AbstractC7401p mo12683J1 = c12461w.f36403b.mo12683J1();
        Objects.requireNonNull(mo12683J1, "Cannot return null from a non-@Nullable component method");
        AbstractC16550a mo12198t4 = c12461w.f36403b.mo12198t4();
        Objects.requireNonNull(mo12198t4, "Cannot return null from a non-@Nullable component method");
        AbstractC18765c mo12685J = c12461w.f36403b.mo12685J();
        Objects.requireNonNull(mo12685J, "Cannot return null from a non-@Nullable component method");
        AbstractC16111h mo12134y = c12461w.f36403b.mo12134y();
        Objects.requireNonNull(mo12134y, "Cannot return null from a non-@Nullable component method");
        AbstractC19854f<AbstractC19463a0> mo12217s = c12461w.f36403b.mo12217s();
        Objects.requireNonNull(mo12217s, "Cannot return null from a non-@Nullable component method");
        AbstractC7419a mo12186u2 = c12461w.f36403b.mo12186u2();
        Objects.requireNonNull(mo12186u2, "Cannot return null from a non-@Nullable component method");
        AbstractC17197v0 mo11643f = c12461w.f36403b.mo11643f();
        Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
        Provider<C21464b> provider = c12461w.f36406e;
        Provider<C7951b> provider2 = c12461w.f36407f;
        Provider<C18661b> provider3 = c12461w.f36408g;
        AbstractC18765c mo12685J2 = c12461w.f36403b.mo12685J();
        Objects.requireNonNull(mo12685J2, "Cannot return null from a non-@Nullable component method");
        AbstractC21423g mo12252p3 = c12461w.f36403b.mo12252p3();
        Objects.requireNonNull(mo12252p3, "Cannot return null from a non-@Nullable component method");
        C12431g c12431g = new C12431g(provider, provider2, provider3, mo12685J2, mo12252p3);
        AbstractC21847a mo12682J3 = c12461w.f36403b.mo12682J3();
        Objects.requireNonNull(mo12682J3, "Cannot return null from a non-@Nullable component method");
        C12436j c12436j2 = c12461w.f36404c;
        AbstractC16111h mo12134y2 = c12461w.f36403b.mo12134y();
        Objects.requireNonNull(mo12134y2, "Cannot return null from a non-@Nullable component method");
        Objects.requireNonNull(c12436j2);
        l.e(mo12134y2, "videoCallerId");
        AbstractC15964c2 mo17867A = mo12134y2.mo17867A();
        Objects.requireNonNull(mo17867A, "Cannot return null from a non-@Nullable @Provides method");
        C20592g mo11648b = c12461w.f36403b.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        C12436j c12436j3 = c12461w.f36404c;
        AbstractC16111h mo12134y3 = c12461w.f36403b.mo12134y();
        Objects.requireNonNull(mo12134y3, "Cannot return null from a non-@Nullable component method");
        Objects.requireNonNull(c12436j3);
        l.e(mo12134y3, "videoCallerId");
        AbstractC16107d mo17848T = mo12134y3.mo17848T();
        Objects.requireNonNull(mo17848T, "Cannot return null from a non-@Nullable @Provides method");
        AbstractC14992a mo12126y7 = c12461w.f36403b.mo12126y7();
        Objects.requireNonNull(mo12126y7, "Cannot return null from a non-@Nullable component method");
        AbstractC13497p mo11636l = c12461w.f36403b.mo11636l();
        Objects.requireNonNull(mo11636l, "Cannot return null from a non-@Nullable component method");
        this.f36225f0 = new C12439m(abstractC19233h0, mo12471Z0, mo12119z1, mo12399e7, mo12196t6, mo12441b6, mo12378g, mo12356h7, mo12619O, mo12776C4, mo12725G1, mo12414d6, mo12172v2, mo14263b, mo12525V, mo12304l5, mo12683J1, mo12198t4, mo12685J, mo12134y, mo12217s, mo12186u2, mo11643f, c12431g, mo12682J3, mo17867A, mo11648b, mo17848T, mo12126y7, new C12428d(mo11636l));
        AbstractC7401p mo12683J12 = c12461w.f36403b.mo12683J1();
        Objects.requireNonNull(mo12683J12, "Cannot return null from a non-@Nullable component method");
        this.f36226g0 = mo12683J12;
        AbstractC18742m mo12187u1 = c12461w.f36403b.mo12187u1();
        Objects.requireNonNull(mo12187u1, "Cannot return null from a non-@Nullable component method");
        this.f36227h0 = mo12187u1;
        AbstractC16111h mo12134y4 = c12461w.f36403b.mo12134y();
        Objects.requireNonNull(mo12134y4, "Cannot return null from a non-@Nullable component method");
        this.f36228i0 = mo12134y4;
        this.f36230m = view;
        AbstractC12437k abstractC12437k = this.f36225f0;
        if (abstractC12437k == null) {
            l.l("presenter");
            throw null;
        }
        ((C12439m) abstractC12437k).mo9029Y0(this);
        this.f36233p = new C15804a(null, null, m23090I(), 3);
        AbstractC19233h0 abstractC19233h02 = this.f36232o;
        if (abstractC19233h02 == null) {
            l.l("resourceProvider");
            throw null;
        }
        this.f36231n = new C8289d(abstractC19233h02);
        AvatarVideoPlayerView avatarVideoPlayerView = (AvatarVideoPlayerView) this.f36201H.getValue();
        C8289d c8289d = this.f36231n;
        if (c8289d == null) {
            l.l("avatarPresenter");
            throw null;
        }
        avatarVideoPlayerView.setAvatarXPresenter(c8289d);
        m23081v().setOnClickListener(new View$OnClickListenerC12419n());
        m23098A().setOnDemandReasonPickerCallback(new C12435i(this));
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: r5 */
    public void mo23024r5() {
        AbstractC18742m abstractC18742m = this.f36227h0;
        if (abstractC18742m == null) {
            l.l("contextCallRouter");
            throw null;
        }
        CardView m23083t = m23083t();
        l.d(m23083t, "callerIdContainer");
        PopupWindow mo14561b = abstractC18742m.mo14561b(m23083t);
        this.f36229j0 = mo14561b;
        if (mo14561b == null) {
            return;
        }
        mo14561b.setOnDismissListener(new C12420o());
    }

    /* renamed from: s */
    public final View m23084s() {
        return (View) this.f36202I.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: s5 */
    public void mo23023s5() {
        TextView m23079x = m23079x();
        l.d(m23079x, "infoLineOne");
        m23087L(m23079x, null);
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    public void setSpamCategoryIcon(SpamCategoryModel spamCategoryModel) {
        ImageView m23093F = m23093F();
        l.d(m23093F, "spamIcon");
        C19286f.m13683U(m23093F, spamCategoryModel.getIconUrl() != null);
        ComponentCallbacks2C22222c.m8445f(m23093F()).mo8407r(spamCategoryModel.getIconUrl()).mo8095m().m8427O(m23093F());
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    public void setTitle(String str) {
        l.e(str, "text");
        TextView m23091H = m23091H();
        l.d(m23091H, "title");
        C19291g.m13637C1(m23091H, str);
    }

    /* renamed from: t */
    public final CardView m23083t() {
        return (CardView) this.f36197D.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: t5 */
    public void mo23022t5() {
        m23082u().setImageResource(C2752R.C2753drawable.ic_searchbar_logo_uk);
    }

    /* renamed from: u */
    public final TintedImageView m23082u() {
        return (TintedImageView) this.f36196C.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: u5 */
    public void mo23021u5(AbstractC18977k.C18980c c18980c) {
        l.e(c18980c, "theme");
        View m23097B = m23097B();
        l.d(m23097B, "partnerContainer");
        C19286f.m13684T(m23097B);
        View m23097B2 = m23097B();
        l.d(m23097B2, "partnerContainer");
        m23097B2.getBackground().setTint(c18980c.f53123b);
        ((ImageView) this.f36204K.getValue()).setImageResource(c18980c.f53122a);
        ((TextView) this.f36205L.getValue()).setTextColor(c18980c.f53124c);
    }

    /* renamed from: v */
    public final TintedImageView m23081v() {
        return (TintedImageView) this.f36237t.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: v5 */
    public void mo23020v5(AbstractC12464x.C12466b c12466b) {
        TextView textView = (TextView) this.f36240w.getValue();
        l.d(textView, "infoLineTwo");
        m23087L(textView, c12466b);
    }

    /* renamed from: w */
    public final AddressTimezoneView m23080w() {
        return (AddressTimezoneView) this.f36206M.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: w5 */
    public void mo23019w5(AbstractC15816a abstractC15816a, String str) {
        l.e(abstractC15816a, "avatarConfig");
        l.e(str, "analyticsContext");
        ((AvatarVideoPlayerView) this.f36201H.getValue()).m34450f(abstractC15816a, str);
    }

    /* renamed from: x */
    public final TextView m23079x() {
        return (TextView) this.f36239v.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: x5 */
    public void mo23018x5() {
        m23083t().setCardBackgroundColor(((Number) this.f36221b0.getValue()).intValue());
    }

    /* renamed from: y */
    public final View m23078y() {
        return (View) this.f36236s.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: y5 */
    public void mo23017y5(boolean z) {
        View view = (View) this.f36209P.getValue();
        l.d(view, "infoContainer");
        C19286f.m13683U(view, z);
    }

    /* renamed from: z */
    public final ModularCallReasonView m23077z() {
        return (ModularCallReasonView) this.f36208O.getValue();
    }

    @Override // p193e.p194a.p673d0.p674a.AbstractC12438l
    /* renamed from: z5 */
    public void mo23016z5(String str) {
        l.e(str, "text");
        TextView textView = (TextView) this.f36195B.getValue();
        l.d(textView, "numberExtraInfo");
        C19291g.m13637C1(textView, str);
    }
}
