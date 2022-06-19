package p193e.p194a.p682e.p698c;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.tag.TagXView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.common.tag.TagView;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.log.AssertionUtil;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.timezone.TimezoneView;
import com.truecaller.truecontext.TrueContext;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.C20399t1;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18145a1;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p288a0.AbstractC7401p;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.C13279m0;
import p193e.p194a.p682e.p683a.DialogC12717e2;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0015\b\u0016\u0012\b\u0010¢\u0001\u001a\u00030¡\u0001¢\u0006\u0006\b£\u0001\u0010¤\u0001J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J/\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0019H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u0019\u0010'\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\b2\u0006\u0010)\u001a\u00020\u0019H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020\b2\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u0010.\u001a\u00020\b2\u0006\u00100\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u00101J\u0017\u00103\u001a\u00020\b2\u0006\u00102\u001a\u00020,H\u0016¢\u0006\u0004\b3\u0010/J\u000f\u00104\u001a\u00020\bH\u0016¢\u0006\u0004\b4\u0010\u0012J\u000f\u00105\u001a\u00020\u0019H\u0016¢\u0006\u0004\b5\u0010\"J\u000f\u00106\u001a\u00020\bH\u0016¢\u0006\u0004\b6\u0010\u0012J\u000f\u00107\u001a\u00020\bH\u0016¢\u0006\u0004\b7\u0010\u0012J\u000f\u00108\u001a\u00020\bH\u0016¢\u0006\u0004\b8\u0010\u0012J\u000f\u00109\u001a\u00020\bH\u0016¢\u0006\u0004\b9\u0010\u0012J\u000f\u0010:\u001a\u00020\bH\u0016¢\u0006\u0004\b:\u0010\u0012J\u000f\u0010;\u001a\u00020\bH\u0016¢\u0006\u0004\b;\u0010\u0012J\u000f\u0010<\u001a\u00020\bH\u0016¢\u0006\u0004\b<\u0010\u0012J!\u0010@\u001a\u00020\b2\u0006\u0010=\u001a\u00020\u00062\b\u0010?\u001a\u0004\u0018\u00010>H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\bH\u0016¢\u0006\u0004\bB\u0010\u0012J\u0019\u0010D\u001a\u00020\b2\b\u0010C\u001a\u0004\u0018\u00010>H\u0016¢\u0006\u0004\bD\u0010EJ\u0017\u0010H\u001a\u00020\b2\u0006\u0010G\u001a\u00020FH\u0016¢\u0006\u0004\bH\u0010IJ\u0019\u0010K\u001a\u00020\b2\b\b\u0001\u0010J\u001a\u00020\u0006H\u0016¢\u0006\u0004\bK\u00101J\u0017\u0010L\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\bL\u0010MJ\u0017\u0010N\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\bN\u0010MJ\u0017\u0010O\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\bO\u0010MJ\u000f\u0010P\u001a\u00020\bH\u0016¢\u0006\u0004\bP\u0010\u0012J\u0017\u0010Q\u001a\u00020\b2\u0006\u0010J\u001a\u00020\u0006H\u0016¢\u0006\u0004\bQ\u00101J\u000f\u0010R\u001a\u00020\bH\u0016¢\u0006\u0004\bR\u0010\u0012J\u000f\u0010S\u001a\u00020\bH\u0016¢\u0006\u0004\bS\u0010\u0012J\u000f\u0010T\u001a\u00020\bH\u0016¢\u0006\u0004\bT\u0010\u0012J\u0019\u0010W\u001a\u00020\b2\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bW\u0010XJ\u0019\u0010Y\u001a\u00020\b2\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bY\u0010XJ\u0019\u0010Z\u001a\u00020\b2\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bZ\u0010XJ\u0017\u0010\\\u001a\u00020\b2\u0006\u0010[\u001a\u00020,H\u0016¢\u0006\u0004\b\\\u0010/J\u000f\u0010]\u001a\u00020\bH\u0016¢\u0006\u0004\b]\u0010\u0012J\u0017\u0010`\u001a\u00020\b2\u0006\u0010_\u001a\u00020^H\u0016¢\u0006\u0004\b`\u0010aJ\u000f\u0010b\u001a\u00020\bH\u0016¢\u0006\u0004\bb\u0010\u0012J\u000f\u0010c\u001a\u00020\bH\u0014¢\u0006\u0004\bc\u0010\u0012R\u001d\u0010i\u001a\u00020d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010f\u001a\u0004\bg\u0010hR\"\u0010q\u001a\u00020j8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bk\u0010l\u001a\u0004\bm\u0010n\"\u0004\bo\u0010pR\"\u0010y\u001a\u00020r8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bs\u0010t\u001a\u0004\bu\u0010v\"\u0004\bw\u0010xR\u0016\u0010{\u001a\u00020\u00198B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bz\u0010\"R\u0016\u0010~\u001a\u00020\u000b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b|\u0010}R\u001f\u0010\u0081\u0001\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002¢\u0006\r\n\u0004\b*\u0010f\u001a\u0005\b\u007f\u0010\u0080\u0001R*\u0010\u0089\u0001\u001a\u00030\u0082\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0017\u0010\u008a\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u0010}R\u0018\u0010&\u001a\u00020#8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R*\u0010\u0094\u0001\u001a\u00030\u008d\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R\u0019\u0010\u0097\u0001\u001a\u00030\u0095\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bV\u0010\u0096\u0001R*\u0010\u009f\u0001\u001a\u00030\u0098\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0099\u0001\u0010\u009a\u0001\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0017\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u000f\u0010 \u0001¨\u0006¥\u0001"}, d2 = {"Le/a/e/c/f2;", "Landroid/widget/FrameLayout;", "Le/a/e/c/a2;", "Le/a/e/c/h1;", "Landroid/view/ViewGroup;", "containerView", "", "stringId", "Ls1/s;", C22021b.f61237c, "(Landroid/view/ViewGroup;I)V", "Landroid/graphics/drawable/Drawable;", "availabilityDrawable", "Le/a/l4/e;", "presence", AbstractC2405c.f7629a, "(Landroid/graphics/drawable/Drawable;Le/a/l4/e;)V", "onAttachedToWindow", "()V", "Le/a/e/c/y1;", "appearance", "setAppearance", "(Le/a/e/c/y1;)V", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, "", "existsInPhoneBook", "isSpam", "shouldShowSuggestNameButton", "D1", "(Lcom/truecaller/data/entity/Contact;ZZZ)V", "F0", "(Lcom/truecaller/data/entity/Contact;)V", "E0", "()Z", "Le/a/b0/a/b/a;", "getAvatarPresenter", "()Le/a/b0/a/b/a;", "avatarXPresenter", "setupAvatarPresenter", "(Le/a/b0/a/b/a;)V", "showLoading", "f", "(Z)V", "", "displayNameOrNumber", "setNameOrNumber", "(Ljava/lang/String;)V", "stringRes", "(I)V", "altName", "setAltName", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "M0", "T0", "Q0", "L0", "H0", "P0", "O0", "N0", "spamScore", "Lcom/truecaller/data/entity/SpamCategoryModel;", "spamCategory", "R0", "(ILcom/truecaller/data/entity/SpamCategoryModel;)V", "U0", "category", "setSpamCategoryIcon", "(Lcom/truecaller/data/entity/SpamCategoryModel;)V", "Le/a/b0/p/c;", "availableTag", "G0", "(Le/a/b0/p/c;)V", "callerAddTag", "K0", "setAvailableStatus", "(Le/a/l4/e;)V", "setBusyStatus", "setSleepStatus", "W0", "V0", "J0", "S0", "I0", "Landroid/view/View$OnClickListener;", "l", "setOnTagClickListener", "(Landroid/view/View$OnClickListener;)V", "setOnAddNameClickListener", "setOnSuggestNameButtonClickListener", AnalyticsConstants.TIMEZONE, "setTimezone", "z", "Le/a/m5/c;", "presenter", "setTrueContext", "(Le/a/m5/c;)V", "n", "onDetachedFromWindow", "Le/a/p5/h0;", "e", "Ls1/g;", "getResourceProvider", "()Le/a/p5/h0;", "resourceProvider", "Le/a/p5/c;", "i", "Le/a/p5/c;", "getClock", "()Le/a/p5/c;", "setClock", "(Le/a/p5/c;)V", "clock", "Le/a/e/c/z1;", "j", "Le/a/e/c/z1;", "getDetailsPresenter", "()Le/a/e/c/z1;", "setDetailsPresenter", "(Le/a/e/c/z1;)V", "detailsPresenter", "getHasValidAccount", "hasValidAccount", "a", "Landroid/graphics/drawable/Drawable;", "availableDrawable", "getAlertColor", "()I", "alertColor", "Le/a/l4/c;", "g", "Le/a/l4/c;", "getAvailabilityManager", "()Le/a/l4/c;", "setAvailabilityManager", "(Le/a/l4/c;)V", "availabilityManager", "addTagIcon", "d", "Le/a/b0/a/b/a;", "Le/a/a0/p;", "k", "Le/a/a0/p;", "getSpamCategoryRepresentationBuilder", "()Le/a/a0/p;", "setSpamCategoryRepresentationBuilder", "(Le/a/a0/p;)V", "spamCategoryRepresentationBuilder", "Le/a/m3/a1;", "Le/a/m3/a1;", "binding", "Le/a/g5/p;", "h", "Le/a/g5/p;", "getTagDisplayUtil", "()Le/a/g5/p;", "setTagDisplayUtil", "(Le/a/g5/p;)V", "tagDisplayUtil", "Le/a/e/c/y1;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "<init>", "(Landroid/content/Context;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.c.f2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/f2.class */
public final class C13079f2 extends FrameLayout implements AbstractC13058a2, AbstractC13087h1 {

