package p193e.p194a.p717f.p718a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.incallui.C4013R;
import com.truecaller.timezone.TimezoneView;
import com.truecaller.truecontext.TrueContext;
import e.f.a.r.k.c;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p717f.p718a.AbstractC13637d;
import p193e.p194a.p717f.p734z.AbstractC13795a;
import p193e.p194a.p717f.p734z.C13827k0;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import q3.a.x2.i1;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\b'\u0018��*\f\b��\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\u00020\u00032\u00020\u0004B\b¢\u0006\u0005\b\u008e\u0001\u0010\u0013J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000e¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\t¢\u0006\u0004\b\u0017\u0010\u0013J\u0017\u0010\u0019\u001a\u00020\t2\b\b\u0001\u0010\u0018\u001a\u00020\u000e¢\u0006\u0004\b\u0019\u0010\u0016J\u0015\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\f¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\t¢\u0006\u0004\b\u001c\u0010\u0013J\u0015\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000e¢\u0006\u0004\b\u001d\u0010\u0016J\r\u0010\u001e\u001a\u00020\t¢\u0006\u0004\b\u001e\u0010\u0013J\u000f\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010\u0013J\u000f\u0010 \u001a\u00020\tH\u0016¢\u0006\u0004\b \u0010\u0013J\u0015\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u0015\u0010&\u001a\u00020\t2\u0006\u0010%\u001a\u00020\f¢\u0006\u0004\b&\u0010\u001bJ\r\u0010'\u001a\u00020\t¢\u0006\u0004\b'\u0010\u0013J\u0017\u0010)\u001a\u00020\t2\b\b\u0001\u0010(\u001a\u00020\u000e¢\u0006\u0004\b)\u0010\u0016J\r\u0010*\u001a\u00020\t¢\u0006\u0004\b*\u0010\u0013J\u0015\u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020\f¢\u0006\u0004\b,\u0010\u001bJ\r\u0010-\u001a\u00020\t¢\u0006\u0004\b-\u0010\u0013J\u0015\u0010.\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000e¢\u0006\u0004\b.\u0010\u0016J\r\u0010/\u001a\u00020\t¢\u0006\u0004\b/\u0010\u0013J\r\u00100\u001a\u00020\t¢\u0006\u0004\b0\u0010\u0013J\r\u00101\u001a\u00020\t¢\u0006\u0004\b1\u0010\u0013J\u0017\u00103\u001a\u00020\t2\b\b\u0001\u00102\u001a\u00020\u000e¢\u0006\u0004\b3\u0010\u0016J\u0015\u00104\u001a\u00020\t2\u0006\u00102\u001a\u00020\f¢\u0006\u0004\b4\u0010\u001bJ\r\u00105\u001a\u00020\t¢\u0006\u0004\b5\u0010\u0013J\u000f\u00106\u001a\u00020\tH\u0016¢\u0006\u0004\b6\u0010\u0013J\u000f\u00107\u001a\u00020\tH\u0016¢\u0006\u0004\b7\u0010\u0013J\u0017\u00108\u001a\u00020\t2\b\b\u0001\u0010(\u001a\u00020\u000e¢\u0006\u0004\b8\u0010\u0016J\r\u00109\u001a\u00020\t¢\u0006\u0004\b9\u0010\u0013J\u0017\u0010;\u001a\u00020\t2\b\b\u0001\u0010:\u001a\u00020\u000e¢\u0006\u0004\b;\u0010\u0016J\r\u0010<\u001a\u00020\t¢\u0006\u0004\b<\u0010\u0013J\u0017\u0010>\u001a\u00020\t2\b\b\u0001\u0010=\u001a\u00020\u000e¢\u0006\u0004\b>\u0010\u0016J\u0015\u0010?\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\f¢\u0006\u0004\b?\u0010\u001bJ\r\u0010@\u001a\u00020\t¢\u0006\u0004\b@\u0010\u0013J\u0015\u0010A\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000e¢\u0006\u0004\bA\u0010\u0016J\r\u0010B\u001a\u00020\t¢\u0006\u0004\bB\u0010\u0013J\u0015\u0010E\u001a\u00020\t2\u0006\u0010D\u001a\u00020C¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\tH\u0016¢\u0006\u0004\bG\u0010\u0013J\u000f\u0010H\u001a\u00020\tH\u0016¢\u0006\u0004\bH\u0010\u0013J\u0015\u0010J\u001a\u00020\t2\u0006\u0010I\u001a\u00020\f¢\u0006\u0004\bJ\u0010\u001bJ\u0017\u0010L\u001a\u00020\t2\b\u0010K\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bL\u0010\u001bJ\u000f\u0010M\u001a\u00020\tH\u0016¢\u0006\u0004\bM\u0010\u0013J\u000f\u0010N\u001a\u00020\tH\u0016¢\u0006\u0004\bN\u0010\u0013J\u0015\u0010P\u001a\u00020\t2\u0006\u0010O\u001a\u00020\f¢\u0006\u0004\bP\u0010\u001bJ\u000f\u0010Q\u001a\u00020\tH\u0016¢\u0006\u0004\bQ\u0010\u0013J\u000f\u0010R\u001a\u00020\tH\u0016¢\u0006\u0004\bR\u0010\u0013J\u0013\u0010U\u001a\b\u0012\u0004\u0012\u00020T0S¢\u0006\u0004\bU\u0010VJ\u0017\u0010Y\u001a\u00020\t2\u0006\u0010X\u001a\u00020WH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020\tH\u0016¢\u0006\u0004\b[\u0010\u0013J\u000f\u0010\\\u001a\u00020\tH\u0016¢\u0006\u0004\b\\\u0010\u0013J\u000f\u0010]\u001a\u00020\tH\u0016¢\u0006\u0004\b]\u0010\u0013R\u0016\u0010a\u001a\u00020^8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b_\u0010`R\u0016\u0010e\u001a\u00020b8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bc\u0010dR\u0016\u0010i\u001a\u00020f8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bg\u0010hR\u0016\u0010m\u001a\u00020j8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bk\u0010lR\u0016\u0010o\u001a\u00020j8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bn\u0010lR\u0016\u0010s\u001a\u00020p8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bq\u0010rR\u0016\u0010u\u001a\u00020j8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bt\u0010lR\u0016\u0010w\u001a\u00020j8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bv\u0010lR\u0016\u0010{\u001a\u00020x8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\by\u0010zR\u0016\u0010}\u001a\u00020j8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b|\u0010lR(\u0010\u0085\u0001\u001a\u00020~8\u0004@\u0004X\u0084.¢\u0006\u0017\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R \u0010X\u001a\u00028��8$@$X¤\u000e¢\u0006\u0010\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001\"\u0006\b\u0088\u0001\u0010\u0089\u0001R\u0018\u0010\u008b\u0001\u001a\u00020j8$@$X¤\u0004¢\u0006\u0007\u001a\u0005\b\u008a\u0001\u0010lR\u0018\u0010\u008d\u0001\u001a\u00020p8$@$X¤\u0004¢\u0006\u0007\u001a\u0005\b\u008c\u0001\u0010r¨\u0006\u008f\u0001"}, d2 = {"Le/a/f/a/c;", "Le/a/f/a/d;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroidx/fragment/app/Fragment;", "Le/a/f/a/e;", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "carrierName", "", "simIcon", "xh", "(Ljava/lang/String;I)V", "C5", "()V", RemoteMessageConst.Notification.COLOR, "i4", "(I)V", "Nl", "number", "q3", "setPhoneNumber", "(Ljava/lang/String;)V", "J", "i1", "Ur", "bB", "Yn", "Le/a/f/z/k0;", "profilePicture", "C3", "(Le/a/f/z/k0;)V", "altName", "setAltName", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "textColor", "F1", "M4", AnalyticsConstants.CARRIER, "vl", "Xc", "Hy", "sz", "Oz", "r1", "profileName", "i3", "setProfileName", "D4", "cB", "ic", "p0", "Y3", "textSize", "S0", "P2", "badge", "EA", "Ns", "Z", "U0", "v5", "Le/a/f/z/a;", "callerLabel", "Jk", "(Le/a/f/z/a;)V", "Jw", "T1", "label", "Lh", "iconUrl", "Mc", "dB", "re", AnalyticsConstants.TIMEZONE, "setTimezone", "eB", "z", "Lq3/a/x2/i1;", "Le/a/k/a/k/z/b;", "getVideoPlayingState", "()Lq3/a/x2/i1;", "Le/a/m5/c;", "presenter", "P", "(Le/a/m5/c;)V", "n", "zl", "C0", "Landroid/widget/ImageView;", "PA", "()Landroid/widget/ImageView;", "imgUserBadge", "Lcom/truecaller/truecontext/TrueContext;", "aB", "()Lcom/truecaller/truecontext/TrueContext;", "trueContext", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "OA", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatar", "Lcom/truecaller/common/ui/textview/GoldShineTextView;", "UA", "()Lcom/truecaller/common/ui/textview/GoldShineTextView;", "textCarrier", "WA", "textPhonebookNumber", "Landroid/widget/TextView;", "RA", "()Landroid/widget/TextView;", "regularCallerLabel", "VA", "textNumber", "YA", "textSimSlot", "Lcom/truecaller/timezone/TimezoneView;", "ZA", "()Lcom/truecaller/timezone/TimezoneView;", "timezoneView", "XA", "textProfileName", "Le/a/b0/a/b/a;", "a", "Le/a/b0/a/b/a;", "getAvatarPresenter", "()Le/a/b0/a/b/a;", "setAvatarPresenter", "(Le/a/b0/a/b/a;)V", "avatarPresenter", "QA", "()Le/a/f/a/d;", "setPresenter", "(Le/a/f/a/d;)V", "TA", "textAltName", "SA", "spamCallerLabel", "<init>", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/c.class */
public abstract class AbstractC13634c<T extends AbstractC13637d<?>> extends Fragment implements AbstractC13638e {

