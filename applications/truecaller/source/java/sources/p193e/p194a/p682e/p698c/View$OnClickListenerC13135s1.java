package p193e.p194a.p682e.p698c;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.icu.text.CompactDecimalFormat;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout$h;
import com.airbnb.lottie.LottieAnimationView;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.google.android.gms.ads.AdSize;
import com.google.android.material.appbar.AppBarLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.ads.AdLayoutTypeX;
import com.truecaller.ads.CustomTemplate;
import com.truecaller.ads.p134ui.AdsSwitchView;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.blocking.ActionSource;
import com.truecaller.blocking.FilterAction;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.common.p156ui.ShineView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.contactfeedback.p157db.NumberAndType;
import com.truecaller.contactfeedback.p157db.PhoneNumberType;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.FeedbackSource;
import com.truecaller.data.entity.Number;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.p183ui.SingleActivity;
import com.truecaller.p183ui.details.DetailsActionBar;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.p183ui.view.VerticalNestedScrollView;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.referral.ReferralManager;
import com.truecaller.spamcategories.SpamCategoryRequest;
import com.truecaller.spamcategories.SpamCategoryResult;
import com.truecaller.spamcategories.p178ui.SpamCategoriesActivity;
import com.truecaller.tagger.NameSuggestionActivity;
import e.a.h.s0.c;
import e.a.i.f0.i;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C20399t1;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1012a.AbstractC16596q;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1050l5.p1051a.C17715r;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.AbstractC18777j;
import p193e.p194a.p1114o5.AbstractC19102s1;
import p193e.p194a.p1114o5.C19039i0;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1114o5.C19047j1;
import p193e.p194a.p1114o5.C19090q;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1159q4.C19651l0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1342w4.AbstractAsyncTaskC21209i;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1406z3.C21849a;
import p193e.p194a.p294b.AbstractC7908c;
import p193e.p194a.p372b0.p413i.AbstractC8449b;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p372b0.p430q.AbstractC8597j0;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p682e.AbstractC13291o0;
import p193e.p194a.p682e.AbstractC13329x0;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p683a.DialogC12697c3;
import p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1;
import p193e.p194a.p682e.p699c2.C13212u;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p804h.p831p0.AbstractC14719c;
import p193e.p194a.p804h.p831p0.p832e.C14720a;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p852i.AbstractC15211m;
import p193e.p194a.p852i.C15213o;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p856b0.p860d.C14995a;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import p193e.p194a.p852i.p862c.p866d.AbstractC15025a;
import p193e.p194a.p852i.p862c.p866d.C15055l;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.C15164f;
import p193e.p194a.p852i.p896f0.p897j.AbstractC15166a;
import p193e.p194a.p936j3.AbstractC15549f;
import p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a;
import p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15562e;
import p193e.p194a.p937j4.p938a.AbstractC15558b;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p997k3.AbstractC16452e;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import p193e.p194a.p997k3.p1000l.C16496d;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16487j;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.e.c.s1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/s1.class */
public class View$OnClickListenerC13135s1 extends AbstractC13099j2 implements View.OnClickListener, AppBarLayout.c, DetailsActionBar.AbstractC4687b, AbstractC13110l2 {

    /* renamed from: W1 */
    public static final Object f38089W1 = new Object();

    /* renamed from: A */
    public ViewGroup f38090A;

    /* renamed from: A0 */
    public TextView f38091A0;

    /* renamed from: A1 */
    public AbstractC16596q f38092A1;

    /* renamed from: B */
    public ViewGroup f38093B;

    /* renamed from: B0 */
    public ImageView f38094B0;

    /* renamed from: B1 */
    public AbstractC15163d f38095B1;

    /* renamed from: C */
    public View f38096C;

    /* renamed from: C0 */
    public VerticalNestedScrollView f38097C0;

    /* renamed from: C1 */
    public AbstractC15025a f38098C1;

    /* renamed from: D */
    public View f38099D;

    /* renamed from: D0 */
    public Drawable f38100D0;

    /* renamed from: D1 */
    public AbstractC15003c f38101D1;

    /* renamed from: E */
    public TextView f38102E;

    /* renamed from: E0 */
    public AbstractC15539j2 f38103E0;

    /* renamed from: F0 */
    public Contact f38105F0;

    /* renamed from: F1 */
    public boolean f38106F1;

    /* renamed from: G0 */
    public String f38107G0;

    /* renamed from: H0 */
    public String f38109H0;

    /* renamed from: H1 */
    public int f38110H1;

    /* renamed from: I0 */
    public String f38111I0;

    /* renamed from: J */
    public View f38113J;

    /* renamed from: J0 */
    public ContentObserver f38114J0;

    /* renamed from: K */
    public TextView f38116K;

    /* renamed from: K0 */
    public AbstractC13291o0 f38117K0;

    /* renamed from: L */
    public TextView f38119L;

    /* renamed from: L0 */
    public AbstractC14835j f38120L0;

    /* renamed from: M */
    public TextView f38122M;

    /* renamed from: M0 */
    public AbstractC19854f<AbstractC19463a0> f38123M0;

    /* renamed from: N */
    public View f38125N;

    /* renamed from: N0 */
    public SourceType f38126N0;

    /* renamed from: N1 */
    public Contact f38127N1;

    /* renamed from: O */
    public View f38128O;

    /* renamed from: O0 */
    public AbstractC16613a2 f38129O0;

    /* renamed from: O1 */
    public AbstractC13151o f38130O1;

    /* renamed from: P */
    public View f38131P;

    /* renamed from: P0 */
    public DialogC12697c3 f38132P0;

    /* renamed from: P1 */
    public AbstractC13147k f38133P1;

    /* renamed from: Q */
    public TextView f38134Q;

    /* renamed from: Q0 */
    public AbstractC21309b f38135Q0;

    /* renamed from: R */
    public TextView f38137R;

    /* renamed from: R0 */
    public C20592g f38138R0;

    /* renamed from: S */
    public TextView f38140S;

    /* renamed from: S0 */
    public AbstractC21204d f38141S0;

    /* renamed from: S1 */
    public C13126p1 f38142S1;

    /* renamed from: T */
    public AdsSwitchView f38143T;

    /* renamed from: T0 */
    public C8601l0 f38144T0;

    /* renamed from: T1 */
    public C13129q1 f38145T1;

    /* renamed from: U */
    public GoldShineTextView f38146U;

    /* renamed from: U0 */
    public AbstractC7908c f38147U0;

    /* renamed from: U1 */
    public AbstractC16111h f38148U1;

    /* renamed from: V */
    public TextView f38149V;

    /* renamed from: V0 */
    public boolean f38150V0;

    /* renamed from: V1 */
    public AbstractC15166a f38151V1;

    /* renamed from: W */
    public View f38152W;

    /* renamed from: W0 */
    public boolean f38153W0;

    /* renamed from: X */
    public AppBarLayout f38154X;

    /* renamed from: X0 */
    public boolean f38155X0;

    /* renamed from: Y */
    public Toolbar f38156Y;

    /* renamed from: Y0 */
    public boolean f38157Y0;

    /* renamed from: Z */
    public View f38158Z;

    /* renamed from: Z0 */
    public boolean f38159Z0;

    /* renamed from: a1 */
    public boolean f38160a1;

    /* renamed from: b1 */
    public boolean f38161b1;

    /* renamed from: c1 */
    public boolean f38162c1;

    /* renamed from: d1 */
    public boolean f38163d1;

    /* renamed from: g0 */
    public CardView f38166g0;

    /* renamed from: h0 */
    public RecyclerView f38168h0;

    /* renamed from: i */
    public boolean f38170i;

    /* renamed from: i0 */
    public TextView f38171i0;

    /* renamed from: j */
    public String f38173j;

    /* renamed from: j0 */
    public TextView f38174j0;

    /* renamed from: k */
    public C13052a f38176k;

    /* renamed from: k0 */
    public View f38177k0;

    /* renamed from: k1 */
    public boolean f38178k1;

    /* renamed from: l0 */
    public RelativeLayout f38180l0;

    /* renamed from: l1 */
    public boolean f38181l1;
    @Inject

    /* renamed from: m */
    public C13120n2 f38182m;

    /* renamed from: m0 */
    public RecyclerView f38183m0;

    /* renamed from: m1 */
    public C13142f f38184m1;
    @Inject

    /* renamed from: n */
    public AbstractC18777j f38185n;

    /* renamed from: n0 */
    public TintedImageView f38186n0;

    /* renamed from: n1 */
    public boolean f38187n1;
    @Inject

    /* renamed from: o */
    public AbstractC19462a f38188o;

    /* renamed from: o0 */
    public int f38189o0;

    /* renamed from: o1 */
    public ReferralManager f38190o1;
    @Inject

    /* renamed from: p */
    public AbstractC16452e f38191p;

    /* renamed from: p0 */
    public ShineView f38192p0;

    /* renamed from: p1 */
    public boolean f38193p1;

    /* renamed from: q */
    public View f38194q;

    /* renamed from: q0 */
    public View f38195q0;

    /* renamed from: q1 */
    public AbstractC16498f f38196q1;

    /* renamed from: r */
    public View f38197r;

    /* renamed from: r0 */
    public SwipeRefreshLayout f38198r0;

    /* renamed from: r1 */
    public AbstractC19868j f38199r1;

    /* renamed from: s */
    public h f38200s;

    /* renamed from: s0 */
    public ConstraintLayout f38201s0;

    /* renamed from: s1 */
    public AbstractC19854f<AbstractC17348c> f38202s1;

    /* renamed from: t */
    public View f38203t;

    /* renamed from: t0 */
    public View f38204t0;

    /* renamed from: t1 */
    public String f38205t1;

    /* renamed from: u */
    public AbstractC13087h1 f38206u;

    /* renamed from: u0 */
    public View f38207u0;

    /* renamed from: u1 */
    public boolean f38208u1;

    /* renamed from: v */
    public FrameLayout f38209v;

    /* renamed from: v0 */
    public LottieAnimationView f38210v0;

    /* renamed from: v1 */
    public AbstractC8621z f38211v1;

    /* renamed from: w */
    public DetailsActionBar f38212w;

    /* renamed from: w0 */
    public TextView f38213w0;

    /* renamed from: w1 */
    public C16461b f38214w1;

    /* renamed from: x */
    public View f38215x;

    /* renamed from: x0 */
    public TextView f38216x0;

    /* renamed from: x1 */
    public AbstractC19102s1 f38217x1;

    /* renamed from: y */
    public ViewGroup f38218y;

    /* renamed from: y0 */
    public ImageView f38219y0;

    /* renamed from: y1 */
    public InitiateCallHelper f38220y1;

    /* renamed from: z */
    public ViewGroup f38221z;

    /* renamed from: z0 */
    public TextView f38222z0;

    /* renamed from: z1 */
    public AbstractC11476s1 f38223z1;

    /* renamed from: l */
    public boolean f38179l = false;

    /* renamed from: e1 */
    public boolean f38164e1 = false;

    /* renamed from: f1 */
    public boolean f38165f1 = false;

    /* renamed from: g1 */
    public boolean f38167g1 = false;

    /* renamed from: h1 */
    public boolean f38169h1 = false;

    /* renamed from: i1 */
    public boolean f38172i1 = false;

    /* renamed from: j1 */
    public Runnable f38175j1 = null;

    /* renamed from: E1 */
    public boolean f38104E1 = false;

    /* renamed from: G1 */
    public final HashMap<String, Collection<FilterMatch>> f38108G1 = new HashMap<>();

    /* renamed from: I1 */
    public int f38112I1 = 10;

    /* renamed from: J1 */
    public final Handler f38115J1 = new Handler();

    /* renamed from: K1 */
    public final Runnable f38118K1 = new Runnable() { // from class: e.a.e.c.f1
        @Override // java.lang.Runnable
        public final void run() {
            ReferralManager referralManager;
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            view$OnClickListenerC13135s1.f38152W.setVisibility(view$OnClickListenerC13135s1.f38193p1 && (referralManager = view$OnClickListenerC13135s1.f38190o1) != null && referralManager.mo13052dg(view$OnClickListenerC13135s1.f38105F0) ? 0 : 8);
        }
    };

    /* renamed from: L1 */
    public final Runnable f38121L1 = new Runnable() { // from class: e.a.e.c.r0
        @Override // java.lang.Runnable
        public final void run() {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            Object obj = View$OnClickListenerC13135s1.f38089W1;
            if (view$OnClickListenerC13135s1.m21921SA()) {
                view$OnClickListenerC13135s1.f38210v0.m42591g();
            }
        }
    };

