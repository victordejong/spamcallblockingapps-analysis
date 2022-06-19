package p193e.p194a.p682e.p684b.p692l;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.components.ComboBase;
import com.truecaller.p183ui.settings.SettingsActivity;
import com.truecaller.p183ui.settings.SettingsCategory;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.C20399t1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p937j4.p939b.p940a.C15565c;
import p193e.p194a.p937j4.p939b.p941b.C15576b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b.\u0010\u0015J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0016\u0010\u0015J%\u0010\u001b\u001a\u00020\r2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ%\u0010\u001d\u001a\u00020\r2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001e\u0010\u0015J\u000f\u0010\u001f\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001f\u0010\u0015R\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u0010*¨\u0006/"}, d2 = {"Le/a/e/b/l/c;", "Landroidx/fragment/app/Fragment;", "Le/a/e/b/l/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "onResume", "()V", "onPause", "", "Le/a/j4/b/b/b;", "languages", "selectedLanguage", "Rp", "(Ljava/util/List;Le/a/j4/b/b/b;)V", "Lf", "Sj", "Mn", "Le/a/e/b/l/d;", AbstractC2405c.f7629a, "Le/a/e/b/l/d;", "getPresenter", "()Le/a/e/b/l/d;", "setPresenter", "(Le/a/e/b/l/d;)V", "presenter", "Lcom/truecaller/ui/components/ComboBase;", C22021b.f61237c, "Lcom/truecaller/ui/components/ComboBase;", "t9LangView", "a", "appLangView", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.b.l.c */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/l/c.class */
public final class C12972c extends Fragment implements AbstractC12977e {

    /* renamed from: a */
    public ComboBase f37657a;

    /* renamed from: b */
    public ComboBase f37658b;
    @Inject

    /* renamed from: c */
    public AbstractC12976d f37659c;

    /* renamed from: e.a.e.b.l.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/c$a.class */
    public static final class C12973a implements ComboBase.AbstractC4672a {
        @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
        /* renamed from: a */
        public void mo14306a(ComboBase comboBase) {
            l.e(comboBase, "combo");
            List<ComboBase.AbstractC4672a> list = comboBase.f15710d;
            if (list != null) {
                list.remove(this);
            }
            comboBase.callOnClick();
        }
    }

    /* renamed from: e.a.e.b.l.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/c$b.class */
    public static final class C12974b implements ComboBase.AbstractC4672a {

        /* renamed from: b */
        public final /* synthetic */ List f37661b;

        public C12974b(List list, C15576b c15576b) {
            C12972c.this = r4;
            this.f37661b = list;
        }

        @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
        /* renamed from: a */
        public final void mo14306a(ComboBase comboBase) {
            l.e(comboBase, "comboArg");
            C13197i0 selection = comboBase.getSelection();
            Objects.requireNonNull(selection, "null cannot be cast to non-null type com.truecaller.old.data.entity.Language");
            C15576b c15576b = (C15576b) selection;
            Context activity = C12972c.this.getActivity();
            if (activity != null) {
                AbstractC12976d abstractC12976d = C12972c.this.f37659c;
                if (abstractC12976d == null) {
                    l.l("presenter");
                    throw null;
                }
                l.d(activity, "it");
                abstractC12976d.mo22300La(activity, c15576b);
            }
        }
    }

    /* renamed from: e.a.e.b.l.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/l/c$c.class */
    public static final class C12975c implements ComboBase.AbstractC4672a {

        /* renamed from: b */
        public final /* synthetic */ List f37663b;

        public C12975c(List list, C15576b c15576b) {
            C12972c.this = r4;
            this.f37663b = list;
        }

