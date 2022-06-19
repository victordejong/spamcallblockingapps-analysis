package p193e.p194a.p682e.p684b.p687c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.settings.SettingsActivity;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.C20399t1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b`\u0010\u0015J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J/\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00162\u000e\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00190\u00182\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010\"\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u00162\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\rH\u0016¢\u0006\u0004\b$\u0010\u0015J\u0017\u0010'\u001a\u00020\r2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u0019H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\r2\u0006\u0010,\u001a\u00020%H\u0016¢\u0006\u0004\b-\u0010(J\u0017\u0010.\u001a\u00020\r2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b.\u0010(J\u0017\u0010/\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u0019H\u0016¢\u0006\u0004\b/\u0010+J\u0017\u00100\u001a\u00020\r2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b0\u0010(J\u0017\u00101\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u0019H\u0016¢\u0006\u0004\b1\u0010+J\u0017\u00102\u001a\u00020\r2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b2\u0010(J\u0017\u00103\u001a\u00020\r2\u0006\u0010,\u001a\u00020%H\u0016¢\u0006\u0004\b3\u0010(J\u0017\u00104\u001a\u00020\r2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b4\u0010(J\u0017\u00105\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u0019H\u0016¢\u0006\u0004\b5\u0010+J\u001f\u00107\u001a\u00020%2\u0006\u00106\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b7\u00108J\u001f\u0010:\u001a\u00020\r2\u0006\u00109\u001a\u00020 2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\rH\u0016¢\u0006\u0004\b<\u0010\u0015R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010B\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010?R\u0018\u0010E\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010?R\u0018\u0010M\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010DR\u0018\u0010O\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010DR\u0018\u0010Q\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010DR\"\u0010Y\u001a\u00020R8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\u0018\u0010[\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010DR\u0018\u0010]\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010?R\u0018\u0010_\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010D¨\u0006a"}, d2 = {"Le/a/e/b/c/a;", "Landroidx/fragment/app/Fragment;", "Le/a/e/b/c/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "onResume", "()V", "", "requestCode", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "xc", "", "isVisible", "Rv", "(Z)V", "title", "gs", "(Ljava/lang/String;)V", "enabled", "ly", "ho", "Ub", "Ss", "Yo", "ee", "K7", "hl", "o7", "permission", "Su", "(Ljava/lang/String;I)Z", "intent", "Xn", "(Landroid/content/Intent;I)V", "Ap", "Landroid/widget/TextView;", "f", "Landroid/widget/TextView;", "messagingSmsRingtoneTextView", "d", "messagingChatRingtoneTextView", C22021b.f61237c, "Landroid/view/View;", "ringtoneSettingView", "Landroidx/appcompat/widget/SwitchCompat;", "i", "Landroidx/appcompat/widget/SwitchCompat;", "messagingRingtoneVibrateSwitchView", AbstractC2405c.f7629a, "ringtoneFileTextView", "h", "messagingRingtoneVibrateView", "e", "messagingChatRingtoneView", "j", "flashRingtoneView", "Le/a/e/b/c/d;", "l", "Le/a/e/b/c/d;", "OA", "()Le/a/e/b/c/d;", "setPresenter", "(Le/a/e/b/c/d;)V", "presenter", "g", "messagingSmsRingtoneView", "k", "flashRingtoneFileTextView", "a", "ringtonePermissionBannerView", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.b.c.a */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/c/a.class */
public final class C12896a extends Fragment implements AbstractC12902e {

    /* renamed from: a */
    public View f37470a;

    /* renamed from: b */
    public View f37471b;

    /* renamed from: c */
    public TextView f37472c;

    /* renamed from: d */
    public TextView f37473d;

    /* renamed from: e */
    public View f37474e;

    /* renamed from: f */
    public TextView f37475f;

    /* renamed from: g */
    public View f37476g;

    /* renamed from: h */
    public View f37477h;

    /* renamed from: i */
    public SwitchCompat f37478i;

    /* renamed from: j */
    public View f37479j;

    /* renamed from: k */
    public TextView f37480k;
    @Inject

    /* renamed from: l */
    public AbstractC12901d f37481l;

    /* renamed from: e.a.e.b.c.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/e/b/c/a$a.class */
    public static final class View$OnClickListenerC12897a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f37482a;

        /* renamed from: b */
        public final /* synthetic */ Object f37483b;

        public View$OnClickListenerC12897a(int i, Object obj) {
            this.f37482a = i;
            this.f37483b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f37482a;
            if (i == 0) {
                ((C12896a) this.f37483b).m22469OA().mo22451A2();
            } else if (i == 1) {
                ((C12896a) this.f37483b).m22469OA().mo22444j5();
            } else if (i == 2) {
                ((C12896a) this.f37483b).m22469OA().mo22446cc();
            } else if (i == 3) {
                ((C12896a) this.f37483b).m22469OA().mo22447Z9();
            } else if (i != 4) {
                throw null;
            } else {
                ((C12896a) this.f37483b).m22469OA().mo22443q6();
            }
        }
    }

    /* renamed from: e.a.e.b.c.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/c/a$b.class */
    public static final class C12898b implements CompoundButton.OnCheckedChangeListener {
        public C12898b() {
            C12896a.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C12896a.this.m22469OA().mo22445f8(z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: Ap */
    public void mo22466Ap() {
        Toast.makeText(getContext(), (int) C2752R.string.SettingsRingtoneStorageError, 1).show();
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: K7 */
    public void mo22465K7(boolean z) {
        SwitchCompat switchCompat = this.f37478i;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        }
    }

    /* renamed from: OA */
    public final AbstractC12901d m22469OA() {
        AbstractC12901d abstractC12901d = this.f37481l;
        if (abstractC12901d != null) {
            return abstractC12901d;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: Rv */
    public void mo22464Rv(boolean z) {
        View view = this.f37470a;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: Ss */
    public void mo22463Ss(boolean z) {
        View view = this.f37474e;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: Su */
    public boolean mo22462Su(String str, int i) {
        l.e(str, "permission");
        return C19291g.m13558d1(this, str, i, true);
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: Ub */
    public void mo22461Ub(String str) {
        l.e(str, "title");
        TextView textView = this.f37473d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: Xn */
    public void mo22460Xn(Intent intent, int i) {
        l.e(intent, "intent");
        startActivityForResult(intent, i);
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: Yo */
    public void mo22459Yo(String str) {
        l.e(str, "title");
        TextView textView = this.f37475f;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: ee */
    public void mo22458ee(boolean z) {
        View view = this.f37476g;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: gs */
    public void mo22457gs(String str) {
        l.e(str, "title");
        TextView textView = this.f37472c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: hl */
    public void mo22456hl(boolean z) {
        View view = this.f37479j;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: ho */
    public void mo22455ho(boolean z) {
        View view = this.f37471b;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: ly */
    public void mo22454ly(boolean z) {
        TextView textView = this.f37472c;
        if (textView != null) {
            C19286f.m13690N(textView, z, 0.0f, 2);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: o7 */
    public void mo22453o7(String str) {
        l.e(str, "title");
        TextView textView = this.f37480k;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        AbstractC12901d abstractC12901d = this.f37481l;
        if (abstractC12901d == null) {
            l.l("presenter");
            throw null;
        }
        abstractC12901d.onActivityResult(i, i2, intent);
        C12896a.super.onActivityResult(i, i2, intent);
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C12896a.super.onAttach(context);
        SettingsActivity requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.ui.settings.SettingsActivity");
        AbstractC12901d abstractC12901d = (AbstractC12901d) ((C20399t1.C20427s) requireActivity.m34497wa()).f57482q.get();
        this.f37481l = abstractC12901d;
        if (abstractC12901d != null) {
            abstractC12901d.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.settings_ringtone, viewGroup, false);
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        AbstractC12901d abstractC12901d = this.f37481l;
        if (abstractC12901d == null) {
            l.l("presenter");
            throw null;
        }
        abstractC12901d.onRequestPermissionsResult(i, strArr, iArr);
        C12896a.super.onRequestPermissionsResult(i, strArr, iArr);
    }

    public void onResume() {
        C12896a.super.onResume();
        AbstractC12901d abstractC12901d = this.f37481l;
        if (abstractC12901d != null) {
            abstractC12901d.onResume();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C12896a.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(C2752R.C2754id.settingsRingtonePermissionBanner);
        this.f37470a = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new View$OnClickListenerC12897a(0, this));
        }
        this.f37471b = view.findViewById(C2752R.C2754id.settingsRingtoneFileContainer);
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.settingsRingtoneFile);
        this.f37472c = textView;
        if (textView != null) {
            textView.setOnClickListener(new View$OnClickListenerC12897a(1, this));
        }
        this.f37473d = (TextView) view.findViewById(C2752R.C2754id.settingsMessagingChatMessageRingtoneTitle);
        View findViewById2 = view.findViewById(C2752R.C2754id.settingsMessagingChatMessageRingtone);
        this.f37474e = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View$OnClickListenerC12897a(2, this));
        }
        this.f37475f = (TextView) view.findViewById(C2752R.C2754id.settingsMessagingSmsMessageRingtoneTitle);
        View findViewById3 = view.findViewById(C2752R.C2754id.settingsMessagingSmsMessageRingtone);
        this.f37476g = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(new View$OnClickListenerC12897a(3, this));
        }
        SwitchCompat switchCompat = (SwitchCompat) view.findViewById(C2752R.C2754id.settingsMessagingRingtoneVibrateSwitch);
        this.f37478i = switchCompat;
        if (switchCompat != null) {
            switchCompat.setOnCheckedChangeListener(new C12898b());
        }
        View findViewById4 = view.findViewById(C2752R.C2754id.settingsMessagingRingtoneVibrate);
        this.f37477h = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(new View$OnClickListenerC12899b(this.f37478i));
        }
        this.f37479j = view.findViewById(C2752R.C2754id.settingsFlashRingtoneFileContainer);
        TextView textView2 = (TextView) view.findViewById(C2752R.C2754id.settingsFlashRingtoneFile);
        this.f37480k = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View$OnClickListenerC12897a(4, this));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12902e
    /* renamed from: xc */
    public void mo22452xc() {
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        StringBuilder m8728C = C22128a.m8728C("package:");
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        m8728C.append(requireContext.getPackageName());
        intent.setData(Uri.parse(m8728C.toString()));
        startActivity(intent);
    }
}
