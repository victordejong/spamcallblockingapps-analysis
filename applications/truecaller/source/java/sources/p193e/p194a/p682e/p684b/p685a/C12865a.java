package p193e.p194a.p682e.p684b.p685a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.SingleActivity;
import com.truecaller.p183ui.components.ComboBase;
import com.truecaller.p183ui.settings.SettingsActivity;
import com.truecaller.social_media.presentation.view.SocialMediaLinksActivity;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.C20399t1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p699c2.C13197i0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bS\u0010\u0015J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0019\u001a\u00020\r2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001c\u001a\u00020\r2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u001aJ\u0017\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010\"\u001a\u00020\r2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0016¢\u0006\u0004\b\"\u0010\u001aJ\u0017\u0010%\u001a\u00020\r2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b'\u0010 J\u0017\u0010(\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b(\u0010 J\u0017\u0010+\u001a\u00020\r2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\r2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b-\u0010&J\u000f\u0010.\u001a\u00020\rH\u0016¢\u0006\u0004\b.\u0010\u0015J\u0017\u0010/\u001a\u00020\r2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b/\u0010,J\u0017\u00101\u001a\u00020\r2\u0006\u00100\u001a\u00020)H\u0016¢\u0006\u0004\b1\u0010,R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010;\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00104R\u0018\u0010=\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010<R\u0018\u0010?\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u00104R\u0018\u0010A\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u00104R\u0018\u0010B\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u00108R\"\u0010J\u001a\u00020C8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u0018\u0010L\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u00108R\u0018\u0010N\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010<R\u0018\u0010P\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u00104R\u0018\u0010R\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u00104¨\u0006T"}, d2 = {"Le/a/e/b/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/e/b/a/d;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "onResume", "()V", "", "Le/a/e/c2/i0;", "versions", "su", "(Ljava/util/List;)V", "userIds", "z7", "", "isVisible", "Wi", "(Z)V", "debugIds", "ut", "", "text", "cm", "(I)V", "N6", "vr", "", "url", "loadUrl", "(Ljava/lang/String;)V", "a", "yc", C22021b.f61237c, "source", "am", "Landroid/widget/TextView;", "k", "Landroid/widget/TextView;", "tcNewsSettingsItem", "Lcom/truecaller/ui/components/ComboBase;", "d", "Lcom/truecaller/ui/components/ComboBase;", "debugIdCombo", "i", "termsOfServiceTextView", "Landroid/view/View;", "userRegistrationIdView", "f", "rateInStoreTextView", "j", "thirdPartyLibrariesTextView", "appVersion", "Le/a/e/b/a/c;", "l", "Le/a/e/b/a/c;", "OA", "()Le/a/e/b/a/c;", "setPresenter", "(Le/a/e/b/a/c;)V", "presenter", AbstractC2405c.f7629a, "userRegistrationIdCombo", "e", "rateAndFeedbackView", "h", "blogTextView", "g", "sendFeedbackTextView", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.b.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/a/a.class */
public final class C12865a extends Fragment implements AbstractC12870d {

    /* renamed from: a */
    public ComboBase f37397a;

    /* renamed from: b */
    public View f37398b;

    /* renamed from: c */
    public ComboBase f37399c;

    /* renamed from: d */
    public ComboBase f37400d;

    /* renamed from: e */
    public View f37401e;

    /* renamed from: f */
    public TextView f37402f;

    /* renamed from: g */
    public TextView f37403g;

    /* renamed from: h */
    public TextView f37404h;

    /* renamed from: i */
    public TextView f37405i;

    /* renamed from: j */
    public TextView f37406j;

    /* renamed from: k */
    public TextView f37407k;
    @Inject

    /* renamed from: l */
    public AbstractC12869c f37408l;

    /* renamed from: e.a.e.b.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/e/b/a/a$a.class */
    public static final class View$OnClickListenerC12866a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f37409a;

        /* renamed from: b */
        public final /* synthetic */ Object f37410b;

        public View$OnClickListenerC12866a(int i, Object obj) {
            this.f37409a = i;
            this.f37410b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f37409a;
            if (i == 0) {
                ((C12865a) this.f37410b).m22531OA().mo22514Oc();
            } else if (i == 1) {
                ((C12865a) this.f37410b).m22531OA().mo22511m1();
            } else if (i == 2) {
                ((C12865a) this.f37410b).m22531OA().mo22513R8();
            } else if (i == 3) {
                ((C12865a) this.f37410b).m22531OA().mo22512kg();
            } else if (i == 4) {
                ((C12865a) this.f37410b).m22531OA().mo22518Ej();
            } else if (i != 5) {
                throw null;
            } else {
                ((C12865a) this.f37410b).m22531OA().mo22509sj();
            }
        }
    }

    /* renamed from: e.a.e.b.a.a$b */
    /* loaded from: classes3-dex2jar.jar:e/a/e/b/a/a$b.class */
    public static final class View$OnLongClickListenerC12867b implements View.OnLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f37411a;

        /* renamed from: b */
        public final /* synthetic */ Object f37412b;

        public View$OnLongClickListenerC12867b(int i, Object obj) {
            this.f37411a = i;
            this.f37412b = obj;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            int i = this.f37411a;
            if (i == 0) {
                ((C12865a) this.f37412b).m22531OA().mo22510nh();
                return true;
            } else if (i == 1) {
                ((C12865a) this.f37412b).m22531OA().mo22519C5();
                return true;
            } else if (i != 2) {
                throw null;
            } else {
                ((C12865a) this.f37412b).m22531OA().mo22515Lh();
                return true;
            }
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: N6 */
    public void mo22530N6(boolean z) {
        TextView textView = this.f37402f;
        if (textView != null) {
            C19286f.m13683U(textView, z);
        }
    }

    /* renamed from: OA */
    public final AbstractC12869c m22531OA() {
        AbstractC12869c abstractC12869c = this.f37408l;
        if (abstractC12869c != null) {
            return abstractC12869c;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: Wi */
    public void mo22529Wi(boolean z) {
        View view = this.f37398b;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: a */
    public void mo22528a(int i) {
        Toast.makeText(getContext(), i, 0).show();
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: am */
    public void mo22527am(String str) {
        l.e(str, "source");
        Context context = getContext();
        if (context != null) {
            l.d(context, AnalyticsConstants.CONTEXT);
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "source");
            Intent intent = new Intent(context, SocialMediaLinksActivity.class);
            intent.putExtra("source", str);
            startActivity(intent);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: b */
    public void mo22526b(String str) {
        l.e(str, "url");
        C8613t.m28203i(requireContext(), str);
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: cm */
    public void mo22525cm(int i) {
        TextView textView = this.f37402f;
        if (textView != null) {
            textView.setText(i);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    public void loadUrl(String str) {
        l.e(str, "url");
        C12864a2.m22575S(requireContext(), str, false);
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C12865a.super.onAttach(context);
        SettingsActivity requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.ui.settings.SettingsActivity");
        AbstractC12869c abstractC12869c = (AbstractC12869c) ((C20399t1.C20427s) requireActivity.m34497wa()).f57486u.get();
        this.f37408l = abstractC12869c;
        if (abstractC12869c != null) {
            abstractC12869c.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.settings_about, viewGroup, false);
    }

    public void onResume() {
        C12865a.super.onResume();
        AbstractC12869c abstractC12869c = this.f37408l;
        if (abstractC12869c != null) {
            abstractC12869c.onResume();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C12865a.super.onViewCreated(view, bundle);
        ComboBase comboBase = (ComboBase) view.findViewById(C2752R.C2754id.settingsVersion);
        this.f37397a = comboBase;
        if (comboBase != null) {
            comboBase.setOnLongClickListener(new View$OnLongClickListenerC12867b(0, this));
        }
        ComboBase comboBase2 = this.f37397a;
        if (comboBase2 != null) {
            comboBase2.setOnClickListener(null);
        }
        this.f37398b = view.findViewById(C2752R.C2754id.settingsRegisterIDContainer);
        ComboBase comboBase3 = (ComboBase) view.findViewById(C2752R.C2754id.settingsRegisterID);
        this.f37399c = comboBase3;
        if (comboBase3 != null) {
            comboBase3.setOnLongClickListener(new View$OnLongClickListenerC12867b(1, this));
        }
        ComboBase comboBase4 = this.f37399c;
        if (comboBase4 != null) {
            comboBase4.setOnClickListener(null);
        }
        ComboBase comboBase5 = (ComboBase) view.findViewById(C2752R.C2754id.settingsDebugID);
        this.f37400d = comboBase5;
        if (comboBase5 != null) {
            comboBase5.setOnLongClickListener(new View$OnLongClickListenerC12867b(2, this));
        }
        ComboBase comboBase6 = this.f37400d;
        if (comboBase6 != null) {
            comboBase6.setOnClickListener(null);
        }
        this.f37401e = view.findViewById(C2752R.C2754id.rateAndSendFeedbackContainer);
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.settingsRateInPlay);
        this.f37402f = textView;
        if (textView != null) {
            textView.setOnClickListener(new View$OnClickListenerC12866a(0, this));
        }
        TextView textView2 = (TextView) view.findViewById(C2752R.C2754id.settingsSendFeedback);
        this.f37403g = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View$OnClickListenerC12866a(1, this));
        }
        TextView textView3 = (TextView) view.findViewById(C2752R.C2754id.settingsBlogTrigger);
        this.f37404h = textView3;
        if (textView3 != null) {
            textView3.setOnClickListener(new View$OnClickListenerC12866a(2, this));
        }
        TextView textView4 = (TextView) view.findViewById(C2752R.C2754id.settingsTCNewsTrigger);
        this.f37407k = textView4;
        if (textView4 != null) {
            textView4.setOnClickListener(new View$OnClickListenerC12866a(3, this));
        }
        TextView textView5 = (TextView) view.findViewById(C2752R.C2754id.settingsTermsOfServiceTrigger);
        this.f37405i = textView5;
        if (textView5 != null) {
            textView5.setOnClickListener(new View$OnClickListenerC12866a(4, this));
        }
        TextView textView6 = (TextView) view.findViewById(C2752R.C2754id.settings3rdPartyLibrariesTrigger);
        this.f37406j = textView6;
        if (textView6 != null) {
            textView6.setOnClickListener(new View$OnClickListenerC12866a(5, this));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: su */
    public void mo22524su(List<? extends C13197i0> list) {
        l.e(list, "versions");
        ComboBase comboBase = this.f37397a;
        if (comboBase != null) {
            comboBase.setData(list);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: ut */
    public void mo22523ut(List<? extends C13197i0> list) {
        l.e(list, "debugIds");
        ComboBase comboBase = this.f37400d;
        if (comboBase != null) {
            comboBase.setData(list);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: vr */
    public void mo22522vr(boolean z) {
        View view = this.f37401e;
        if (view != null) {
            C19286f.m13683U(view, z);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: yc */
    public void mo22521yc() {
        Intent m34591ua = SingleActivity.m34591ua(requireContext(), SingleActivity.FragmentSingle.FEEDBACK_FORM);
        l.d(m34591ua, "SingleActivity.buildInte…mentSingle.FEEDBACK_FORM)");
        startActivity(m34591ua);
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12870d
    /* renamed from: z7 */
    public void mo22520z7(List<? extends C13197i0> list) {
        l.e(list, "userIds");
        ComboBase comboBase = this.f37399c;
        if (comboBase != null) {
            comboBase.setData(list);
        }
    }
}