        @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
        /* renamed from: a */
        public final void mo14306a(ComboBase comboBase) {
            l.e(comboBase, "comboArg");
            C13197i0 selection = comboBase.getSelection();
            Objects.requireNonNull(selection, "null cannot be cast to non-null type com.truecaller.old.data.entity.Language");
            C15576b c15576b = (C15576b) selection;
            AbstractC12976d abstractC12976d = C12972c.this.f37659c;
            if (abstractC12976d != null) {
                abstractC12976d.mo22305D8(c15576b);
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12977e
    /* renamed from: Lf */
    public void mo22309Lf(List<? extends C15576b> list, C15576b c15576b) {
        l.e(list, "languages");
        l.e(c15576b, "selectedLanguage");
        ComboBase comboBase = this.f37657a;
        if (comboBase == null) {
            l.l("appLangView");
            throw null;
        }
        C19286f.m13690N(comboBase, true, 0.0f, 2);
        comboBase.setData(list);
        comboBase.setSelection(c15576b);
        comboBase.m34538b();
        comboBase.m34539a(new C12974b(list, c15576b));
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12977e
    /* renamed from: Mn */
    public void mo22308Mn() {
        ComboBase comboBase = this.f37657a;
        if (comboBase == null) {
            l.l("appLangView");
            throw null;
        } else if (comboBase.getItems() != null) {
            ComboBase comboBase2 = this.f37657a;
            if (comboBase2 != null) {
                comboBase2.callOnClick();
            } else {
                l.l("appLangView");
                throw null;
            }
        } else {
            ComboBase comboBase3 = this.f37657a;
            if (comboBase3 != null) {
                comboBase3.m34539a(new C12973a());
            } else {
                l.l("appLangView");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12977e
    /* renamed from: Rp */
    public void mo22307Rp(List<? extends C15576b> list, C15576b c15576b) {
        l.e(list, "languages");
        l.e(c15576b, "selectedLanguage");
        ComboBase comboBase = this.f37658b;
        if (comboBase == null) {
            l.l("t9LangView");
            throw null;
        }
        C19286f.m13690N(comboBase, true, 0.0f, 2);
        comboBase.setData(list);
        comboBase.setSelection(c15576b);
        comboBase.m34538b();
        comboBase.m34539a(new C12975c(list, c15576b));
    }

    @Override // p193e.p194a.p682e.p684b.p692l.AbstractC12977e
    /* renamed from: Sj */
    public void mo22306Sj() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            SettingsActivity.C4692a c4692a = SettingsActivity.f15840g;
            l.d(activity, "fragmentActivity");
            startActivity(SettingsActivity.C4692a.m34493b(c4692a, activity, SettingsCategory.SETTINGS_LANGUAGE, false, null, 12));
            activity.finish();
            C12864a2.m22541q(new C15565c.RunnableC15566a(AbstractApplicationC8442a.m28551L()), null, 1);
        }
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C12972c.super.onAttach(context);
        SettingsActivity requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.ui.settings.SettingsActivity");
        AbstractC12976d abstractC12976d = (AbstractC12976d) ((C20399t1.C20427s) requireActivity.m34497wa()).f57478m.get();
        this.f37659c = abstractC12976d;
        if (abstractC12976d != null) {
            abstractC12976d.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.settings_language, viewGroup, false);
    }

    public void onPause() {
        C12972c.super.onPause();
        AbstractC12976d abstractC12976d = this.f37659c;
        if (abstractC12976d != null) {
            abstractC12976d.mo22304G7();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C12972c.super.onResume();
        Bundle arguments = getArguments();
        if (arguments != null) {
            AbstractC12976d abstractC12976d = this.f37659c;
            if (abstractC12976d != null) {
                abstractC12976d.mo22299l1(arguments.getString("settings_action"));
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C12972c.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(C2752R.C2754id.settingsLanguage);
        l.d(findViewById, "view.findViewById(R.id.settingsLanguage)");
        ComboBase comboBase = (ComboBase) findViewById;
        this.f37657a = comboBase;
        if (comboBase == null) {
            l.l("appLangView");
            throw null;
        }
        C19286f.m13690N(comboBase, false, 0.0f, 2);
        View findViewById2 = view.findViewById(C2752R.C2754id.settingsT9Language);
        l.d(findViewById2, "view.findViewById(R.id.settingsT9Language)");
        ComboBase comboBase2 = (ComboBase) findViewById2;
        this.f37658b = comboBase2;
        if (comboBase2 != null) {
            C19286f.m13690N(comboBase2, false, 0.0f, 2);
        } else {
            l.l("t9LangView");
            throw null;
        }
    }
}
