package p193e.p194a.p682e.p684b.p695o;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.Fragment;
import com.facebook.ads.AdError;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.bizmon.newBusiness.onboarding.p149ui.OnboardingIntroActivity;
import com.truecaller.bizmon.newBusiness.profile.p150ui.BizProfileActivity;
import com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity;
import com.truecaller.consentrefresh.ConsentRefreshActivity;
import com.truecaller.old.p171ui.activities.DialogBrowserActivity;
import com.truecaller.p183ui.components.ComboBase;
import com.truecaller.p183ui.settings.SettingsActivity;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.g;
import n3.r.a.l;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.C20399t1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.ProgressDialogC13310s0;
import p193e.p194a.p682e.p683a.DialogC12697c3;
import p193e.p194a.p682e.p699c2.C13197i0;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002B\b¢\u0006\u0005\b\u0095\u0001\u0010\u0015J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0016\u0010\u0015J)\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u001eH\u0016¢\u0006\u0004\b#\u0010!J\u0017\u0010$\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b$\u0010!J\u0017\u0010&\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u001eH\u0016¢\u0006\u0004\b&\u0010!J\u0017\u0010'\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b'\u0010!J\u0017\u0010(\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u001eH\u0016¢\u0006\u0004\b(\u0010!J'\u0010-\u001a\u00020\r2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020*0)2\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b/\u0010!J\u000f\u00100\u001a\u00020\rH\u0016¢\u0006\u0004\b0\u0010\u0015J\u0017\u00101\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b1\u0010!J\u0017\u00102\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b2\u0010!J\u0017\u00103\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b3\u0010!J\u000f\u00104\u001a\u00020\rH\u0016¢\u0006\u0004\b4\u0010\u0015J\u000f\u00105\u001a\u00020\rH\u0016¢\u0006\u0004\b5\u0010\u0015J\u000f\u00106\u001a\u00020\rH\u0016¢\u0006\u0004\b6\u0010\u0015J\u000f\u00107\u001a\u00020\rH\u0016¢\u0006\u0004\b7\u0010\u0015J'\u0010;\u001a\u00020\r2\u0006\u00108\u001a\u00020\u00172\u0006\u00109\u001a\u00020\u00172\u0006\u0010:\u001a\u00020\u001eH\u0016¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\rH\u0016¢\u0006\u0004\b=\u0010\u0015J\u0017\u0010>\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b>\u0010!J\u0017\u0010?\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b?\u0010!J\u0017\u0010@\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b@\u0010!J\u000f\u0010A\u001a\u00020\rH\u0016¢\u0006\u0004\bA\u0010\u0015J\u000f\u0010B\u001a\u00020\rH\u0016¢\u0006\u0004\bB\u0010\u0015J\u0017\u0010C\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\bC\u0010!J\u0017\u0010E\u001a\u00020\r2\u0006\u0010D\u001a\u00020+H\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010G\u001a\u00020\r2\u0006\u0010D\u001a\u00020+H\u0016¢\u0006\u0004\bG\u0010FJ\u0017\u0010I\u001a\u00020\r2\u0006\u0010H\u001a\u00020\u001aH\u0016¢\u0006\u0004\bI\u0010JJ\u0017\u0010L\u001a\u00020\r2\u0006\u0010K\u001a\u00020\u001eH\u0016¢\u0006\u0004\bL\u0010!J\u000f\u0010M\u001a\u00020\rH\u0016¢\u0006\u0004\bM\u0010\u0015J\u001f\u0010O\u001a\u00020\r2\u0006\u00109\u001a\u00020\u00172\u0006\u0010N\u001a\u00020\u0017H\u0016¢\u0006\u0004\bO\u0010PR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0018\u0010V\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010SR\u0018\u0010Y\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010[\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010SR\u0018\u0010]\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010XR\"\u0010e\u001a\u00020^8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b_\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\u0018\u0010i\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0018\u0010o\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010SR\u0018\u0010s\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0018\u0010u\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010SR\u0018\u0010w\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010SR\u0018\u0010y\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010XR\u0018\u0010{\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010XR\u0018\u0010}\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010lR\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u001a\u0010\u0083\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010XR\u001a\u0010\u0085\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010SR\u001a\u0010\u0087\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010SR\u001a\u0010\u0089\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010XR\u001a\u0010\u008b\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010SR\u001a\u0010\u008d\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010XR\u001a\u0010\u008f\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010XR\u001b\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bG\u0010\u0091\u0001R\u001a\u0010\u0094\u0001\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0093\u0001\u0010l¨\u0006\u0096\u0001"}, d2 = {"Le/a/e/b/o/i;", "Landroidx/fragment/app/Fragment;", "Le/a/e/b/o/n;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "onResume", "()V", "onStop", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "", "isVisible", "Fz", "(Z)V", "checked", "uh", "dj", "enabled", "ft", "e7", "Al", "", "Le/a/e/c2/i0;", "", "selectedValue", "Xw", "(Ljava/util/List;Ljava/lang/String;)V", "al", "At", "id", "fr", "A6", "ou", "Sg", "Ll", "kv", "title", "message", "deleteAccount", "ub", "(IIZ)V", "gt", "Xk", "qi", "sA", "bd", "Sx", "vq", "url", "rg", "(Ljava/lang/String;)V", C22021b.f61237c, "intent", "Sb", "(Landroid/content/Intent;)V", "cancelable", "E", "b0", "length", "Fc", "(II)V", "Landroid/widget/TextView;", "w", "Landroid/widget/TextView;", "deactivateAccountTextView", "r", "manageMyDataRestrictProcessingTextView", "j", "Landroid/view/View;", "whoCanSeeProfileContainer", "m", "adsChoicesTextView", "g", "superNovaContainer", "Le/a/e/b/o/m;", "y", "Le/a/e/b/o/m;", "OA", "()Le/a/e/b/o/m;", "setPresenter", "(Le/a/e/b/o/m;)V", "presenter", "Landroid/widget/Button;", "h", "Landroid/widget/Button;", "superNovaLearnMoreButton", "Landroidx/appcompat/widget/SwitchCompat;", "d", "Landroidx/appcompat/widget/SwitchCompat;", "availabilitySwitch", "p", "manageMyDataDownloadTextView", "Lcom/truecaller/ui/components/ComboBase;", "k", "Lcom/truecaller/ui/components/ComboBase;", "whoCanSeeProfileCombo", "o", "manageMyDataAccessTextView", "t", "socialLogoutFacebookTextView", "v", "deactivateAccountContainer", "e", "privateProfileVisitContainer", "i", "superNovaSwitchView", "Ln3/b/a/g;", "a", "Ln3/b/a/g;", "alertDialog", "s", "socialLogoutContainer", "x", "privacyPolicyTextView", "q", "manageMyDataRectifyTextView", AbstractC2405c.f7629a, "availabilityContainer", "u", "socialLogoutGoogleTextView", "n", "manageMyDataContainer", "l", "adsChoicesContainer", "Landroid/app/Dialog;", "Landroid/app/Dialog;", "loading", "f", "privateProfileVisitSwitch", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.b.o.i */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/o/i.class */
public final class C13017i extends Fragment implements AbstractC13026n {

