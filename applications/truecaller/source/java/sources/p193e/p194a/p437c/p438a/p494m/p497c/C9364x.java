package p193e.p194a.p437c.p438a.p494m.p497c;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9073t1;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p596t.AbstractC10693a;
import s1.a.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Le/a/c/a/m/c/x;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/c/a/g/t1;", C22021b.f61237c, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/t1;", "binding", "Le/a/c/t/a;", "a", "Le/a/c/t/a;", "getQaManager", "()Le/a/c/t/a;", "setQaManager", "(Le/a/c/t/a;)V", "qaManager", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.x */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/x.class */
public final class C9364x extends Fragment {

    /* renamed from: c */
    public static final /* synthetic */ l[] f28462c = {C22128a.m8621g0(C9364x.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/QaDialogRowFeatureFlagTesterBinding;", 0)};
    @Inject

    /* renamed from: a */
    public AbstractC10693a f28463a;

    /* renamed from: b */
    public final ViewBindingProperty f28464b = new C19350a(new C9365a());

    /* renamed from: e.a.c.a.m.c.x$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/x$a.class */
    public static final class C9365a extends m implements s1.z.b.l<C9364x, C9073t1> {
        public C9365a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27634d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.flagValue;
            TextInputEditText findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4078R.C4080id.flagValueContainer;
                TextInputLayout textInputLayout = (TextInputLayout) requireView.findViewById(i);
                if (textInputLayout != null) {
                    i = C4078R.C4080id.saveBtn;
                    Button button = (Button) requireView.findViewById(i);
                    if (button != null) {
                        i = C4078R.C4080id.title;
                        TextView textView = (TextView) requireView.findViewById(i);
                        if (textView != null) {
                            return new C9073t1((ConstraintLayout) requireView, findViewById, textInputLayout, button, textView);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    public C9364x() {
        int i = AbstractC9246a.f28129a;
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            s1.z.c.l.l("instance");
            throw null;
        }
        AbstractC10693a mo12646M = ((C9248b) abstractC9246a).f28140d.mo12646M();
        Objects.requireNonNull(mo12646M, "Cannot return null from a non-@Nullable component method");
        this.f28463a = mo12646M;
    }

    /* renamed from: OA */
    public final C9073t1 m27635OA() {
        return (C9073t1) this.f28464b.m34468b(this, f28462c[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4078R.layout.qa_dialog_row_feature_flag_tester, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9364x.super.onViewCreated(view, bundle);
        TextInputEditText textInputEditText = m27635OA().f27685a;
        AbstractC10693a abstractC10693a = this.f28463a;
        if (abstractC10693a == null) {
            s1.z.c.l.l("qaManager");
            throw null;
        }
        String mo25742f = abstractC10693a.mo25742f();
        if (mo25742f == null) {
            mo25742f = "";
        }
        textInputEditText.setText(mo25742f);
        m27635OA().f27686b.setOnClickListener(new View$OnClickListenerC9366y(this));
    }
}