    /* renamed from: M1 */
    public final Runnable f38124M1 = new Runnable() { // from class: e.a.e.c.v
        @Override // java.lang.Runnable
        public final void run() {
            final View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            Object obj = View$OnClickListenerC13135s1.f38089W1;
            if (view$OnClickListenerC13135s1.m21921SA()) {
                ValueAnimator ofInt = ValueAnimator.ofInt(0, view$OnClickListenerC13135s1.f38182m.m22047b(view$OnClickListenerC13135s1.f38127N1));
                ofInt.setDuration(1000L);
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.c.u0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        View$OnClickListenerC13135s1 view$OnClickListenerC13135s12 = View$OnClickListenerC13135s1.this;
                        Objects.requireNonNull(view$OnClickListenerC13135s12);
                        view$OnClickListenerC13135s12.f38222z0.setText(valueAnimator.getAnimatedValue().toString() + "%");
                    }
                });
                ofInt.start();
            }
        }
    };

    /* renamed from: Q1 */
    public final C14022p.AbstractC14025c f38136Q1 = new C13136a();

    /* renamed from: R1 */
    public i f38139R1 = null;

    /* renamed from: e.a.e.c.s1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$a.class */
    public class C13136a extends C14022p.AbstractC14026d {
        public C13136a() {
            View$OnClickListenerC13135s1.this = r4;
        }

        @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14026d, p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
        /* renamed from: Aa */
        public void mo10096Aa(Throwable th, int i) {
            Contact contact;
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            if (view$OnClickListenerC13135s1.f38161b1 && (contact = view$OnClickListenerC13135s1.f38105F0) != null) {
                View$OnClickListenerC13135s1.m22035ZA(view$OnClickListenerC13135s1, contact);
            }
            View$OnClickListenerC13135s1.this.f38198r0.setRefreshing(false);
        }

        @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14026d
        /* renamed from: a */
        public void mo20841a(Contact contact) {
            if (View$OnClickListenerC13135s1.this.m21921SA()) {
                Long m35548R = View$OnClickListenerC13135s1.this.f38105F0.m35548R();
                Long m35548R2 = contact.m35548R();
                if (m35548R != null && m35548R2 != null && !m35548R.equals(m35548R2)) {
                    View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                    view$OnClickListenerC13135s1.f38187n1 = false;
                    view$OnClickListenerC13135s1.m22019qB();
                    return;
                }
                View$OnClickListenerC13135s1.this.f38105F0 = contact;
                Intent intent = new Intent();
                intent.putExtra("ARG_CONTACT", View$OnClickListenerC13135s1.this.f38105F0);
                h hVar = View$OnClickListenerC13135s1.this.f38200s;
                if (hVar != null) {
                    hVar.setResult(-1, intent);
                }
                View$OnClickListenerC13135s1 view$OnClickListenerC13135s12 = View$OnClickListenerC13135s1.this;
                view$OnClickListenerC13135s12.f38187n1 = false;
                view$OnClickListenerC13135s12.mo21919UA();
                View$OnClickListenerC13135s1 view$OnClickListenerC13135s13 = View$OnClickListenerC13135s1.this;
                if (view$OnClickListenerC13135s13.f38161b1) {
                    View$OnClickListenerC13135s1.m22035ZA(view$OnClickListenerC13135s13, contact);
                }
                View$OnClickListenerC13135s1.this.f38198r0.setRefreshing(false);
            }
        }
    }

    /* renamed from: e.a.e.c.s1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$b.class */
    public class AsyncTaskC13137b extends C19103t.AsyncTaskC19104a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AsyncTaskC13137b(Contact contact, Uri uri) {
            super(contact, uri);
            View$OnClickListenerC13135s1.this = r5;
        }

        @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
        /* renamed from: a */
        public void mo18682a(Object obj) {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            view$OnClickListenerC13135s1.f38150V0 = true;
            if (obj != null) {
                view$OnClickListenerC13135s1.f38105F0 = (Contact) obj;
                view$OnClickListenerC13135s1.mo21919UA();
            }
        }

        @Override // p193e.p194a.p1114o5.C19103t.AsyncTaskC19104a, android.os.AsyncTask
        public Object doInBackground(Object... objArr) {
            Object doInBackground = super.doInBackground(objArr);
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            Contact contact = (Contact) doInBackground;
            Object obj = View$OnClickListenerC13135s1.f38089W1;
            return view$OnClickListenerC13135s1.m22021oB(contact);
        }
    }

    /* renamed from: e.a.e.c.s1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$c.class */
    public class AsyncTaskC13138c extends AbstractAsyncTaskC15557a {
        public AsyncTaskC13138c() {
            View$OnClickListenerC13135s1.this = r4;
        }

        @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
        /* renamed from: a */
        public void mo18682a(Object obj) {
            if (obj != null) {
                View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                view$OnClickListenerC13135s1.f38105F0 = (Contact) obj;
                view$OnClickListenerC13135s1.mo21919UA();
            }
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object... objArr) {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            return view$OnClickListenerC13135s1.m22021oB(view$OnClickListenerC13135s1.f38105F0);
        }
    }

    /* renamed from: e.a.e.c.s1$d */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$d.class */
    public class C13139d extends AbstractC13291o0.C13294c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13139d(AbstractC13329x0 abstractC13329x0, AbstractC14835j abstractC14835j) {
            super(abstractC13329x0, abstractC14835j);
            View$OnClickListenerC13135s1.this = r5;
        }

        @Override // p193e.p194a.p682e.AbstractC13291o0
        /* renamed from: d */
        public void mo21948d(String str) {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            Object obj = View$OnClickListenerC13135s1.f38089W1;
            String str2 = (String) ((k) ((ArrayList) view$OnClickListenerC13135s1.m22024lB()).get(0)).a;
            if (str == null || str.trim().isEmpty()) {
                str = (View$OnClickListenerC13135s1.this.f38105F0.m35491w() == null || View$OnClickListenerC13135s1.this.f38105F0.m35491w().isEmpty()) ? null : View$OnClickListenerC13135s1.this.f38105F0.m35491w();
            }
            View$OnClickListenerC13135s1.this.f38133P1.mo22008N(str, str2);
        }
    }

    /* renamed from: e.a.e.c.s1$e */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$e.class */
    public abstract class AbstractAsyncTaskC13140e extends AbstractAsyncTaskC15557a {

        /* renamed from: d */
        public Contact f38228d;

        /* renamed from: e.a.e.c.s1$e$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$e$a.class */
        public class AsyncTaskC13141a extends AbstractAsyncTaskC15562e {

            /* renamed from: d */
            public final /* synthetic */ Contact f38230d;

            public AsyncTaskC13141a(AbstractAsyncTaskC13140e abstractAsyncTaskC13140e, Contact contact) {
                this.f38230d = contact;
            }
        }

        public AbstractAsyncTaskC13140e(C13136a c13136a) {
            View$OnClickListenerC13135s1.this = r4;
        }

        @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
        /* renamed from: a */
        public void mo18682a(Object obj) {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            view$OnClickListenerC13135s1.f38150V0 = true;
            if (obj == null || !view$OnClickListenerC13135s1.m21921SA()) {
                return;
            }
            View$OnClickListenerC13135s1.this.f38105F0 = (Contact) obj;
            if (m22009c()) {
                View$OnClickListenerC13135s1.this.f38187n1 = true;
            }
            View$OnClickListenerC13135s1.this.mo21919UA();
        }

        /* renamed from: b */
        public abstract Contact mo22004b();

        /* renamed from: c */
        public final boolean m22009c() {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            Object obj = View$OnClickListenerC13135s1.f38089W1;
            return view$OnClickListenerC13135s1.f38738c && view$OnClickListenerC13135s1.f38141S0.mo10138b(view$OnClickListenerC13135s1.f38105F0);
        }

        @Override // android.os.AsyncTask
        public final Object doInBackground(Object... objArr) {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            Contact mo22004b = mo22004b();
            Object obj = View$OnClickListenerC13135s1.f38089W1;
            return view$OnClickListenerC13135s1.m22021oB(mo22004b);
        }

        @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a, android.os.AsyncTask
        public void onPostExecute(Object obj) {
            boolean z;
            super.onPostExecute(obj);
            if (View$OnClickListenerC13135s1.this.f38105F0 != null) {
                if (!m22009c() || (TextUtils.isEmpty(View$OnClickListenerC13135s1.this.f38109H0) && TextUtils.isEmpty(View$OnClickListenerC13135s1.this.f38107G0))) {
                    View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                    if (view$OnClickListenerC13135s1.f38161b1) {
                        View$OnClickListenerC13135s1.m22035ZA(view$OnClickListenerC13135s1, view$OnClickListenerC13135s1.f38105F0);
                    }
                    z = false;
                } else {
                    View$OnClickListenerC13135s1 view$OnClickListenerC13135s12 = View$OnClickListenerC13135s1.this;
                    view$OnClickListenerC13135s12.m22014vB(view$OnClickListenerC13135s12.f38107G0, view$OnClickListenerC13135s12.f38109H0, view$OnClickListenerC13135s12.f38111I0, false);
                    z = true;
                }
                if (!z && View$OnClickListenerC13135s1.this.m21921SA()) {
                    View$OnClickListenerC13135s1 view$OnClickListenerC13135s13 = View$OnClickListenerC13135s1.this;
                    if (!view$OnClickListenerC13135s13.f38163d1) {
                        view$OnClickListenerC13135s13.f38163d1 = true;
                        AbstractC15558b.m18689a(new AsyncTaskC13148l(view$OnClickListenerC13135s13.f38105F0), new Object[0]);
                    }
                }
                Contact contact = this.f38228d;
                if (contact == null) {
                    return;
                }
                Contact contact2 = new Contact(new ContactDto.Contact((ContactDto.Contact) contact.mRow));
                contact2.f11514i = contact.f11514i;
                contact2.f11515j = contact.f11515j;
                new AsyncTaskC13141a(this, contact2);
            }
        }
    }

    /* renamed from: e.a.e.c.s1$f */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$f.class */
    public static class C13142f {

        /* renamed from: a */
        public final String f38231a;

        /* renamed from: b */
        public final AbstractC19462a f38232b;

        /* renamed from: c */
        public boolean f38233c = false;

        public C13142f(SourceType sourceType, AbstractC19462a abstractC19462a) {
            this.f38232b = abstractC19462a;
            switch (sourceType.ordinal()) {
                case 0:
                    this.f38231a = "searchResults";
                    return;
                case 1:
                    this.f38231a = "afterCall";
                    return;
                case 2:
                    this.f38231a = "callLog";
                    return;
                case 3:
                    this.f38231a = "contacts";
                    return;
                case 4:
                    this.f38231a = "searchHistory";
                    return;
                case 5:
                    this.f38231a = RemoteMessageConst.NOTIFICATION;
                    return;
                case 6:
                    this.f38231a = "clipboard";
                    return;
                case 7:
                    this.f38231a = "blockViewList";
                    return;
                case 8:
                    this.f38231a = "outsideTC";
                    return;
                case 9:
                    this.f38231a = "notificationMissedCallReminder";
                    return;
                case 10:
                    this.f38231a = "conversation";
                    return;
                case 11:
                    this.f38231a = "blockView";
                    return;
                case 12:
                case 13:
                case 16:
                case 17:
                case 20:
                default:
                    this.f38231a = null;
                    return;
                case 14:
                    this.f38231a = "truecallerContacts";
                    return;
                case 15:
                    this.f38231a = "whoViewedMe";
                    return;
                case 18:
                    this.f38231a = "inbox";
                    return;
                case 19:
                    this.f38231a = "imGroupInfo";
                    return;
                case 21:
                    this.f38231a = "governmentServices";
                    return;
            }
        }
    }

    /* renamed from: e.a.e.c.s1$g */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$g.class */
    public class C13143g extends AbstractC8449b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13143g() {
            super(null, 300L);
            View$OnClickListenerC13135s1.this = r6;
        }

        @Override // p193e.p194a.p372b0.p413i.AbstractC8449b
        /* renamed from: a */
        public void mo9046a() {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            if (view$OnClickListenerC13135s1.f38200s != null) {
                Contact contact = view$OnClickListenerC13135s1.f38105F0;
                if (contact == null) {
                    m28533b(300L);
                } else {
                    new AsyncTaskC13153q(contact);
                }
            }
        }
    }

    /* renamed from: e.a.e.c.s1$h */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$h.class */
    public static class AsyncTaskC13144h extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public final Context f38235a;

        /* renamed from: b */
        public final Contact f38236b;

        /* renamed from: c */
        public final boolean f38237c;

        public AsyncTaskC13144h(Context context, Contact contact, boolean z) {
            this.f38235a = context;
            this.f38236b = contact;
            this.f38237c = z;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            Long m35548R = this.f38236b.m35548R();
            String m35545T = this.f38236b.m35545T();
            if (m35548R == null || TextUtils.isEmpty(m35545T)) {
                return null;
            }
            C12864a2.m22558e0(this.f38235a, m35545T, m35548R.longValue(), this.f38237c);
            return null;
        }
    }

    /* renamed from: e.a.e.c.s1$i */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$i.class */
    public class AsyncTaskC13145i extends AbstractAsyncTaskC13140e {

        /* renamed from: f */
        public final String f38238f;

        /* renamed from: g */
        public final String f38239g;

        /* renamed from: h */
        public final String f38240h;

        /* renamed from: i */
        public final String f38241i;

        /* renamed from: j */
        public final String f38242j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AsyncTaskC13145i(String str, String str2, String str3, String str4, String str5) {
            super(null);
            View$OnClickListenerC13135s1.this = r5;
            this.f38238f = str;
            this.f38239g = str2;
            this.f38240h = str3;
            this.f38241i = str4;
            this.f38242j = str5;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
            if (r5 != null) goto L11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
            if (r5 != null) goto L11;
         */
        @Override // p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.AbstractAsyncTaskC13140e
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.truecaller.data.entity.Contact mo22004b() {
            /*
                r4 = this;
                r0 = r4
                java.lang.String r0 = r0.f38238f
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L1c
                r0 = r4
                e.a.e.c.s1 r0 = p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.this
                e.a.k3.j.b r0 = r0.f38214w1
                r1 = r5
                com.truecaller.data.entity.Contact r0 = r0.m17362j(r1)
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L1c
                goto L45
            L1c:
                r0 = r4
                java.lang.String r0 = r0.f38241i
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L43
                r0 = r4
                e.a.e.c.s1 r0 = p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.this
                r6 = r0
                r0 = r6
                e.a.k3.j.b r0 = r0.f38214w1
                r1 = r6
                e.a.b0.q.z r1 = r1.f38211v1
                r2 = r5
                java.lang.String r1 = r1.mo28181j(r2)
                com.truecaller.data.entity.Contact r0 = r0.m17364h(r1)
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L43
                goto L45
            L43:
                r0 = 0
                r5 = r0
            L45:
                r0 = r5
                if (r0 == 0) goto L4b
                r0 = r5
                return r0
            L4b:
                com.truecaller.data.entity.Contact r0 = new com.truecaller.data.entity.Contact
                r1 = r0
                r1.<init>()
                r6 = r0
                r0 = r6
                r1 = r4
                java.lang.String r1 = r1.f38238f
                r0.setTcId(r1)
                r0 = r6
                r1 = r4
                java.lang.String r1 = r1.f38239g
                r0.m35546S0(r1)
                r0 = r6
                r1 = 1
                r0.f11515j = r1
                r0 = r4
                java.lang.String r0 = r0.f38240h
                r1 = r4
                java.lang.String r1 = r1.f38241i
                r2 = r4
                java.lang.String r2 = r2.f38242j
                com.truecaller.data.entity.Number r0 = com.truecaller.data.entity.Number.m35483a(r0, r1, r2)
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L91
                r0 = r5
                r1 = r4
                java.lang.String r1 = r1.f38238f
                r0.setTcId(r1)
                r0 = r6
                r1 = r5
                java.lang.String r1 = r1.m35479e()
                r0.m35552O0(r1)
                r0 = r6
                r1 = r5
                r0.m35525d(r1)
            L91:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.AsyncTaskC13145i.mo22004b():com.truecaller.data.entity.Contact");
        }
    }

    /* renamed from: e.a.e.c.s1$j */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$j.class */
    public class AsyncTaskC13146j extends AbstractAsyncTaskC13140e {

        /* renamed from: f */
        public final Contact f38244f;

        public AsyncTaskC13146j(View$OnClickListenerC13135s1 view$OnClickListenerC13135s1, Contact contact) {
            super(null);
            this.f38244f = contact;
        }

        @Override // p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.AbstractAsyncTaskC13140e
        /* renamed from: b */
        public Contact mo22004b() {
            return this.f38244f;
        }
    }

    /* renamed from: e.a.e.c.s1$k */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$k.class */
    public interface AbstractC13147k {
        /* renamed from: N */
        void mo22008N(String str, String str2);

        /* renamed from: u */
        void mo22007u(Contact contact);
    }

    /* renamed from: e.a.e.c.s1$l */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$l.class */
    public class AsyncTaskC13148l extends AbstractAsyncTaskC21209i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AsyncTaskC13148l(Contact contact) {
            super(r13.f38200s, r13, r13.f38120L0, r13.f38123M0, contact, 20, "detailView", UUID.randomUUID(), r13.f38112I1, r13.f38103E0.mo12802A6());
            View$OnClickListenerC13135s1.this = r13;
        }

        @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
        /* renamed from: a */
        public void mo18682a(Object obj) {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            view$OnClickListenerC13135s1.f38150V0 = true;
            if (obj == null || !view$OnClickListenerC13135s1.m21921SA()) {
                return;
            }
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s12 = View$OnClickListenerC13135s1.this;
            view$OnClickListenerC13135s12.f38105F0 = (Contact) obj;
            view$OnClickListenerC13135s12.mo21919UA();
        }

        @Override // p193e.p194a.p1342w4.AbstractAsyncTaskC21201a, android.os.AsyncTask
        public Object doInBackground(Object... objArr) {
            Object doInBackground = super.doInBackground(objArr);
            if (doInBackground instanceof Contact) {
                View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                Contact contact = (Contact) doInBackground;
                Object obj = View$OnClickListenerC13135s1.f38089W1;
                return view$OnClickListenerC13135s1.m22021oB(contact);
            }
            return null;
        }
    }

    /* renamed from: e.a.e.c.s1$m */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$m.class */
    public class AsyncTaskC13149m extends AbstractAsyncTaskC15557a {

        /* renamed from: d */
        public final Context f38246d;

        /* renamed from: e */
        public final Contact f38247e;

        public AsyncTaskC13149m(Context context, Contact contact) {
            View$OnClickListenerC13135s1.this = r4;
            this.f38246d = context;
            this.f38247e = contact;
        }

        @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
        /* renamed from: a */
        public void mo18682a(Object obj) {
            if (!View$OnClickListenerC13135s1.this.m21921SA()) {
                return;
            }
            View$OnClickListenerC13135s1.this.f38169h1 = true;
            View$OnClickListenerC13135s1.this.m21920TA(((Boolean) obj).booleanValue() ? 2131886459 : 2131886457);
            if (View$OnClickListenerC13135s1.this.getActivity() == null) {
                return;
            }
            View$OnClickListenerC13135s1.this.getActivity().finish();
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object... objArr) {
            Boolean bool = Boolean.FALSE;
            if (this.f38247e.m35495t0()) {
                bool = Boolean.valueOf(C17422k.m16074i0(this.f38246d, this.f38247e.m35548R(), this.f38247e.m35545T()));
            }
            Boolean bool2 = bool;
            if (this.f38247e.m35508l0()) {
                C16487j c16487j = new C16487j(this.f38246d);
                Number m35493v = this.f38247e.m35493v();
                bool2 = bool;
                if (m35493v != null) {
                    bool2 = Boolean.valueOf(c16487j.m17322l(m35493v.m35479e(), 32));
                }
            }
            return bool2;
        }
    }

    /* renamed from: e.a.e.c.s1$n */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$n.class */
    public class AsyncTaskC13150n extends AbstractAsyncTaskC15557a {

        /* renamed from: d */
        public final AbstractC14719c f38249d;

        /* renamed from: e */
        public final String f38250e;

        public AsyncTaskC13150n(String str, AbstractC14719c abstractC14719c) {
            View$OnClickListenerC13135s1.this = r4;
            this.f38250e = str;
            this.f38249d = abstractC14719c;
        }

        @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
        /* renamed from: a */
        public void mo18682a(Object obj) {
            if (!View$OnClickListenerC13135s1.this.m21921SA()) {
                return;
            }
            View$OnClickListenerC13135s1.this.f38167g1 = ((Boolean) obj).booleanValue();
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            view$OnClickListenerC13135s1.m21920TA(view$OnClickListenerC13135s1.f38167g1 ? 2131886459 : 2131886457);
            h hVar = View$OnClickListenerC13135s1.this.f38200s;
            if (hVar == null) {
                return;
            }
            hVar.supportInvalidateOptionsMenu();
            View$OnClickListenerC13135s1.this.f38200s.finish();
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object... objArr) {
            String str = this.f38250e;
            if (str == null) {
                return Boolean.FALSE;
            }
            C14720a m19727f = this.f38249d.m19727f(str);
            if (m19727f != null) {
                m19727f.f42220b = true;
                this.f38249d.m19728e(m19727f);
            } else {
                this.f38249d.m19730c(new C14720a(this.f38250e, true));
            }
            return Boolean.TRUE;
        }
    }

    /* renamed from: e.a.e.c.s1$o */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$o.class */
    public interface AbstractC13151o {
        /* renamed from: Q7 */
        void mo22006Q7();
    }

    /* renamed from: e.a.e.c.s1$p */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$p.class */
    public class AsyncTaskC13152p extends AsyncTask<Void, Void, Map<String, List<C16496d>>> {
        public AsyncTaskC13152p(C13136a c13136a) {
            View$OnClickListenerC13135s1.this = r4;
        }

        /* renamed from: a */
        public final C13212u m22005a(final C16496d c16496d, int i) {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            C13212u c13212u = new C13212u(view$OnClickListenerC13135s1.f38200s, view$OnClickListenerC13135s1.f38179l);
            c13212u.setShowFullDivider(false);
            c13212u.setHeadingText(c16496d.f46382a);
            c13212u.setDetailsText(null);
            c13212u.setLeftImage(c16496d.f46383b);
            c13212u.getLeftImage().setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            c13212u.getLeftImage().setPadding(i, i, i, i);
            c13212u.setOnClickListener(new View.OnClickListener() { // from class: e.a.e.c.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    View$OnClickListenerC13135s1.AsyncTaskC13152p asyncTaskC13152p = View$OnClickListenerC13135s1.AsyncTaskC13152p.this;
                    C16496d c16496d2 = c16496d;
                    AbstractC19462a mo12776C4 = View$OnClickListenerC13135s1.this.f38103E0.mo12776C4();
                    String str = c16496d2.f46385d + StringConstant.SLASH + c16496d2.f46384c.getType();
                    l.e("detailView", AnalyticsConstants.CONTEXT);
                    l.e(str, "subAction");
                    l.e("externalApp", "action");
                    mo12776C4.mo13274b(new ViewActionEvent("externalApp", str, "detailView"));
                    c16496d2.f46384c.setFlags(268435456);
                    try {
                        View$OnClickListenerC13135s1.this.startActivity(c16496d2.f46384c);
                    } catch (ActivityNotFoundException e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                    }
                }
            });
            View$OnClickListenerC13135s1.this.f38093B.addView(c13212u);
            return c13212u;
        }

        @Override // android.os.AsyncTask
        public Map<String, List<C16496d>> doInBackground(Void[] voidArr) {
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            List<C16496d> m14110c = C19103t.m14110c(view$OnClickListenerC13135s1.f38200s, view$OnClickListenerC13135s1.f38105F0.m35548R(), C19039i0.f53182a);
            HashMap hashMap = new HashMap();
            ArrayList arrayList = (ArrayList) m14110c;
            if (arrayList.size() <= 3) {
                hashMap.put(null, m14110c);
            } else {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C16496d c16496d = (C16496d) it.next();
                    List list = (List) hashMap.get(c16496d.f46385d);
                    ArrayList arrayList2 = list;
                    if (list == null) {
                        arrayList2 = new ArrayList();
                        hashMap.put(c16496d.f46385d, arrayList2);
                    }
                    arrayList2.add(c16496d);
                }
            }
            return hashMap;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Map<String, List<C16496d>> map) {
            Map<String, List<C16496d>> map2 = map;
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
            ViewGroup viewGroup = view$OnClickListenerC13135s1.f38093B;
            if (viewGroup == null || view$OnClickListenerC13135s1.f38200s == null) {
                return;
            }
            viewGroup.removeAllViews();
            int m28238b = C8605o.m28238b(View$OnClickListenerC13135s1.this.f38200s, 6.0f);
            Set<String> keySet = map2.keySet();
            int i = 0;
            if (keySet.size() != 1 || !keySet.contains(null)) {
                for (final List<C16496d> list : map2.values()) {
                    C13212u m22005a = m22005a(list.get(0), m28238b);
                    list.remove(0);
                    if (!list.isEmpty()) {
                        m22005a.setRightImage(2131232422);
                        m22005a.setRightImageTint(View$OnClickListenerC13135s1.this.f38110H1);
                        m22005a.getRightImage().setOnClickListener(new View.OnClickListener() { // from class: e.a.e.c.g0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                View$OnClickListenerC13135s1.AsyncTaskC13152p asyncTaskC13152p = View$OnClickListenerC13135s1.AsyncTaskC13152p.this;
                                new C13093i2(View$OnClickListenerC13135s1.this.f38200s, list, view).f37989a.show();
                            }
                        });
                    }
                }
            } else {
                for (C16496d c16496d : map2.get(null)) {
                    m22005a(c16496d, m28238b);
                }
            }
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s12 = View$OnClickListenerC13135s1.this;
            View view = view$OnClickListenerC13135s12.f38099D;
            if (view$OnClickListenerC13135s12.f38093B.getChildCount() <= 0) {
                i = 8;
            }
            view.setVisibility(i);
        }
    }

    /* renamed from: e.a.e.c.s1$q */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/s1$q.class */
    public class AsyncTaskC13153q extends AbstractAsyncTaskC13140e {

        /* renamed from: f */
        public final Contact f38253f;

        /* renamed from: g */
        public Runnable f38254g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AsyncTaskC13153q(Contact contact) {
            super(null);
            View$OnClickListenerC13135s1.this = r5;
            this.f38253f = contact;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AsyncTaskC13153q(Contact contact, Runnable runnable) {
            super(null);
            View$OnClickListenerC13135s1.this = r5;
            this.f38253f = contact;
            this.f38254g = runnable;
        }

        @Override // p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.AbstractAsyncTaskC13140e, p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
        /* renamed from: a */
        public void mo18682a(Object obj) {
            Runnable runnable;
            super.mo18682a(obj);
            if (!View$OnClickListenerC13135s1.this.m21921SA() || (runnable = this.f38254g) == null) {
                return;
            }
            runnable.run();
        }

        @Override // p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.AbstractAsyncTaskC13140e
        /* renamed from: b */
        public Contact mo22004b() {
            boolean z;
            Contact m17360l = View$OnClickListenerC13135s1.this.f38214w1.m17360l(this.f38253f);
            Contact contact = m17360l;
            if (m17360l == null) {
                View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                contact = view$OnClickListenerC13135s1.f38214w1.m17364h(view$OnClickListenerC13135s1.f38107G0);
                if (contact == null) {
                    contact = null;
                }
            }
            Contact contact2 = this.f38253f;
            if (contact2 == contact) {
                z = true;
            } else {
                z = false;
                if (contact2 != null) {
                    z = false;
                    if (contact != null) {
                        Parcel obtain = Parcel.obtain();
                        Parcel obtain2 = Parcel.obtain();
                        obtain.setDataPosition(0);
                        obtain2.setDataPosition(0);
                        contact2.writeToParcel(obtain, 0);
                        contact.writeToParcel(obtain2, 0);
                        z = false;
                        if (obtain.dataAvail() == obtain2.dataAvail()) {
                            z = Arrays.equals(obtain.marshall(), obtain2.marshall());
                        }
                        obtain.recycle();
                        obtain2.recycle();
                    }
                }
            }
            if (z) {
                Contact contact3 = null;
                if (View$OnClickListenerC13135s1.this.f38105F0 == null) {
                    contact3 = this.f38253f;
                }
                return contact3;
            } else if (!this.f38253f.m35488x0() && contact != null && contact.m35488x0()) {
                Objects.requireNonNull(View$OnClickListenerC13135s1.this);
                Contact contact4 = null;
                if (View$OnClickListenerC13135s1.this.f38105F0 == null) {
                    contact4 = this.f38253f;
                }
                return contact4;
            } else if (!this.f38253f.f11515j && contact != null && contact.m35523d1() && this.f38253f.m35523d1() && this.f38253f.m35540X() > contact.m35540X() && (!this.f38253f.m35488x0() || contact.m35488x0())) {
                Contact contact5 = this.f38253f;
                this.f38228d = contact5;
                Contact contact6 = null;
                if (View$OnClickListenerC13135s1.this.f38105F0 == null) {
                    contact6 = contact5;
                }
                return contact6;
            } else {
                Contact contact7 = contact;
                if (contact == null) {
                    if (!this.f38253f.m35523d1()) {
                        Contact contact8 = new Contact();
                        contact8.f11515j = true;
                        for (Number number : this.f38253f.m35557M()) {
                            contact8.m35525d(number);
                        }
                        return contact8;
                    }
                    contact7 = this.f38253f;
                }
                return contact7;
            }
        }
    }

    /* renamed from: YA */
    public static void m22036YA(View$OnClickListenerC13135s1 view$OnClickListenerC13135s1) {
        n3.r.a.l activity;
        if (view$OnClickListenerC13135s1.m22027iB() && view$OnClickListenerC13135s1.f38104E1 && view$OnClickListenerC13135s1.f38101D1 != null && (activity = view$OnClickListenerC13135s1.getActivity()) != null && !activity.isDestroyed()) {
            view$OnClickListenerC13135s1.f38143T.setVisibility(0);
            view$OnClickListenerC13135s1.f38143T.m35949c(view$OnClickListenerC13135s1.f38101D1, AdLayoutTypeX.DETAILS);
        }
    }

    /* renamed from: ZA */
    public static void m22035ZA(View$OnClickListenerC13135s1 view$OnClickListenerC13135s1, Contact contact) {
        view$OnClickListenerC13135s1.f38161b1 = false;
        Contact contact2 = new Contact(new ContactDto.Contact((ContactDto.Contact) contact.mRow));
        contact2.f11514i = contact.f11514i;
        contact2.f11515j = contact.f11515j;
        if (contact2.getTcId() == null) {
            view$OnClickListenerC13135s1.f38202s1.mo11854a().mo16234n(view$OnClickListenerC13135s1.f38191p.mo17387a(contact2, 5, null, 0L));
            return;
        }
        if (contact2.m35540X() < 1) {
            contact2.m35539X0(System.currentTimeMillis());
        }
        view$OnClickListenerC13135s1.f38202s1.mo11854a().mo16242f(view$OnClickListenerC13135s1.f38191p.mo17387a(contact2, 5, null, 0L), contact2).mo11828g();
    }

    /* renamed from: AB */
    public final void m22040AB(View view) {
        if (view.getHeight() != 0) {
            m22013wB(view, view.getHeight(), 0);
            this.f38186n0.setImageResource(2131231193);
            return;
        }
        view.measure(-1, -2);
        m22013wB(view, view.getHeight(), view.getMeasuredHeight());
        this.f38186n0.setImageResource(2131231191);
        this.f38188o.mo13274b(ViewActionEvent.m35945b("detailView", ViewActionEvent.BusinessProfilesAction.HOURS_EXPANDED));
    }

    /* renamed from: BB */
    public final void m22039BB(boolean z) {
        this.f38108G1.clear();
        this.f38188o.mo13274b(ViewActionEvent.m35942e("detailView", ViewActionEvent.ContactDetailsAction.UNBLOCK));
        List<k<String, Integer>> m22024lB = m22024lB();
        String str = z ? "notspam" : "unblock";
        AbstractC13291o0 abstractC13291o0 = this.f38117K0;
        String str2 = ((ArrayList) m22024lB).isEmpty() ? "OTHER" : "PHONE_NUMBER";
        C13165w1 c13165w1 = new C13165w1(this);
        boolean z2 = this.f38165f1;
        Objects.requireNonNull(abstractC13291o0);
        abstractC13291o0.m21950a(m22024lB, str2, null, "detailView", str, true, FiltersContract.Filters.WildCardType.NONE, c13165w1, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:365:0x0644 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0532 A[SYNTHETIC] */
    /* renamed from: CB */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22038CB(android.view.View r11) {
        /*
            Method dump skipped, instructions count: 4061
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.m22038CB(android.view.View):void");
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0, p193e.p194a.p937j4.p938a.AbstractC15561d
    /* renamed from: E */
    public void mo18687E(boolean z) {
        if (m21921SA()) {
            this.f38206u.mo22063f(true);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    /* renamed from: OA */
    public void mo21924OA() {
        new AsyncTaskC13146j(this, this.f38105F0);
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    /* renamed from: PA */
    public void mo10110PA() {
        this.f38117K0 = null;
        View view = getView();
        if (view != null) {
            view.removeCallbacks(this.f38175j1);
            this.f38175j1 = null;
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    /* renamed from: UA */
    public void mo21919UA() {
        if (!m21921SA() || !isAdded() || this.f38105F0 == null) {
            return;
        }
        this.f38115J1.removeCallbacks(this.f38118K1);
        this.f38115J1.postDelayed(this.f38118K1, 1000L);
        this.f38203t.setVisibility(this.f38150V0 ? 0 : 8);
        m22026jB(this.f38105F0, this.f38157Y0);
        m22019qB();
    }

    /* renamed from: Xm */
    public void m22037Xm(AppBarLayout appBarLayout, int i) {
        TextView textView = this.f38149V;
        boolean z = true;
        if (textView != null) {
            if ((this.f38149V.getHeight() / 2) + m22023mB(textView) <= this.f38189o0) {
                if (!this.f38164e1) {
                    this.f38146U.setVisibility(0);
                    this.f38206u.setVisibility(4);
                    this.f38164e1 = true;
                }
            } else if (this.f38164e1) {
                this.f38146U.setVisibility(4);
                this.f38206u.setVisibility(0);
                this.f38164e1 = false;
            }
            if (this.f38200s != null && this.f38142S1 != null) {
                if ((-i) == appBarLayout.getTotalScrollRange()) {
                    this.f38212w.setBackground(this.f38142S1.f38072e.f38082b);
                } else {
                    Drawable background = this.f38212w.getBackground();
                    C13132r1 c13132r1 = this.f38142S1.f38072e;
                    if (background == c13132r1.f38082b) {
                        this.f38212w.setBackground(c13132r1.f38083c);
                    }
                }
            }
        }
        if (i != 0) {
            z = false;
        }
        this.f38198r0.setEnabled(z);
    }

    /* renamed from: aB */
    public final void m22034aB(ViewGroup viewGroup) {
        Object obj;
        C13212u c13212u;
        String m35553O = this.f38105F0.m35553O();
        if (!w3.c.a.a.a.h.m(this.f38105F0.m35555N())) {
            obj = null;
        } else if (w3.c.a.a.a.h.b(m35553O, "yelp")) {
            obj = "Yelp";
        } else if (!w3.c.a.a.a.h.b(m35553O, "zomato")) {
            return;
        } else {
            obj = "Zomato";
        }
        String m35551P = w3.c.a.a.a.h.m(this.f38105F0.m35551P()) ? this.f38105F0.m35551P() : C19103t.m14104i(this.f38105F0);
        if (obj != null || !TextUtils.isEmpty(m35551P)) {
            String m13808I = w3.c.a.a.a.h.b(m35553O, "itesco") ? C19231g0.m13808I(m35553O) : obj == null ? m35551P.replace(DtbConstants.HTTPS, "").replace(DtbConstants.HTTP, "") : getResources().getString(C2752R.string.CallerLinkPartnerText, obj);
            String str = m13808I;
            if (w3.c.a.a.a.h.y(m13808I, "www")) {
                str = m13808I.replaceFirst("www\\.", "");
            }
            if (obj != null || this.f38178k1 || !this.f38092A1.mo17206e(this.f38105F0)) {
                C13212u m22033bB = "Yelp".equals(obj) ? m22033bB(m22025kB(), str, C2752R.C2753drawable.ic_detail_link) : m22033bB(str, getResources().getString(C2752R.string.CallerMoreInfoType), C2752R.C2753drawable.ic_detail_link);
                m22033bB.setShowButtonDividers(false);
                m22033bB.setHeadingMaxLines(1);
                m22033bB.setMinimumHeight(getResources().getDimensionPixelSize(C2752R.dimen.caller_detail_yelp_height));
                final String str2 = m35551P;
                m22033bB.setOnClickListener(new View.OnClickListener() { // from class: e.a.e.c.a1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                        String str3 = str2;
                        Objects.requireNonNull(view$OnClickListenerC13135s1);
                        String str4 = str3;
                        if (!w3.c.a.a.a.h.y(str3, DtbConstants.HTTP)) {
                            str4 = str3;
                            if (!w3.c.a.a.a.h.y(str3, DtbConstants.HTTPS)) {
                                str4 = C22128a.m8543z2(DtbConstants.HTTP, str3);
                            }
                        }
                        C12864a2.m22575S(view$OnClickListenerC13135s1.getActivity(), str4, false);
                        view$OnClickListenerC13135s1.f38188o.mo13274b(ViewActionEvent.m35941f("detailView", ViewActionEvent.ContactDetailsAction.BROWSER, ViewActionEvent.ContactDetailsSubAction.LINK));
                    }
                });
                c13212u = m22033bB;
                if (obj != null) {
                    ImageView rightImage = m22033bB.getRightImage();
                    rightImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    rightImage.setVisibility(0);
                    C17891a1.C17902k.m15655N1(this.f38200s).m8964B(this.f38105F0.m35555N()).m8427O(rightImage);
                    c13212u = m22033bB;
                }
            } else {
                c13212u = m22032cB(getString(2131888787), C2752R.C2753drawable.ic_detail_link, PremiumLaunchContext.CONTACT_DETAILS_WEBSITE);
            }
            viewGroup.addView(c13212u);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0, p193e.p194a.p937j4.p938a.AbstractC15561d
    /* renamed from: b0 */
    public void mo18686b0() {
        if (m21921SA()) {
            this.f38206u.mo22063f(false);
        }
    }

    /* renamed from: bB */
    public final C13212u m22033bB(String str, String str2, int i) {
        C13212u c13212u = new C13212u(this.f38200s, this.f38179l);
        c13212u.setShowFullDivider(false);
        c13212u.setHeadingText(str);
        c13212u.setDetailsText(str2);
        if (this.f38179l) {
            c13212u.setDetailsTextStyle(C2752R.style.TextStyleCallerDetails_Dark);
        } else {
            c13212u.setDetailsTextStyle(C2752R.style.TextStyleCallerDetails);
        }
        c13212u.setLeftImage(i);
        c13212u.setImageTint(this.f38110H1);
        return c13212u;
    }

    /* renamed from: cB */
    public final C13212u m22032cB(String str, int i, final PremiumLaunchContext premiumLaunchContext) {
        C13212u m22033bB = m22033bB(str, getString(2131888761), i);
        m22033bB.getDetailsTextView().setCompoundDrawablesWithIntrinsicBounds(this.f38100D0, (Drawable) null, (Drawable) null, (Drawable) null);
        m22033bB.getDetailsTextView().setCompoundDrawablePadding(getResources().getDimensionPixelSize(C2752R.dimen.control_semispace));
        m22033bB.setOnClickListener(new View.OnClickListener() { // from class: e.a.e.c.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                view$OnClickListenerC13135s1.f38129O0.mo17167b(view$OnClickListenerC13135s1.requireContext(), premiumLaunchContext);
            }
        });
        return m22033bB;
    }

    /* renamed from: dB */
    public final void m22031dB(ViewGroup viewGroup, final String str, String str2, int i, final Runnable runnable, final ViewActionEvent.ContactDetailsAction contactDetailsAction) {
        View view;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String m35491w = C19231g0.m13812E(str) ? this.f38105F0.m35491w() : str;
        if (this.f38178k1 || !this.f38092A1.mo17208c(this.f38105F0)) {
            C13212u m22033bB = m22033bB(m35491w, str2, i);
            m22033bB.setOnClickListener(new View.OnClickListener() { // from class: e.a.e.c.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                    Runnable runnable2 = runnable;
                    String str3 = str;
                    ViewActionEvent.ContactDetailsAction contactDetailsAction2 = contactDetailsAction;
                    Objects.requireNonNull(view$OnClickListenerC13135s1);
                    if (runnable2 == null) {
                        C12864a2.m22560d0(view$OnClickListenerC13135s1.f38200s, str3, null);
                        view$OnClickListenerC13135s1.m21920TA(2131887876);
                    } else {
                        runnable2.run();
                    }
                    view$OnClickListenerC13135s1.f38188o.mo13274b(ViewActionEvent.m35942e("detailView", contactDetailsAction2));
                }
            });
            view = m22033bB;
        } else {
            view = m22032cB(getString(2131888770, new Object[]{str2}), i, PremiumLaunchContext.CONTACT_DETAILS_SOCIAL);
        }
        viewGroup.addView(view);
    }

    /* renamed from: eB */
    public final void m22030eB() {
        this.f38108G1.clear();
        Contact contact = this.f38105F0;
        Context context = getContext();
        if (contact == null || context == null) {
            AbstractC13291o0 abstractC13291o0 = this.f38117K0;
            List<k<String, Integer>> m22024lB = m22024lB();
            C13165w1 c13165w1 = new C13165w1(this);
            boolean z = this.f38165f1;
            Objects.requireNonNull(abstractC13291o0);
            abstractC13291o0.m21950a(m22024lB, "OTHER", contact, "detailView", "block", true, FiltersContract.Filters.WildCardType.NONE, c13165w1, z);
            return;
        }
        String m35489x = contact.m35489x();
        List<String> m15559x1 = C17891a1.C17902k.m15559x1(contact.m35557M());
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) m15559x1).iterator();
        while (it.hasNext()) {
            arrayList.add(new NumberAndType((String) it.next(), PhoneNumberType.UNKNOWN_NUMBER_TYPE));
        }
        startActivityForResult(SpamCategoriesActivity.m34733pa(context, new SpamCategoryRequest(m35489x, this.f38165f1, arrayList, FeedbackSource.BLOCK_FLOW)), 41);
    }

    /* renamed from: fB */
    public final void m22029fB(Number number, int i) {
        String m19825a = TrueApp.m36032b0().mo10154s().mo12504W7().m19825a(number, false);
        if (m19825a == null || C8574c0.m28353f(m19825a)) {
            return;
        }
        this.f38188o.mo13274b(ViewActionEvent.m35944c("detailView", ViewActionEvent.CallSubAction.BUTTON.getValue()));
        l.e("detailView", "analyticsContext");
        InitiateCallHelper.CallContextOption.ShowOnBoarded showOnBoarded = InitiateCallHelper.CallContextOption.ShowOnBoarded.a;
        this.f38220y1.m35744b(new InitiateCallHelper.CallOptions(m19825a, "detailView", this.f38105F0.m35489x(), Integer.valueOf(i), false, false, null, false, showOnBoarded));
    }

    /* renamed from: gB */
    public final void m22028gB(boolean z) {
        this.f38188o.mo13274b(ViewActionEvent.m35944c("detailView", ViewActionEvent.CallSubAction.HEADER.getValue()));
        h hVar = this.f38200s;
        Contact contact = this.f38105F0;
        c.RA(hVar, contact, contact.m35557M(), true, true, z, false, false, InitiateCallHelper.CallContextOption.ShowOnBoarded.a, "detailViewHeader");
    }

    /* renamed from: iB */
    public final boolean m22027iB() {
        C20592g c20592g = this.f38138R0;
        return c20592g.f57922f3.m10941a(c20592g, C20592g.f57695p6[213]).isEnabled();
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x080b  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x08b9  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x08d5  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0ae9  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0af3  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0b0c  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0cd1  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0d68  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0e66  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0e79  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0ec7  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0fb3  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0fbc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0294  */
    /* JADX WARN: Type inference failed for: r0v693, types: [android.widget.FrameLayout, com.truecaller.ui.view.VerticalNestedScrollView] */
    /* renamed from: jB */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22026jB(final com.truecaller.data.entity.Contact r13, final boolean r14) {
        /*
            Method dump skipped, instructions count: 4219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1.m22026jB(com.truecaller.data.entity.Contact, boolean):void");
    }

    /* renamed from: kB */
    public final String m22025kB() {
        String m35553O = this.f38105F0.m35553O();
        String str = m35553O;
        if (!TextUtils.isEmpty(m35553O)) {
            if (w3.c.a.a.a.h.b(m35553O, "yelp")) {
                int indexOf = m35553O.indexOf("(");
                int indexOf2 = m35553O.indexOf(")");
                return indexOf2 <= indexOf ? DtbConstants.NETWORK_TYPE_UNKNOWN : m35553O.substring(indexOf + 1, indexOf2).trim();
            }
            str = m35553O;
            if (w3.c.a.a.a.h.b(m35553O, "zomato")) {
                str = "Zomato";
            }
        }
        return str;
    }

    /* renamed from: lB */
    public final List<k<String, Integer>> m22024lB() {
        List<Number> m35557M = this.f38105F0.m35557M();
        ArrayList arrayList = new ArrayList(m35557M.size());
        for (Number number : m35557M) {
            String m35479e = number.m35479e();
            if (!TextUtils.isEmpty(m35479e)) {
                arrayList.add(new k(m35479e, C17891a1.C17902k.m15605i0(this.f38105F0, null)));
            }
        }
        return arrayList;
    }

    /* renamed from: mB */
    public final int m22023mB(View view) {
        if (view.getParent() == view.getRootView()) {
            return view.getTop();
        }
        return m22023mB((View) view.getParent()) + view.getTop();
    }

    /* renamed from: nB */
    public final Context m22022nB() {
        return this.f38170i ^ true ? C17422k.m16050u0(getLayoutInflater(), true).getContext() : getContext();
    }

    /* renamed from: oB */
    public final Contact m22021oB(Contact contact) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Object obj = f38089W1;
        if (isAdded() && contact != null) {
            boolean z5 = true;
            List asList = Arrays.asList(ActionSource.BLACKLISTED_NUMBER, ActionSource.BLACKLISTED_COUNTRY, ActionSource.BLACKLISTED_WILDCARD, ActionSource.NON_PHONEBOOK, ActionSource.NEIGHBOUR_SPOOFING, ActionSource.INDIAN_REGISTERED_TELEMARKETER, ActionSource.FOREIGN);
            this.f38159Z0 = false;
            boolean z6 = false;
            boolean z7 = false;
            boolean z8 = false;
            int i = 0;
            boolean z9 = false;
            for (Number number : contact.m35557M()) {
                number.setTag(null);
                String m35479e = number.m35479e();
                if (!TextUtils.isEmpty(m35479e)) {
                    Collection<FilterMatch> collection = this.f38108G1.get(m35479e);
                    Collection<FilterMatch> collection2 = collection;
                    if (collection == null) {
                        collection2 = this.f38120L0.mo19586j(number.m35473l(), m35479e, z5);
                        this.f38108G1.put(m35479e, collection2);
                    }
                    Iterator<FilterMatch> it = collection2.iterator();
                    while (true) {
                        z = z8;
                        if (!it.hasNext()) {
                            break;
                        }
                        FilterMatch next = it.next();
                        FilterAction filterAction = next.f10453b;
                        FilterAction filterAction2 = FilterAction.FILTER_BLACKLISTED;
                        if (filterAction != filterAction2 || !asList.contains(next.f10454c)) {
                            if (next.f10454c != ActionSource.TOP_SPAMMER) {
                                z4 = z9;
                                z3 = z6;
                                z2 = z7;
                                if (next.f10453b == FilterAction.ALLOW_WHITELISTED) {
                                    z = true;
                                    break;
                                }
                            } else {
                                if (next.f10453b == filterAction2) {
                                    number.setTag(obj);
                                }
                                int m35472m = number.m35472m();
                                int i2 = next.f10457f;
                                if (m35472m < i2) {
                                    number.m35463x(i2);
                                }
                                z2 = true;
                                z4 = z9;
                                z3 = z6;
                            }
                        } else {
                            if (next.f10458g != FiltersContract.Filters.WildCardType.NONE) {
                                z6 = true;
                            } else {
                                z9 = true;
                            }
                            number.setTag(obj);
                            z4 = z9;
                            z3 = z6;
                            z2 = z7;
                        }
                        z9 = z4;
                        z6 = z3;
                        z7 = z2;
                    }
                    int i3 = i;
                    if (z) {
                        number.setTag(null);
                        i3 = i + 1;
                        z9 = false;
                        z6 = false;
                        z7 = false;
                    }
                    String m35473l = number.m35473l();
                    if (m35473l == null) {
                        m35473l = m35479e;
                    }
                    if (!this.f38159Z0 && C17422k.m16042z(this.f38103E0.mo12335j(), m35473l)) {
                        this.f38159Z0 = true;
                    }
                    z5 = true;
                    i = i3;
                    z8 = z;
                }
            }
            this.f38153W0 = (z9 || z6 || (z7 && this.f38103E0.mo11655T().mo19547u())) ? z5 : false;
            if (i <= 0 || i != contact.m35557M().size()) {
                z5 = false;
            }
            this.f38155X0 = z5;
            this.f38157Y0 = z7;
            this.f38160a1 = contact.m35508l0();
        }
        return contact;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        getClass().getSimpleName();
        if (i != 21 || this.f38105F0 == null) {
            if (i == 41 && this.f38105F0 != null) {
                SpamCategoryResult spamCategoryResult = intent != null ? (SpamCategoryResult) intent.getParcelableExtra("result") : null;
                if (i2 == -1 && spamCategoryResult != null) {
                    AbstractC13291o0 abstractC13291o0 = this.f38117K0;
                    List<k<String, Integer>> m22024lB = m22024lB();
                    Contact contact = this.f38105F0;
                    C13165w1 c13165w1 = new C13165w1(this);
                    Objects.requireNonNull(abstractC13291o0);
                    String str = spamCategoryResult.f14924b;
                    if (spamCategoryResult.f14928f && !w3.c.a.a.a.h.j(str)) {
                        TrueApp.m36032b0().mo10154s().mo12497X0().mo11854a().mo20028a(contact, str, spamCategoryResult.f14925c ? 2 : 1).mo11828g();
                    }
                    abstractC13291o0.m21949b(m22024lB, "OTHER", str, "detailView", true, FiltersContract.Filters.WildCardType.NONE, FiltersContract.Filters.EntityType.fromIsBusiness(spamCategoryResult.f14925c), C2752R.string.BlockAddSuccess, spamCategoryResult.f14923a, c13165w1);
                    abstractC13291o0.mo21948d(str);
                    c13165w1.m22002a(true);
                }
            }
        } else if (i2 != -1) {
            new AsyncTaskC13138c();
        } else if (intent == null || intent.getData() == null) {
            return;
        } else {
            new AsyncTaskC13137b(this.f38105F0, intent.getData());
        }
        View$OnClickListenerC13135s1.super.onActivityResult(i, i2, intent);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13099j2, p193e.p194a.p682e.AbstractC13329x0
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f38103E0 = ((AbstractC21187w1) activity.getApplicationContext()).mo10154s();
        this.f38200s = (h) activity;
        try {
            this.f38130O1 = (AbstractC13151o) activity;
            try {
                this.f38133P1 = (AbstractC13147k) activity;
            } catch (ClassCastException e) {
                throw new ClassCastException(requireActivity().toString() + " must implement OnBlockStateChangeListener");
            }
        } catch (ClassCastException e2) {
            throw new ClassCastException(requireActivity().toString() + " must implement ThemeChangeListener");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ViewActionEvent viewActionEvent;
        ReferralManager referralManager;
        if (this.f38105F0 == null) {
            return;
        }
        int id = view.getId();
        if (id == 2131366217) {
            startActivity(C17422k.m16061p(this.f38200s, this.f38105F0, 2, 4, this.f38138R0));
            if (!this.f38105F0.f11508c.isEmpty()) {
                this.f38188o.mo13274b(ViewActionEvent.m35941f("detailView", ViewActionEvent.ContactDetailsAction.TAG, ViewActionEvent.ContactDetailsSubAction.EDIT));
            } else {
                this.f38188o.mo13274b(ViewActionEvent.m35941f("detailView", ViewActionEvent.ContactDetailsAction.TAG, ViewActionEvent.ContactDetailsSubAction.ADD));
            }
        } else if (id != 2131362111 && id != 2131366135 && id != 2131366127) {
            if (id != 2131365388 || (referralManager = this.f38190o1) == null) {
                return;
            }
            referralManager.mo13049sx(ReferralManager.ReferralLaunchContext.CONTACT_DETAILS, this.f38105F0);
        } else {
            startActivity(NameSuggestionActivity.m34625ra(this.f38200s, this.f38105F0, "details"));
            if (id == 2131362111) {
                l.e("detailView", AnalyticsConstants.CONTEXT);
                l.e("addName", "action");
                viewActionEvent = new ViewActionEvent("addName", null, "detailView");
            } else {
                viewActionEvent = id == 2131366127 ? ViewActionEvent.m35945b("detailView", ViewActionEvent.BusinessProfilesAction.NOT_BUSINESS) : ViewActionEvent.f9985d.m35924n("detailView");
            }
            this.f38188o.mo13274b(viewActionEvent);
        }
    }

    public void onCreateOptionsMenu(final Menu menu, MenuInflater menuInflater) {
        if (this.f38105F0 == null || !m21921SA() || menuInflater == null || menu == null) {
            return;
        }
        boolean m13811F = C19231g0.m13811F(this.f38105F0.m35496t(), 3);
        boolean mo13825h = this.f38103E0.mo11647c().mo13825h("android.permission.WRITE_CONTACTS");
        boolean z = !this.f38159Z0 && !this.f38169h1 && SourceType.Contacts == this.f38126N0 && !this.f38167g1;
        menuInflater.inflate(C2752R.C2756menu.details_menu, menu);
        menu.findItem(C2752R.C2754id.action_video_call).setVisible(this.f38217x1.mo14094b());
        menu.findItem(2131361956).setVisible(m13811F);
        menu.findItem(2131361954).setVisible(this.f38105F0.m35501q0());
        menu.findItem(2131361955).setVisible(this.f38105F0.m35501q0());
        menu.findItem(2131362022).setVisible(!this.f38105F0.m35488x0());
        menu.findItem(C2752R.C2754id.action_remove_contact).setVisible(this.f38159Z0 || this.f38160a1);
        menu.findItem(C2752R.C2754id.action_block).setVisible(false);
        menu.findItem(2131362013).setVisible(mo13825h && !this.f38159Z0);
        menu.findItem(C2752R.C2754id.action_edit).setVisible(mo13825h && this.f38159Z0);
        menu.findItem(C2752R.C2754id.action_remove_identified).setVisible(z);
        menu.findItem(C2752R.C2754id.action_hide_video_caller_id).setTitle(getString(2131890226, new Object[]{getString(2131890282)}));
        this.f38148U1.mo17850R(this.f38105F0.m35495t0(), this.f38105F0.m35521e0(), new s1.z.b.l() { // from class: e.a.e.c.l
            /* renamed from: d */
            public final Object m22056d(Object obj) {
                MenuItem findItem;
                View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                Menu menu2 = menu;
                Boolean bool = (Boolean) obj;
                if (!view$OnClickListenerC13135s1.m21921SA() || (findItem = menu2.findItem(C2752R.C2754id.action_hide_video_caller_id)) == null) {
                    return null;
                }
                findItem.setVisible(bool.booleanValue());
                return null;
            }
        });
        MenuItem findItem = menu.findItem(C2752R.C2754id.action_favorite);
        if (!this.f38159Z0) {
            findItem.setVisible(false);
            return;
        }
        findItem.setTitle(this.f38105F0.m35503o0() ? 2131886445 : 2131886439);
        findItem.setVisible(true);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(true);
        return layoutInflater.inflate(C2752R.layout.view_details, viewGroup, false);
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f38114J0 != null) {
            this.f38200s.getContentResolver().unregisterContentObserver(this.f38114J0);
            this.f38114J0 = null;
        }
        if (m22027iB()) {
            this.f38101D1 = null;
            this.f38098C1.cancel();
        } else {
            AbstractC15211m abstractC15211m = this.f38139R1;
            if (abstractC15211m != null) {
                ((i) abstractC15211m).a.m19085h(((i) abstractC15211m).b, abstractC15211m);
                this.f38139R1 = null;
            }
        }
        this.f38115J1.removeCallbacks(this.f38118K1);
        this.f38210v0.removeCallbacks(this.f38121L1);
        this.f38222z0.removeCallbacks(this.f38124M1);
        DialogC12697c3 dialogC12697c3 = this.f38132P0;
        if (dialogC12697c3 != null) {
            dialogC12697c3.dismiss();
            this.f38132P0 = null;
        }
        this.f38151V1.reset();
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onDetach() {
        super.onDetach();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!View$OnClickListenerC13135s1.super.onOptionsItemSelected(menuItem) && this.f38105F0 != null) {
            int itemId = menuItem.getItemId();
            if (itemId == 16908332) {
                requireActivity().onBackPressed();
                return true;
            } else if (itemId == 2131362034) {
                m22028gB(true);
                return true;
            } else {
                String str = null;
                if (itemId == 2131362022) {
                    AssertionUtil.isTrue(!this.f38105F0.m35488x0(), new String[0]);
                    if (this.f38105F0.m35488x0() || this.f38200s == null) {
                        return true;
                    }
                    this.f38188o.mo13274b(ViewActionEvent.m35942e("detailView", ViewActionEvent.ContactDetailsAction.SHARE));
                    h hVar = this.f38200s;
                    AbstractC8597j0 mo12392f0 = this.f38103E0.mo12392f0();
                    Contact contact = this.f38105F0;
                    StringBuilder sb = new StringBuilder();
                    if (w3.c.a.a.a.h.m(contact.m35491w())) {
                        sb.append(contact.m35491w());
                        sb.append("\r\n");
                    }
                    sb.append(contact.m35498s());
                    sb.append("\r\n");
                    if (w3.c.a.a.a.h.m(contact.m35513i())) {
                        sb.append(contact.m35513i());
                        sb.append("\r\n");
                    }
                    sb.append(mo12392f0.mo28262a(contact.m35498s()));
                    sb.append("\r\n\r\n");
                    sb.append(hVar.getString(C2752R.string.StrSignature));
                    C8582g0.m28323R(hVar, hVar.getString(C2752R.string.ShareContactTitle), hVar.getString(C2752R.string.ShareContactText), sb.toString(), null);
                    return true;
                } else if (itemId == 2131361956) {
                    m21923QA(this.f38105F0.m35496t());
                    this.f38188o.mo13274b(ViewActionEvent.m35941f("detailView", ViewActionEvent.ContactDetailsAction.COPY, ViewActionEvent.ContactDetailsSubAction.NUMBER));
                    return true;
                } else if (itemId == 2131361954) {
                    String m35566G = this.f38105F0.m35566G();
                    String m35571C = this.f38105F0.m35571C();
                    String m35496t = this.f38105F0.m35496t();
                    String m35513i = this.f38105F0.m35513i();
                    String m35515h = this.f38105F0.m35515h();
                    if (!TextUtils.isEmpty(m35515h)) {
                        str = C22128a.m8725C2("\"", m35515h, "\"");
                    }
                    m21922RA(C19231g0.m13813D(", ", m35566G, m35571C, m35496t, m35513i, str));
                    this.f38188o.mo13274b(ViewActionEvent.m35941f("detailView", ViewActionEvent.ContactDetailsAction.COPY, ViewActionEvent.ContactDetailsSubAction.CONTACT));
                    return true;
                } else if (itemId == 2131361955) {
                    m21922RA(this.f38105F0.m35491w());
                    this.f38188o.mo13274b(ViewActionEvent.m35941f("detailView", ViewActionEvent.ContactDetailsAction.COPY, ViewActionEvent.ContactDetailsSubAction.NAME));
                    return true;
                } else if (itemId == 2131362011) {
                    h hVar2 = this.f38200s;
                    if (hVar2 == null) {
                        return true;
                    }
                    g$a g_a = new g$a(hVar2);
                    g_a.m3656m(C2752R.string.CallerRemoveContactTitle);
                    g_a.m3664e(C2752R.string.CallerRemoveContactDetails);
                    g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.c.b1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                            Objects.requireNonNull(view$OnClickListenerC13135s1);
                            new View$OnClickListenerC13135s1.AsyncTaskC13149m(view$OnClickListenerC13135s1.f38200s, view$OnClickListenerC13135s1.f38105F0);
                        }
                    });
                    g_a.m3662g(2131887867, null);
                    g_a.m3652q();
                    this.f38188o.mo13274b(ViewActionEvent.m35943d("detailView", ViewActionEvent.ContactAction.DELETE));
                    return true;
                } else if (itemId == 2131362017) {
                    h hVar3 = this.f38200s;
                    Contact contact2 = this.f38105F0;
                    Address m35500r = contact2.m35500r();
                    String countryCode = m35500r != null ? m35500r.getCountryCode() : "";
                    String str2 = countryCode;
                    if (TextUtils.isEmpty(countryCode)) {
                        Number m35493v = contact2.m35493v();
                        str2 = countryCode;
                        if (m35493v != null) {
                            str2 = m35493v.getCountryCode();
                        }
                    }
                    String m35491w = contact2.m35491w();
                    String str3 = m35491w;
                    if (TextUtils.isEmpty(m35491w)) {
                        Number m35493v2 = contact2.m35493v();
                        if (m35493v2 != null) {
                            m35491w = m35493v2.m35477g();
                        }
                        str3 = m35491w;
                        if (TextUtils.isEmpty(m35491w)) {
                            str3 = contact2.m35498s();
                        }
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        try {
                            String str4 = "https://www.google.com/search?q=" + URLEncoder.encode(str3, StringConstant.UTF8);
                            String str5 = str4;
                            if (str2 != null) {
                                str5 = str4 + "&cr=country" + str2;
                            }
                            C12864a2.m22575S(hVar3, str5, false);
                        } catch (UnsupportedEncodingException e) {
                            AssertionUtil.reportThrowableButNeverCrash(e);
                        }
                    }
                    this.f38188o.mo13274b(ViewActionEvent.m35941f("detailView", ViewActionEvent.ContactDetailsAction.BROWSER, ViewActionEvent.ContactDetailsSubAction.SEARCH));
                    return true;
                } else if (itemId == 2131361973) {
                    boolean z = !this.f38105F0.m35503o0();
                    this.f38105F0.m35549Q0(z);
                    this.f38200s.supportInvalidateOptionsMenu();
                    AbstractC15558b.m18688b(new AsyncTaskC13144h(this.f38200s.getApplicationContext(), this.f38105F0, z), new Void[0]);
                    Toast.makeText((Context) this.f38200s, (CharSequence) getString(z ? 2131886423 : 2131886424, new Object[]{this.f38105F0.m35489x()}), 0).show();
                    return true;
                } else if (itemId == 2131362013) {
                    Fragment m14189QA = C19047j1.m14189QA(this.f38105F0, new C19047j1.AbstractC19048a() { // from class: e.a.e.c.c1
                        @Override // p193e.p194a.p1114o5.C19047j1.AbstractC19048a
                        /* renamed from: a */
                        public final void mo10489a(Contact contact3, byte[] bArr) {
                            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                            Objects.requireNonNull(view$OnClickListenerC13135s1);
                            C8613t.m28200l(view$OnClickListenerC13135s1, C19090q.m14140d(contact3, bArr), 21);
                        }
                    });
                    C26907a c26907a = new C26907a(getFragmentManager());
                    c26907a.mo1122k(0, m14189QA, "contact_save", 1);
                    c26907a.mo1126g();
                    this.f38188o.mo13274b(ViewActionEvent.m35943d("detailView", ViewActionEvent.ContactAction.SAVE));
                    return true;
                } else if (itemId == 2131361970) {
                    C21849a c21849a = C21849a.f60731b;
                    C21849a.m8989a(C12864a2.m22592B(this.f38105F0, true));
                    C21849a.m8989a(C12864a2.m22592B(this.f38105F0, false));
                    C12864a2.m22576R(this.f38200s, this, this.f38105F0, true, 21);
                    this.f38188o.mo13274b(ViewActionEvent.m35943d("detailView", ViewActionEvent.ContactAction.EDIT));
                    return true;
                } else if (itemId == 2131361940) {
                    m22030eB();
                    return true;
                } else if (itemId != 2131362012) {
                    if (itemId != 2131361978) {
                        return false;
                    }
                    if (this.f38105F0 == null) {
                        return true;
                    }
                    this.f38148U1.mo17859I(getChildFragmentManager(), this.f38105F0.m35489x(), this.f38105F0.m35521e0(), new s1.z.b.l() { // from class: e.a.e.c.a0
                        /* renamed from: d */
                        public final Object m22098d(Object obj) {
                            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                            Boolean bool = (Boolean) obj;
                            if (view$OnClickListenerC13135s1.m21921SA() || bool.booleanValue()) {
                                view$OnClickListenerC13135s1.f38200s.invalidateOptionsMenu();
                                return null;
                            }
                            return null;
                        }
                    });
                    return true;
                } else {
                    h hVar4 = this.f38200s;
                    if (hVar4 == null) {
                        return true;
                    }
                    g$a g_a2 = new g$a(hVar4);
                    g_a2.m3656m(C2752R.string.CallerRemoveIdentifiedContactTitle);
                    g_a2.m3664e(C2752R.string.CallerRemoveContactIdentifiedDetails);
                    g_a2.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.c.w0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                            Objects.requireNonNull(view$OnClickListenerC13135s1);
                            new View$OnClickListenerC13135s1.AsyncTaskC13150n(view$OnClickListenerC13135s1.f38105F0.getTcId(), ((C20399t1.C20416k) AbstractC17399l2.f48744a.m16142a().mo11182b()).m11158a());
                        }
                    });
                    g_a2.m3662g(2131887867, null);
                    g_a2.m3652q();
                    return true;
                }
            }
        }
        return true;
    }

    public void onPrepareOptionsMenu(Menu menu) {
        View$OnClickListenerC13135s1.super.onPrepareOptionsMenu(menu);
        m22018rB();
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onResume() {
        this.f38205t1 = null;
        super.onResume();
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onStart() {
        super.onStart();
        this.f38184m1 = new C13142f(this.f38126N0, this.f38103E0.mo12776C4());
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onStop() {
        super.onStop();
        C13142f c13142f = this.f38184m1;
        Contact contact = this.f38105F0;
        boolean z = this.f38172i1;
        if (c13142f.f38233c) {
            return;
        }
        boolean z2 = contact != null && contact.m35514h0() && contact.m35557M().get(0).m35479e().matches("([A-Z]){6}");
        AbstractC19462a abstractC19462a = c13142f.f38232b;
        String str = c13142f.f38231a;
        l.e("detailView", "viewId");
        abstractC19462a.mo13274b(new C19597a("detailView", str, s1.u.i.W(new k[]{new k("SpamStatsViewed", Boolean.valueOf(z)), new k("isNumber6Alphabets", Boolean.valueOf(z2))})));
        c13142f.f38233c = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f38095B1 = this.f38103E0.mo12356h7();
        this.f38151V1 = this.f38103E0.mo12480Y4();
        this.f38098C1 = this.f38103E0.mo12226r2();
        this.f38138R0 = this.f38103E0.mo11648b();
        this.f38141S0 = this.f38103E0.mo12802A6();
        this.f38129O0 = this.f38103E0.mo12777C3();
        this.f38092A1 = this.f38103E0.mo12402e4();
        this.f38176k = new C13052a(getActivity().getApplicationContext());
        this.f38144T0 = this.f38103E0.mo12754E();
        this.f38103E0.mo12157w3();
        this.f38148U1 = this.f38103E0.mo12134y();
        this.f38147U0 = this.f38103E0.mo12240q2();
        ReferralManager m13085OA = C19651l0.m13085OA(getChildFragmentManager(), "ReferralManagerImpl");
        this.f38190o1 = m13085OA;
        this.f38193p1 = m13085OA != null && ((C19651l0) m13085OA).mo13070Ef(ReferralManager.ReferralLaunchContext.CONTACT_DETAILS);
        this.f38203t = view.findViewById(C2752R.C2754id.detailsContainer);
        this.f38209v = (FrameLayout) view.findViewById(C2752R.C2754id.view_details_header_container);
        this.f38212w = (DetailsActionBar) view.findViewById(C2752R.C2754id.actionBar);
        this.f38215x = view.findViewById(C2752R.C2754id.buttonsSeparator);
        Context requireContext = requireContext();
        Context requireContext2 = requireContext();
        Object obj = C26467a.f74235a;
        this.f38100D0 = C8605o.m28233g(requireContext, 2131232197, C26467a.C26471d.m1787a(requireContext2, C2752R.color.premium_required_icon_tint_all_themes));
        this.f38218y = (ViewGroup) view.findViewById(C2752R.C2754id.callerMainUserInfoContainer);
        this.f38221z = (ViewGroup) view.findViewById(C2752R.C2754id.callerSwishOuterContainer);
        this.f38093B = (ViewGroup) view.findViewById(C2752R.C2754id.callerThirdPartyContainer);
        this.f38099D = view.findViewById(C2752R.C2754id.callerThirdPartyOuterContainer);
        this.f38090A = (ViewGroup) view.findViewById(C2752R.C2754id.callerDetailedUserInfoContainer);
        this.f38096C = view.findViewById(C2752R.C2754id.callerDetailedUserInfoOuterContainer);
        this.f38102E = (TextView) view.findViewById(C2752R.C2754id.identified_by_truecaller);
        this.f38113J = view.findViewById(C2752R.C2754id.jobContainer);
        this.f38116K = (TextView) view.findViewById(C2752R.C2754id.job);
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.jobPremiumRequired);
        this.f38119L = textView;
        textView.setCompoundDrawablesWithIntrinsicBounds(this.f38100D0, (Drawable) null, (Drawable) null, (Drawable) null);
        this.f38122M = (TextView) view.findViewById(C2752R.C2754id.note);
        this.f38125N = view.findViewById(C2752R.C2754id.userBioContainer);
        this.f38128O = view.findViewById(C2752R.C2754id.aboutUserContainer);
        this.f38131P = view.findViewById(C2752R.C2754id.noteContainer);
        this.f38134Q = (TextView) view.findViewById(C2752R.C2754id.aboutUser);
        TextView textView2 = (TextView) view.findViewById(C2752R.C2754id.aboutPremiumRequired);
        this.f38137R = textView2;
        textView2.setCompoundDrawablesWithIntrinsicBounds(this.f38100D0, (Drawable) null, (Drawable) null, (Drawable) null);
        this.f38140S = (TextView) view.findViewById(2131364811);
        this.f38143T = (AdsSwitchView) view.findViewById(C2752R.C2754id.detailsAdOuterContainer);
        View findViewById = view.findViewById(C2752R.C2754id.referral_view);
        this.f38152W = findViewById;
        findViewById.setOnClickListener(this);
        this.f38158Z = view.findViewById(C2752R.C2754id.suggestBusinessNameContainer);
        this.f38166g0 = (CardView) view.findViewById(C2752R.C2754id.businessCardView);
        this.f38168h0 = (RecyclerView) view.findViewById(2131365154);
        this.f38171i0 = (TextView) view.findViewById(C2752R.C2754id.aboutBusinessTextView);
        this.f38174j0 = (TextView) view.findViewById(C2752R.C2754id.businessContactTextView);
        this.f38177k0 = view.findViewById(C2752R.C2754id.openHoursCardView);
        this.f38180l0 = (RelativeLayout) view.findViewById(C2752R.C2754id.openHoursRecyclerViewContainer);
        this.f38183m0 = (RecyclerView) view.findViewById(2131365024);
        this.f38186n0 = (TintedImageView) view.findViewById(C2752R.C2754id.expandOpenHoursButton);
        ShineView shineView = (ShineView) view.findViewById(C2752R.C2754id.gold_shine);
        this.f38192p0 = shineView;
        shineView.setLifecycleOwner(this);
        this.f38195q0 = view.findViewById(2131365201);
        this.f38198r0 = view.findViewById(2131366164);
        this.f38201s0 = (ConstraintLayout) view.findViewById(C2752R.C2754id.spamStats);
        this.f38204t0 = view.findViewById(C2752R.C2754id.spamStatsVerticalDivider);
        this.f38207u0 = view.findViewById(C2752R.C2754id.spamStatsHorizontalDivider);
        this.f38210v0 = (LottieAnimationView) view.findViewById(C2752R.C2754id.spamStatsCallActivityAnimation);
        this.f38213w0 = (TextView) view.findViewById(C2752R.C2754id.spamStatsCallActivityContent);
        this.f38216x0 = (TextView) view.findViewById(C2752R.C2754id.spamStatsSpamReportsContent);
        this.f38219y0 = (ImageView) view.findViewById(C2752R.C2754id.spamStatsSpamReportsArrowImage);
        this.f38222z0 = (TextView) view.findViewById(C2752R.C2754id.spamStatsSpamReportsPercentage);
        this.f38091A0 = (TextView) view.findViewById(C2752R.C2754id.spamStatsUsuallyCallsContent);
        this.f38094B0 = (ImageView) view.findViewById(C2752R.C2754id.spamStatsUsuallyCallsImage);
        this.f38097C0 = (VerticalNestedScrollView) view.findViewById(C2752R.C2754id.parent_nested_scrollview);
        this.f38194q = view.findViewById(C2752R.C2754id.premiumDetailsHidden);
        this.f38197r = view.findViewById(C2752R.C2754id.callerMainUserInfoOuterContainer);
        this.f38110H1 = C19291g.m13612L(this.f38200s, 2130970409);
        Toolbar toolbar = (Toolbar) view.findViewById(2131366512);
        this.f38156Y = toolbar;
        this.f38200s.setSupportActionBar(toolbar);
        this.f38145T1 = new C13129q1(m22022nB(), this.f38138R0.m10955m().isEnabled(), new C19235i0(m22022nB()));
        this.f38154X = view.findViewById(C2752R.C2754id.app_bar);
        this.f38146U = (GoldShineTextView) view.findViewById(C2752R.C2754id.toolbar_title);
        this.f38212w.setDetailsActionbarCallback(new C13107l0(this));
        m22011yB();
        if (this.f38114J0 == null) {
            this.f38114J0 = new C13143g();
            this.f38200s.getContentResolver().registerContentObserver(C17891a1.f50888a, true, this.f38114J0);
        }
        this.f38212w.setEventListener(this);
        this.f38120L0 = this.f38103E0.mo12670K2();
        this.f38123M0 = this.f38103E0.mo12217s();
        this.f38196q1 = this.f38103E0.mo12242q0();
        this.f38202s1 = this.f38103E0.mo12471Z0();
        this.f38135Q0 = this.f38103E0.mo12419d0();
        this.f38199r1 = this.f38103E0.mo12119z1().mo11845d();
        this.f38211v1 = this.f38103E0.mo12296m();
        this.f38214w1 = this.f38103E0.mo12572R6();
        this.f38220y1 = this.f38103E0.mo12389f3();
        this.f38217x1 = this.f38103E0.mo12170v4();
        this.f38117K0 = new C13139d(this, this.f38120L0);
        this.f38223z1 = this.f38103E0.mo12679J6();
        m22010zB();
        Intent intent = this.f38200s.getIntent();
        this.f38150V0 = false;
        this.f38126N0 = SourceType.values()[intent.getIntExtra("ARG_SOURCE_TYPE", 0)];
        this.f38161b1 = intent.getBooleanExtra("SHOULD_SAVE", false);
        intent.removeExtra("SHOULD_SAVE");
        this.f38162c1 = intent.getBooleanExtra("SHOULD_FETCH_MORE_IF_NEEDED", false);
        intent.removeExtra("SHOULD_FETCH_MORE_IF_NEEDED");
        intent.getBooleanExtra("SHOULD_FORCE_SEARCH", false);
        intent.removeExtra("SHOULD_FORCE_SEARCH");
        if (intent.hasExtra("ARG_CONTACT")) {
            Contact contact = (Contact) intent.getParcelableExtra("ARG_CONTACT");
            if (contact != null) {
                this.f38162c1 = this.f38162c1 || contact.getTcId() == null;
                Number m14109d = C19103t.m14109d(contact);
                if (m14109d != null) {
                    this.f38109H0 = m14109d.m35473l();
                    this.f38107G0 = m14109d.m35479e();
                }
                m22021oB(contact);
                m22026jB(contact, false);
                new AsyncTaskC13153q(contact);
            }
        } else if (intent.hasExtra("ARG_TC_ID")) {
            String stringExtra = intent.getStringExtra("ARG_TC_ID");
            String stringExtra2 = intent.getStringExtra("NAME");
            this.f38162c1 = this.f38162c1 || stringExtra == null;
            this.f38107G0 = intent.getStringExtra("NORMALIZED_NUMBER");
            this.f38109H0 = intent.getStringExtra("RAW_NUMBER");
            this.f38111I0 = intent.getStringExtra("COUNTRY_CODE");
            new AsyncTaskC13145i(stringExtra, stringExtra2, this.f38107G0, this.f38109H0, this.f38111I0);
        } else {
            m21920TA(2131886801);
            this.f38200s.finish();
        }
        this.f38112I1 = intent.getIntExtra("SEARCH_TYPE", 4);
        this.f38173j = intent.getStringExtra("INCOMING_CALL_CONTEXT_ID");
        this.f38178k1 = intent.getBooleanExtra("IS_HIDDEN_NUMBER", false);
        this.f38181l1 = intent.getBooleanExtra("IS_BUSINESS_IM", false);
        if (SourceType.CallNotification == this.f38126N0) {
            C17715r.C17717b m15833a = C17715r.m15833a();
            m15833a.m15831b(AnalyticsConstants.CLICKED);
            String str = this.f38173j;
            if (str != null) {
                m15833a.m15830c(str);
            }
            this.f38123M0.mo11854a().mo13111a(m15833a.build());
        }
        this.f38198r0.setColorSchemeColors(new int[]{C19291g.m13612L(m22022nB(), 2130970017)});
        this.f38198r0.setProgressBackgroundColorSchemeColor(C19291g.m13612L(m22022nB(), 2130970007));
        this.f38198r0.setOnRefreshListener(new SwipeRefreshLayout$h() { // from class: e.a.e.c.n
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout$h
            /* renamed from: a */
            public final void mo10874a() {
                boolean z;
                View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                Contact contact2 = view$OnClickListenerC13135s1.f38127N1;
                if (contact2 == null) {
                    z = false;
                } else {
                    z = view$OnClickListenerC13135s1.f38144T0.m28259b(contact2.m35540X(), TimeUnit.HOURS.toMillis(1L));
                }
                AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("DetailsViewPullToRefresh");
                c19504b.m13262e("SearchHappened", z);
                view$OnClickListenerC13135s1.f38103E0.mo12776C4().mo13271e(c19504b.m13266a());
                if (z) {
                    view$OnClickListenerC13135s1.m22014vB(view$OnClickListenerC13135s1.f38107G0, view$OnClickListenerC13135s1.f38109H0, view$OnClickListenerC13135s1.f38111I0, true);
                } else {
                    view$OnClickListenerC13135s1.f38198r0.setRefreshing(false);
                }
            }
        });
    }

    /* renamed from: pB */
    public final boolean m22020pB(Contact contact, boolean z) {
        return !this.f38155X0 && (contact.m35574A0() || this.f38153W0 || z);
    }

    /* renamed from: qB */
    public final void m22019qB() {
        if (this.f38187n1 || this.f38139R1 != null) {
            return;
        }
        C15222s.C15223a c15223a = new C15222s.C15223a(null, 1);
        c15223a.m19040c(this.f38103E0.mo12430c4().m19081a("callDetailsLargeUnifiedAdUnitId"));
        if (this.f38138R0.m10990O().isEnabled()) {
            C14995a.C14997b c14997b = C14995a.f42800h;
            C14995a.C14996a c14996a = new C14995a.C14996a();
            c14996a.m19302c("DETAILS");
            String string = this.f38103E0.mo12484Y().getString("profileNumber");
            if (w3.c.a.a.a.h.l(string)) {
                c14996a.m19303b(string);
            }
            c15223a.m19042a(c14996a.m19304a());
        } else {
            C15213o.C15215b c15215b = new C15213o.C15215b("DETAILS");
            String string2 = this.f38103E0.mo12484Y().getString("profileNumber");
            if (w3.c.a.a.a.h.l(string2)) {
                c15215b.f43291a = string2;
            }
            c15223a.m19039d(c15215b.m19046a());
        }
        AdSize adSize = AdSize.BANNER;
        AdSize adSize2 = AdSize.LARGE_BANNER;
        AdSize adSize3 = AdSize.MEDIUM_RECTANGLE;
        C15164f c15164f = C15164f.f43209c;
        c15223a.m19038e(adSize, adSize2, adSize3, C15164f.f43207a, C15164f.f43208b);
        c15223a.f43338p = 3;
        c15223a.f43335m = true;
        c15223a.f43331i = "detailView";
        c15223a.f43336n = false;
        CustomTemplate customTemplate = CustomTemplate.NATIVE_BANNER;
        C20592g c20592g = this.f38138R0;
        c15223a.m19037f(customTemplate, c20592g.f57770K3.m10941a(c20592g, C20592g.f57695p6[246]).isEnabled() ? CustomTemplate.MEGA_NATIVE_BANNER_DUAL_TRACKER : CustomTemplate.NATIVE_BANNER_DUAL_TRACKER, CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER);
        this.f38139R1 = new C13159u1(this, this.f38095B1, new C15222s(c15223a), "detailsView");
        if (!m22027iB()) {
            return;
        }
        this.f38151V1.reset();
        String m19082a = this.f38151V1.m19082a();
        s1.d0.i iVar = C15055l.f42982j;
        C15055l.C15056a c15056a = new C15055l.C15056a();
        c15056a.m19203c(this.f38103E0.mo12430c4().m19081a("callDetailsLargeUnifiedAdUnitId"), m19082a, "native", "native_image_300x250", "banner", "html_320x50", "html_320x100", "html_300x250", "html_320x140", "html_300x100");
        c15056a.m19204b(this.f38138R0.m10943y().isEnabled() ? "TEST_DETAILSVIEW" : "DETAILSVIEW");
        c15056a.m19202d(AnalyticsConstants.NETWORK);
        this.f38098C1.mo19266d(c15056a.m19205a(), new C13162v1(this), false);
    }

    /* renamed from: rB */
    public final void m22018rB() {
        if (!this.f38170i) {
            Contact contact = this.f38127N1;
            if (contact == null) {
                C19045j0.m14192x(m22022nB(), this.f38156Y, C2752R.attr.tcx_detailsViewBackIconColor);
            } else if (!contact.m35506m0() || m22020pB(this.f38127N1, this.f38157Y0)) {
                if (!this.f38127N1.m35499r0() || m22020pB(this.f38127N1, this.f38157Y0)) {
                    C19045j0.m14192x(m22022nB(), this.f38156Y, C2752R.attr.tcx_detailsViewBackIconColor);
                } else {
                    C19045j0.m14192x(m22022nB(), this.f38156Y, C2752R.attr.tcx_detailsViewBackIconGoldColor);
                }
            } else {
                Toolbar toolbar = this.f38156Y;
                Context requireContext = requireContext();
                Object obj = C26467a.f74235a;
                int m1787a = C26467a.C26471d.m1787a(requireContext, 2131101238);
                int i = C19045j0.f53198b;
                Drawable navigationIcon = toolbar.getNavigationIcon();
                if (navigationIcon != null) {
                    navigationIcon.setTint(m1787a);
                    toolbar.setNavigationIcon(navigationIcon);
                }
                Drawable overflowIcon = toolbar.getOverflowIcon();
                if (overflowIcon == null) {
                    return;
                }
                overflowIcon.setTint(m1787a);
                toolbar.setOverflowIcon(overflowIcon);
            }
        }
    }

    /* renamed from: sB */
    public final String m22017sB(int i) {
        if (i >= 10000 && Build.VERSION.SDK_INT >= 24) {
            return CompactDecimalFormat.getInstance(C8502h.f26287b, CompactDecimalFormat.CompactStyle.SHORT).format(i);
        }
        return String.valueOf(i);
    }

    /* renamed from: tB */
    public void m22016tB(int i) {
        if (this.f38105F0 == null) {
            return;
        }
        if (i == 0) {
            m22028gB(false);
        } else if (i == 1) {
            this.f38188o.mo13274b(ViewActionEvent.m35939h("detailView", ViewActionEvent.MessageSubAction.HEADER));
            h hVar = this.f38200s;
            Contact contact = this.f38105F0;
            c.RA(hVar, contact, contact.m35557M(), true, false, false, true, false, InitiateCallHelper.CallContextOption.ShowOnBoarded.a, "detailView");
        } else if (i != 2) {
            if (i == 11) {
                this.f38223z1.mo24616h(getActivity(), this.f38105F0, "detailView");
                return;
            }
            switch (i) {
                case 4:
                    m22030eB();
                    return;
                case 5:
                    m22039BB(false);
                    return;
                case 6:
                    m22039BB(true);
                    return;
                case 7:
                    this.f38129O0.mo17167b(this.f38200s, PremiumLaunchContext.CONTACT_DETAIL_CONTACT_REQ);
                    return;
                case 8:
                    if (!this.f38103E0.mo11643f().mo16408H()) {
                        this.f38129O0.mo17167b(this.f38200s, PremiumLaunchContext.CONTACT_DETAIL_CONTACT_REQ);
                        return;
                    }
                    DialogC12697c3 dialogC12697c3 = new DialogC12697c3(this.f38200s, false);
                    this.f38132P0 = dialogC12697c3;
                    dialogC12697c3.show();
                    this.f38103E0.mo12130y3().mo18693c(this.f38105F0.getTcId(), this.f38105F0.m35491w(), new AbstractC15549f.AbstractC15551b() { // from class: e.a.e.c.w
                        @Override // p193e.p194a.p936j3.AbstractC15549f.AbstractC15551b
                        /* renamed from: a */
                        public final void mo10691a(int i2, String str) {
                            final View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = View$OnClickListenerC13135s1.this;
                            Object obj = View$OnClickListenerC13135s1.f38089W1;
                            if (!view$OnClickListenerC13135s1.m21921SA()) {
                                return;
                            }
                            DialogC12697c3 dialogC12697c32 = view$OnClickListenerC13135s1.f38132P0;
                            if (dialogC12697c32 != null) {
                                dialogC12697c32.dismiss();
                                view$OnClickListenerC13135s1.f38132P0 = null;
                            }
                            if (i2 == 1) {
                                String string = view$OnClickListenerC13135s1.getString((int) C2752R.string.CallerContactSentText, new Object[]{str, ""});
                                g$a g_a = new g$a(view$OnClickListenerC13135s1.f38200s);
                                g_a.m3656m(C2752R.string.CallerContactSent);
                                g_a.f70854a.f156f = string;
                                g_a.m3660i(2131887910, null);
                                g_a.m3652q();
                            } else if (i2 == 2) {
                                view$OnClickListenerC13135s1.m21920TA(C2752R.string.CallerContactAlreadySent);
                            } else if (i2 != 3) {
                                view$OnClickListenerC13135s1.m21920TA(C2752R.string.CallerContactFailed);
                            } else {
                                g$a g_a2 = new g$a(view$OnClickListenerC13135s1.f38200s);
                                g_a2.m3656m(C2752R.string.CallerContactInsufficientRequests);
                                g_a2.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.c.y0
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i3) {
                                        View$OnClickListenerC13135s1 view$OnClickListenerC13135s12 = View$OnClickListenerC13135s1.this;
                                        view$OnClickListenerC13135s12.f38129O0.mo17167b(view$OnClickListenerC13135s12.f38200s, PremiumLaunchContext.CONTACT_REQ);
                                    }
                                });
                                g_a2.f70854a.f163m = true;
                                g_a2.m3652q();
                            }
                        }
                    });
                    return;
                default:
                    return;
            }
        } else {
            AbstractC19462a abstractC19462a = this.f38188o;
            l.e("detailView", AnalyticsConstants.CONTEXT);
            l.e("flash", "action");
            abstractC19462a.mo13274b(new ViewActionEvent("flash", null, "detailView"));
            List<Number> m35557M = this.f38105F0.m35557M();
            ArrayList<FlashContact> arrayList = new ArrayList<>();
            String m35491w = this.f38105F0.m35491w();
            for (Number number : m35557M) {
                String m35479e = number.m35479e();
                if (!w3.c.a.a.a.h.j(m35479e)) {
                    String replace = m35479e.replace("+", "");
                    if (this.f38103E0.mo12805A3().mo9316b(replace).f60563c) {
                        if (!w3.c.a.a.a.h.j(m35491w)) {
                            m35479e = m35491w;
                        }
                        arrayList.add(new FlashContact(replace, m35479e, null));
                    }
                }
            }
            if (arrayList.size() != 1) {
                if (arrayList.size() <= 1) {
                    return;
                }
                this.f38103E0.mo12805A3().mo9320J(getContext(), arrayList, "detailView");
                return;
            }
            FlashContact flashContact = arrayList.get(0);
            long currentTimeMillis = System.currentTimeMillis() - this.f38103E0.mo12805A3().mo9313e(flashContact.f11999a).f60487b;
            boolean z = false;
            if (currentTimeMillis >= DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL) {
                z = true;
            }
            if (!z) {
                this.f38103E0.mo12805A3().mo9306l(getContext(), Long.parseLong(flashContact.f11999a), flashContact.f12000b, "detailView", DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL - currentTimeMillis);
                return;
            }
            C21632c.m9330b().mo9308j("FlashTapped", C22128a.m8654X0("flashContext", "detailView"));
            this.f38103E0.mo12805A3().mo9319K(getContext(), Long.parseLong(flashContact.f11999a), flashContact.f12000b, "detailView");
        }
    }

    /* renamed from: uB */
    public final void m22015uB() {
        h hVar = this.f38200s;
        if (hVar != null) {
            Contact contact = this.f38105F0;
            Intent m34591ua = SingleActivity.m34591ua(hVar, SingleActivity.FragmentSingle.DETAILS_CALL_LOG);
            m34591ua.putExtra("ARG_CONTACT", contact);
            hVar.startActivity(m34591ua);
        }
        this.f38188o.mo13274b(ViewActionEvent.m35942e("detailView", ViewActionEvent.ContactDetailsAction.CALL_HISTORY));
    }

    /* renamed from: vB */
    public final void m22014vB(String str, String str2, String str3, boolean z) {
        String str4;
        h hVar = this.f38200s;
        if (hVar == null) {
            return;
        }
        this.f38162c1 = false;
        C14022p c14022p = new C14022p(hVar, UUID.randomUUID(), "detailView");
        c14022p.f40565o = this.f38112I1;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            Number m14109d = C19103t.m14109d(this.f38105F0);
            if (m14109d == null) {
                return;
            }
            c14022p.f40566p = (String) w3.c.a.a.a.h.c(m14109d.m35479e(), m14109d.m35473l());
            str4 = str3;
            if (TextUtils.isEmpty(str3)) {
                str4 = m14109d.getCountryCode();
            }
        } else {
            c14022p.f40566p = str;
            str4 = str3;
        }
        boolean z2 = !z && !this.f38141S0.mo10138b(this.f38105F0);
        C14022p m20845c = c14022p.m20845c(str4);
        m20845c.f40557g = z2;
        m20845c.m20842f(this, false, true, this.f38136Q1);
    }

    /* renamed from: wB */
    public final void m22013wB(final View view, int i, int i2) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.c.o0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                View view2 = view;
                Object obj = View$OnClickListenerC13135s1.f38089W1;
                view2.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                view2.requestLayout();
            }
        });
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.start();
    }

    /* renamed from: xB */
    public final void m22012xB(boolean z, String str) {
        TextView textView = (TextView) this.f38177k0.findViewById(C2752R.C2754id.isOpenTextView);
        TextView textView2 = (TextView) this.f38177k0.findViewById(C2752R.C2754id.statusTextView);
        View findViewById = this.f38177k0.findViewById(C2752R.C2754id.openHoursDivider);
        if (z) {
            textView.setText(2131886323);
            textView.setTextColor(getResources().getColor(C2752R.color.green));
        } else {
            textView.setText(2131886271);
            textView.setTextColor(getResources().getColor(2131100834));
        }
        if (str == null) {
            textView2.setVisibility(8);
            findViewById.setVisibility(8);
            return;
        }
        textView2.setText(str);
        textView2.setVisibility(0);
        findViewById.setVisibility(0);
    }

    /* renamed from: yB */
    public final void m22011yB() {
        AbstractC25393a supportActionBar = this.f38200s.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3551p(false);
            supportActionBar.mo3553n(true);
            supportActionBar.mo3552o(true);
        }
        m22018rB();
        this.f38154X.a(this);
        this.f38146U.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC13156t1(this));
    }

    /* renamed from: zB */
    public final void m22010zB() {
        if (!this.f38170i) {
            this.f38206u = new C13079f2(getContext());
            this.f38209v.removeAllViews();
            this.f38209v.addView((C13079f2) this.f38206u);
        } else {
            this.f38206u = new C13105k2(getContext());
            this.f38209v.removeAllViews();
            this.f38209v.addView((C13105k2) this.f38206u);
        }
        this.f38206u.setOnTagClickListener(this);
        this.f38206u.setOnAddNameClickListener(this);
        this.f38206u.setOnSuggestNameButtonClickListener(this);
        this.f38149V = (TextView) this.f38209v.findViewById(C2752R.C2754id.name_or_number);
    }
}
