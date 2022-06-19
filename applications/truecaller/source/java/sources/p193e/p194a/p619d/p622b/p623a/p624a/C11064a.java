package p193e.p194a.p619d.p622b.p623a.p624a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.IBinder;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Chronometer;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
import com.truecaller.voip.p192ui.incoming.audioroutepicker.AudioRouteViewItem;
import com.truecaller.voip.p192ui.util.view.VoipHeaderView;
import com.truecaller.voip.util.VoipAnalyticsInCallUiAction;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.r.a.k;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1131r0.C19263a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p619d.C11730l;
import p193e.p194a.p619d.p622b.p623a.AbstractC11105d;
import p193e.p194a.p619d.p622b.p623a.BinderC11121s;
import p193e.p194a.p619d.p628c.p629a.AbstractC11194n;
import p193e.p194a.p619d.p628c.p629a.AbstractC11198o;
import p193e.p194a.p619d.p628c.p629a.C11179b;
import p193e.p194a.p619d.p628c.p629a.C11180c;
import p193e.p194a.p619d.p628c.p629a.C11181d;
import p193e.p194a.p619d.p628c.p629a.C11182e;
import p193e.p194a.p619d.p628c.p629a.C11189i;
import p193e.p194a.p619d.p628c.p629a.C11190j;
import p193e.p194a.p619d.p628c.p629a.C11191k;
import p193e.p194a.p619d.p628c.p629a.p630a.C11167a;
import p193e.p194a.p619d.p628c.p633a0.p634l.AbstractC11265a;
import p193e.p194a.p619d.p628c.p633a0.p634l.C11267c;
import p193e.p194a.p619d.p637c0.AbstractC11409g1;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p663x.C12221p;
import q3.a.w2.h;
import s1.f0.v;
import s1.i;
import s1.j;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��ÿ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b*\u0001h\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\b¢\u0006\u0005\b \u0001\u0010\u001aJ\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010 \u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b \u0010\bJ\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010'\u001a\u00020\u00062\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J+\u0010.\u001a\u00020\u00062\b\b\u0001\u0010*\u001a\u00020)2\b\b\u0001\u0010+\u001a\u00020)2\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J\u001f\u00103\u001a\u00020\u00062\u0006\u00100\u001a\u00020,2\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J\u0017\u00106\u001a\u00020\u00062\u0006\u00105\u001a\u00020,H\u0016¢\u0006\u0004\b6\u00107J\u001f\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u00020)2\u0006\u00105\u001a\u00020,H\u0016¢\u0006\u0004\b9\u0010:J%\u0010?\u001a\u00020\u00062\f\u0010=\u001a\b\u0012\u0004\u0012\u00020<0;2\u0006\u0010>\u001a\u00020<H\u0016¢\u0006\u0004\b?\u0010@J\u0017\u0010B\u001a\u00020\u00062\u0006\u0010A\u001a\u00020<H\u0016¢\u0006\u0004\bB\u0010CJ\u0017\u0010E\u001a\u00020\u00062\u0006\u0010D\u001a\u00020,H\u0016¢\u0006\u0004\bE\u00107J\u000f\u0010F\u001a\u00020\u0006H\u0016¢\u0006\u0004\bF\u0010\u001aJ\u000f\u0010G\u001a\u00020\u0006H\u0016¢\u0006\u0004\bG\u0010\u001aJ\u0017\u0010I\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u0004H\u0016¢\u0006\u0004\bI\u0010\bJ\u000f\u0010J\u001a\u00020\u0006H\u0016¢\u0006\u0004\bJ\u0010\u001aJ\u000f\u0010K\u001a\u00020\u0006H\u0016¢\u0006\u0004\bK\u0010\u001aJ\u000f\u0010L\u001a\u00020\u0006H\u0016¢\u0006\u0004\bL\u0010\u001aJ\u000f\u0010M\u001a\u00020\u0006H\u0016¢\u0006\u0004\bM\u0010\u001aJ\u000f\u0010N\u001a\u00020\u0006H\u0016¢\u0006\u0004\bN\u0010\u001aR\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010Z\u001a\u00020W8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010^\u001a\u00020[8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\\\u0010]R(\u0010c\u001a\u0014\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00060_8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010g\u001a\u00020d8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\be\u0010fR\u0016\u0010k\u001a\u00020h8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010o\u001a\u00020l8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bm\u0010nR(\u0010q\u001a\u0014\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00060_8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010bR\u0016\u0010u\u001a\u00020r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bs\u0010tR\"\u0010}\u001a\u00020v8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bw\u0010x\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R\u0018\u0010\u0081\u0001\u001a\u00020~8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R*\u0010\u0089\u0001\u001a\u00030\u0082\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0017\u0010\u008a\u0001\u001a\u00020[8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bJ\u0010]R\u001a\u0010\u008e\u0001\u001a\u00030\u008b\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u001a\u0010\u0092\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001a\u0010\u0094\u0001\u001a\u00030\u008b\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u008d\u0001R\u001a\u0010\u0098\u0001\u001a\u00030\u0095\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0019\u0010\u009b\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\bM\u0010\u009a\u0001R\u0018\u0010\u009d\u0001\u001a\u00020W8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u009c\u0001\u0010YR\u0018\u0010\u009f\u0001\u001a\u00020S8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u009e\u0001\u0010U¨\u0006¡\u0001"}, d2 = {"Le/a/d/b/a/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/d/b/a/a/i;", "Le/a/d/c/a0/l/a;", "", "label", "Ls1/s;", "RA", "(Ljava/lang/String;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "()V", "Le/a/d/c/a/n;", "logoType", "f1", "(Le/a/d/c/a/n;)V", "profileName", "setProfileName", "Le/a/d/c/a/o;", "voipUserBadgeTheme", "D", "(Le/a/d/c/a/o;)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "avatarConfig", "setAvatarConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "", UpdateKey.STATUS, "statusColor", "", "showAvatarRing", "ke", "(IIZ)V", "startTimer", "", "chronometerBase", "l3", "(ZJ)V", "checked", "v3", "(Z)V", RemoteMessageConst.Notification.ICON, "D1", "(IZ)V", "", "Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;", "items", "selectedItem", "k3", "(Ljava/util/List;Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;)V", "item", "Er", "(Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;)V", "enabled", "V", "Oy", "x4", "message", "T6", "q", "k2", "onStop", "t", "onDestroyView", "Le/a/b0/a/b/a;", "v", "Le/a/b0/a/b/a;", "avatarXPresenter", "Landroid/widget/TextView;", "o", "Landroid/widget/TextView;", "logTextView", "Lcom/truecaller/common/ui/textview/GoldShineTextView;", "m", "Lcom/truecaller/common/ui/textview/GoldShineTextView;", "profileNameTextView", "Landroid/widget/ToggleButton;", "p", "Landroid/widget/ToggleButton;", "audioRouteToggleButton", "Lkotlin/Function2;", "Landroid/widget/CompoundButton;", "y", "Ls1/z/b/p;", "muteCheckedChangedListener", "Landroid/widget/ImageButton;", "r", "Landroid/widget/ImageButton;", "minimiseButton", "e/a/d/b/a/a/a$c", "w", "Le/a/d/b/a/a/a$c;", "connection", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "i", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "endCallButton", "x", "audioRouteCheckedChangedListener", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "k", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "profilePictureImageView", "Le/a/d/c0/g1;", "g", "Le/a/d/c0/g1;", "getVoipSettings", "()Le/a/d/c0/g1;", "setVoipSettings", "(Le/a/d/c0/g1;)V", "voipSettings", "Landroid/widget/Chronometer;", "j", "Landroid/widget/Chronometer;", "chronometer", "Le/a/d/b/a/a/h;", "f", "Le/a/d/b/a/a/h;", "QA", "()Le/a/d/b/a/a/h;", "setPresenter", "(Le/a/d/b/a/a/h;)V", "presenter", "muteToggleButton", "Landroid/widget/ImageView;", "s", "Landroid/widget/ImageView;", "callStateRingView", "Le/a/p5/i0;", "e", "Le/a/p5/i0;", "themedResourceProviderImpl", "u", "credBackground", "Landroidx/constraintlayout/motion/widget/MotionLayout;", "h", "Landroidx/constraintlayout/motion/widget/MotionLayout;", "motionLayoutView", "Lcom/truecaller/voip/ui/util/view/VoipHeaderView;", "Lcom/truecaller/voip/ui/util/view/VoipHeaderView;", "headerView", "l", "contactLabelTextView", "n", "statusTextView", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d.b.a.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/a/a.class */
public final class C11064a extends AbstractC11071d implements AbstractC11076i, AbstractC11265a {