    /* renamed from: a */
    public g f37800a;

    /* renamed from: b */
    public Dialog f37801b;

    /* renamed from: c */
    public View f37802c;

    /* renamed from: d */
    public SwitchCompat f37803d;

    /* renamed from: e */
    public View f37804e;

    /* renamed from: f */
    public SwitchCompat f37805f;

    /* renamed from: g */
    public View f37806g;

    /* renamed from: h */
    public Button f37807h;

    /* renamed from: i */
    public SwitchCompat f37808i;

    /* renamed from: j */
    public View f37809j;

    /* renamed from: k */
    public ComboBase f37810k;

    /* renamed from: l */
    public View f37811l;

    /* renamed from: m */
    public TextView f37812m;

    /* renamed from: n */
    public View f37813n;

    /* renamed from: o */
    public TextView f37814o;

    /* renamed from: p */
    public TextView f37815p;

    /* renamed from: q */
    public TextView f37816q;

    /* renamed from: r */
    public TextView f37817r;

    /* renamed from: s */
    public View f37818s;

    /* renamed from: t */
    public TextView f37819t;

    /* renamed from: u */
    public TextView f37820u;

    /* renamed from: v */
    public View f37821v;

    /* renamed from: w */
    public TextView f37822w;

    /* renamed from: x */
    public TextView f37823x;
    @Inject

