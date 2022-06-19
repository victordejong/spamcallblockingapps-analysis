package p193e.p194a.p619d.p622b.p625b.p626a;

import android.app.ActivityOptions;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionLayout$h;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.ArrowImageViewAnimation;
import com.truecaller.common.p156ui.HeartbeatRippleView;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.legacy.incall.p190ui.LegacyVoipActivity;
import com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService;
import com.truecaller.voip.p192ui.util.view.VoipHeaderView;
import com.truecaller.voip.util.VoipAnalyticsContext;
import com.truecaller.voip.util.VoipAnalyticsFailedCallAction;
import com.truecaller.voip.util.VoipAnalyticsInCallUiAction;
import com.truecaller.voip.util.VoipAnalyticsNotificationAction;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p619d.p622b.p625b.AbstractC11147f;
import p193e.p194a.p619d.p628c.p629a.AbstractC11194n;
import p193e.p194a.p619d.p628c.p629a.AbstractC11198o;
import p193e.p194a.p619d.p628c.p629a.C11179b;
import p193e.p194a.p619d.p628c.p629a.C11180c;
import p193e.p194a.p619d.p628c.p629a.C11181d;
import p193e.p194a.p619d.p628c.p629a.C11182e;
import p193e.p194a.p619d.p628c.p629a.C11189i;
import p193e.p194a.p619d.p628c.p629a.C11190j;
import p193e.p194a.p619d.p628c.p629a.C11191k;
import p193e.p194a.p619d.p637c0.AbstractC11409g1;
import p193e.p194a.p851h5.AbstractC14965w;
import q3.a.w2.h;
import s1.f0.v;
import s1.j;
import s1.u.i;
import s1.z.c.l;
import s1.z.c.y;
@Metadata(bv = {1, 0, 3}, d1 = {"��ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\b¢\u0006\u0005\b¢\u0001\u00106J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\b \u0010\u000bJ\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010'\u001a\u00020\u00052\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J+\u00101\u001a\u00020\u00052\b\b\u0001\u0010-\u001a\u00020%2\b\b\u0001\u0010.\u001a\u00020%2\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020/H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0005H\u0016¢\u0006\u0004\b7\u00106J\u000f\u00108\u001a\u00020/H\u0016¢\u0006\u0004\b8\u00104J\u000f\u00109\u001a\u00020\u0005H\u0016¢\u0006\u0004\b9\u00106J/\u0010?\u001a\u00020\u00052\u0006\u0010:\u001a\u00020%2\u000e\u0010<\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0;2\u0006\u0010>\u001a\u00020=H\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0005H\u0016¢\u0006\u0004\bA\u00106J\u000f\u0010B\u001a\u00020\u0005H\u0016¢\u0006\u0004\bB\u00106J\u000f\u0010C\u001a\u00020\u0005H\u0016¢\u0006\u0004\bC\u00106J\u000f\u0010D\u001a\u00020\u0005H\u0016¢\u0006\u0004\bD\u00106J\u000f\u0010E\u001a\u00020\u0005H\u0016¢\u0006\u0004\bE\u00106J\u0017\u0010G\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\bH\u0016¢\u0006\u0004\bG\u0010\u000bJ\u000f\u0010H\u001a\u00020\u0005H\u0016¢\u0006\u0004\bH\u00106J\u000f\u0010I\u001a\u00020\u0005H\u0016¢\u0006\u0004\bI\u00106J\u000f\u0010J\u001a\u00020\u0005H\u0016¢\u0006\u0004\bJ\u00106J\u000f\u0010K\u001a\u00020\u0005H\u0016¢\u0006\u0004\bK\u00106R\u0016\u0010O\u001a\u00020L8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010S\u001a\u00020P8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010Z\u001a\u00020X8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bH\u0010YR\u0018\u0010^\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\"\u0010f\u001a\u00020_8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u0016\u0010i\u001a\u00020g8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bJ\u0010hR\u0016\u0010k\u001a\u00020P8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bj\u0010RR\"\u0010s\u001a\u00020l8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bm\u0010n\u001a\u0004\bo\u0010p\"\u0004\bq\u0010rR\"\u0010{\u001a\u00020t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bu\u0010v\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR\u0016\u0010\u007f\u001a\u00020|8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b}\u0010~R\u001a\u0010\u0083\u0001\u001a\u00030\u0080\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001a\u0010\u0087\u0001\u001a\u00030\u0084\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001a\u0010\u0089\u0001\u001a\u00030\u0080\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0082\u0001R\u0018\u0010\u008b\u0001\u001a\u00020T8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010VR\u001a\u0010\u008d\u0001\u001a\u00030\u0084\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u0086\u0001R\u001a\u0010\u0091\u0001\u001a\u00030\u008e\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001a\u0010\u0095\u0001\u001a\u00030\u0092\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R*\u0010\u009d\u0001\u001a\u00030\u0096\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001\"\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001a\u0010¡\u0001\u001a\u00030\u009e\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001¨\u0006£\u0001"}, d2 = {"Le/a/d/b/b/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/d/b/b/a/k;", "Landroid/os/Bundle;", "arguments", "Ls1/s;", "SA", "(Landroid/os/Bundle;)V", "", "label", "TA", "(Ljava/lang/String;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/d/c/a/n;", "logoType", "f1", "(Le/a/d/c/a/n;)V", "profileName", "setProfileName", "Le/a/d/c/a/o;", "voipUserBadgeTheme", "D", "(Le/a/d/c/a/o;)V", "", RemoteMessageConst.Notification.COLOR, "L0", "(I)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "avatarConfig", "setAvatarConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", UpdateKey.STATUS, "statusColor", "", "showAvatarRing", "jr", "(IIZ)V", "Z2", "()Z", "L", "()V", "mn", "n2", "y1", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "I0", "U4", "m0", "S", "x4", "message", "as", "q", "M0", "t", "onDestroyView", "Le/a/b0/a/b/a;", "x", "Le/a/b0/a/b/a;", "avatarXPresenter", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "l", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "rejectCallButton", "Landroid/widget/TextView;", "o", "Landroid/widget/TextView;", "statusTextView", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "profilePictureImageView", "Landroid/content/ServiceConnection;", "w", "Landroid/content/ServiceConnection;", "voipServiceConnection", "Le/a/d/c0/g1;", "g", "Le/a/d/c0/g1;", "getVoipSettings", "()Le/a/d/c0/g1;", "setVoipSettings", "(Le/a/d/c0/g1;)V", "voipSettings", "Lcom/truecaller/voip/ui/util/view/VoipHeaderView;", "Lcom/truecaller/voip/ui/util/view/VoipHeaderView;", "headerView", "k", "acceptCallButton", "Le/a/d/b/b/a/j;", "f", "Le/a/d/b/b/a/j;", "RA", "()Le/a/d/b/b/a/j;", "setPresenter", "(Le/a/d/b/b/a/j;)V", "presenter", "Le/a/h5/w;", "h", "Le/a/h5/w;", "getTcPermissionsUtil", "()Le/a/h5/w;", "setTcPermissionsUtil", "(Le/a/h5/w;)V", "tcPermissionsUtil", "Landroid/widget/ImageView;", "v", "Landroid/widget/ImageView;", "credBackground", "Lcom/truecaller/common/ui/textview/GoldShineTextView;", "n", "Lcom/truecaller/common/ui/textview/GoldShineTextView;", "profileNameTextView", "Landroid/widget/ImageButton;", "r", "Landroid/widget/ImageButton;", "minimiseButton", "p", "contactLabelTextView", "s", "logTextView", "m", "rejectMessageButton", "Landroidx/constraintlayout/motion/widget/MotionLayout;", "j", "Landroidx/constraintlayout/motion/widget/MotionLayout;", "motionLayoutView", "Lcom/truecaller/common/ui/HeartbeatRippleView;", "u", "Lcom/truecaller/common/ui/HeartbeatRippleView;", "heartBeatAnimation", "Le/a/p5/a0;", "i", "Le/a/p5/a0;", "getPermissionUtil", "()Le/a/p5/a0;", "setPermissionUtil", "(Le/a/p5/a0;)V", "permissionUtil", "Le/a/p5/i0;", "e", "Le/a/p5/i0;", "themedResourceProviderImpl", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d.b.b.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/a/a.class */
public final class C11122a extends AbstractC11127d implements AbstractC11134k {

    /* renamed from: e */
    public C19235i0 f32882e;
    @Inject

    /* renamed from: f */
    public AbstractC11133j f32883f;
    @Inject

    /* renamed from: g */
    public AbstractC11409g1 f32884g;
    @Inject

    /* renamed from: h */
    public AbstractC14965w f32885h;
    @Inject

    /* renamed from: i */
    public AbstractC19219a0 f32886i;

    /* renamed from: j */
    public MotionLayout f32887j;

    /* renamed from: k */
    public FloatingActionButton f32888k;

    /* renamed from: l */
    public FloatingActionButton f32889l;

    /* renamed from: m */
    public ImageButton f32890m;

    /* renamed from: n */
    public GoldShineTextView f32891n;

    /* renamed from: o */
    public TextView f32892o;

    /* renamed from: p */
    public GoldShineTextView f32893p;

    /* renamed from: q */
    public AvatarXView f32894q;

    /* renamed from: r */
    public ImageButton f32895r;

    /* renamed from: s */
    public TextView f32896s;

    /* renamed from: t */
    public VoipHeaderView f32897t;

    /* renamed from: u */
    public HeartbeatRippleView f32898u;

    /* renamed from: v */
    public ImageView f32899v;

    /* renamed from: w */
    public ServiceConnection f32900w;

    /* renamed from: x */
    public C8243a f32901x;

    /* renamed from: e.a.d.b.b.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/d/b/b/a/a$a.class */
    public static final class View$OnClickListenerC11123a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f32902a;

        /* renamed from: b */
        public final /* synthetic */ Object f32903b;

        public View$OnClickListenerC11123a(int i, Object obj) {
            this.f32902a = i;
            this.f32903b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f32902a;
            if (i == 0) {
                C11135l c11135l = (C11135l) ((C11122a) this.f32903b).m25174RA();
                AbstractC11147f abstractC11147f = c11135l.f32921d;
                if (abstractC11147f != null) {
                    abstractC11147f.mo25127Gh();
                }
                AbstractC11134k abstractC11134k = (AbstractC11134k) c11135l.f57683a;
                if (abstractC11134k != null) {
                    abstractC11134k.mo25163M0();
                }
                c11135l.f32927j.mo24716c(VoipAnalyticsInCallUiAction.REJECT);
            } else if (i == 1) {
                AbstractC11134k abstractC11134k2 = (AbstractC11134k) ((C11135l) ((C11122a) this.f32903b).m25174RA()).f57683a;
                if (abstractC11134k2 == null) {
                    return;
                }
                abstractC11134k2.mo25162S();
            } else if (i != 2) {
                throw null;
            } else {
                C11135l c11135l2 = (C11135l) ((C11122a) this.f32903b).m25174RA();
                AbstractC11134k abstractC11134k3 = (AbstractC11134k) c11135l2.f57683a;
                if (abstractC11134k3 != null) {
                    abstractC11134k3.mo25151x4();
                }
                c11135l2.f32927j.mo24716c(VoipAnalyticsInCallUiAction.DISMISS);
            }
        }
    }

    /* renamed from: e.a.d.b.b.a.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/b/a/a$b.class */
    public static final class DialogInterface$OnClickListenerC11124b implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f32905b;

        public DialogInterface$OnClickListenerC11124b(List list) {
            C11122a.this = r4;
            this.f32905b = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            h<VoipUser> mo25126J0;
            VoipUser voipUser;
            AbstractC11133j m25174RA = C11122a.this.m25174RA();
            int intValue = ((Number) this.f32905b.get(i)).intValue();
            C11135l c11135l = (C11135l) m25174RA;
            AbstractC11147f abstractC11147f = c11135l.f32921d;
            if (abstractC11147f != null && (mo25126J0 = abstractC11147f.mo25126J0()) != null && (voipUser = (VoipUser) C19291g.m13593R0(mo25126J0)) != null) {
                c11135l.f32925h.mo24113e(voipUser.f16284b, intValue != C4781R.string.voip_reject_message_custom_option ? Integer.valueOf(intValue) : null);
                AbstractC11134k abstractC11134k = (AbstractC11134k) c11135l.f57683a;
                if (abstractC11134k != null) {
                    abstractC11134k.mo25163M0();
                }
                AbstractC11147f abstractC11147f2 = c11135l.f32921d;
                if (abstractC11147f2 != null) {
                    abstractC11147f2.mo25127Gh();
                }
            }
            c11135l.f32927j.mo24716c(VoipAnalyticsInCallUiAction.REJECT_WITH_MESSAGE);
        }
    }

    /* renamed from: QA */
    public static final void m25175QA(C11122a c11122a, MotionLayout motionLayout) {
        AbstractC11133j abstractC11133j = c11122a.f32883f;
        if (abstractC11133j == null) {
            l.l("presenter");
            throw null;
        }
        float progress = motionLayout.getProgress();
        int currentState = motionLayout.getCurrentState();
        int startState = motionLayout.getStartState();
        int endState = motionLayout.getEndState();
        C11135l c11135l = (C11135l) abstractC11133j;
        boolean z = ((double) progress) >= 0.95d || currentState == C4781R.C4783id.incoming_call_answer_end_set;
        if (startState != C4781R.C4783id.incoming_call_answer_start_set || endState != C4781R.C4783id.incoming_call_answer_end_set || !z) {
            return;
        }
        c11135l.f32927j.mo24716c(VoipAnalyticsInCallUiAction.ACCEPT);
        c11135l.m25148Jj();
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: D */
    public void mo25167D(AbstractC11198o abstractC11198o) {
        l.e(abstractC11198o, "voipUserBadgeTheme");
        if (abstractC11198o instanceof C11191k) {
            String string = getString(C4781R.string.tcx_voip_spam_reports_score, new Object[]{((C11191k) abstractC11198o).f33080a});
            l.d(string, "getString(R.string.tcx_v…UserBadgeTheme.spamScore)");
            m25172TA(string);
        } else if (abstractC11198o instanceof C11179b) {
            String string2 = getString(C4781R.string.voip_caller_label_blocked);
            l.d(string2, "getString(R.string.voip_caller_label_blocked)");
            m25172TA(string2);
        } else if (abstractC11198o instanceof C11180c) {
            ImageView imageView = this.f32899v;
            if (imageView == null) {
                l.l("credBackground");
                throw null;
            }
            C19286f.m13684T(imageView);
            GoldShineTextView goldShineTextView = this.f32891n;
            if (goldShineTextView == null) {
                l.l("profileNameTextView");
                throw null;
            }
            int i = C4781R.color.credPrimaryColor;
            goldShineTextView.setTextColorRes(i);
            GoldShineTextView goldShineTextView2 = this.f32893p;
            if (goldShineTextView2 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            goldShineTextView2.setText(getString(C4781R.string.CredPrivilege));
            goldShineTextView2.setTextColorRes(C4781R.color.tcx_textPrimary_dark);
            goldShineTextView2.setBackground(C8605o.m28235e(goldShineTextView2.getContext(), i, 17));
            C19286f.m13684T(goldShineTextView2);
        } else if (abstractC11198o instanceof C11182e) {
            GoldShineTextView goldShineTextView3 = this.f32891n;
            if (goldShineTextView3 == null) {
                l.l("profileNameTextView");
                throw null;
            }
            goldShineTextView3.m35618l();
            GoldShineTextView goldShineTextView4 = this.f32893p;
            if (goldShineTextView4 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            goldShineTextView4.setText(getString(C4781R.string.tcx_voip_gold));
            goldShineTextView4.setTextColorRes(C4781R.color.tcx_voip_gold_text_color);
            goldShineTextView4.m35619k();
            C19286f.m13684T(goldShineTextView4);
        } else if (abstractC11198o instanceof C11190j) {
            GoldShineTextView goldShineTextView5 = this.f32891n;
            if (goldShineTextView5 == null) {
                l.l("profileNameTextView");
                throw null;
            }
            goldShineTextView5.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            GoldShineTextView goldShineTextView6 = this.f32893p;
            if (goldShineTextView6 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            goldShineTextView6.setText(getString(C4781R.string.tcx_voip_priority));
            goldShineTextView6.setTextColorRes(17170443);
            goldShineTextView6.setBackground(C8605o.m28235e(goldShineTextView6.getContext(), C4781R.color.tcx_voip_priority_color, 17));
            C19286f.m13684T(goldShineTextView6);
        } else if (abstractC11198o instanceof C11189i) {
            GoldShineTextView goldShineTextView7 = this.f32891n;
            if (goldShineTextView7 == null) {
                l.l("profileNameTextView");
                throw null;
            }
            goldShineTextView7.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            GoldShineTextView goldShineTextView8 = this.f32893p;
            if (goldShineTextView8 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            C19286f.m13689O(goldShineTextView8);
        } else if (abstractC11198o instanceof C11181d) {
            GoldShineTextView goldShineTextView9 = this.f32891n;
            if (goldShineTextView9 == null) {
                l.l("profileNameTextView");
                throw null;
            }
            goldShineTextView9.setTextColorRes(C4781R.color.voip_default_profile_name_color);
        }
        VoipHeaderView voipHeaderView = this.f32897t;
        if (voipHeaderView != null) {
            voipHeaderView.m34290D(abstractC11198o);
        } else {
            l.l("headerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: I0 */
    public void mo25166I0() {
        Context context = getContext();
        if (context != null) {
            l.d(context, "context ?: return");
            AbstractC19219a0 abstractC19219a0 = this.f32886i;
            if (abstractC19219a0 != null) {
                C19291g.m13498x1(context, abstractC19219a0);
            } else {
                l.l("permissionUtil");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: L */
    public void mo25165L() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            FloatingActionButton floatingActionButton = this.f32888k;
            if (floatingActionButton == null) {
                l.l("acceptCallButton");
                throw null;
            }
            int i = C4781R.color.tcx_voip_action_end_call_background_color;
            Object obj = C26467a.f74235a;
            ColorStateList valueOf = ColorStateList.valueOf(C26467a.C26471d.m1787a(activity, i));
            AtomicInteger atomicInteger = C26614s.f74505a;
            floatingActionButton.setBackgroundTintList(valueOf);
            FloatingActionButton floatingActionButton2 = this.f32888k;
            if (floatingActionButton2 == null) {
                l.l("acceptCallButton");
                throw null;
            }
            floatingActionButton2.setImageResource(C4781R.C4782drawable.ic_tcx_voip_hangup_action_outline_24dp);
            mo25157jr(C4781R.string.voip_status_connecting, C4781R.attr.voip_call_status_warning_color, true);
            MotionLayout motionLayout = this.f32887j;
            if (motionLayout == null) {
                l.l("motionLayoutView");
                throw null;
            }
            motionLayout.f1(1.0f);
            motionLayout.setTransitionListener((MotionLayout$h) null);
            MotionLayout motionLayout2 = this.f32887j;
            if (motionLayout2 == null) {
                l.l("motionLayoutView");
                throw null;
            }
            motionLayout2.setProgress(0.0f);
            motionLayout.q1(C4781R.C4783id.incoming_call_accepted_start_set, C4781R.C4783id.incoming_call_accepted_end_set);
            MotionLayout motionLayout3 = this.f32887j;
            if (motionLayout3 != null) {
                motionLayout3.f1(1.0f);
            } else {
                l.l("motionLayoutView");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: L0 */
    public void mo25164L0(int i) {
        HeartbeatRippleView heartbeatRippleView = this.f32898u;
        if (heartbeatRippleView == null) {
            l.l("heartBeatAnimation");
            throw null;
        }
        AvatarXView avatarXView = this.f32894q;
        if (avatarXView != null) {
            heartbeatRippleView.m35705e(i, avatarXView, false);
        } else {
            l.l("profilePictureImageView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: M0 */
    public void mo25163M0() {
        HeartbeatRippleView heartbeatRippleView = this.f32898u;
        if (heartbeatRippleView != null) {
            heartbeatRippleView.m35706d();
        } else {
            l.l("heartBeatAnimation");
            throw null;
        }
    }

    /* renamed from: RA */
    public final AbstractC11133j m25174RA() {
        AbstractC11133j abstractC11133j = this.f32883f;
        if (abstractC11133j != null) {
            return abstractC11133j;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: S */
    public void mo25162S() {
        new AlertDialog.Builder(getActivity()).setItems(C4781R.array.voip_button_message_options, new DialogInterface$OnClickListenerC11124b(i.T(new Integer[]{Integer.valueOf(C4781R.string.voip_reject_message_first_option), Integer.valueOf(C4781R.string.voip_reject_message_second_option), Integer.valueOf(C4781R.string.voip_reject_message_third_option), Integer.valueOf(C4781R.string.voip_reject_message_custom_option)}))).show();
    }

    /* renamed from: SA */
    public final void m25173SA(Bundle bundle) {
        AbstractC11133j abstractC11133j = this.f32883f;
        if (abstractC11133j == null) {
            l.l("presenter");
            throw null;
        }
        boolean z = false;
        boolean z2 = bundle != null ? bundle.getBoolean("com.truecaller.voip.incoming.ui.EXTRA_ACCEPT_CALL", false) : false;
        if (bundle != null) {
            z = bundle.getBoolean("com.truecaller.voip.incoming.ui.EXTRA_VOIP_NOTIFICATION_ACTION", false);
        }
        C11135l c11135l = (C11135l) abstractC11133j;
        c11135l.f32923f = z2;
        if (z2 && z) {
            c11135l.f32927j.mo24707l(VoipAnalyticsContext.NOTIFICATION.getValue(), VoipAnalyticsNotificationAction.ANSWERED);
        }
        if (c11135l.f32921d == null || !c11135l.f32923f) {
            return;
        }
        c11135l.m25148Jj();
    }

    /* renamed from: TA */
    public final void m25172TA(String str) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            ImageButton imageButton = this.f32895r;
            if (imageButton == null) {
                l.l("minimiseButton");
                throw null;
            }
            imageButton.setBackgroundResource(C4781R.C4782drawable.background_voip_minimise_spam_call);
            GoldShineTextView goldShineTextView = this.f32893p;
            if (goldShineTextView == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            goldShineTextView.setText(str);
            goldShineTextView.setTextColorRes(17170443);
            goldShineTextView.setBackground(C8605o.m28235e(activity, C4781R.color.tcx_voip_spam_color, 17));
            C19286f.m13684T(goldShineTextView);
            GoldShineTextView goldShineTextView2 = this.f32891n;
            if (goldShineTextView2 != null) {
                goldShineTextView2.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            } else {
                l.l("profileNameTextView");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: U4 */
    public void mo25161U4() {
        MotionLayout motionLayout = this.f32887j;
        if (motionLayout != null) {
            motionLayout.f1(0.0f);
        } else {
            l.l("motionLayoutView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: Z2 */
    public boolean mo25160Z2() {
        AbstractC14965w abstractC14965w = this.f32885h;
        if (abstractC14965w != null) {
            return abstractC14965w.mo19351f();
        }
        l.l("tcPermissionsUtil");
        throw null;
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: as */
    public void mo25159as(String str) {
        l.e(str, "message");
        AbstractC11409g1 abstractC11409g1 = this.f32884g;
        if (abstractC11409g1 == null) {
            l.l("voipSettings");
            throw null;
        } else if (!abstractC11409g1.getBoolean("qaShowDebugUI", false)) {
            TextView textView = this.f32896s;
            if (textView != null) {
                C19286f.m13689O(textView);
            } else {
                l.l("logTextView");
                throw null;
            }
        } else {
            TextView textView2 = this.f32896s;
            if (textView2 == null) {
                l.l("logTextView");
                throw null;
            }
            StringBuilder sb = new StringBuilder();
            TextView textView3 = this.f32896s;
            if (textView3 == null) {
                l.l("logTextView");
                throw null;
            }
            sb.append(textView3.getText());
            sb.append('\n');
            sb.append(str);
            String sb2 = sb.toString();
            Objects.requireNonNull(sb2, "null cannot be cast to non-null type kotlin.CharSequence");
            textView2.setText(v.g0(sb2).toString());
            TextView textView4 = this.f32896s;
            if (textView4 != null) {
                C19286f.m13684T(textView4);
            } else {
                l.l("logTextView");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: f1 */
    public void mo25158f1(AbstractC11194n abstractC11194n) {
        int i;
        l.e(abstractC11194n, "logoType");
        if (l.a(abstractC11194n, AbstractC11194n.C11196b.f33084a)) {
            i = C4781R.C4782drawable.ic_tcx_truecaller_voice_logo;
        } else if (!l.a(abstractC11194n, AbstractC11194n.C11197c.f33085a)) {
            if (!(abstractC11194n instanceof AbstractC11194n.C11195a)) {
                throw new s1.i();
            }
            throw new j(C22128a.m8543z2("An operation is not implemented: ", "assistant is not supported by legacy voip"));
        } else {
            i = C4781R.C4782drawable.ic_tcx_truecaller_voice_logo_uk;
        }
        VoipHeaderView voipHeaderView = this.f32897t;
        if (voipHeaderView != null) {
            voipHeaderView.setLogo(i);
        } else {
            l.l("headerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: jr */
    public void mo25157jr(int i, int i2, boolean z) {
        C19235i0 c19235i0 = this.f32882e;
        if (c19235i0 == null) {
            l.l("themedResourceProviderImpl");
            throw null;
        }
        int m13612L = C19291g.m13612L(c19235i0.f53605a, i2);
        TextView textView = this.f32892o;
        if (textView == null) {
            l.l("statusTextView");
            throw null;
        }
        textView.setText(i);
        TextView textView2 = this.f32892o;
        if (textView2 != null) {
            textView2.setTextColor(m13612L);
        } else {
            l.l("statusTextView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: m0 */
    public void mo25156m0() {
        Context context = getContext();
        if (context != null) {
            l.d(context, "context ?: return");
            Intent data = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", context.getPackageName(), null));
            l.d(data, "Intent(Settings.ACTION_A…ntext.packageName, null))");
            startActivity(data);
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: mn */
    public void mo25155mn() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            AvatarXView avatarXView = this.f32894q;
            if (avatarXView == null) {
                l.l("profilePictureImageView");
                throw null;
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            String transitionName = avatarXView.getTransitionName();
            if (transitionName == null) {
                return;
            }
            l.d(transitionName, "ViewCompat.getTransition…ctureImageView) ?: return");
            Intent m34331pa = LegacyVoipActivity.m34331pa(activity);
            m34331pa.setFlags(0);
            AvatarXView avatarXView2 = this.f32894q;
            if (avatarXView2 != null) {
                startActivity(m34331pa, ActivityOptions.makeSceneTransitionAnimation(activity, avatarXView2, transitionName).toBundle());
            } else {
                l.l("profilePictureImageView");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: n2 */
    public boolean mo25154n2() {
        String str;
        AbstractC14965w abstractC14965w = this.f32885h;
        if (abstractC14965w == null) {
            l.l("tcPermissionsUtil");
            throw null;
        }
        String[] mo19349h = abstractC14965w.mo19349h();
        int length = mo19349h.length;
        boolean z = false;
        int i = 0;
        while (true) {
            str = null;
            if (i >= length) {
                break;
            }
            str = mo19349h[i];
            if (shouldShowRequestPermissionRationale(str)) {
                break;
            }
            i++;
        }
        if (str != null) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11127d
    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        super.onAttach(context);
        this.f32901x = new C8243a(new C19235i0(context));
        this.f32882e = new C19235i0(context);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4781R.layout.fragment_voip_incoming, viewGroup, false);
        l.d(inflate, "inflater.inflate(R.layou…coming, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        Context context;
        AbstractC11133j abstractC11133j = this.f32883f;
        if (abstractC11133j == null) {
            l.l("presenter");
            throw null;
        }
        ((C11135l) abstractC11133j).mo9806c();
        ServiceConnection serviceConnection = this.f32900w;
        if (serviceConnection != null && (context = getContext()) != null) {
            context.unbindService(serviceConnection);
        }
        C11122a.super.onDestroyView();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        AbstractC11134k abstractC11134k;
        AbstractC11134k abstractC11134k2;
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        if (i != 1000) {
            return;
        }
        AbstractC11133j abstractC11133j = this.f32883f;
        if (abstractC11133j == null) {
            l.l("presenter");
            throw null;
        }
        AbstractC14965w abstractC14965w = this.f32885h;
        if (abstractC14965w == null) {
            l.l("tcPermissionsUtil");
            throw null;
        }
        boolean mo19351f = abstractC14965w.mo19351f();
        C11135l c11135l = (C11135l) abstractC11133j;
        if (mo19351f) {
            c11135l.m25149Ij();
            return;
        }
        AbstractC11134k abstractC11134k3 = (AbstractC11134k) c11135l.f57683a;
        if (abstractC11134k3 != null) {
            abstractC11134k3.mo25166I0();
        }
        AbstractC11134k abstractC11134k4 = (AbstractC11134k) c11135l.f57683a;
        if (abstractC11134k4 != null) {
            abstractC11134k4.mo25161U4();
        }
        c11135l.f32927j.mo24714e(VoipAnalyticsContext.VOIP_IN_CALL_UI.getValue(), VoipAnalyticsFailedCallAction.NO_MIC_PERMISSION);
        if (!c11135l.f32922e || (abstractC11134k = (AbstractC11134k) c11135l.f57683a) == null || abstractC11134k.mo25154n2() || (abstractC11134k2 = (AbstractC11134k) c11135l.f57683a) == null) {
            return;
        }
        abstractC11134k2.mo25156m0();
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C11122a.super.onViewCreated(view, bundle);
        MotionLayout findViewById = view.findViewById(C4781R.C4783id.motion_layout);
        l.d(findViewById, "view.findViewById(R.id.motion_layout)");
        this.f32887j = findViewById;
        FloatingActionButton findViewById2 = view.findViewById(C4781R.C4783id.button_accept_call);
        l.d(findViewById2, "view.findViewById(R.id.button_accept_call)");
        this.f32888k = findViewById2;
        FloatingActionButton findViewById3 = view.findViewById(C4781R.C4783id.button_reject_call);
        l.d(findViewById3, "view.findViewById(R.id.button_reject_call)");
        this.f32889l = findViewById3;
        View findViewById4 = view.findViewById(C4781R.C4783id.button_message);
        l.d(findViewById4, "view.findViewById(R.id.button_message)");
        this.f32890m = (ImageButton) findViewById4;
        View findViewById5 = view.findViewById(C4781R.C4783id.text_profile_name);
        l.d(findViewById5, "view.findViewById(R.id.text_profile_name)");
        this.f32891n = (GoldShineTextView) findViewById5;
        View findViewById6 = view.findViewById(C4781R.C4783id.text_status);
        l.d(findViewById6, "view.findViewById(R.id.text_status)");
        this.f32892o = (TextView) findViewById6;
        View findViewById7 = view.findViewById(C4781R.C4783id.txt_contact_label);
        l.d(findViewById7, "view.findViewById(R.id.txt_contact_label)");
        this.f32893p = (GoldShineTextView) findViewById7;
        View findViewById8 = view.findViewById(C4781R.C4783id.image_profile_picture);
        l.d(findViewById8, "view.findViewById(R.id.image_profile_picture)");
        this.f32894q = (AvatarXView) findViewById8;
        View findViewById9 = view.findViewById(C4781R.C4783id.button_minimise);
        l.d(findViewById9, "view.findViewById(R.id.button_minimise)");
        this.f32895r = (ImageButton) findViewById9;
        View findViewById10 = view.findViewById(C4781R.C4783id.text_log);
        l.d(findViewById10, "view.findViewById(R.id.text_log)");
        this.f32896s = (TextView) findViewById10;
        View findViewById11 = view.findViewById(C4781R.C4783id.view_answer_arrows);
        l.d(findViewById11, "view.findViewById(R.id.view_answer_arrows)");
        ArrowImageViewAnimation arrowImageViewAnimation = (ArrowImageViewAnimation) findViewById11;
        View findViewById12 = view.findViewById(C4781R.C4783id.view_header);
        l.d(findViewById12, "view.findViewById(R.id.view_header)");
        this.f32897t = (VoipHeaderView) findViewById12;
        View findViewById13 = view.findViewById(C4781R.C4783id.view_ripple);
        l.d(findViewById13, "view.findViewById(R.id.view_ripple)");
        this.f32898u = (HeartbeatRippleView) findViewById13;
        View findViewById14 = view.findViewById(C4781R.C4783id.cred_background);
        l.d(findViewById14, "view.findViewById(R.id.cred_background)");
        this.f32899v = (ImageView) findViewById14;
        AbstractC11133j abstractC11133j = this.f32883f;
        if (abstractC11133j == null) {
            l.l("presenter");
            throw null;
        }
        ((C11135l) abstractC11133j).mo9029Y0(this);
        m25173SA(getArguments());
        Context context = view.getContext();
        l.d(context, "view.context");
        ServiceConnectionC11129f serviceConnectionC11129f = new ServiceConnectionC11129f(this);
        this.f32900w = serviceConnectionC11129f;
        context.bindService(new Intent(context, LegacyIncomingVoipService.class), serviceConnectionC11129f, 0);
        FloatingActionButton floatingActionButton = this.f32889l;
        if (floatingActionButton == null) {
            l.l("rejectCallButton");
            throw null;
        }
        floatingActionButton.setOnClickListener(new View$OnClickListenerC11123a(0, this));
        ImageButton imageButton = this.f32890m;
        if (imageButton == null) {
            l.l("rejectMessageButton");
            throw null;
        }
        imageButton.setOnClickListener(new View$OnClickListenerC11123a(1, this));
        ImageButton imageButton2 = this.f32895r;
        if (imageButton2 == null) {
            l.l("minimiseButton");
            throw null;
        }
        imageButton2.setOnClickListener(new View$OnClickListenerC11123a(2, this));
        y yVar = new y();
        yVar.a = false;
        y yVar2 = new y();
        yVar2.a = false;
        MotionLayout motionLayout = this.f32887j;
        if (motionLayout == null) {
            l.l("motionLayoutView");
            throw null;
        }
        motionLayout.setOnTouchListener(new View$OnTouchListenerC11130g(this, yVar, yVar2));
        MotionLayout motionLayout2 = this.f32887j;
        if (motionLayout2 != null) {
            motionLayout2.setTransitionListener(new C11131h(this, yVar2, yVar));
        } else {
            l.l("motionLayoutView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: q */
    public void mo25153q() {
        MotionLayout motionLayout = this.f32887j;
        if (motionLayout == null) {
            l.l("motionLayoutView");
            throw null;
        }
        motionLayout.q1(C4781R.C4783id.incoming_call_ended_start_set, C4781R.C4783id.incoming_call_ended_end_set);
        MotionLayout motionLayout2 = this.f32887j;
        if (motionLayout2 != null) {
            motionLayout2.f1(1.0f);
        } else {
            l.l("motionLayoutView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    public void setAvatarConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, "avatarConfig");
        AvatarXView avatarXView = this.f32894q;
        if (avatarXView == null) {
            l.l("profilePictureImageView");
            throw null;
        }
        C8243a c8243a = this.f32901x;
        if (c8243a == null) {
            l.l("avatarXPresenter");
            throw null;
        }
        avatarXView.setPresenter(c8243a);
        C8243a c8243a2 = this.f32901x;
        if (c8243a2 != null) {
            C8243a.m28739ok(c8243a2, avatarXConfig, false, 2, null);
        } else {
            l.l("avatarXPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    public void setProfileName(String str) {
        l.e(str, "profileName");
        GoldShineTextView goldShineTextView = this.f32891n;
        if (goldShineTextView == null) {
            l.l("profileNameTextView");
            throw null;
        }
        goldShineTextView.setText(str);
        GoldShineTextView goldShineTextView2 = this.f32891n;
        if (goldShineTextView2 != null) {
            goldShineTextView2.setSelected(true);
        } else {
            l.l("profileNameTextView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: t */
    public void mo25152t() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: x4 */
    public void mo25151x4() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k
    /* renamed from: y1 */
    public void mo25150y1() {
        AbstractC14965w abstractC14965w = this.f32885h;
        if (abstractC14965w != null) {
            requestPermissions(abstractC14965w.mo19349h(), 1000);
        } else {
            l.l("tcPermissionsUtil");
            throw null;
        }
    }
}