    /* renamed from: e */
    public C19235i0 f32702e;
    @Inject

    /* renamed from: f */
    public AbstractC11075h f32703f;
    @Inject

    /* renamed from: g */
    public AbstractC11409g1 f32704g;

    /* renamed from: h */
    public MotionLayout f32705h;

    /* renamed from: i */
    public FloatingActionButton f32706i;

    /* renamed from: j */
    public Chronometer f32707j;

    /* renamed from: k */
    public AvatarXView f32708k;

    /* renamed from: l */
    public GoldShineTextView f32709l;

    /* renamed from: m */
    public GoldShineTextView f32710m;

    /* renamed from: n */
    public TextView f32711n;

    /* renamed from: o */
    public TextView f32712o;

    /* renamed from: p */
    public ToggleButton f32713p;

    /* renamed from: q */
    public ToggleButton f32714q;

    /* renamed from: r */
    public ImageButton f32715r;

    /* renamed from: s */
    public ImageView f32716s;

    /* renamed from: t */
    public VoipHeaderView f32717t;

    /* renamed from: u */
    public ImageView f32718u;

    /* renamed from: v */
    public C8243a f32719v;

    /* renamed from: w */
    public final ServiceConnectionC11067c f32720w = new ServiceConnectionC11067c();

    /* renamed from: x */
    public final p<CompoundButton, Boolean, s> f32721x = new C11066b(0, this);

    /* renamed from: y */
    public final p<CompoundButton, Boolean, s> f32722y = new C11066b(1, this);

