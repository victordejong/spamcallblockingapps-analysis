package p193e.p194a.p717f.p718a.p719a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionLayout$h;
import androidx.constraintlayout.widget.Guideline;
import androidx.fragment.app.Fragment;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.ArrowImageViewAnimation;
import com.truecaller.common.p156ui.HeartbeatRippleView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.tag.TagXView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.callui.incoming.IncomingCallUIEvent;
import com.truecaller.timezone.TimezoneView;
import com.truecaller.truecontext.TrueContext;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenRatioVideoPlayerView;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.AbstractC17351f;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p717f.p718a.AbstractC13634c;
import p193e.p194a.p717f.p718a.p719a.p720o.AbstractC13544a;
import p193e.p194a.p717f.p718a.p719a.p720o.AbstractC13551d;
import p193e.p194a.p717f.p718a.p719a.p720o.C13545b;
import p193e.p194a.p717f.p718a.p719a.p720o.C13553f;
import p193e.p194a.p717f.p732x.C13745d;
import p193e.p194a.p717f.p732x.C13750i;
import p193e.p194a.p717f.p732x.C13751j;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import q3.a.j0;
import q3.a.w2.h;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
import s1.z.c.y;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� }2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001~B\u0007¢\u0006\u0004\b|\u0010\u0012J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u000e2\b\b\u0001\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0012J\u000f\u0010\u0019\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u000e2\b\b\u0001\u0010\u001b\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001c\u0010\u0017J\u000f\u0010\u001d\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001d\u0010\u0012J\u0017\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\"\u0010\u0012J\u0017\u0010$\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u0014H\u0016¢\u0006\u0004\b$\u0010\u0017J\u000f\u0010%\u001a\u00020\u000eH\u0016¢\u0006\u0004\b%\u0010\u0012J\u0017\u0010'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u001eH\u0016¢\u0006\u0004\b'\u0010!J\u000f\u0010(\u001a\u00020\u000eH\u0016¢\u0006\u0004\b(\u0010\u0012J\u0019\u0010)\u001a\u00020\u000e2\b\b\u0001\u0010#\u001a\u00020\u0014H\u0016¢\u0006\u0004\b)\u0010\u0017J\u000f\u0010*\u001a\u00020\u000eH\u0016¢\u0006\u0004\b*\u0010\u0012J!\u0010-\u001a\u00020\u000e2\b\u0010+\u001a\u0004\u0018\u00010\u001e2\u0006\u0010,\u001a\u00020\u001eH\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u000eH\u0016¢\u0006\u0004\b/\u0010\u0012J#\u00102\u001a\u00020\u000e2\b\b\u0001\u00100\u001a\u00020\u00142\b\b\u0001\u00101\u001a\u00020\u0014H\u0016¢\u0006\u0004\b2\u00103J!\u00104\u001a\u00020\u000e2\b\u0010+\u001a\u0004\u0018\u00010\u001e2\u0006\u0010,\u001a\u00020\u001eH\u0016¢\u0006\u0004\b4\u0010.J\u000f\u00105\u001a\u00020\u000eH\u0016¢\u0006\u0004\b5\u0010\u0012J\u001f\u00106\u001a\u00020\u000e2\u0006\u00100\u001a\u00020\u00142\u0006\u00101\u001a\u00020\u0014H\u0016¢\u0006\u0004\b6\u00103J\u000f\u00107\u001a\u00020\u000eH\u0016¢\u0006\u0004\b7\u0010\u0012J\u000f\u00108\u001a\u00020\u000eH\u0016¢\u0006\u0004\b8\u0010\u0012J\u000f\u00109\u001a\u00020\u000eH\u0016¢\u0006\u0004\b9\u0010\u0012J\u000f\u0010:\u001a\u00020\u000eH\u0016¢\u0006\u0004\b:\u0010\u0012J\u000f\u0010;\u001a\u00020\u000eH\u0016¢\u0006\u0004\b;\u0010\u0012J\u001f\u0010?\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020<2\u0006\u0010>\u001a\u00020\u001eH\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u000eH\u0016¢\u0006\u0004\bA\u0010\u0012J\u000f\u0010B\u001a\u00020\u000eH\u0016¢\u0006\u0004\bB\u0010\u0012R\u0016\u0010F\u001a\u00020C8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER\u0016\u0010J\u001a\u00020G8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bH\u0010IR\u0016\u0010L\u001a\u00020C8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bK\u0010ER\u0016\u0010P\u001a\u00020M8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bN\u0010OR\u0016\u0010R\u001a\u00020C8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010ER\"\u0010Y\u001a\u00020\u00028\u0014@\u0014X\u0095.¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\u0016\u0010[\u001a\u00020C8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bZ\u0010ER\u0016\u0010]\u001a\u00020C8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\\\u0010ER\"\u0010e\u001a\u00020^8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b_\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\u0016\u0010i\u001a\u00020f8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bg\u0010hR\u0016\u0010m\u001a\u00020j8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bk\u0010lR\u001d\u0010s\u001a\u00020n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bo\u0010p\u001a\u0004\bq\u0010rR\u0016\u0010u\u001a\u00020C8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bt\u0010ER\u0016\u0010w\u001a\u00020M8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bv\u0010OR\u0016\u0010{\u001a\u00020x8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\by\u0010z¨\u0006\u007f"}, d2 = {"Le/a/f/a/a/a;", "Le/a/f/a/c;", "Le/a/f/a/a/f;", "Le/a/f/a/a/g;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "M2", "()V", "nv", "", RemoteMessageConst.Notification.COLOR, "Y6", "(I)V", "yu", "f8", "()Ljava/lang/Integer;", "rippleColor", "L0", "M0", "", "jobDetails", "k9", "(Ljava/lang/String;)V", "w5", "textColor", "s4", "f5", "location", "qd", "b9", "Wg", "J6", "iconUrl", "title", "A2", "(Ljava/lang/String;Ljava/lang/String;)V", "P0", "foregroundColor", "backgroundRes", "Zq", "(II)V", "Bz", "b5", "Cp", "L", "kf", "q", "zt", "nx", "Le/a/k/a/k/l;", DTBMetricsConfiguration.CONFIG_DIR, "analyticsContext", "V1", "(Le/a/k/a/k/l;Ljava/lang/String;)V", "jd", "onDestroyView", "Lcom/truecaller/common/ui/textview/GoldShineTextView;", "UA", "()Lcom/truecaller/common/ui/textview/GoldShineTextView;", "textCarrier", "Lcom/truecaller/truecontext/TrueContext;", "aB", "()Lcom/truecaller/truecontext/TrueContext;", "trueContext", "WA", "textPhonebookNumber", "Landroid/widget/TextView;", "SA", "()Landroid/widget/TextView;", "spamCallerLabel", "YA", "textSimSlot", "g", "Le/a/f/a/a/f;", "jB", "()Le/a/f/a/a/f;", "setPresenter", "(Le/a/f/a/a/f;)V", "presenter", "VA", "textNumber", "XA", "textProfileName", "Le/a/f/a/a/o/a;", "h", "Le/a/f/a/a/o/a;", "getRejectMessage", "()Le/a/f/a/a/o/a;", "setRejectMessage", "(Le/a/f/a/a/o/a;)V", "rejectMessage", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "OA", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatar", "Landroid/widget/ImageView;", "PA", "()Landroid/widget/ImageView;", "imgUserBadge", "Le/a/f/x/d;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "iB", "()Le/a/f/x/d;", "binding", "TA", "textAltName", "RA", "regularCallerLabel", "Lcom/truecaller/timezone/TimezoneView;", "ZA", "()Lcom/truecaller/timezone/TimezoneView;", "timezoneView", "<init>", "j", AbstractC2405c.f7629a, "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/a.class */
public final class C13519a extends AbstractC13634c<AbstractC13527f> implements AbstractC13528g {

    /* renamed from: i */
    public static final /* synthetic */ l[] f39202i = {C22128a.m8621g0(C13519a.class, "binding", "getBinding()Lcom/truecaller/incallui/databinding/FragmentIncalluiIncomingBinding;", 0)};

    /* renamed from: j */
    public static final C13522c f39203j = new C13522c(null);

    /* renamed from: f */
    public final ViewBindingProperty f39204f = new C19350a(new C13521b());
    @Inject

    /* renamed from: g */
    public AbstractC13527f f39205g;
    @Inject

    /* renamed from: h */
    public AbstractC13544a f39206h;

    /* renamed from: e.a.f.a.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/f/a/a/a$a.class */
    public static final class View$OnClickListenerC13520a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f39207a;

        /* renamed from: b */
        public final /* synthetic */ Object f39208b;

        public View$OnClickListenerC13520a(int i, Object obj) {
            this.f39207a = i;
            this.f39208b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f39207a;
            if (i == 0) {
                C13530i c13530i = (C13530i) ((C13519a) this.f39208b).mo21466QA();
                C17891a1.C17902k.m15633Y0(c13530i.f39228p, false, 1, null);
                h<IncomingCallUIEvent> hVar = c13530i.f39223k;
                if (hVar != null) {
                    hVar.offer(IncomingCallUIEvent.REJECT_CLICK);
                } else {
                    s1.z.c.l.l("uiEventsChannel");
                    throw null;
                }
            } else if (i != 1) {
                throw null;
            } else {
                C13530i c13530i2 = (C13530i) ((C13519a) this.f39208b).mo21466QA();
                AbstractC13528g abstractC13528g = (AbstractC13528g) c13530i2.f57683a;
                if (abstractC13528g != null) {
                    abstractC13528g.mo21690kf();
                }
                h<IncomingCallUIEvent> hVar2 = c13530i2.f39223k;
                if (hVar2 != null) {
                    hVar2.offer(IncomingCallUIEvent.REJECT_WITH_MESSAGE_CLICK);
                } else {
                    s1.z.c.l.l("uiEventsChannel");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.f.a.a.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/a$b.class */
    public static final class C13521b extends m implements s1.z.b.l<C13519a, C13745d> {
        public C13521b() {
            super(1);
        }

        /* renamed from: d */
        public Object m21712d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            MotionLayout requireView = fragment.requireView();
            int i = C4013R.C4015id.button_accept_call;
            FloatingActionButton findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4013R.C4015id.button_reject_call;
                FloatingActionButton findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    i = C4013R.C4015id.button_reject_call_message;
                    FloatingActionButton findViewById3 = requireView.findViewById(i);
                    if (findViewById3 != null) {
                        i = C4013R.C4015id.guideline_answer_button_end;
                        Guideline guideline = (Guideline) requireView.findViewById(i);
                        if (guideline != null) {
                            i = C4013R.C4015id.image_profile_picture;
                            AvatarXView avatarXView = (AvatarXView) requireView.findViewById(i);
                            if (avatarXView != null) {
                                i = C4013R.C4015id.img_user_badge;
                                ImageView imageView = (ImageView) requireView.findViewById(i);
                                if (imageView != null) {
                                    MotionLayout motionLayout = requireView;
                                    i = C4013R.C4015id.text_alt_name;
                                    GoldShineTextView goldShineTextView = (GoldShineTextView) requireView.findViewById(i);
                                    if (goldShineTextView != null) {
                                        i = C4013R.C4015id.text_caller_label;
                                        View findViewById4 = requireView.findViewById(i);
                                        if (findViewById4 != null) {
                                            TextView textView = (TextView) findViewById4;
                                            C13750i c13750i = new C13750i(textView, textView);
                                            i = C4013R.C4015id.text_carrier;
                                            GoldShineTextView goldShineTextView2 = (GoldShineTextView) requireView.findViewById(i);
                                            if (goldShineTextView2 != null) {
                                                i = C4013R.C4015id.text_incoming_call;
                                                GoldShineTextView goldShineTextView3 = (GoldShineTextView) requireView.findViewById(i);
                                                if (goldShineTextView3 != null) {
                                                    i = C4013R.C4015id.text_job_details;
                                                    GoldShineTextView goldShineTextView4 = (GoldShineTextView) requireView.findViewById(i);
                                                    if (goldShineTextView4 != null) {
                                                        i = C4013R.C4015id.text_location;
                                                        GoldShineTextView goldShineTextView5 = (GoldShineTextView) requireView.findViewById(i);
                                                        if (goldShineTextView5 != null) {
                                                            i = C4013R.C4015id.text_number;
                                                            GoldShineTextView goldShineTextView6 = (GoldShineTextView) requireView.findViewById(i);
                                                            if (goldShineTextView6 != null) {
                                                                i = C4013R.C4015id.text_phonebook_number;
                                                                GoldShineTextView goldShineTextView7 = (GoldShineTextView) requireView.findViewById(i);
                                                                if (goldShineTextView7 != null) {
                                                                    i = C4013R.C4015id.text_profile_name;
                                                                    GoldShineTextView goldShineTextView8 = (GoldShineTextView) requireView.findViewById(i);
                                                                    if (goldShineTextView8 != null) {
                                                                        i = C4013R.C4015id.text_sim_slot;
                                                                        GoldShineTextView goldShineTextView9 = (GoldShineTextView) requireView.findViewById(i);
                                                                        if (goldShineTextView9 != null) {
                                                                            i = C4013R.C4015id.text_spam_caller_label;
                                                                            View findViewById5 = requireView.findViewById(i);
                                                                            if (findViewById5 != null) {
                                                                                TextView textView2 = (TextView) findViewById5;
                                                                                C13751j c13751j = new C13751j(textView2, textView2);
                                                                                i = C4013R.C4015id.timezone_view;
                                                                                TimezoneView timezoneView = (TimezoneView) requireView.findViewById(i);
                                                                                if (timezoneView != null) {
                                                                                    i = C4013R.C4015id.truecontext;
                                                                                    TrueContext trueContext = (TrueContext) requireView.findViewById(i);
                                                                                    if (trueContext != null) {
                                                                                        i = C4013R.C4015id.video_player_landscape;
                                                                                        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = (FullScreenRatioVideoPlayerView) requireView.findViewById(i);
                                                                                        if (fullScreenRatioVideoPlayerView != null) {
                                                                                            i = C4013R.C4015id.view_answer_arrows;
                                                                                            ArrowImageViewAnimation arrowImageViewAnimation = (ArrowImageViewAnimation) requireView.findViewById(i);
                                                                                            if (arrowImageViewAnimation != null) {
                                                                                                i = C4013R.C4015id.view_ripple;
                                                                                                HeartbeatRippleView heartbeatRippleView = (HeartbeatRippleView) requireView.findViewById(i);
                                                                                                if (heartbeatRippleView != null) {
                                                                                                    i = C4013R.C4015id.view_tag;
                                                                                                    TagXView tagXView = (TagXView) requireView.findViewById(i);
                                                                                                    if (tagXView != null) {
                                                                                                        i = C4013R.C4015id.view_tag_business;
                                                                                                        TagXView tagXView2 = (TagXView) requireView.findViewById(i);
                                                                                                        if (tagXView2 != null) {
                                                                                                            return new C13745d(motionLayout, findViewById, findViewById2, findViewById3, guideline, avatarXView, imageView, motionLayout, goldShineTextView, c13750i, goldShineTextView2, goldShineTextView3, goldShineTextView4, goldShineTextView5, goldShineTextView6, goldShineTextView7, goldShineTextView8, goldShineTextView9, c13751j, timezoneView, trueContext, fullScreenRatioVideoPlayerView, arrowImageViewAnimation, heartbeatRippleView, tagXView, tagXView2);
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
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.f.a.a.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/a$c.class */
    public static final class C13522c {
        public C13522c(f fVar) {
        }
    }

    /* renamed from: hB */
    public static final void m21715hB(C13519a c13519a) {
        MotionLayout motionLayout = c13519a.m21714iB().f39817f;
        AbstractC13527f mo21466QA = c13519a.mo21466QA();
        float progress = motionLayout.getProgress();
        int currentState = motionLayout.getCurrentState();
        int startState = motionLayout.getStartState();
        int endState = motionLayout.getEndState();
        C13530i c13530i = (C13530i) mo21466QA;
        Objects.requireNonNull(c13530i);
        boolean z = ((double) progress) >= 0.95d || currentState == C4013R.C4015id.incoming_incallui_answer_end_set;
        if (startState == C4013R.C4015id.incoming_incallui_answer_start_set || startState == C4013R.C4015id.incoming_incallui_vcid_answer_start_set) {
            boolean z2 = false;
            if (endState == C4013R.C4015id.incoming_incallui_answer_end_set) {
                z2 = true;
            }
            if (!z2 || !z) {
                return;
            }
            d.w2(c13530i, (s1.w.f) null, (j0) null, new C13529h(c13530i, null), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: A2 */
    public void mo21708A2(String str, String str2) {
        s1.z.c.l.e(str2, "title");
        TagXView tagXView = m21714iB().f39833v;
        tagXView.setIcon(str);
        tagXView.setTitle(str2);
        C19286f.m13684T(tagXView);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: Bz */
    public void mo21707Bz(String str, String str2) {
        s1.z.c.l.e(str2, "title");
        TagXView tagXView = m21714iB().f39834w;
        tagXView.setIcon(str);
        tagXView.setTitle(str2);
        C19286f.m13684T(tagXView);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: Cp */
    public void mo21706Cp(int i, int i2) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            TagXView tagXView = m21714iB().f39834w;
            Object obj = C26467a.f74235a;
            tagXView.setIconTint(C26467a.C26471d.m1787a(context, i));
            tagXView.setTitleColor(C26467a.C26471d.m1787a(context, i));
            tagXView.setBackgroundResource(i2);
        }
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: J6 */
    public void mo21705J6() {
        m21714iB().f39823l.m35618l();
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: L */
    public void mo21704L() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            FloatingActionButton floatingActionButton = m21714iB().f39812a;
            int i = C4013R.color.incallui_action_end_call_background_color;
            Object obj = C26467a.f74235a;
            ColorStateList valueOf = ColorStateList.valueOf(C26467a.C26471d.m1787a(activity, i));
            AtomicInteger atomicInteger = C26614s.f74505a;
            floatingActionButton.setBackgroundTintList(valueOf);
            m21714iB().f39812a.setImageResource(C4013R.C4014drawable.ic_button_incallui_hangup);
            MotionLayout motionLayout = m21714iB().f39817f;
            motionLayout.f1(1.0f);
            motionLayout.setTransitionListener((MotionLayout$h) null);
            MotionLayout motionLayout2 = m21714iB().f39817f;
            s1.z.c.l.d(motionLayout2, "binding.motionLayout");
            motionLayout2.setProgress(0.0f);
            motionLayout.q1(C4013R.C4015id.incoming_incallui_answer_end_set, C4013R.C4015id.incoming_incallui_accepted_end_set);
            motionLayout.f1(1.0f);
        }
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: L0 */
    public void mo21703L0(int i) {
        HeartbeatRippleView heartbeatRippleView = m21714iB().f39832u;
        AvatarXView avatarXView = m21714iB().f39815d;
        s1.z.c.l.d(avatarXView, "binding.imageProfilePicture");
        int i2 = HeartbeatRippleView.f11004f;
        heartbeatRippleView.m35705e(i, avatarXView, true);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: M0 */
    public void mo21702M0() {
        m21714iB().f39832u.m35706d();
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: M2 */
    public void mo21701M2() {
        FloatingActionButton floatingActionButton = m21714iB().f39814c;
        s1.z.c.l.d(floatingActionButton, "binding.buttonRejectCallMessage");
        C19286f.m13684T(floatingActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: OA */
    public AvatarXView mo21468OA() {
        AvatarXView avatarXView = m21714iB().f39815d;
        s1.z.c.l.d(avatarXView, "binding.imageProfilePicture");
        return avatarXView;
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: P0 */
    public void mo21700P0() {
        TagXView tagXView = m21714iB().f39833v;
        s1.z.c.l.d(tagXView, "binding.viewTag");
        C19286f.m13689O(tagXView);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: PA */
    public ImageView mo21467PA() {
        ImageView imageView = m21714iB().f39816e;
        s1.z.c.l.d(imageView, "binding.imgUserBadge");
        return imageView;
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: RA */
    public TextView mo21465RA() {
        TextView textView = m21714iB().f39819h.f39875a;
        s1.z.c.l.d(textView, "binding.textCallerLabel.textCallerLabel");
        return textView;
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: SA */
    public TextView mo21464SA() {
        TextView textView = m21714iB().f39828q.f39876a;
        s1.z.c.l.d(textView, "binding.textSpamCallerLabel.textSpamCallerLabel");
        return textView;
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: TA */
    public GoldShineTextView mo21463TA() {
        GoldShineTextView goldShineTextView = m21714iB().f39818g;
        s1.z.c.l.d(goldShineTextView, "binding.textAltName");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: UA */
    public GoldShineTextView mo21462UA() {
        GoldShineTextView goldShineTextView = m21714iB().f39820i;
        s1.z.c.l.d(goldShineTextView, "binding.textCarrier");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: V1 */
    public void mo21699V1(AbstractC15836l abstractC15836l, String str) {
        s1.z.c.l.e(abstractC15836l, DTBMetricsConfiguration.CONFIG_DIR);
        s1.z.c.l.e(str, "analyticsContext");
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m21714iB().f39831t;
        C19286f.m13684T(fullScreenRatioVideoPlayerView);
        fullScreenRatioVideoPlayerView.m34442e(abstractC15836l, str);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: VA */
    public GoldShineTextView mo21461VA() {
        GoldShineTextView goldShineTextView = m21714iB().f39824m;
        s1.z.c.l.d(goldShineTextView, "binding.textNumber");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: WA */
    public GoldShineTextView mo21460WA() {
        GoldShineTextView goldShineTextView = m21714iB().f39825n;
        s1.z.c.l.d(goldShineTextView, "binding.textPhonebookNumber");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: Wg */
    public void mo21698Wg(int i) {
        m21714iB().f39823l.setTextColorRes(i);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: XA */
    public GoldShineTextView mo21459XA() {
        GoldShineTextView goldShineTextView = m21714iB().f39826o;
        s1.z.c.l.d(goldShineTextView, "binding.textProfileName");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: Y6 */
    public void mo21697Y6(int i) {
        m21714iB().f39821j.setTextColor(getResources().getColor(i, null));
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: YA */
    public GoldShineTextView mo21458YA() {
        GoldShineTextView goldShineTextView = m21714iB().f39827p;
        s1.z.c.l.d(goldShineTextView, "binding.textSimSlot");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: ZA */
    public TimezoneView mo21457ZA() {
        TimezoneView timezoneView = m21714iB().f39829r;
        s1.z.c.l.d(timezoneView, "binding.timezoneView");
        return timezoneView;
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: Zq */
    public void mo21696Zq(int i, int i2) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            TagXView tagXView = m21714iB().f39833v;
            Object obj = C26467a.f74235a;
            tagXView.setIconTint(C26467a.C26471d.m1787a(context, i));
            tagXView.setTitleColor(C26467a.C26471d.m1787a(context, i));
            tagXView.setBackgroundResource(i2);
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    /* renamed from: aB */
    public TrueContext mo21456aB() {
        TrueContext trueContext = m21714iB().f39830s;
        s1.z.c.l.d(trueContext, "binding.truecontext");
        return trueContext;
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: b5 */
    public void mo21695b5() {
        TagXView tagXView = m21714iB().f39834w;
        s1.z.c.l.d(tagXView, "binding.viewTagBusiness");
        C19286f.m13689O(tagXView);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: b9 */
    public void mo21694b9() {
        GoldShineTextView goldShineTextView = m21714iB().f39823l;
        s1.z.c.l.d(goldShineTextView, "binding.textLocation");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: f5 */
    public void mo21693f5() {
        m21714iB().f39822k.m35618l();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: f8 */
    public Integer mo21421f8() {
        return Integer.valueOf(AbstractC17351f.m16221c(requireContext()).mo16186d(1));
    }

    /* renamed from: iB */
    public final C13745d m21714iB() {
        return (C13745d) this.f39204f.m34468b(this, f39202i[0]);
    }

    /* renamed from: jB */
    public AbstractC13527f mo21466QA() {
        AbstractC13527f abstractC13527f = this.f39205g;
        if (abstractC13527f != null) {
            return abstractC13527f;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: jd */
    public void mo21692jd() {
        FullScreenRatioVideoPlayerView.m34445b(m21714iB().f39831t, false, 1);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: k9 */
    public void mo21691k9(String str) {
        s1.z.c.l.e(str, "jobDetails");
        GoldShineTextView goldShineTextView = m21714iB().f39822k;
        goldShineTextView.setText(str);
        C19286f.m13684T(goldShineTextView);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: kf */
    public void mo21690kf() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            AbstractC13544a abstractC13544a = this.f39206h;
            if (abstractC13544a == null) {
                s1.z.c.l.l("rejectMessage");
                throw null;
            }
            C13545b c13545b = (C13545b) abstractC13544a;
            Objects.requireNonNull(c13545b);
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            c13545b.f39292a = context;
            AbstractC13551d abstractC13551d = (AbstractC13551d) ((C13553f) c13545b.f39293b).f57683a;
            if (abstractC13551d == null) {
                return;
            }
            abstractC13551d.mo21635S();
        }
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: nv */
    public void mo21689nv() {
        FloatingActionButton floatingActionButton = m21714iB().f39814c;
        s1.z.c.l.d(floatingActionButton, "binding.buttonRejectCallMessage");
        C19286f.m13687Q(floatingActionButton);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: nx */
    public void mo21688nx() {
        MotionLayout motionLayout = m21714iB().f39817f;
        motionLayout.q1(C4013R.C4015id.incoming_incallui_answer_start_set, C4013R.C4015id.incoming_incallui_vcid_answer_start_set);
        motionLayout.f1(1.0f);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4013R.layout.fragment_incallui_incoming, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…coming, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        ((C13530i) mo21466QA()).mo9806c();
        AbstractC13544a abstractC13544a = this.f39206h;
        if (abstractC13544a == null) {
            s1.z.c.l.l("rejectMessage");
            throw null;
        }
        ((C13545b) abstractC13544a).f39292a = null;
        C13519a.super.onDestroyView();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13634c
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        ((C13530i) mo21466QA()).mo9029Y0(this);
        ((C13530i) mo21466QA()).m21667ak(null);
        m21714iB().f39813b.setOnClickListener(new View$OnClickListenerC13520a(0, this));
        m21714iB().f39814c.setOnClickListener(new View$OnClickListenerC13520a(1, this));
        y yVar = new y();
        yVar.a = false;
        y yVar2 = new y();
        yVar2.a = false;
        MotionLayout motionLayout = m21714iB().f39817f;
        motionLayout.setOnTouchListener(new View$OnTouchListenerC13524c(motionLayout, this, yVar, yVar2));
        motionLayout.setTransitionListener(new C13525d(this, yVar, yVar2));
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: q */
    public void mo21687q() {
        MotionLayout motionLayout = m21714iB().f39817f;
        motionLayout.q1(C4013R.C4015id.incoming_incallui_answer_start_set, C4013R.C4015id.incoming_incallui_ended_end_set);
        motionLayout.f1(1.0f);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: qd */
    public void mo21686qd(String str) {
        s1.z.c.l.e(str, "location");
        GoldShineTextView goldShineTextView = m21714iB().f39823l;
        goldShineTextView.setText(str);
        C19286f.m13684T(goldShineTextView);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: s4 */
    public void mo21685s4(int i) {
        m21714iB().f39822k.setTextColorRes(i);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: w5 */
    public void mo21684w5() {
        GoldShineTextView goldShineTextView = m21714iB().f39822k;
        s1.z.c.l.d(goldShineTextView, "binding.textJobDetails");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: yu */
    public void mo21683yu() {
        m21714iB().f39821j.m35618l();
    }

    @Override // p193e.p194a.p717f.p718a.p719a.AbstractC13528g
    /* renamed from: zt */
    public void mo21682zt() {
        MotionLayout motionLayout = m21714iB().f39817f;
        motionLayout.q1(C4013R.C4015id.incoming_incallui_vcid_answer_start_set, C4013R.C4015id.incoming_incallui_ended_end_set);
        motionLayout.f1(1.0f);
    }
}