    /* renamed from: y */
    public AbstractC13025m f37824y;

    /* renamed from: e.a.e.b.o.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/o/i$a.class */
    public static final class C13018a extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13018a() {
            super(0);
            C13017i.this = r4;
        }

        public Object invoke() {
            C13017i.this.m22205OA().mo22164Qe(true);
            return s.a;
        }
    }

    /* renamed from: e.a.e.b.o.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/o/i$b.class */
    public static final class C13019b extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ boolean f37827c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13019b(boolean z) {
            super(0);
            C13017i.this = r4;
            this.f37827c = z;
        }

        public Object invoke() {
            C13017i.this.m22205OA().mo22171Ei(this.f37827c);
            return s.a;
        }
    }

    /* renamed from: e.a.e.b.o.i$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/o/i$c.class */
    public static final class C13020c extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13020c() {
            super(0);
            C13017i.this = r4;
        }

        public Object invoke() {
            C13017i.this.m22205OA().mo22169Ff();
            return s.a;
        }
    }

    /* renamed from: e.a.e.b.o.i$d */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/o/i$d.class */
    public static final class C13021d extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13021d() {
            super(0);
            C13017i.this = r4;
        }

        public Object invoke() {
            C13017i.this.m22205OA().mo22156n3();
            return s.a;
        }
    }

    /* renamed from: PA */
    public static void m22204PA(C13017i c13017i, int i, Integer num, boolean z, a aVar, int i2) {
        l activity;
        if ((i2 & 2) != 0) {
            num = null;
        }
        if ((i2 & 4) != 0) {
            z = true;
        }
        g$a g_a = new g$a(c13017i.requireContext());
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f156f = c0037b.f151a.getText(i);
        g_a.f70854a.f163m = z;
        g_a.m3660i(2131887941, new DialogInterface$OnClickListenerC13022j(aVar));
        g_a.m3662g(2131887903, null);
        if (num != null) {
            g_a.m3656m(num.intValue());
        }
        if (c13017i.getActivity() == null || (activity = c13017i.getActivity()) == null || activity.isFinishing()) {
            return;
        }
        c13017i.f37800a = g_a.m3652q();
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: A6 */
    public void mo22203A6(boolean z) {
        TextView textView = this.f37814o;
        if (textView != null) {
            C19286f.m13683U(textView, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: Al */
    public void mo22202Al(boolean z) {
        SwitchCompat switchCompat = this.f37808i;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: At */
    public void mo22201At() {
        ConsentRefreshActivity.C3743a c3743a = ConsentRefreshActivity.f11306d;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        c3743a.m35615a(requireContext, true);
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: E */
    public void mo22200E(boolean z) {
        if (getActivity() != null) {
            l activity = getActivity();
            if (activity != null && activity.isFinishing()) {
                return;
            }
            try {
                if (this.f37801b == null) {
                    this.f37801b = new DialogC12697c3(requireContext(), z);
                }
                Dialog dialog = this.f37801b;
                if (dialog == null) {
                    return;
                }
                dialog.show();
            } catch (Exception e) {
            }
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: Fc */
    public void mo22199Fc(int i, int i2) {
        Toast.makeText(requireContext(), i, i2).show();
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: Fz */
    public void mo22198Fz(boolean z) {
        View view = this.f37802c;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: Ll */
    public void mo22197Ll() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(OnboardingIntroActivity.C3503a.m35860a(requireContext));
    }

    /* renamed from: OA */
    public final AbstractC13025m m22205OA() {
        AbstractC13025m abstractC13025m = this.f37824y;
        if (abstractC13025m != null) {
            return abstractC13025m;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: Sb */
    public void mo22196Sb(Intent intent) {
        s1.z.c.l.e(intent, "intent");
        startActivity(intent);
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: Sg */
    public void mo22195Sg() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(BizProfileActivity.C3509b.m35853a(requireContext));
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: Sx */
    public void mo22194Sx() {
        m22204PA(this, C2752R.string.SettingsConfirmGoogleSignOut, null, false, new C13021d(), 2);
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: Xk */
    public void mo22193Xk(boolean z) {
        TextView textView = this.f37819t;
        if (textView != null) {
            C19286f.m13683U(textView, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: Xw */
    public void mo22192Xw(List<? extends C13197i0> list, String str) {
        s1.z.c.l.e(list, RemoteMessageConst.DATA);
        ComboBase comboBase = this.f37810k;
        if (comboBase != null) {
            comboBase.setData(list);
        }
        ComboBase comboBase2 = this.f37810k;
        if (comboBase2 != null) {
            comboBase2.setSelection(C19045j0.m14206j(list, str));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: al */
    public void mo22191al(boolean z) {
        View view = this.f37809j;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: b */
    public void mo22190b(String str) {
        s1.z.c.l.e(str, "url");
        C12864a2.m22575S(requireContext(), str, false);
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: b0 */
    public void mo22189b0() {
        try {
            Dialog dialog = this.f37801b;
            if (dialog == null) {
                return;
            }
            if (dialog != null) {
                dialog.dismiss();
            }
            this.f37801b = null;
        } catch (Exception e) {
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: bd */
    public void mo22188bd() {
        m22204PA(this, C2752R.string.UpdateConfirmSignOut, null, false, new C13020c(), 2);
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: dj */
    public void mo22187dj(boolean z) {
        View view = this.f37804e;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: e7 */
    public void mo22186e7(boolean z) {
        View view = this.f37806g;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: fr */
    public void mo22185fr(boolean z) {
        View view = this.f37813n;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: ft */
    public void mo22184ft(boolean z) {
        SwitchCompat switchCompat = this.f37805f;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: gt */
    public void mo22183gt() {
        m22204PA(this, C2752R.string.SettingsPrivacyLogoutTextDeactivateConfirmation, null, false, new C13018a(), 6);
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: id */
    public void mo22182id(boolean z) {
        View view = this.f37811l;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: kv */
    public void mo22181kv() {
        CreateBusinessProfileActivity.C3532b c3532b = CreateBusinessProfileActivity.f10399r;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivityForResult(c3532b.m35823a(requireContext, false, true, false), (int) AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C13017i.super.onActivityResult(i, i2, intent);
        AbstractC13025m abstractC13025m = this.f37824y;
        if (abstractC13025m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        abstractC13025m.mo22170Fd(i, i2, intent, requireContext);
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C13017i.super.onAttach(context);
        SettingsActivity requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.ui.settings.SettingsActivity");
        AbstractC13025m abstractC13025m = (AbstractC13025m) ((C20399t1.C20427s) requireActivity.m34497wa()).f57480o.get();
        this.f37824y = abstractC13025m;
        if (abstractC13025m != null) {
            abstractC13025m.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.settings_privacy, viewGroup, false);
    }

    public void onResume() {
        C13017i.super.onResume();
        AbstractC13025m abstractC13025m = this.f37824y;
        if (abstractC13025m != null) {
            abstractC13025m.onResume();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onStop() {
        try {
            Dialog dialog = this.f37801b;
            if (dialog != null) {
                dialog.dismiss();
                this.f37801b = null;
            }
        } catch (Exception e) {
        }
        g gVar = this.f37800a;
        if (gVar != null) {
            gVar.dismiss();
        }
        this.f37800a = null;
        C13017i.super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C13017i.super.onViewCreated(view, bundle);
        SwitchCompat switchCompat = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsAvailabilitySwitch);
        this.f37803d = switchCompat;
        if (switchCompat != null) {
            switchCompat.setOnCheckedChangeListener(new C13010b(this));
        }
        View findViewById = view.findViewById(C2752R.C2754id.settingsAvailability);
        this.f37802c = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new View$OnClickListenerC13023k(this.f37803d));
        }
        SwitchCompat switchCompat2 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsWhoViewedMeSwitch);
        this.f37805f = switchCompat2;
        if (switchCompat2 != null) {
            switchCompat2.setOnCheckedChangeListener(new C13013e(this));
        }
        View findViewById2 = view.findViewById(C2752R.C2754id.settingsWhoViewedMe);
        this.f37804e = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View$OnClickListenerC13023k(this.f37805f));
        }
        Button button = (Button) view.findViewById(C2752R.C2754id.superNovaOptInLearnMoreBtn);
        this.f37807h = button;
        if (button != null) {
            button.setOnClickListener(new View$OnClickListenerC13014f(this));
        }
        SwitchCompat switchCompat3 = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsSuperNovaOptInSwitch);
        this.f37808i = switchCompat3;
        if (switchCompat3 != null) {
            switchCompat3.setOnCheckedChangeListener(new C13015g(this));
        }
        View findViewById3 = view.findViewById(C2752R.C2754id.superNovaOptIn);
        this.f37806g = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(new View$OnClickListenerC13023k(this.f37808i));
        }
        this.f37809j = view.findViewById(C2752R.C2754id.settingsWhoCanSeeProfileContainer);
        ComboBase comboBase = (ComboBase) view.findViewById(C2752R.C2754id.settingsAutoAccept);
        this.f37810k = comboBase;
        if (comboBase != null) {
            comboBase.m34539a(new C13016h(this));
        }
        this.f37811l = view.findViewById(C2752R.C2754id.settingsAdsChoices);
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.settingsAdsChoicesLink);
        this.f37812m = textView;
        if (textView != null) {
            textView.setOnClickListener(new View$OnClickListenerC13009a(this));
        }
        this.f37813n = view.findViewById(C2752R.C2754id.settingsMyDataContainer);
        TextView textView2 = (TextView) view.findViewById(C2752R.C2754id.settingsAccessMyData);
        this.f37814o = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View$OnClickListenerC0002a1(0, this));
        }
        TextView textView3 = (TextView) view.findViewById(C2752R.C2754id.settingsDownloadMyData);
        this.f37815p = textView3;
        if (textView3 != null) {
            textView3.setOnClickListener(new View$OnClickListenerC0002a1(1, this));
        }
        TextView textView4 = (TextView) view.findViewById(C2752R.C2754id.settingsRectifyData);
        this.f37816q = textView4;
        if (textView4 != null) {
            textView4.setOnClickListener(new View$OnClickListenerC0002a1(2, this));
        }
        TextView textView5 = (TextView) view.findViewById(C2752R.C2754id.settingsRestrictData);
        this.f37817r = textView5;
        if (textView5 != null) {
            textView5.setOnClickListener(new View$OnClickListenerC0002a1(3, this));
        }
        this.f37818s = view.findViewById(C2752R.C2754id.settingsSocialLogout);
        TextView textView6 = (TextView) view.findViewById(C2752R.C2754id.settingsFacebookLogout);
        this.f37819t = textView6;
        if (textView6 != null) {
            textView6.setOnClickListener(new View$OnClickListenerC25341j(0, this));
        }
        TextView textView7 = (TextView) view.findViewById(C2752R.C2754id.settingsGoogleLogout);
        this.f37820u = textView7;
        if (textView7 != null) {
            textView7.setOnClickListener(new View$OnClickListenerC25341j(1, this));
        }
        this.f37821v = view.findViewById(C2752R.C2754id.settingsDeactivateAccountContainer);
        TextView textView8 = (TextView) view.findViewById(C2752R.C2754id.settingsDeactivate);
        this.f37822w = textView8;
        if (textView8 != null) {
            textView8.setOnClickListener(new View$OnClickListenerC13011c(this));
        }
        TextView textView9 = (TextView) view.findViewById(C2752R.C2754id.settingsPrivacyPolicyTrigger);
        this.f37823x = textView9;
        if (textView9 != null) {
            textView9.setOnClickListener(new View$OnClickListenerC13012d(this));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: ou */
    public void mo22180ou() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        new ProgressDialogC13310s0(requireContext).show();
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: qi */
    public void mo22179qi(boolean z) {
        TextView textView = this.f37820u;
        if (textView != null) {
            C19286f.m13683U(textView, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: rg */
    public void mo22178rg(String str) {
        s1.z.c.l.e(str, "url");
        DialogBrowserActivity.m34833pa(requireContext(), str, false);
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: sA */
    public void mo22177sA(boolean z) {
        View view = this.f37818s;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: ub */
    public void mo22176ub(int i, int i2, boolean z) {
        m22204PA(this, i2, Integer.valueOf(i), false, new C13019b(z), 4);
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: uh */
    public void mo22175uh(boolean z) {
        SwitchCompat switchCompat = this.f37803d;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p695o.AbstractC13026n
    /* renamed from: vq */
    public void mo22174vq(boolean z) {
        View view = this.f37821v;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }
}
