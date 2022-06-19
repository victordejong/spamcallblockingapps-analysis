package p193e.p194a.p437c.p438a.p507p.p511d;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.ShimmerLoadingView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.insights.p168ui.C4078R;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import n3.z.f2;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.C8686c;
import p193e.p194a.p437c.p438a.p477g.C9016b2;
import p193e.p194a.p437c.p438a.p477g.C9063q0;
import p193e.p194a.p437c.p438a.p477g.C9075u0;
import p193e.p194a.p437c.p438a.p477g.C9078v0;
import p193e.p194a.p437c.p438a.p477g.C9081w0;
import p193e.p194a.p437c.p438a.p477g.C9084x0;
import p193e.p194a.p437c.p438a.p477g.C9087y0;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p506o.View$OnClickListenerC9438a;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9492b;
import p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9493c;
import p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9494d;
import p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9495e;
import p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9496f;
import p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9497g;
import p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9499h;
import p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9500i;
import p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9501j;
import p193e.p194a.p437c.p438a.p520r.C9589f;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.RunnableC10012a0;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p610y.AbstractC10876i;
import p193e.p194a.p437c.p610y.C10888l;
import q3.a.g0;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.i;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.d.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/a.class */
public final class C9467a extends f2<AbstractC9460d, RecyclerView.AbstractC0313c0> {

    /* renamed from: d */
    public a<s> f28714d;

    /* renamed from: e */
    public final AbstractC10258h f28715e;

    /* renamed from: f */
    public final AbstractC8511a f28716f;

    /* renamed from: g */
    public final AbstractC9114h f28717g;

    /* renamed from: h */
    public final AbstractC9691j f28718h;

    /* renamed from: i */
    public final f f28719i;

