package p193e.p194a.p682e.p684b.p693m;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.settings.SettingsActivity;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.C20399t1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b;\u0010\u0015J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001a\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001dR\u0018\u0010$\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u001dR\u0018\u0010&\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001dR\u0018\u0010(\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\u001dR\u0018\u0010*\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010\u001dR\u0018\u0010,\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010\u001dR\u0018\u0010.\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010\u001dR\u0018\u00100\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010\u001dR\"\u00108\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u0018\u0010:\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010\u001d¨\u0006<"}, d2 = {"Le/a/e/b/m/a;", "Landroidx/fragment/app/Fragment;", "Le/a/e/b/m/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "onResume", "()V", "", "isVisible", "wk", "(Z)V", "fy", "Landroid/widget/TextView;", "h", "Landroid/widget/TextView;", "privacySettingsItem", "d", "soundSettingsItem", "f", "messagingSettingsItem", AbstractC2405c.f7629a, "callerIdSettingsItem", C22021b.f61237c, "languageSettingsItem", "i", "backupSettingsItem", "j", "aboutSettingsItem", "k", "dataStorageSettingsItem", "a", "generalSettingsItem", "e", "appearanceSettingsItem", "Le/a/e/b/m/c;", "l", "Le/a/e/b/m/c;", "OA", "()Le/a/e/b/m/c;", "setPresenter", "(Le/a/e/b/m/c;)V", "presenter", "g", "blockSettingsItem", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.b.m.a */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/m/a.class */
public final class C12987a extends Fragment implements AbstractC12991e {

    /* renamed from: a */
    public TextView f37703a;

    /* renamed from: b */
    public TextView f37704b;

    /* renamed from: c */
    public TextView f37705c;

    /* renamed from: d */
    public TextView f37706d;

    /* renamed from: e */
    public TextView f37707e;

    /* renamed from: f */
    public TextView f37708f;

    /* renamed from: g */
    public TextView f37709g;

    /* renamed from: h */
    public TextView f37710h;

    /* renamed from: i */
    public TextView f37711i;

    /* renamed from: j */
    public TextView f37712j;

    /* renamed from: k */
    public TextView f37713k;
    @Inject

    /* renamed from: l */
    public AbstractC12989c f37714l;

    /* renamed from: OA */
    public final AbstractC12989c m22280OA() {
        AbstractC12989c abstractC12989c = this.f37714l;
        if (abstractC12989c != null) {
            return abstractC12989c;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p682e.p684b.p693m.AbstractC12991e
    /* renamed from: fy */
    public void mo22278fy(boolean z) {
        TextView textView = this.f37711i;
        if (textView != null) {
            C19286f.m13683U(textView, z);
        }
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C12987a.super.onAttach(context);
        SettingsActivity requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.ui.settings.SettingsActivity");
        AbstractC12989c abstractC12989c = (AbstractC12989c) ((C20399t1.C20427s) requireActivity.m34497wa()).f57472g.get();
        this.f37714l = abstractC12989c;
        if (abstractC12989c != null) {
            abstractC12989c.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.settings_main, viewGroup, false);
    }

    public void onResume() {
        C12987a.super.onResume();
        AbstractC12989c abstractC12989c = this.f37714l;
        if (abstractC12989c != null) {
            abstractC12989c.mo22275t4();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C12987a.super.onViewCreated(view, bundle);
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.settingsMainTrigger);
        this.f37703a = textView;
        if (textView != null) {
            C12864a2.m22565b(textView, C2752R.C2753drawable.ic_general);
        }
        TextView textView2 = this.f37703a;
        if (textView2 != null) {
            textView2.setOnClickListener(new View$OnClickListenerC4877d0(2, this));
        }
        TextView textView3 = (TextView) view.findViewById(C2752R.C2754id.settingsLanguageTrigger);
        this.f37704b = textView3;
        if (textView3 != null) {
            C12864a2.m22565b(textView3, C2752R.C2753drawable.ic_language);
        }
        TextView textView4 = this.f37704b;
        if (textView4 != null) {
            textView4.setOnClickListener(new View$OnClickListenerC4877d0(3, this));
        }
        TextView textView5 = (TextView) view.findViewById(C2752R.C2754id.settingsCallerIdTrigger);
        this.f37705c = textView5;
        if (textView5 != null) {
            C12864a2.m22565b(textView5, C2752R.C2753drawable.ic_caller_id);
        }
        TextView textView6 = this.f37705c;
        if (textView6 != null) {
            textView6.setOnClickListener(new View$OnClickListenerC4877d0(4, this));
        }
        TextView textView7 = (TextView) view.findViewById(C2752R.C2754id.settingsRingtoneTrigger);
        this.f37706d = textView7;
        if (textView7 != null) {
            C12864a2.m22565b(textView7, C2752R.C2753drawable.ic_ringtone);
        }
        TextView textView8 = this.f37706d;
        if (textView8 != null) {
            textView8.setOnClickListener(new View$OnClickListenerC4877d0(5, this));
        }
        TextView textView9 = (TextView) view.findViewById(C2752R.C2754id.settingsAppearanceTrigger);
        this.f37707e = textView9;
        if (textView9 != null) {
            C12864a2.m22565b(textView9, C2752R.C2753drawable.ic_appearance);
        }
        TextView textView10 = this.f37707e;
        if (textView10 != null) {
            textView10.setOnClickListener(new View$OnClickListenerC4877d0(6, this));
        }
        TextView textView11 = (TextView) view.findViewById(C2752R.C2754id.settingsMessagingTrigger);
        this.f37708f = textView11;
        if (textView11 != null) {
            C12864a2.m22565b(textView11, 2131232343);
        }
        TextView textView12 = this.f37708f;
        if (textView12 != null) {
            textView12.setOnClickListener(new View$OnClickListenerC4877d0(7, this));
        }
        TextView textView13 = (TextView) view.findViewById(C2752R.C2754id.settingsBlockTrigger);
        this.f37709g = textView13;
        if (textView13 != null) {
            C12864a2.m22565b(textView13, C2752R.C2753drawable.ic_block_up_to_date);
        }
        TextView textView14 = this.f37709g;
        if (textView14 != null) {
            textView14.setOnClickListener(new View$OnClickListenerC4877d0(8, this));
        }
        TextView textView15 = (TextView) view.findViewById(C2752R.C2754id.settingsPrivacyTrigger);
        this.f37710h = textView15;
        if (textView15 != null) {
            C12864a2.m22565b(textView15, C2752R.C2753drawable.ic_lock);
        }
        TextView textView16 = this.f37710h;
        if (textView16 != null) {
            textView16.setOnClickListener(new View$OnClickListenerC4877d0(9, this));
        }
        TextView textView17 = (TextView) view.findViewById(C2752R.C2754id.settingsBackupTrigger);
        this.f37711i = textView17;
        if (textView17 != null) {
            C12864a2.m22565b(textView17, C2752R.C2753drawable.ic_cloud_done);
        }
        TextView textView18 = this.f37711i;
        if (textView18 != null) {
            textView18.setOnClickListener(new View$OnClickListenerC4877d0(10, this));
        }
        TextView textView19 = (TextView) view.findViewById(C2752R.C2754id.settingsAboutTrigger);
        this.f37712j = textView19;
        if (textView19 != null) {
            C12864a2.m22565b(textView19, C2752R.C2753drawable.ic_about);
        }
        TextView textView20 = this.f37712j;
        if (textView20 != null) {
            textView20.setOnClickListener(new View$OnClickListenerC4877d0(0, this));
        }
        TextView textView21 = (TextView) view.findViewById(C2752R.C2754id.settingsDataStorageTrigger);
        this.f37713k = textView21;
        if (textView21 != null) {
            C12864a2.m22565b(textView21, C2752R.C2753drawable.ic_data_storage);
        }
        TextView textView22 = this.f37713k;
        if (textView22 != null) {
            textView22.setOnClickListener(new View$OnClickListenerC4877d0(1, this));
        }
        AbstractC12989c abstractC12989c = this.f37714l;
        if (abstractC12989c != null) {
            abstractC12989c.mo22275t4();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p684b.p693m.AbstractC12991e
    /* renamed from: wk */
    public void mo22277wk(boolean z) {
        TextView textView = this.f37710h;
        if (textView != null) {
            C19286f.m13683U(textView, z);
        }
    }
}