    /* renamed from: a */
    public Drawable f37956a;

    /* renamed from: b */
    public Drawable f37957b;

    /* renamed from: c */
    public C13171y1 f37958c;

    /* renamed from: d */
    public C8243a f37959d;

    /* renamed from: e */
    public final g f37960e;

    /* renamed from: f */
    public final g f37961f = C25225a.m3978P1(new C13075e2(this));
    @Inject

    /* renamed from: g */
    public AbstractC17405c f37962g;
    @Inject

    /* renamed from: h */
    public AbstractC14537p f37963h;
    @Inject

    /* renamed from: i */
    public AbstractC19222c f37964i;
    @Inject

    /* renamed from: j */
    public AbstractC13174z1 f37965j;
    @Inject

    /* renamed from: k */
    public AbstractC7401p f37966k;

    /* renamed from: l */
    public final C18145a1 f37967l;

    /* renamed from: e.a.e.c.f2$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/f2$a.class */
    public static final class View$OnClickListenerC13080a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Contact f37969b;

        public View$OnClickListenerC13080a(Contact contact) {
            C13079f2.this = r4;
            this.f37969b = contact;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogC12717e2(C13079f2.this.getContext(), C12864a2.m22592B(this.f37969b, false), C13079f2.this.f37967l.f51102c, C19103t.m14106g(this.f37969b), null, this.f37969b.m35574A0(), this.f37969b.f11530y, true).show();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13079f2(Context context) {
        super(context, null, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f37960e = C25225a.m3978P1(new C13084g2(context));
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        View inflate = C17422k.m16050u0(from, true).inflate(C2752R.layout.view_details_header, (ViewGroup) this, false);
        addView(inflate);
        int i = 2131362111;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(C2752R.C2754id.add_name_container);
        if (frameLayout != null) {
            i = 2131362226;
            TextView textView = (TextView) inflate.findViewById(C2752R.C2754id.availability_indicator);
            if (textView != null) {
                i = 2131362231;
                AvatarXView avatarXView = (AvatarXView) inflate.findViewById(2131362231);
                if (avatarXView != null) {
                    i = 2131362267;
                    ImageView imageView = (ImageView) inflate.findViewById(C2752R.C2754id.background_view);
                    if (imageView != null) {
                        i = 2131363000;
                        ImageView imageView2 = (ImageView) inflate.findViewById(2131363000);
                        if (imageView2 != null) {
                            i = 2131364323;
                            ImageView imageView3 = (ImageView) inflate.findViewById(C2752R.C2754id.img_verification);
                            if (imageView3 != null) {
                                i = 2131364372;
                                TextView textView2 = (TextView) inflate.findViewById(2131364372);
                                if (textView2 != null) {
                                    i = 2131364883;
                                    GoldShineTextView goldShineTextView = (GoldShineTextView) inflate.findViewById(C2752R.C2754id.name_or_number);
                                    if (goldShineTextView != null) {
                                        i = 2131366007;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(C2752R.C2754id.spam_container);
                                        if (constraintLayout != null) {
                                            i = 2131366008;
                                            TextView textView3 = (TextView) inflate.findViewById(C2752R.C2754id.spam_count);
                                            if (textView3 != null) {
                                                i = 2131366009;
                                                TintedImageView tintedImageView = (TintedImageView) inflate.findViewById(C2752R.C2754id.spam_icon);
                                                if (tintedImageView != null) {
                                                    i = 2131366135;
                                                    ImageButton imageButton = (ImageButton) inflate.findViewById(C2752R.C2754id.suggest_name_button);
                                                    if (imageButton != null) {
                                                        i = 2131366217;
                                                        FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(C2752R.C2754id.tag_container);
                                                        if (frameLayout2 != null) {
                                                            i = 2131366351;
                                                            GoldShineTextView goldShineTextView2 = (GoldShineTextView) inflate.findViewById(2131366351);
                                                            if (goldShineTextView2 != null) {
                                                                i = 2131366463;
                                                                TimezoneView timezoneView = (TimezoneView) inflate.findViewById(2131366463);
                                                                if (timezoneView != null) {
                                                                    i = 2131366563;
                                                                    TrueContext trueContext = (TrueContext) inflate.findViewById(2131366563);
                                                                    if (trueContext != null) {
                                                                        C18145a1 c18145a1 = new C18145a1((ConstraintLayout) inflate, frameLayout, textView, avatarXView, imageView, imageView2, imageView3, textView2, goldShineTextView, constraintLayout, textView3, tintedImageView, imageButton, frameLayout2, goldShineTextView2, timezoneView, trueContext);
                                                                        l.d(c18145a1, "ViewDetailsHeaderBinding…flater(true), this, true)");
                                                                        this.f37967l = c18145a1;
                                                                        GoldShineTextView goldShineTextView3 = c18145a1.f51107h;
                                                                        l.d(goldShineTextView3, "binding.nameOrNumber");
                                                                        goldShineTextView3.setSelected(true);
                                                                        C13279m0.C13281b c13281b = new C13279m0.C13281b(context);
                                                                        c13281b.f38593b = true;
                                                                        c13281b.f38594c = false;
                                                                        c13281b.f38596e = 6;
                                                                        c13281b.f38597f = 6;
                                                                        C13279m0 m21961a = c13281b.m21961a();
                                                                        l.d(m21961a, "AvailabilityDrawable.Bui…e(6)\n            .build()");
                                                                        this.f37956a = m21961a;
                                                                        C20399t1.C20414j c20414j = (C20399t1.C20414j) AbstractC17399l2.f48744a.m16142a().mo11177g();
                                                                        AbstractC17405c mo12602P3 = c20414j.f57414a.f57299b.mo12602P3();
                                                                        Objects.requireNonNull(mo12602P3, "Cannot return null from a non-@Nullable component method");
                                                                        this.f37962g = mo12602P3;
                                                                        AbstractC14537p mo12619O = c20414j.f57414a.f57299b.mo12619O();
                                                                        Objects.requireNonNull(mo12619O, "Cannot return null from a non-@Nullable component method");
                                                                        this.f37963h = mo12619O;
                                                                        AbstractC19222c mo11637k = c20414j.f57414a.f57299b.mo11637k();
                                                                        Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
                                                                        this.f37964i = mo11637k;
                                                                        this.f37965j = (AbstractC13174z1) c20414j.f57417d.get();
                                                                        AbstractC7401p mo12683J1 = c20414j.f57414a.f57299b.mo12683J1();
                                                                        Objects.requireNonNull(mo12683J1, "Cannot return null from a non-@Nullable component method");
                                                                        this.f37966k = mo12683J1;
                                                                        return;
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    private final int getAlertColor() {
        return ((Number) this.f37961f.getValue()).intValue();
    }

    private final boolean getHasValidAccount() {
        return TrueApp.m36032b0().mo28540W();
    }

    public final AbstractC19233h0 getResourceProvider() {
        return (AbstractC19233h0) this.f37960e.getValue();
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    /* renamed from: D1 */
    public void mo22064D1(Contact contact, boolean z, boolean z2, boolean z3) {
        l.e(contact, AnalyticsConstants.CONTACT);
        C8243a c8243a = new C8243a(getResourceProvider());
        this.f37959d = c8243a;
        this.f37967l.f51102c.setPresenter(c8243a);
        boolean z4 = contact.m35506m0() && !contact.m35574A0();
        ImageView imageView = this.f37967l.f51104e;
        l.d(imageView, "binding.credBackground");
        C19286f.m13683U(imageView, z4);
        C13171y1 c13171y1 = this.f37958c;
        if (c13171y1 == null) {
            l.l("appearance");
            throw null;
        }
        Drawable drawable = c13171y1.f38283h;
        if (drawable != null) {
            this.f37967l.f51103d.setImageDrawable(drawable);
        }
        AbstractC13174z1 abstractC13174z1 = this.f37965j;
        if (abstractC13174z1 != null) {
            abstractC13174z1.mo22001D1(contact, z, z2, z3);
        } else {
            l.l("detailsPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: E0 */
    public boolean mo22089E0() {
        return getHasValidAccount();
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: F0 */
    public void mo22088F0(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        this.f37967l.f51102c.setOnClickListener(new View$OnClickListenerC13080a(contact));
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: G */
    public void mo22087G() {
        GoldShineTextView goldShineTextView = this.f37967l.f51113n;
        l.d(goldShineTextView, "binding.textAltName");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: G0 */
    public void mo22086G0(C8551c c8551c) {
        l.e(c8551c, "availableTag");
        TagView tagView = new TagView(getContext(), false, true);
        tagView.setTag(c8551c);
        C13171y1 c13171y1 = this.f37958c;
        if (c13171y1 == null) {
            l.l("appearance");
            throw null;
        }
        Integer num = c13171y1.f38280e;
        if (num != null) {
            tagView.setTextColor(num.intValue());
        }
        C13171y1 c13171y12 = this.f37958c;
        if (c13171y12 == null) {
            l.l("appearance");
            throw null;
        }
        Integer num2 = c13171y12.f38281f;
        if (num2 != null) {
            tagView.setRedesignBackground(num2.intValue());
        }
        FrameLayout frameLayout = this.f37967l.f51112m;
        frameLayout.removeAllViews();
        frameLayout.addView(tagView);
        C19286f.m13684T(frameLayout);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: H0 */
    public void mo22085H0() {
        ImageView imageView = this.f37967l.f51105f;
        l.d(imageView, "binding.imgVerification");
        C19286f.m13684T(imageView);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: I0 */
    public void mo22084I0() {
        TextView textView = this.f37967l.f51106g;
        l.d(textView, "binding.info");
        C19286f.m13689O(textView);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: J0 */
    public void mo22083J0() {
        FrameLayout frameLayout = this.f37967l.f51100a;
        l.d(frameLayout, "binding.addNameContainer");
        C19286f.m13689O(frameLayout);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: K0 */
    public void mo22082K0(int i) {
        FrameLayout frameLayout = this.f37967l.f51112m;
        l.d(frameLayout, "binding.tagContainer");
        m22068b(frameLayout, i);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: L0 */
    public void mo22081L0() {
        this.f37967l.f51107h.setTextColor(getResourceProvider().mo13769a(2131099848));
        this.f37967l.f51113n.setTextColor(getResourceProvider().mo13769a(2131101238));
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: M0 */
    public boolean mo22080M0() {
        C15314a c15314a = C15314a.f43582g;
        return C15314a.m18938a() instanceof AbstractC15317d.C15319b;
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: N0 */
    public void mo22079N0() {
        ImageButton imageButton = this.f37967l.f51111l;
        l.d(imageButton, "binding.suggestNameButton");
        C19286f.m13689O(imageButton);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: O0 */
    public void mo22078O0() {
        ImageButton imageButton = this.f37967l.f51111l;
        C19286f.m13684T(imageButton);
        C13171y1 c13171y1 = this.f37958c;
        if (c13171y1 != null) {
            imageButton.setColorFilter(c13171y1.f38278c, PorterDuff.Mode.SRC_IN);
        } else {
            l.l("appearance");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: P0 */
    public void mo22077P0() {
        ImageView imageView = this.f37967l.f51105f;
        l.d(imageView, "binding.imgVerification");
        C19286f.m13689O(imageView);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: Q0 */
    public void mo22076Q0() {
        GoldShineTextView goldShineTextView = this.f37967l.f51107h;
        C13171y1 c13171y1 = this.f37958c;
        if (c13171y1 == null) {
            l.l("appearance");
            throw null;
        }
        goldShineTextView.setTextColor(c13171y1.f38276a);
        GoldShineTextView goldShineTextView2 = this.f37967l.f51113n;
        C13171y1 c13171y12 = this.f37958c;
        if (c13171y12 != null) {
            goldShineTextView2.setTextColor(c13171y12.f38276a);
        } else {
            l.l("appearance");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: R0 */
    public void mo22075R0(int i, SpamCategoryModel spamCategoryModel) {
        ConstraintLayout constraintLayout = this.f37967l.f51108i;
        l.d(constraintLayout, "binding.spamContainer");
        C19286f.m13684T(constraintLayout);
        TextView textView = this.f37967l.f51109j;
        l.d(textView, "binding.spamCount");
        AbstractC7401p abstractC7401p = this.f37966k;
        if (abstractC7401p != null) {
            textView.setText(C17422k.m16055s(abstractC7401p, i, spamCategoryModel, 0, false, 12, null));
        } else {
            l.l("spamCategoryRepresentationBuilder");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: S0 */
    public void mo22074S0() {
        TextView textView = this.f37967l.f51106g;
        l.d(textView, "binding.info");
        C19286f.m13684T(textView);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: T0 */
    public void mo22073T0() {
        this.f37967l.f51107h.m35618l();
        this.f37967l.f51113n.m35618l();
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: U0 */
    public void mo22072U0() {
        ConstraintLayout constraintLayout = this.f37967l.f51108i;
        l.d(constraintLayout, "binding.spamContainer");
        C19286f.m13689O(constraintLayout);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: V0 */
    public void mo22071V0(int i) {
        FrameLayout frameLayout = this.f37967l.f51100a;
        l.d(frameLayout, "binding.addNameContainer");
        m22068b(frameLayout, i);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: W0 */
    public void mo22070W0() {
        TextView textView = this.f37967l.f51101b;
        l.d(textView, "binding.availabilityIndicator");
        C19286f.m13689O(textView);
    }

    /* renamed from: b */
    public final void m22068b(ViewGroup viewGroup, int i) {
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        TagXView tagXView = new TagXView(context, null, 0, 6);
        String string = tagXView.getResources().getString(i);
        l.d(string, "resources.getString(stringId)");
        tagXView.setTitle(string);
        C13171y1 c13171y1 = this.f37958c;
        if (c13171y1 == null) {
            l.l("appearance");
            throw null;
        }
        tagXView.setIcon(c13171y1.f38282g);
        C13171y1 c13171y12 = this.f37958c;
        if (c13171y12 == null) {
            l.l("appearance");
            throw null;
        }
        Integer num = c13171y12.f38280e;
        if (num != null) {
            tagXView.setTitleColor(num.intValue());
        }
        C13171y1 c13171y13 = this.f37958c;
        if (c13171y13 == null) {
            l.l("appearance");
            throw null;
        }
        Integer num2 = c13171y13.f38281f;
        if (num2 != null) {
            int intValue = num2.intValue();
            Context context2 = tagXView.getContext();
            int i2 = C19045j0.f53198b;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setStroke(1, intValue);
            gradientDrawable.setCornerRadius(C8605o.m28238b(context2, 32));
            tagXView.setBackground(gradientDrawable);
        }
        int m28238b = C8605o.m28238b(tagXView.getContext(), 5.0f);
        tagXView.setPaddingRelative(m28238b, m28238b, m28238b, m28238b);
        viewGroup.removeAllViews();
        viewGroup.addView(tagXView);
        viewGroup.setVisibility(0);
    }

    /* renamed from: c */
    public final void m22067c(Drawable drawable, C17409e c17409e) {
        this.f37967l.f51101b.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        TextView textView = this.f37967l.f51101b;
        Context context = textView.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        textView.setText(C17409e.m16135d(c17409e, context, false, 2));
        C13171y1 c13171y1 = this.f37958c;
        if (c13171y1 == null) {
            l.l("appearance");
            throw null;
        }
        textView.setTextColor(c13171y1.f38277b);
        C19286f.m13684T(textView);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    /* renamed from: f */
    public void mo22063f(boolean z) {
        this.f37967l.f51102c.mo28718E(z);
    }

    public final AbstractC17405c getAvailabilityManager() {
        AbstractC17405c abstractC17405c = this.f37962g;
        if (abstractC17405c != null) {
            return abstractC17405c;
        }
        l.l("availabilityManager");
        throw null;
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public C8243a getAvatarPresenter() {
        C8243a c8243a = this.f37959d;
        if (c8243a != null) {
            return c8243a;
        }
        l.l("avatarXPresenter");
        throw null;
    }

    public final AbstractC19222c getClock() {
        AbstractC19222c abstractC19222c = this.f37964i;
        if (abstractC19222c != null) {
            return abstractC19222c;
        }
        l.l("clock");
        throw null;
    }

    public final AbstractC13174z1 getDetailsPresenter() {
        AbstractC13174z1 abstractC13174z1 = this.f37965j;
        if (abstractC13174z1 != null) {
            return abstractC13174z1;
        }
        l.l("detailsPresenter");
        throw null;
    }

    public final AbstractC7401p getSpamCategoryRepresentationBuilder() {
        AbstractC7401p abstractC7401p = this.f37966k;
        if (abstractC7401p != null) {
            return abstractC7401p;
        }
        l.l("spamCategoryRepresentationBuilder");
        throw null;
    }

    public final AbstractC14537p getTagDisplayUtil() {
        AbstractC14537p abstractC14537p = this.f37963h;
        if (abstractC14537p != null) {
            return abstractC14537p;
        }
        l.l("tagDisplayUtil");
        throw null;
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: n */
    public void mo22066n() {
        TrueContext trueContext = this.f37967l.f51115p;
        l.d(trueContext, "binding.truecontext");
        C19286f.m13689O(trueContext);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f37959d = new C8243a(getResourceProvider());
        AbstractC13174z1 abstractC13174z1 = this.f37965j;
        if (abstractC13174z1 != null) {
            abstractC13174z1.mo9029Y0(this);
        } else {
            l.l("detailsPresenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC13174z1 abstractC13174z1 = this.f37965j;
        if (abstractC13174z1 != null) {
            abstractC13174z1.mo9806c();
        } else {
            l.l("detailsPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public void setAltName(String str) {
        l.e(str, "altName");
        GoldShineTextView goldShineTextView = this.f37967l.f51113n;
        C19286f.m13684T(goldShineTextView);
        goldShineTextView.setText(goldShineTextView.getContext().getString(C2752R.string.CallerDetailsAltName, str));
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    public void setAppearance(C13171y1 c13171y1) {
        l.e(c13171y1, "appearance");
        this.f37958c = c13171y1;
        Drawable mutate = c13171y1.f38282g.mutate();
        l.d(mutate, "appearance.tagIconDrawable.mutate()");
        this.f37957b = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(c13171y1.f38279d, PorterDuff.Mode.SRC_IN));
    }

    public final void setAvailabilityManager(AbstractC17405c abstractC17405c) {
        l.e(abstractC17405c, "<set-?>");
        this.f37962g = abstractC17405c;
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public void setAvailableStatus(C17409e c17409e) {
        l.e(c17409e, "presence");
        Drawable drawable = this.f37956a;
        if (drawable != null) {
            m22067c(drawable, c17409e);
        } else {
            l.l("availableDrawable");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public void setBusyStatus(C17409e c17409e) {
        l.e(c17409e, "presence");
        Context context = getContext();
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, 2131232677);
        if (m1789b != null) {
            m1789b.setTint(getAlertColor());
        } else {
            m1789b = null;
        }
        m22067c(m1789b, c17409e);
    }

    public final void setClock(AbstractC19222c abstractC19222c) {
        l.e(abstractC19222c, "<set-?>");
        this.f37964i = abstractC19222c;
    }

    public final void setDetailsPresenter(AbstractC13174z1 abstractC13174z1) {
        l.e(abstractC13174z1, "<set-?>");
        this.f37965j = abstractC13174z1;
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public void setNameOrNumber(int i) {
        this.f37967l.f51107h.setText(i);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public void setNameOrNumber(String str) {
        l.e(str, "displayNameOrNumber");
        C13171y1 c13171y1 = this.f37958c;
        if (c13171y1 == null) {
            l.l("appearance");
            throw null;
        }
        AssertionUtil.isNotNull(c13171y1, new String[0]);
        this.f37967l.f51107h.setText(C8605o.m28239a(str));
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    public void setOnAddNameClickListener(View.OnClickListener onClickListener) {
        this.f37967l.f51100a.setOnClickListener(onClickListener);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    public void setOnSuggestNameButtonClickListener(View.OnClickListener onClickListener) {
        this.f37967l.f51111l.setOnClickListener(onClickListener);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    public void setOnTagClickListener(View.OnClickListener onClickListener) {
        this.f37967l.f51112m.setOnClickListener(onClickListener);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public void setSleepStatus(C17409e c17409e) {
        l.e(c17409e, "presence");
        Context context = getContext();
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, 2131232679);
        if (m1789b != null) {
            m1789b.setTint(getAlertColor());
        } else {
            m1789b = null;
        }
        m22067c(m1789b, c17409e);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public void setSpamCategoryIcon(SpamCategoryModel spamCategoryModel) {
        C19286f.m13683U(this.f37967l.f51110k, spamCategoryModel != null);
        ComponentCallbacks2C22222c.m8445f(this.f37967l.f51110k).mo8407r(spamCategoryModel != null ? spamCategoryModel.getIconUrl() : null).mo8095m().m8427O(this.f37967l.f51110k);
    }

    public final void setSpamCategoryRepresentationBuilder(AbstractC7401p abstractC7401p) {
        l.e(abstractC7401p, "<set-?>");
        this.f37966k = abstractC7401p;
    }

    public final void setTagDisplayUtil(AbstractC14537p abstractC14537p) {
        l.e(abstractC14537p, "<set-?>");
        this.f37963h = abstractC14537p;
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public void setTimezone(String str) {
        l.e(str, AnalyticsConstants.TIMEZONE);
        TimezoneView timezoneView = this.f37967l.f51114o;
        C19286f.m13684T(timezoneView);
        timezoneView.setData(str);
        C13171y1 c13171y1 = this.f37958c;
        if (c13171y1 == null) {
            l.l("appearance");
            throw null;
        }
        int i = c13171y1.f38284i;
        if (c13171y1 != null) {
            timezoneView.m34612f1(i, c13171y1.f38285j);
        } else {
            l.l("appearance");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    public void setTrueContext(AbstractC18240c abstractC18240c) {
        l.e(abstractC18240c, "presenter");
        TrueContext trueContext = this.f37967l.f51115p;
        l.d(trueContext, "binding.truecontext");
        C19286f.m13684T(trueContext);
        this.f37967l.f51115p.setPresenter(abstractC18240c);
    }

    public void setupAvatarPresenter(C8243a c8243a) {
        if (c8243a != null) {
            this.f37967l.f51102c.setPresenter(c8243a);
        }
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13058a2
    /* renamed from: z */
    public void mo22065z() {
        TimezoneView timezoneView = this.f37967l.f51114o;
        l.d(timezoneView, "binding.timezoneView");
        C19286f.m13689O(timezoneView);
    }
}