    /* renamed from: e.a.d.b.a.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/d/b/a/a/a$a.class */
    public static final class View$OnClickListenerC11065a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f32723a;

        /* renamed from: b */
        public final /* synthetic */ Object f32724b;

        public View$OnClickListenerC11065a(int i, Object obj) {
            this.f32723a = i;
            this.f32724b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f32723a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                C11077j c11077j = (C11077j) ((C11064a) this.f32724b).m25330QA();
                AbstractC11076i abstractC11076i = (AbstractC11076i) c11077j.f57683a;
                if (abstractC11076i != null) {
                    abstractC11076i.mo25310x4();
                }
                c11077j.f32743i.mo24716c(VoipAnalyticsInCallUiAction.DISMISS);
                return;
            }
            C11077j c11077j2 = (C11077j) ((C11064a) this.f32724b).m25330QA();
            AbstractC11105d abstractC11105d = c11077j2.f32738d;
            if (abstractC11105d != null) {
                abstractC11105d.mo25226Q1();
            }
            AbstractC11076i abstractC11076i2 = (AbstractC11076i) c11077j2.f57683a;
            if (abstractC11076i2 != null) {
                abstractC11076i2.mo25319V(false);
            }
            c11077j2.f32743i.mo24716c(VoipAnalyticsInCallUiAction.REJECT);
        }
    }

    /* renamed from: e.a.d.b.a.a.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d/b/a/a/a$b.class */
    public static final class C11066b extends m implements p<CompoundButton, Boolean, s> {

        /* renamed from: b */
        public final /* synthetic */ int f32725b;

        /* renamed from: c */
        public final /* synthetic */ Object f32726c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11066b(int i, Object obj) {
            super(2);
            this.f32725b = i;
            this.f32726c = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [java.lang.Object, com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Speaker] */
        /* JADX WARN: Type inference failed for: r0v85, types: [com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Bluetooth] */
        /* renamed from: k */
        public final Object m25328k(Object obj, Object obj2) {
            h<C12221p> mo25227P1;
            C12221p c12221p;
            C11519b c11519b;
            s sVar = s.a;
            int i = this.f32725b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                l.e((CompoundButton) obj, "<anonymous parameter 0>");
                C11077j c11077j = (C11077j) ((C11064a) this.f32726c).m25330QA();
                AbstractC11105d abstractC11105d = c11077j.f32738d;
                if (abstractC11105d != null) {
                    abstractC11105d.mo25225R1(booleanValue);
                }
                c11077j.f32743i.mo24716c(booleanValue ? VoipAnalyticsInCallUiAction.MIC_OFF : VoipAnalyticsInCallUiAction.MIC_ON);
                return sVar;
            }
            boolean booleanValue2 = ((Boolean) obj2).booleanValue();
            l.e((CompoundButton) obj, "<anonymous parameter 0>");
            C11077j c11077j2 = (C11077j) ((C11064a) this.f32726c).m25330QA();
            AbstractC11105d abstractC11105d2 = c11077j2.f32738d;
            if (abstractC11105d2 != null && (mo25227P1 = abstractC11105d2.mo25227P1()) != null && (c12221p = (C12221p) C19291g.m13593R0(mo25227P1)) != null && (c11519b = c12221p.f35691e) != null) {
                if (!c11519b.f33812b.isEmpty()) {
                    String mo13768b = c11077j2.f32744j.mo13768b(C4781R.string.voip_button_phone, new Object[0]);
                    l.d(mo13768b, "resourceProvider.getStri…string.voip_button_phone)");
                    AudioRouteViewItem.Phone phone = new AudioRouteViewItem.Phone(mo13768b);
                    String mo13768b2 = c11077j2.f32744j.mo13768b(C4781R.string.voip_button_speaker, new Object[0]);
                    l.d(mo13768b2, "resourceProvider.getStri…ring.voip_button_speaker)");
                    ?? speaker = new AudioRouteViewItem.Speaker(mo13768b2);
                    List<C19263a> list = c11519b.f33812b;
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                    for (C19263a c19263a : list) {
                        arrayList.add(new AudioRouteViewItem.Bluetooth(c19263a.f53645a, c19263a.f53646b));
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(arrayList);
                    arrayList2.add(speaker);
                    arrayList2.add(phone);
                    AbstractC11514a abstractC11514a = c11519b.f33811a;
                    if (!(abstractC11514a instanceof AbstractC11514a.C11516b) && !(abstractC11514a instanceof AbstractC11514a.C11518d)) {
                        if (abstractC11514a instanceof AbstractC11514a.C11517c) {
                            phone = speaker;
                        } else if (!(abstractC11514a instanceof AbstractC11514a.C11515a)) {
                            throw new i();
                        } else {
                            C19263a c19263a2 = ((AbstractC11514a.C11515a) abstractC11514a).f33807a;
                            phone = new AudioRouteViewItem.Bluetooth(c19263a2.f53645a, c19263a2.f53646b);
                        }
                    }
                    AbstractC11076i abstractC11076i = (AbstractC11076i) c11077j2.f57683a;
                    if (abstractC11076i != null) {
                        abstractC11076i.mo25316k3(arrayList2, phone);
                    }
                    AbstractC11076i abstractC11076i2 = (AbstractC11076i) c11077j2.f57683a;
                    if (abstractC11076i2 != null) {
                        abstractC11076i2.mo25322D1(C19291g.m13613K1(c11519b.f33811a), true);
                    }
                } else if (booleanValue2) {
                    AbstractC11105d abstractC11105d3 = c11077j2.f32738d;
                    if (abstractC11105d3 != null) {
                        abstractC11105d3.mo25224S1(AbstractC11514a.C11517c.f33809a);
                    }
                } else {
                    AbstractC11105d abstractC11105d4 = c11077j2.f32738d;
                    if (abstractC11105d4 != null) {
                        abstractC11105d4.mo25224S1(AbstractC11514a.C11516b.f33808a);
                    }
                }
                c11077j2.f32743i.mo24716c(booleanValue2 ? VoipAnalyticsInCallUiAction.AUDIO_ROUTE_ON : VoipAnalyticsInCallUiAction.AUDIO_ROUTE_OFF);
            }
            return sVar;
        }
    }

    /* renamed from: e.a.d.b.a.a.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/a/a$c.class */
    public static final class ServiceConnectionC11067c implements ServiceConnection {
        public ServiceConnectionC11067c() {
            C11064a.this = r4;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            l.e(componentName, "className");
            l.e(iBinder, "binder");
            AbstractC11075h m25330QA = C11064a.this.m25330QA();
            AbstractC11105d abstractC11105d = ((BinderC11121s) iBinder).f32881a;
            C11077j c11077j = (C11077j) m25330QA;
            Objects.requireNonNull(c11077j);
            l.e(abstractC11105d, "binderView");
            abstractC11105d.mo25231L1(c11077j.f32740f);
            C19291g.m13599P0(c11077j, abstractC11105d.mo25233J0(), new C11084l(c11077j, abstractC11105d, null));
            C19291g.m13599P0(c11077j, abstractC11105d.mo25227P1(), new C11083k(c11077j, null));
            C11730l state = abstractC11105d.getState();
            AbstractC11076i abstractC11076i = (AbstractC11076i) c11077j.f57683a;
            if (abstractC11076i != null) {
                abstractC11076i.mo25315ke(state.m24129e(), state.m24132b(), state.m24131c());
            }
            AbstractC11076i abstractC11076i2 = (AbstractC11076i) c11077j.f57683a;
            if (abstractC11076i2 != null) {
                abstractC11076i2.mo25314l3(state.m24130d(), abstractC11105d.mo25229N1());
            }
            AbstractC11076i abstractC11076i3 = (AbstractC11076i) c11077j.f57683a;
            if (abstractC11076i3 != null) {
                abstractC11076i3.mo25320T6(state.f34455g);
            }
            AbstractC11076i abstractC11076i4 = (AbstractC11076i) c11077j.f57683a;
            if (abstractC11076i4 != null) {
                StringBuilder m8728C = C22128a.m8728C("Call encryption is ");
                m8728C.append(abstractC11105d.mo25223T1().f35690d ? "enabled" : "disabled");
                abstractC11076i4.mo25320T6(m8728C.toString());
            }
            c11077j.f32738d = abstractC11105d;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            l.e(componentName, "className");
            C11077j c11077j = (C11077j) C11064a.this.m25330QA();
            AbstractC11105d abstractC11105d = c11077j.f32738d;
            if (abstractC11105d != null) {
                abstractC11105d.mo25231L1(null);
            }
            c11077j.f32738d = null;
        }
    }

    /* renamed from: e.a.d.b.a.a.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/a/a$d.class */
    public static final class ViewTreeObserver$OnPreDrawListenerC11068d implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC11068d() {
            C11064a.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            AvatarXView avatarXView = C11064a.this.f32708k;
            if (avatarXView == null) {
                l.l("profilePictureImageView");
                throw null;
            }
            avatarXView.getViewTreeObserver().removeOnPreDrawListener(this);
            n3.r.a.l activity = C11064a.this.getActivity();
            if (activity == null) {
                return true;
            }
            activity.supportStartPostponedEnterTransition();
            return true;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: D */
    public void mo25323D(AbstractC11198o abstractC11198o) {
        l.e(abstractC11198o, "voipUserBadgeTheme");
        if (abstractC11198o instanceof C11191k) {
            String string = getString(C4781R.string.tcx_voip_spam_reports_score, new Object[]{((C11191k) abstractC11198o).f33080a});
            l.d(string, "getString(R.string.tcx_v…UserBadgeTheme.spamScore)");
            m25329RA(string);
        } else if (abstractC11198o instanceof C11179b) {
            String string2 = getString(C4781R.string.voip_caller_label_blocked);
            l.d(string2, "getString(R.string.voip_caller_label_blocked)");
            m25329RA(string2);
        } else if (abstractC11198o instanceof C11180c) {
            ImageView imageView = this.f32718u;
            if (imageView == null) {
                l.l("credBackground");
                throw null;
            }
            C19286f.m13684T(imageView);
            GoldShineTextView goldShineTextView = this.f32710m;
            if (goldShineTextView == null) {
                l.l("profileNameTextView");
                throw null;
            }
            int i = C4781R.color.credPrimaryColor;
            goldShineTextView.setTextColorRes(i);
            GoldShineTextView goldShineTextView2 = this.f32709l;
            if (goldShineTextView2 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            goldShineTextView2.setText(getString(C4781R.string.CredPrivilege));
            goldShineTextView2.setTextColorRes(C4781R.color.tcx_textPrimary_dark);
            goldShineTextView2.setBackground(C8605o.m28235e(goldShineTextView2.getContext(), i, 17));
            C19286f.m13684T(goldShineTextView2);
        } else if (abstractC11198o instanceof C11182e) {
            GoldShineTextView goldShineTextView3 = this.f32710m;
            if (goldShineTextView3 == null) {
                l.l("profileNameTextView");
                throw null;
            }
            goldShineTextView3.m35618l();
            GoldShineTextView goldShineTextView4 = this.f32709l;
            if (goldShineTextView4 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            goldShineTextView4.setText(getString(C4781R.string.tcx_voip_gold));
            goldShineTextView4.setTextColorRes(C4781R.color.tcx_voip_gold_text_color);
            goldShineTextView4.m35619k();
            C19286f.m13684T(goldShineTextView4);
        } else if (abstractC11198o instanceof C11190j) {
            GoldShineTextView goldShineTextView5 = this.f32710m;
            if (goldShineTextView5 == null) {
                l.l("profileNameTextView");
                throw null;
            }
            goldShineTextView5.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            GoldShineTextView goldShineTextView6 = this.f32709l;
            if (goldShineTextView6 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            goldShineTextView6.setText(getString(C4781R.string.tcx_voip_priority));
            goldShineTextView6.setTextColorRes(17170443);
            goldShineTextView6.setBackground(C8605o.m28235e(goldShineTextView6.getContext(), C4781R.color.tcx_voip_priority_color, 17));
            C19286f.m13684T(goldShineTextView6);
        } else if (abstractC11198o instanceof C11189i) {
            GoldShineTextView goldShineTextView7 = this.f32710m;
            if (goldShineTextView7 == null) {
                l.l("profileNameTextView");
                throw null;
            }
            goldShineTextView7.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            GoldShineTextView goldShineTextView8 = this.f32709l;
            if (goldShineTextView8 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            C19286f.m13689O(goldShineTextView8);
        } else if (abstractC11198o instanceof C11181d) {
            GoldShineTextView goldShineTextView9 = this.f32710m;
            if (goldShineTextView9 == null) {
                l.l("profileNameTextView");
                throw null;
            }
            goldShineTextView9.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            GoldShineTextView goldShineTextView10 = this.f32709l;
            if (goldShineTextView10 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            C19286f.m13689O(goldShineTextView10);
        }
        VoipHeaderView voipHeaderView = this.f32717t;
        if (voipHeaderView != null) {
            voipHeaderView.m34290D(abstractC11198o);
        } else {
            l.l("headerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: D1 */
    public void mo25322D1(int i, boolean z) {
        ToggleButton toggleButton = this.f32713p;
        if (toggleButton == null) {
            l.l("audioRouteToggleButton");
            throw null;
        }
        Context context = toggleButton.getContext();
        Object obj = C26467a.f74235a;
        toggleButton.setCompoundDrawablesWithIntrinsicBounds(C26467a.C26470c.m1789b(context, i), (Drawable) null, (Drawable) null, (Drawable) null);
        C11073f c11073f = this.f32721x;
        toggleButton.setOnCheckedChangeListener(null);
        toggleButton.setChecked(z);
        C11073f c11073f2 = c11073f;
        if (c11073f != null) {
            c11073f2 = new C11073f(c11073f);
        }
        toggleButton.setOnCheckedChangeListener(c11073f2);
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.p634l.AbstractC11265a
    /* renamed from: Er */
    public void mo24938Er(AudioRouteViewItem audioRouteViewItem) {
        l.e(audioRouteViewItem, "item");
        AbstractC11075h abstractC11075h = this.f32703f;
        if (abstractC11075h == null) {
            l.l("presenter");
            throw null;
        }
        C11077j c11077j = (C11077j) abstractC11075h;
        Objects.requireNonNull(c11077j);
        l.e(audioRouteViewItem, "item");
        AbstractC11105d abstractC11105d = c11077j.f32738d;
        if (abstractC11105d != null) {
            abstractC11105d.mo25224S1(C19291g.m13619I1(audioRouteViewItem));
        }
        AbstractC11076i abstractC11076i = (AbstractC11076i) c11077j.f57683a;
        if (abstractC11076i == null) {
            return;
        }
        abstractC11076i.mo25317k2();
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: Oy */
    public void mo25321Oy() {
        AvatarXView avatarXView = this.f32708k;
        if (avatarXView != null) {
            avatarXView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC11068d());
        } else {
            l.l("profilePictureImageView");
            throw null;
        }
    }

    /* renamed from: QA */
    public final AbstractC11075h m25330QA() {
        AbstractC11075h abstractC11075h = this.f32703f;
        if (abstractC11075h != null) {
            return abstractC11075h;
        }
        l.l("presenter");
        throw null;
    }

    /* renamed from: RA */
    public final void m25329RA(String str) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            ImageButton imageButton = this.f32715r;
            if (imageButton == null) {
                l.l("minimiseButton");
                throw null;
            }
            imageButton.setBackgroundResource(C4781R.C4782drawable.background_voip_minimise_spam_call);
            GoldShineTextView goldShineTextView = this.f32710m;
            if (goldShineTextView == null) {
                l.l("profileNameTextView");
                throw null;
            }
            goldShineTextView.setTextColorRes(C4781R.color.voip_default_profile_name_color);
            GoldShineTextView goldShineTextView2 = this.f32709l;
            if (goldShineTextView2 == null) {
                l.l("contactLabelTextView");
                throw null;
            }
            goldShineTextView2.setText(str);
            goldShineTextView2.setTextColorRes(17170443);
            goldShineTextView2.setBackground(C8605o.m28235e(activity, C4781R.color.tcx_voip_spam_color, 17));
            C19286f.m13684T(goldShineTextView2);
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: T6 */
    public void mo25320T6(String str) {
        l.e(str, "message");
        AbstractC11409g1 abstractC11409g1 = this.f32704g;
        if (abstractC11409g1 == null) {
            l.l("voipSettings");
            throw null;
        } else if (!abstractC11409g1.getBoolean("qaShowDebugUI", false)) {
            TextView textView = this.f32712o;
            if (textView != null) {
                C19286f.m13689O(textView);
            } else {
                l.l("logTextView");
                throw null;
            }
        } else {
            TextView textView2 = this.f32712o;
            if (textView2 == null) {
                l.l("logTextView");
                throw null;
            }
            StringBuilder sb = new StringBuilder();
            TextView textView3 = this.f32712o;
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
            TextView textView4 = this.f32712o;
            if (textView4 != null) {
                C19286f.m13684T(textView4);
            } else {
                l.l("logTextView");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: V */
    public void mo25319V(boolean z) {
        FloatingActionButton floatingActionButton = this.f32706i;
        if (floatingActionButton == null) {
            l.l("endCallButton");
            throw null;
        }
        floatingActionButton.setEnabled(z);
        ToggleButton toggleButton = this.f32714q;
        if (toggleButton == null) {
            l.l("muteToggleButton");
            throw null;
        }
        toggleButton.setEnabled(z);
        ToggleButton toggleButton2 = this.f32713p;
        if (toggleButton2 != null) {
            toggleButton2.setEnabled(z);
        } else {
            l.l("audioRouteToggleButton");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: f1 */
    public void mo25318f1(AbstractC11194n abstractC11194n) {
        int i;
        l.e(abstractC11194n, "logoType");
        if (l.a(abstractC11194n, AbstractC11194n.C11196b.f33084a)) {
            i = C4781R.C4782drawable.ic_tcx_truecaller_voice_logo;
        } else if (!l.a(abstractC11194n, AbstractC11194n.C11197c.f33085a)) {
            if (!(abstractC11194n instanceof AbstractC11194n.C11195a)) {
                throw new i();
            }
            throw new j(C22128a.m8543z2("An operation is not implemented: ", "assistant is not supported by legacy voip"));
        } else {
            i = C4781R.C4782drawable.ic_tcx_truecaller_voice_logo_uk;
        }
        VoipHeaderView voipHeaderView = this.f32717t;
        if (voipHeaderView != null) {
            voipHeaderView.setLogo(i);
        } else {
            l.l("headerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: k2 */
    public void mo25317k2() {
        k m42942K = getChildFragmentManager().m42942K("AUDIO_PICKER_FRAGMENT_TAG");
        Fragment fragment = m42942K;
        if (!(m42942K instanceof k)) {
            fragment = null;
        }
        k kVar = fragment;
        if (kVar != null) {
            kVar.dismissAllowingStateLoss();
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: k3 */
    public void mo25316k3(List<? extends AudioRouteViewItem> list, AudioRouteViewItem audioRouteViewItem) {
        l.e(list, "items");
        l.e(audioRouteViewItem, "selectedItem");
        l.e(list, "items");
        l.e(audioRouteViewItem, "selectedItem");
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("Items", new ArrayList<>(list));
        bundle.putParcelable("SelectedItem", audioRouteViewItem);
        C11267c c11267c = new C11267c();
        c11267c.setArguments(bundle);
        c11267c.show(getChildFragmentManager(), "AUDIO_PICKER_FRAGMENT_TAG");
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: ke */
    public void mo25315ke(int i, int i2, boolean z) {
        C19235i0 c19235i0 = this.f32702e;
        if (c19235i0 == null) {
            l.l("themedResourceProviderImpl");
            throw null;
        }
        int m13612L = C19291g.m13612L(c19235i0.f53605a, i2);
        TextView textView = this.f32711n;
        if (textView == null) {
            l.l("statusTextView");
            throw null;
        }
        textView.setText(i);
        TextView textView2 = this.f32711n;
        if (textView2 == null) {
            l.l("statusTextView");
            throw null;
        }
        textView2.setTextColor(m13612L);
        ImageView imageView = this.f32716s;
        if (imageView == null) {
            l.l("callStateRingView");
            throw null;
        }
        Drawable drawable = imageView.getDrawable();
        Objects.requireNonNull(drawable, "null cannot be cast to non-null type com.truecaller.voip.ui.util.drawable.CallStateAvatarRingDrawable");
        C11167a c11167a = (C11167a) drawable;
        int i3 = C4781R.attr.voip_call_status_warning_color;
        if (i2 == i3) {
            c11167a.m25079e(c11167a.m25082b(i3));
            if (!c11167a.f33031i) {
                c11167a.f33031i = true;
            }
        } else if (i2 == C4781R.attr.voip_call_status_ok_color) {
            c11167a.m25077g();
        } else if (i2 == C4781R.attr.voip_call_status_error_color) {
            c11167a.m25076h();
        } else {
            c11167a.m25079e(c11167a.m25082b(C4781R.attr.voip_call_status_neutral_color));
        }
        ImageView imageView2 = this.f32716s;
        if (imageView2 != null) {
            C19286f.m13683U(imageView2, z);
        } else {
            l.l("callStateRingView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: l3 */
    public void mo25314l3(boolean z, long j) {
        Chronometer chronometer = this.f32707j;
        if (chronometer == null) {
            l.l("chronometer");
            throw null;
        }
        C19286f.m13683U(chronometer, z);
        if (!z) {
            Chronometer chronometer2 = this.f32707j;
            if (chronometer2 != null) {
                chronometer2.stop();
                return;
            } else {
                l.l("chronometer");
                throw null;
            }
        }
        Chronometer chronometer3 = this.f32707j;
        if (chronometer3 == null) {
            l.l("chronometer");
            throw null;
        }
        chronometer3.setBase(j);
        Chronometer chronometer4 = this.f32707j;
        if (chronometer4 != null) {
            chronometer4.start();
        } else {
            l.l("chronometer");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11071d
    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        super.onAttach(context);
        this.f32702e = new C19235i0(context);
        this.f32719v = new C8243a(new C19235i0(context));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4781R.layout.fragment_voip, viewGroup, false);
        l.d(inflate, "inflater.inflate(R.layou…t_voip, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        C11064a.super.onDestroyView();
        AbstractC11075h abstractC11075h = this.f32703f;
        if (abstractC11075h != null) {
            ((AbstractC20574a) abstractC11075h).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onStart() {
        AbstractC11076i abstractC11076i;
        C11064a.super.onStart();
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        boolean bindService = requireContext.bindService(new Intent(requireContext, LegacyVoipService.class), this.f32720w, 0);
        AbstractC11075h abstractC11075h = this.f32703f;
        if (abstractC11075h == null) {
            l.l("presenter");
            throw null;
        }
        C11077j c11077j = (C11077j) abstractC11075h;
        Objects.requireNonNull(c11077j);
        if (bindService || (abstractC11076i = (AbstractC11076i) c11077j.f57683a) == null) {
            return;
        }
        abstractC11076i.mo25312t();
    }

    public void onStop() {
        C11064a.super.onStop();
        requireContext().unbindService(this.f32720w);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C11064a.super.onViewCreated(view, bundle);
        MotionLayout findViewById = view.findViewById(C4781R.C4783id.motion_layout);
        l.d(findViewById, "view.findViewById(R.id.motion_layout)");
        this.f32705h = findViewById;
        FloatingActionButton findViewById2 = view.findViewById(C4781R.C4783id.button_end_call);
        l.d(findViewById2, "view.findViewById(R.id.button_end_call)");
        this.f32706i = findViewById2;
        View findViewById3 = view.findViewById(C4781R.C4783id.chronometer);
        l.d(findViewById3, "view.findViewById(R.id.chronometer)");
        this.f32707j = (Chronometer) findViewById3;
        View findViewById4 = view.findViewById(C4781R.C4783id.text_profile_name);
        l.d(findViewById4, "view.findViewById(R.id.text_profile_name)");
        this.f32710m = (GoldShineTextView) findViewById4;
        View findViewById5 = view.findViewById(C4781R.C4783id.text_status);
        l.d(findViewById5, "view.findViewById(R.id.text_status)");
        this.f32711n = (TextView) findViewById5;
        View findViewById6 = view.findViewById(C4781R.C4783id.image_profile_picture);
        l.d(findViewById6, "view.findViewById(R.id.image_profile_picture)");
        this.f32708k = (AvatarXView) findViewById6;
        View findViewById7 = view.findViewById(C4781R.C4783id.txt_contact_label);
        l.d(findViewById7, "view.findViewById(R.id.txt_contact_label)");
        this.f32709l = (GoldShineTextView) findViewById7;
        View findViewById8 = view.findViewById(C4781R.C4783id.text_log);
        l.d(findViewById8, "view.findViewById(R.id.text_log)");
        this.f32712o = (TextView) findViewById8;
        View findViewById9 = view.findViewById(C4781R.C4783id.toggle_mute);
        l.d(findViewById9, "view.findViewById(R.id.toggle_mute)");
        this.f32714q = (ToggleButton) findViewById9;
        View findViewById10 = view.findViewById(C4781R.C4783id.toggle_audio_route);
        l.d(findViewById10, "view.findViewById(R.id.toggle_audio_route)");
        this.f32713p = (ToggleButton) findViewById10;
        View findViewById11 = view.findViewById(C4781R.C4783id.button_minimise);
        l.d(findViewById11, "view.findViewById(R.id.button_minimise)");
        this.f32715r = (ImageButton) findViewById11;
        View findViewById12 = view.findViewById(C4781R.C4783id.image_call_state_ring);
        l.d(findViewById12, "view.findViewById(R.id.image_call_state_ring)");
        ImageView imageView = (ImageView) findViewById12;
        this.f32716s = imageView;
        Context context = view.getContext();
        l.d(context, "view.context");
        imageView.setImageDrawable(new C11167a(context));
        View findViewById13 = view.findViewById(C4781R.C4783id.view_header);
        l.d(findViewById13, "view.findViewById(R.id.view_header)");
        this.f32717t = (VoipHeaderView) findViewById13;
        View findViewById14 = view.findViewById(C4781R.C4783id.cred_background);
        l.d(findViewById14, "view.findViewById(R.id.cred_background)");
        this.f32718u = (ImageView) findViewById14;
        TextView textView = this.f32712o;
        if (textView == null) {
            l.l("logTextView");
            throw null;
        }
        textView.setMovementMethod(new ScrollingMovementMethod());
        FloatingActionButton floatingActionButton = this.f32706i;
        if (floatingActionButton == null) {
            l.l("endCallButton");
            throw null;
        }
        floatingActionButton.setOnClickListener(new View$OnClickListenerC11065a(0, this));
        ToggleButton toggleButton = this.f32713p;
        if (toggleButton == null) {
            l.l("audioRouteToggleButton");
            throw null;
        }
        C11073f c11073f = this.f32721x;
        C11073f c11073f2 = c11073f;
        if (c11073f != null) {
            c11073f2 = new C11073f(c11073f);
        }
        toggleButton.setOnCheckedChangeListener(c11073f2);
        ToggleButton toggleButton2 = this.f32714q;
        if (toggleButton2 == null) {
            l.l("muteToggleButton");
            throw null;
        }
        C11073f c11073f3 = this.f32722y;
        C11073f c11073f4 = c11073f3;
        if (c11073f3 != null) {
            c11073f4 = new C11073f(c11073f3);
        }
        toggleButton2.setOnCheckedChangeListener(c11073f4);
        ImageButton imageButton = this.f32715r;
        if (imageButton == null) {
            l.l("minimiseButton");
            throw null;
        }
        imageButton.setOnClickListener(new View$OnClickListenerC11065a(1, this));
        AbstractC11075h abstractC11075h = this.f32703f;
        if (abstractC11075h != null) {
            ((C11077j) abstractC11075h).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: q */
    public void mo25313q() {
        MotionLayout motionLayout = this.f32705h;
        if (motionLayout == null) {
            l.l("motionLayoutView");
            throw null;
        }
        motionLayout.q1(C4781R.C4783id.outgoing_call_ended_start_set, C4781R.C4783id.outgoing_call_ended_end_set);
        MotionLayout motionLayout2 = this.f32705h;
        if (motionLayout2 != null) {
            motionLayout2.f1(1.0f);
        } else {
            l.l("motionLayoutView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    public void setAvatarConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, "avatarConfig");
        AvatarXView avatarXView = this.f32708k;
        if (avatarXView == null) {
            l.l("profilePictureImageView");
            throw null;
        }
        C8243a c8243a = this.f32719v;
        if (c8243a == null) {
            l.l("avatarXPresenter");
            throw null;
        }
        avatarXView.setPresenter(c8243a);
        C8243a c8243a2 = this.f32719v;
        if (c8243a2 != null) {
            C8243a.m28739ok(c8243a2, avatarXConfig, false, 2, null);
        } else {
            l.l("avatarXPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    public void setProfileName(String str) {
        GoldShineTextView goldShineTextView = this.f32710m;
        if (goldShineTextView == null) {
            l.l("profileNameTextView");
            throw null;
        }
        goldShineTextView.setText(str);
        GoldShineTextView goldShineTextView2 = this.f32710m;
        if (goldShineTextView2 != null) {
            goldShineTextView2.setSelected(true);
        } else {
            l.l("profileNameTextView");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: t */
    public void mo25312t() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: v3 */
    public void mo25311v3(boolean z) {
        ToggleButton toggleButton = this.f32714q;
        if (toggleButton == null) {
            l.l("muteToggleButton");
            throw null;
        }
        C11073f c11073f = this.f32722y;
        toggleButton.setOnCheckedChangeListener(null);
        toggleButton.setChecked(z);
        C11073f c11073f2 = c11073f;
        if (c11073f != null) {
            c11073f2 = new C11073f(c11073f);
        }
        toggleButton.setOnCheckedChangeListener(c11073f2);
    }

    @Override // p193e.p194a.p619d.p622b.p623a.p624a.AbstractC11076i
    /* renamed from: x4 */
    public void mo25310x4() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }
}