    /* renamed from: a */
    public C8243a f39494a;

    /* renamed from: e.a.f.a.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/c$a.class */
    public static final class C13635a implements TrueContext.AbstractC4652a {
        public C13635a() {
            AbstractC13634c.this = r4;
        }

        @Override // com.truecaller.truecontext.TrueContext.AbstractC4652a
        /* renamed from: a */
        public void mo20717a(boolean z) {
            AbstractC13634c.this.mo21466QA().mo21449q7(z);
        }
    }

    /* renamed from: e.a.f.a.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/c$b.class */
    public static final class C13636b extends c<Drawable> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13636b(int i, int i2, int i3) {
            super(i2, i3);
            AbstractC13634c.this = r5;
        }

        /* renamed from: d */
        public void m21451d(Drawable drawable) {
        }

        /* renamed from: e */
        public void m21450e(Object obj, AbstractC22604d abstractC22604d) {
            Drawable drawable = (Drawable) obj;
            l.e(drawable, Constants.VAST_RESOURCE);
            if (!AbstractC13634c.this.isAdded() || AbstractC13634c.this.isDetached()) {
                return;
            }
            AbstractC13634c.this.mo21464SA().setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: C0 */
    public void mo21448C0() {
        mo21456aB().m34604g1(new C13635a());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: C3 */
    public final void mo21447C3(C13827k0 c13827k0) {
        l.e(c13827k0, "profilePicture");
        C8243a c8243a = this.f39494a;
        if (c8243a == null) {
            l.l("avatarPresenter");
            throw null;
        }
        C8243a.m28739ok(c8243a, C17891a1.C17902k.m15647R0(c13827k0), false, 2, null);
        mo21455bB();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: C5 */
    public final void mo21446C5() {
        C19286f.m13689O(mo21458YA());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: D4 */
    public final void mo21445D4() {
        mo21459XA().setSelected(true);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: EA */
    public final void mo21444EA(int i) {
        ImageView mo21467PA = mo21467PA();
        mo21467PA.setImageResource(i);
        C19286f.m13684T(mo21467PA);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: F1 */
    public final void mo21443F1(int i) {
        mo21463TA().setTextColorRes(i);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: G */
    public final void mo21442G() {
        C19286f.m13689O(mo21463TA());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Hy */
    public final void mo21441Hy(int i) {
        mo21462UA().setTextColor(getResources().getColor(i, null));
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: J */
    public final void mo21440J() {
        C19286f.m13689O(mo21461VA());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Jk */
    public final void mo21439Jk(AbstractC13795a abstractC13795a) {
        l.e(abstractC13795a, "callerLabel");
        TextView mo21465RA = mo21465RA();
        mo21465RA.setText(abstractC13795a.f40012a);
        mo21465RA.setBackgroundResource(abstractC13795a.f40013b);
        mo21465RA.setTextColor(mo21465RA.getResources().getColor(abstractC13795a.f40014c));
        mo21438Jw();
        mo21412re();
    }

    /* renamed from: Jw */
    public void mo21438Jw() {
        C19286f.m13684T(mo21465RA());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Lh */
    public final void mo21437Lh(String str) {
        l.e(str, "label");
        mo21464SA().setText(str);
        if (str.length() > 0) {
            mo21453dB();
        } else {
            mo21412re();
        }
        mo21428T1();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: M4 */
    public final void mo21436M4() {
        mo21463TA().m35618l();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Mc */
    public final void mo21435Mc(String str) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            Context requireContext = requireContext();
            l.d(requireContext, "requireContext()");
            Resources resources = requireContext.getResources();
            l.d(resources, "requireContext().resources");
            int m13497y = (int) C19291g.m13497y(resources, 16.0f);
            C22234h mo8414k = C17891a1.C17902k.m15655N1(activity).mo8414k();
            mo8414k.mo8420V(str);
            ((C21852d) mo8414k).m8429M(new C13636b(m13497y, m13497y, m13497y));
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Nl */
    public final void mo21434Nl() {
        mo21458YA().m35618l();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Ns */
    public final void mo21433Ns(String str) {
        l.e(str, "number");
        GoldShineTextView mo21460WA = mo21460WA();
        mo21460WA.setText(str);
        C19286f.m13684T(mo21460WA);
    }

    /* renamed from: OA */
    public abstract AvatarXView mo21468OA();

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Oz */
    public final void mo21432Oz() {
        C8243a c8243a = this.f39494a;
        if (c8243a != null) {
            c8243a.m28738pk(true);
        } else {
            l.l("avatarPresenter");
            throw null;
        }
    }

    /* renamed from: P */
    public void mo21431P(AbstractC18240c abstractC18240c) {
        l.e(abstractC18240c, "presenter");
        TrueContext mo21456aB = mo21456aB();
        C19286f.m13684T(mo21456aB);
        mo21456aB.setPresenter(abstractC18240c);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: P2 */
    public final void mo21430P2() {
        C19286f.m13689O(mo21467PA());
    }

    /* renamed from: PA */
    public abstract ImageView mo21467PA();

    /* renamed from: QA */
    public abstract T mo21466QA();

    /* renamed from: RA */
    public abstract TextView mo21465RA();

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: S0 */
    public final void mo21429S0(int i) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            mo21459XA().setTextSize(0, activity.getResources().getDimension(i));
        }
    }

    /* renamed from: SA */
    public abstract TextView mo21464SA();

    /* renamed from: T1 */
    public void mo21428T1() {
        C19286f.m13689O(mo21465RA());
    }

    /* renamed from: TA */
    public abstract GoldShineTextView mo21463TA();

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: U0 */
    public final void mo21427U0(int i) {
        mo21460WA().setTextColorRes(i);
    }

    /* renamed from: UA */
    public abstract GoldShineTextView mo21462UA();

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Ur */
    public final void mo21426Ur() {
        mo21461VA().m35618l();
    }

    /* renamed from: VA */
    public abstract GoldShineTextView mo21461VA();

    /* renamed from: WA */
    public abstract GoldShineTextView mo21460WA();

    /* renamed from: XA */
    public abstract GoldShineTextView mo21459XA();

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Xc */
    public final void mo21425Xc() {
        C19286f.m13689O(mo21462UA());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Y3 */
    public final void mo21424Y3() {
        mo21459XA().m35618l();
    }

    /* renamed from: YA */
    public abstract GoldShineTextView mo21458YA();

    /* renamed from: Yn */
    public void mo21423Yn() {
        C19286f.m13689O(mo21468OA());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: Z */
    public final void mo21422Z() {
        C19286f.m13689O(mo21460WA());
    }

    /* renamed from: ZA */
    public abstract TimezoneView mo21457ZA();

    /* renamed from: aB */
    public abstract TrueContext mo21456aB();

    /* renamed from: bB */
    public void mo21455bB() {
        C19286f.m13684T(mo21468OA());
    }

    /* renamed from: cB */
    public void mo21454cB() {
        C19286f.m13684T(mo21459XA());
    }

    /* renamed from: dB */
    public void mo21453dB() {
        C19286f.m13684T(mo21464SA());
    }

    /* renamed from: eB */
    public void mo21452eB() {
        C19286f.m13684T(mo21457ZA());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    public final i1<AbstractC15868b> getVideoPlayingState() {
        AbstractC13648m activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof AbstractC13648m)) {
            lVar = null;
        }
        AbstractC13648m abstractC13648m = lVar;
        if (abstractC13648m == null) {
            Context context = getContext();
            Objects.requireNonNull(context, "null cannot be cast to non-null type android.view.ContextThemeWrapper");
            Context baseContext = ((ContextThemeWrapper) context).getBaseContext();
            Objects.requireNonNull(baseContext, "null cannot be cast to non-null type com.truecaller.incallui.callui.InCallUIMvp.View");
            abstractC13648m = (AbstractC13648m) baseContext;
        }
        return abstractC13648m.mo21387Z8();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: i1 */
    public final void mo21420i1(int i) {
        mo21461VA().setTextColor(getResources().getColor(i, null));
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: i3 */
    public final void mo21419i3(int i) {
        mo21459XA().setText(getString(i));
        mo21454cB();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: i4 */
    public final void mo21418i4(int i) {
        int color = getResources().getColor(i, null);
        GoldShineTextView mo21458YA = mo21458YA();
        mo21458YA.setTextColor(color);
        MediaSessionCompat.m43212o1(mo21458YA, ColorStateList.valueOf(color));
    }

    /* renamed from: ic */
    public void mo21417ic() {
        C19286f.m13689O(mo21459XA());
    }

    /* renamed from: n */
    public void mo21416n() {
        C19286f.m13689O(mo21456aB());
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        AbstractC13634c.super.onViewCreated(view, bundle);
        Context context = mo21468OA().getContext();
        l.d(context, "avatar.context");
        this.f39494a = new C8243a(new C19235i0(context));
        AvatarXView mo21468OA = mo21468OA();
        C8243a c8243a = this.f39494a;
        if (c8243a != null) {
            mo21468OA.setPresenter(c8243a);
        } else {
            l.l("avatarPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: p0 */
    public final void mo21415p0(int i) {
        mo21459XA().setTextColorRes(i);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: q3 */
    public final void mo21414q3(int i) {
        GoldShineTextView mo21461VA = mo21461VA();
        mo21461VA.setText(getString(i));
        C19286f.m13684T(mo21461VA);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: r1 */
    public final void mo21413r1() {
        C8243a c8243a = this.f39494a;
        if (c8243a != null) {
            c8243a.m28738pk(false);
        } else {
            l.l("avatarPresenter");
            throw null;
        }
    }

    /* renamed from: re */
    public void mo21412re() {
        C19286f.m13689O(mo21464SA());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    public final void setAltName(String str) {
        l.e(str, "altName");
        GoldShineTextView mo21463TA = mo21463TA();
        mo21463TA.setText(getString(C4013R.string.incallui_alt_name, new Object[]{str}));
        C19286f.m13684T(mo21463TA);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    public final void setPhoneNumber(String str) {
        l.e(str, "number");
        GoldShineTextView mo21461VA = mo21461VA();
        mo21461VA.setText(str);
        C19286f.m13684T(mo21461VA);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    public final void setProfileName(String str) {
        l.e(str, "profileName");
        mo21459XA().setText(str);
        mo21454cB();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    public final void setTimezone(String str) {
        l.e(str, AnalyticsConstants.TIMEZONE);
        TimezoneView mo21457ZA = mo21457ZA();
        mo21452eB();
        mo21457ZA.setData(str);
        Context requireContext = requireContext();
        int i = C4013R.color.incallui_white_text_color;
        Object obj = C26467a.f74235a;
        mo21457ZA.m34611g1(C26467a.C26471d.m1787a(requireContext, i), C4013R.C4014drawable.background_timezone_transparent_white);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: sz */
    public final void mo21411sz() {
        mo21462UA().m35618l();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: v5 */
    public final void mo21410v5() {
        mo21460WA().m35618l();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: vl */
    public final void mo21409vl(String str) {
        l.e(str, AnalyticsConstants.CARRIER);
        GoldShineTextView mo21462UA = mo21462UA();
        mo21462UA.setText(str);
        C19286f.m13684T(mo21462UA);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: xh */
    public final void mo21408xh(String str, int i) {
        Drawable m13597Q;
        GoldShineTextView mo21458YA = mo21458YA();
        mo21458YA.setText(str);
        Resources resources = mo21458YA.getResources();
        l.d(resources, "resources");
        m13597Q = C19291g.m13597Q(resources, i, null);
        mo21458YA.setCompoundDrawablesWithIntrinsicBounds(m13597Q, (Drawable) null, (Drawable) null, (Drawable) null);
        C19286f.m13684T(mo21458YA);
    }

    /* renamed from: z */
    public void mo21407z() {
        C19286f.m13689O(mo21457ZA());
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13638e
    /* renamed from: zl */
    public void mo21406zl() {
        AbstractC18240c abstractC18240c = mo21456aB().f15498u;
        if (abstractC18240c != null) {
            abstractC18240c.mo9710V4();
        }
    }
}