    /* renamed from: j */
    public final f f28720j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9467a(AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, @Named("smartfeed_analytics_logger") AbstractC9114h abstractC9114h, AbstractC9691j abstractC9691j, @Named("IO") f fVar, @Named("UI") f fVar2) {
        super(new C8686c(), (g0) null, (g0) null, 6);
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8511a, "searchApi");
        l.e(abstractC9114h, "analyticsLogger");
        l.e(abstractC9691j, "statusProvider");
        l.e(fVar, "ioContext");
        l.e(fVar2, "uiContext");
        this.f28715e = abstractC10258h;
        this.f28716f = abstractC8511a;
        this.f28717g = abstractC9114h;
        this.f28718h = abstractC9691j;
        this.f28719i = fVar;
        this.f28720j = fVar2;
    }

    public int getItemViewType(int i) {
        int i2;
        AbstractC9460d abstractC9460d = (AbstractC9460d) getItem(i);
        if (abstractC9460d != null) {
            if (abstractC9460d instanceof AbstractC9460d.C9461a) {
                i2 = C4078R.layout.item_past_smart_feed_card;
            } else if (abstractC9460d instanceof AbstractC9460d.C9465e) {
                i2 = C4078R.layout.item_upcoming_smart_feed_expanded;
            } else if (abstractC9460d instanceof AbstractC9460d.C9462b) {
                i2 = C4078R.layout.item_smart_feed_section_header;
            } else if (abstractC9460d instanceof AbstractC9460d.C9464d) {
                i2 = C4078R.layout.item_upcoming_expand;
            } else if (!(abstractC9460d instanceof AbstractC9460d.C9463c)) {
                throw new i();
            } else {
                i2 = C4078R.layout.item_upcoming_collapse;
            }
            return i2;
        }
        return C4078R.layout.item_shimmer_smart_feed_card;
    }

    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "holder");
        AbstractC9460d abstractC9460d = (AbstractC9460d) getItem(i);
        if (abstractC9460d == null) {
            C9495e c9495e = (C9495e) abstractC0313c0;
            return;
        }
        boolean z = true;
        if (abstractC9460d instanceof AbstractC9460d.C9461a) {
            C9493c c9493c = (C9493c) abstractC0313c0;
            AbstractC9460d.C9461a c9461a = (AbstractC9460d.C9461a) abstractC9460d;
            l.e(c9461a, "item");
            c9493c.m27511R4(c9461a);
            TextView textView = c9493c.f28784f.f27615d;
            l.d(textView, "binding.senderNameTv");
            textView.setText(c9461a.f28703c.f32340g);
            TextView textView2 = c9493c.f28784f.f27613b;
            l.d(textView2, "binding.dateTv");
            textView2.setText(c9461a.f28703c.f32342i);
            C8243a m27513N4 = c9493c.m27513N4();
            String str = c9461a.f28703c.f32340g;
            Uri uri = Uri.EMPTY;
            l.d(uri, "Uri.EMPTY");
            l.e("", AnalyticsConstants.NAME);
            l.e(str, "identifier");
            l.e(uri, RemoteMessageConst.Notification.ICON);
            m27513N4.m28740nk(c9493c.m27512O4(new C8505a(str, "", uri)), false);
            m27513N4.m28738pk(true);
            c9493c.f28784f.f27614c.setPresenter(m27513N4);
            c9493c.f28782d = c9493c.f28786h.mo28429Iz(c9461a.f28703c.f32340g, new C9492b(c9493c, m27513N4));
            if (c9461a.f28702b.f28697c) {
                C9016b2 c9016b2 = c9493c.f28784f.f27616e;
                l.d(c9016b2, "binding.smartCard");
                C10888l c10888l = c9461a.f28703c.f32337d;
                a<s> aVar = c9493c.f28788j;
                ConstraintLayout constraintLayout = c9016b2.f27386a;
                l.d(constraintLayout, "root");
                Context context = constraintLayout.getContext();
                l.d(context, "root.context");
                l.e(c9016b2, "$this$bindHiddenSmartCard");
                l.e(c10888l, "smartCardUiModel");
                l.e(context, AnalyticsConstants.CONTEXT);
                ImageView imageView = c9016b2.f27388c;
                l.d(imageView, "imageCategoryIcon");
                C10480a.m26080D2(imageView, Integer.valueOf(C9589f.m27407a(c10888l.f32320a)));
                TextView textView3 = c9016b2.f27391f;
                l.d(textView3, "textCategory");
                textView3.setText(C9589f.m27405c(c10888l.f32320a, context));
                MaterialButton materialButton = c9016b2.f27387b;
                l.d(materialButton, "buttonShowTransaction");
                C19286f.m13684T(materialButton);
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(C4078R.dimen.dp40);
                MaterialButton materialButton2 = c9016b2.f27387b;
                l.d(materialButton2, "buttonShowTransaction");
                l.e(materialButton2, ViewAction.VIEW);
                materialButton2.post(new RunnableC10012a0(materialButton2, dimensionPixelSize, dimensionPixelSize));
                c9016b2.f27387b.setOnClickListener(new View$OnClickListenerC9438a(c9016b2, context, aVar));
                c9016b2.f27390e.setText(C4078R.string.hidden_trx_subtitle);
                TextView textView4 = c9016b2.f27390e;
                l.d(textView4, "textCardInfo");
                C19286f.m13684T(textView4);
                TextView textView5 = c9016b2.f27401p;
                l.d(textView5, "textRightTitle");
                C19286f.m13689O(textView5);
                TextView textView6 = c9016b2.f27403r;
                l.d(textView6, "textSubtitle");
                C19286f.m13689O(textView6);
                TextView textView7 = c9016b2.f27404s;
                l.d(textView7, "textTitle");
                C19286f.m13689O(textView7);
                TextView textView8 = c9016b2.f27400o;
                l.d(textView8, "textMessage");
                C19286f.m13689O(textView8);
                View view = c9016b2.f27389d;
                l.d(view, "messageSpacing");
                C19286f.m13689O(view);
                TextView textView9 = c9016b2.f27402q;
                l.d(textView9, "textStatus");
                C19286f.m13689O(textView9);
                TextView textView10 = c9016b2.f27392g;
                l.d(textView10, "textInfo1Name");
                C19286f.m13689O(textView10);
                TextView textView11 = c9016b2.f27394i;
                l.d(textView11, "textInfo2Name");
                C19286f.m13689O(textView11);
                TextView textView12 = c9016b2.f27396k;
                l.d(textView12, "textInfo3Name");
                C19286f.m13689O(textView12);
                TextView textView13 = c9016b2.f27398m;
                l.d(textView13, "textInfo4Name");
                C19286f.m13689O(textView13);
                TextView textView14 = c9016b2.f27393h;
                l.d(textView14, "textInfo1Value");
                C19286f.m13689O(textView14);
                TextView textView15 = c9016b2.f27395j;
                l.d(textView15, "textInfo2Value");
                C19286f.m13689O(textView15);
                TextView textView16 = c9016b2.f27397l;
                l.d(textView16, "textInfo3Value");
                C19286f.m13689O(textView16);
                TextView textView17 = c9016b2.f27399n;
                l.d(textView17, "textInfo4Value");
                C19286f.m13689O(textView17);
            } else {
                C9016b2 c9016b22 = c9493c.f28784f.f27616e;
                l.d(c9016b22, "binding.smartCard");
                C10480a.m26071G(c9016b22, c9461a.f28703c.f32337d, null, 2);
            }
            if (C9493c.f28781k) {
                return;
            }
            c9493c.f28787i.mo27869Zd(C10480a.m26036O2(c9461a, ViewAction.VIEW).m25827a());
            C9493c.f28781k = true;
        } else if (abstractC9460d instanceof AbstractC9460d.C9465e) {
            C9501j c9501j = (C9501j) abstractC0313c0;
            AbstractC9460d.C9465e c9465e = (AbstractC9460d.C9465e) abstractC9460d;
            l.e(c9465e, "item");
            c9501j.m27511R4(c9465e);
            TextView textView18 = c9501j.f28813g.f27732i;
            l.d(textView18, "binding.senderNameTv");
            textView18.setText(c9465e.f28709c.f32340g);
            TextView textView19 = c9501j.f28813g.f27728e;
            l.d(textView19, "binding.dateTv");
            textView19.setText(c9465e.f28709c.f32342i);
            C8243a m27513N42 = c9501j.m27513N4();
            String str2 = c9465e.f28709c.f32340g;
            Uri uri2 = Uri.EMPTY;
            l.d(uri2, "Uri.EMPTY");
            l.e("", AnalyticsConstants.NAME);
            l.e(str2, "identifier");
            l.e(uri2, RemoteMessageConst.Notification.ICON);
            m27513N42.m28740nk(c9501j.m27512O4(new C8505a(str2, "", uri2)), false);
            m27513N42.m28738pk(true);
            c9501j.f28813g.f27730g.setPresenter(m27513N42);
            c9501j.f28810d = c9501j.f28815i.mo28429Iz(c9465e.f28709c.f32340g, new C9500i(c9501j, m27513N42));
            C10888l c10888l2 = c9465e.f28709c.f32337d;
            AbstractC10876i abstractC10876i = (AbstractC10876i) s1.u.i.G(c10888l2.f32329j, 0);
            AbstractC10876i abstractC10876i2 = (AbstractC10876i) s1.u.i.G(c10888l2.f32329j, 1);
            Button button = c9501j.f28813g.f27725b;
            l.d(button, "binding.buttonAction1");
            C10480a.m26088B2(button, abstractC10876i, new C27625x2(0, c9501j, c9465e));
            Button button2 = c9501j.f28813g.f27726c;
            l.d(button2, "binding.buttonAction2");
            C10480a.m26088B2(button2, abstractC10876i2, new C27625x2(1, c9501j, c9465e));
            Group group = c9501j.f28813g.f27731h;
            l.d(group, "binding.secondButtonGroup");
            if (abstractC10876i2 == null) {
                z = false;
            }
            C19286f.m13683U(group, z);
            C9016b2 c9016b23 = c9501j.f28813g.f27733j;
            l.d(c9016b23, "binding.smartCard");
            C10480a.m26071G(c9016b23, c9465e.f28709c.f32337d, null, 2);
        } else if (abstractC9460d instanceof AbstractC9460d.C9462b) {
            AbstractC9460d.C9462b c9462b = (AbstractC9460d.C9462b) abstractC9460d;
            l.e(c9462b, "item");
            TextView textView20 = ((C9494d) abstractC0313c0).f28789e.f27698b;
            l.d(textView20, "binding.header");
            textView20.setText(c9462b.f28704b);
        } else if (!(abstractC9460d instanceof AbstractC9460d.C9464d)) {
            if (!(abstractC9460d instanceof AbstractC9460d.C9463c)) {
                return;
            }
            ((C9496f) abstractC0313c0).m27511R4(abstractC9460d);
        } else {
            C9499h c9499h = (C9499h) abstractC0313c0;
            AbstractC9460d.C9464d c9464d = (AbstractC9460d.C9464d) abstractC9460d;
            l.e(c9464d, "item");
            c9499h.m27511R4(c9464d);
            c9499h.f28799d = d.h(c9499h.f28806k.plus(d.n((p1) null, 1)));
            for (String str3 : s1.u.i.K0(c9464d.f28706b, 3)) {
                Map<String, C8505a> map = c9499h.f28800e;
                Uri uri3 = Uri.EMPTY;
                l.d(uri3, "Uri.EMPTY");
                l.e("", AnalyticsConstants.NAME);
                l.e(str3, "identifier");
                l.e(uri3, RemoteMessageConst.Notification.ICON);
                map.put(str3, new C8505a(str3, "", uri3));
                i0 i0Var = c9499h.f28799d;
                if (i0Var != null) {
                    C8243a m27513N43 = c9499h.m27513N4();
                    Uri uri4 = Uri.EMPTY;
                    l.d(uri4, "Uri.EMPTY");
                    l.e("", AnalyticsConstants.NAME);
                    l.e(str3, "identifier");
                    l.e(uri4, RemoteMessageConst.Notification.ICON);
                    m27513N43.m28740nk(c9499h.m27512O4(new C8505a(str3, "", uri4)), false);
                    m27513N43.m28738pk(true);
                    View inflate = LayoutInflater.from(c9499h.f28774a).inflate(C4078R.layout.item_upcoming_avatar_view, (ViewGroup) c9499h.f28802g.f27712b, false);
                    Objects.requireNonNull(inflate, "null cannot be cast to non-null type com.truecaller.common.ui.avatar.AvatarXView");
                    AvatarXView avatarXView = (AvatarXView) inflate;
                    avatarXView.setPresenter(m27513N43);
                    LinearLayout linearLayout = c9499h.f28802g.f27712b;
                    l.d(linearLayout, "binding.logoContainer");
                    int m26007W = linearLayout.getChildCount() == 0 ? 0 : C10480a.m26007W(-8, c9499h.f28774a);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(avatarXView.getLayoutParams().width, avatarXView.getLayoutParams().height);
                    layoutParams.setMarginStart(m26007W);
                    c9499h.f28802g.f27712b.addView(avatarXView, layoutParams);
                    d.w2(i0Var, (f) null, (j0) null, new C9497g(c9499h, str3, m27513N43, null), 3, (Object) null);
                }
            }
            TextView textView21 = c9499h.f28802g.f27714d;
            l.d(textView21, "binding.moreSenders");
            C19286f.m13683U(textView21, c9464d.f28706b.size() > 3);
            TextView textView22 = c9499h.f28802g.f27714d;
            l.d(textView22, "binding.moreSenders");
            textView22.setText(c9499h.f28774a.getString(C4078R.string.no_of_senders_more, Integer.valueOf(c9464d.f28706b.size() - 3)));
            MaterialCardView materialCardView = c9499h.f28802g.f27715e;
            l.d(materialCardView, "binding.secondCard");
            C19286f.m13683U(materialCardView, c9464d.f28706b.size() >= 2);
            MaterialCardView materialCardView2 = c9499h.f28802g.f27717g;
            l.d(materialCardView2, "binding.thirdCard");
            C19286f.m13683U(materialCardView2, c9464d.f28706b.size() >= 3);
            int size = c9464d.f28706b.size();
            float m26007W2 = C10480a.m26007W(4, c9499h.f28774a);
            float m26007W3 = C10480a.m26007W(6, c9499h.f28774a);
            float m26007W4 = C10480a.m26007W(8, c9499h.f28774a);
            List T = s1.u.i.T(new Float[]{Float.valueOf(m26007W2), Float.valueOf(0.0f), Float.valueOf(0.0f)});
            List T2 = s1.u.i.T(new Float[]{Float.valueOf(m26007W3), Float.valueOf(m26007W2), Float.valueOf(0.0f)});
            List T3 = s1.u.i.T(new Float[]{Float.valueOf(m26007W4), Float.valueOf(m26007W3), Float.valueOf(m26007W2)});
            if (size != 1) {
                T = size != 2 ? T3 : T2;
            }
            MaterialCardView materialCardView3 = c9499h.f28802g.f27713c;
            l.d(materialCardView3, "binding.mainCard");
            materialCardView3.setCardElevation(((Number) T.get(0)).floatValue());
            MaterialCardView materialCardView4 = c9499h.f28802g.f27715e;
            l.d(materialCardView4, "binding.secondCard");
            materialCardView4.setCardElevation(((Number) T.get(1)).floatValue());
            MaterialCardView materialCardView5 = c9499h.f28802g.f27717g;
            l.d(materialCardView5, "binding.thirdCard");
            materialCardView5.setCardElevation(((Number) T.get(2)).floatValue());
        }
    }

    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C9493c c9493c;
        l.e(viewGroup, "parent");
        int i2 = C4078R.layout.item_past_smart_feed_card;
        if (i == i2) {
            AbstractC10258h abstractC10258h = this.f28715e;
            AbstractC8511a abstractC8511a = this.f28716f;
            AbstractC9114h abstractC9114h = this.f28717g;
            a<s> aVar = this.f28714d;
            if (aVar == null) {
                throw new IllegalStateException("Listener must have been initialized here");
            }
            l.e(viewGroup, "parent");
            l.e(abstractC10258h, "messageLocator");
            l.e(abstractC8511a, "searchApi");
            l.e(abstractC9114h, "analyticsLogger");
            l.e(aVar, "onShowTransactionClicked");
            MaterialCardView inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false);
            int i3 = C4078R.C4080id.dateTv;
            TextView textView = (TextView) inflate.findViewById(i3);
            if (textView != null) {
                i3 = C4078R.C4080id.iconIv;
                AvatarXView avatarXView = (AvatarXView) inflate.findViewById(i3);
                if (avatarXView != null) {
                    i3 = C4078R.C4080id.senderNameTv;
                    TextView textView2 = (TextView) inflate.findViewById(i3);
                    if (textView2 != null) {
                        i3 = C4078R.C4080id.smartCard;
                        View findViewById = inflate.findViewById(i3);
                        if (findViewById != null) {
                            C9063q0 c9063q0 = new C9063q0(inflate, textView, avatarXView, textView2, C9016b2.m27887a(findViewById));
                            l.d(c9063q0, "ItemPastSmartFeedCardBin….context), parent, false)");
                            c9493c = new C9493c(c9063q0, abstractC10258h, abstractC8511a, abstractC9114h, aVar);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
        }
        int i4 = C4078R.layout.item_upcoming_smart_feed_expanded;
        if (i == i4) {
            AbstractC10258h abstractC10258h2 = this.f28715e;
            AbstractC8511a abstractC8511a2 = this.f28716f;
            AbstractC9114h abstractC9114h2 = this.f28717g;
            l.e(viewGroup, "parent");
            l.e(abstractC10258h2, "messageLocator");
            l.e(abstractC8511a2, "searchApi");
            l.e(abstractC9114h2, "analyticsLogger");
            MaterialCardView inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(i4, viewGroup, false);
            int i5 = C4078R.C4080id.buttonAction1;
            Button button = (Button) inflate2.findViewById(i5);
            if (button != null) {
                i5 = C4078R.C4080id.buttonAction2;
                Button button2 = (Button) inflate2.findViewById(i5);
                if (button2 != null) {
                    i5 = C4078R.C4080id.buttonDivider;
                    View findViewById2 = inflate2.findViewById(i5);
                    if (findViewById2 != null) {
                        i5 = C4078R.C4080id.dateTv;
                        TextView textView3 = (TextView) inflate2.findViewById(i5);
                        if (textView3 != null) {
                            i5 = C4078R.C4080id.divider;
                            View findViewById3 = inflate2.findViewById(i5);
                            if (findViewById3 != null) {
                                i5 = C4078R.C4080id.guidelineEnd;
                                Guideline guideline = (Guideline) inflate2.findViewById(i5);
                                if (guideline != null) {
                                    i5 = C4078R.C4080id.guidelineStart;
                                    Guideline guideline2 = (Guideline) inflate2.findViewById(i5);
                                    if (guideline2 != null) {
                                        i5 = C4078R.C4080id.iconIv;
                                        AvatarXView avatarXView2 = (AvatarXView) inflate2.findViewById(i5);
                                        if (avatarXView2 != null) {
                                            i5 = C4078R.C4080id.secondButtonGroup;
                                            Group group = (Group) inflate2.findViewById(i5);
                                            if (group != null) {
                                                i5 = C4078R.C4080id.senderNameTv;
                                                TextView textView4 = (TextView) inflate2.findViewById(i5);
                                                if (textView4 != null) {
                                                    i5 = C4078R.C4080id.smartCard;
                                                    View findViewById4 = inflate2.findViewById(i5);
                                                    if (findViewById4 != null) {
                                                        C9087y0 c9087y0 = new C9087y0(inflate2, button, button2, findViewById2, textView3, findViewById3, guideline, guideline2, avatarXView2, group, textView4, C9016b2.m27887a(findViewById4));
                                                        l.d(c9087y0, "ItemUpcomingSmartFeedExp….context), parent, false)");
                                                        c9493c = new C9501j(c9087y0, abstractC10258h2, abstractC8511a2, abstractC9114h2);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i5)));
        }
        int i6 = C4078R.layout.item_smart_feed_section_header;
        if (i == i6) {
            AbstractC10258h abstractC10258h3 = this.f28715e;
            l.e(viewGroup, "parent");
            l.e(abstractC10258h3, "messageLocator");
            View inflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(i6, viewGroup, false);
            int i7 = C4078R.C4080id.header;
            TextView textView5 = (TextView) inflate3.findViewById(i7);
            if (textView5 == null) {
                throw new NullPointerException("Missing required view with ID: ".concat(inflate3.getResources().getResourceName(i7)));
            }
            C9078v0 c9078v0 = new C9078v0((LinearLayout) inflate3, textView5);
            l.d(c9078v0, "ItemSmartFeedSectionHead….context), parent, false)");
            c9493c = new C9494d(c9078v0, abstractC10258h3);
        } else {
            int i8 = C4078R.layout.item_upcoming_expand;
            if (i == i8) {
                AbstractC10258h abstractC10258h4 = this.f28715e;
                AbstractC8511a abstractC8511a3 = this.f28716f;
                f fVar = this.f28719i;
                f fVar2 = this.f28720j;
                AbstractC9114h abstractC9114h3 = this.f28717g;
                l.e(viewGroup, "parent");
                l.e(abstractC10258h4, "messageLocator");
                l.e(abstractC8511a3, "searchApi");
                l.e(fVar, "ioContext");
                l.e(fVar2, "uiContext");
                l.e(abstractC9114h3, "analyticsLogger");
                View inflate4 = LayoutInflater.from(viewGroup.getContext()).inflate(i8, viewGroup, false);
                int i9 = C4078R.C4080id.expand;
                ImageView imageView = (ImageView) inflate4.findViewById(i9);
                if (imageView != null) {
                    i9 = C4078R.C4080id.logoContainer;
                    LinearLayout linearLayout = (LinearLayout) inflate4.findViewById(i9);
                    if (linearLayout != null) {
                        i9 = C4078R.C4080id.mainCard;
                        MaterialCardView findViewById5 = inflate4.findViewById(i9);
                        if (findViewById5 != null) {
                            i9 = C4078R.C4080id.moreSenders;
                            TextView textView6 = (TextView) inflate4.findViewById(i9);
                            if (textView6 != null) {
                                i9 = C4078R.C4080id.secondCard;
                                MaterialCardView findViewById6 = inflate4.findViewById(i9);
                                if (findViewById6 != null) {
                                    i9 = C4078R.C4080id.senders;
                                    TextView textView7 = (TextView) inflate4.findViewById(i9);
                                    if (textView7 != null) {
                                        i9 = C4078R.C4080id.thirdCard;
                                        MaterialCardView findViewById7 = inflate4.findViewById(i9);
                                        if (findViewById7 != null) {
                                            C9084x0 c9084x0 = new C9084x0((FrameLayout) inflate4, imageView, linearLayout, findViewById5, textView6, findViewById6, textView7, findViewById7);
                                            l.d(c9084x0, "ItemUpcomingExpandBindin….context), parent, false)");
                                            c9493c = new C9499h(c9084x0, abstractC10258h4, abstractC8511a3, fVar, fVar2, abstractC9114h3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(inflate4.getResources().getResourceName(i9)));
            }
            int i10 = C4078R.layout.item_upcoming_collapse;
            if (i == i10) {
                AbstractC10258h abstractC10258h5 = this.f28715e;
                AbstractC9114h abstractC9114h4 = this.f28717g;
                l.e(viewGroup, "parent");
                l.e(abstractC10258h5, "messageLocator");
                l.e(abstractC9114h4, "analyticsLogger");
                View inflate5 = LayoutInflater.from(viewGroup.getContext()).inflate(i10, viewGroup, false);
                int i11 = C4078R.C4080id.collapse;
                TextView textView8 = (TextView) inflate5.findViewById(i11);
                if (textView8 == null) {
                    throw new NullPointerException("Missing required view with ID: ".concat(inflate5.getResources().getResourceName(i11)));
                }
                C9081w0 c9081w0 = new C9081w0((ConstraintLayout) inflate5, textView8);
                l.d(c9081w0, "ItemUpcomingCollapseBind….context), parent, false)");
                c9493c = new C9496f(c9081w0, abstractC10258h5, abstractC9114h4);
            } else {
                int i12 = C4078R.layout.item_shimmer_smart_feed_card;
                if (i != i12) {
                    throw new IllegalArgumentException("ViewHolder type not supported");
                }
                l.e(viewGroup, "parent");
                View inflate6 = LayoutInflater.from(viewGroup.getContext()).inflate(i12, viewGroup, false);
                Objects.requireNonNull(inflate6, "rootView");
                ShimmerLoadingView shimmerLoadingView = (ShimmerLoadingView) inflate6;
                C9075u0 c9075u0 = new C9075u0(shimmerLoadingView, shimmerLoadingView);
                l.d(c9075u0, "ItemShimmerSmartFeedCard….context), parent, false)");
                c9493c = new C9495e(c9075u0);
            }
        }
        return c9493c;
    }
}
