package p193e.p194a.p786g0.p787a;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.suspension.C4581R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p786g0.p791m.C14405a;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� 42\u00020\u0001:\u00020+B\u0007¢\u0006\u0004\b3\u0010\u0019J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ-\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00122\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001a\u0010\u0019R\u001f\u0010 \u001a\u0004\u0018\u00010\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001d\u0010)\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001d\u001a\u0004\b'\u0010(R\u001d\u0010/\u001a\u00020*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u001d\u00102\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\u001d\u001a\u0004\b1\u0010(¨\u00065"}, d2 = {"Le/a/g0/a/b;", "Le/m/a/g/e/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDetach", "()V", "PA", "", "a", "Ls1/g;", "getEmail", "()Ljava/lang/String;", AnalyticsConstants.EMAIL, "Le/a/g0/a/b$d;", "e", "Le/a/g0/a/b$d;", "listener", "", C22021b.f61237c, "getEnabledTextColor", "()I", "enabledTextColor", "Le/a/g0/m/a;", "d", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/g0/m/a;", "binding", AbstractC2405c.f7629a, "getDisabledTextColor", "disabledTextColor", "<init>", "g", "account-suspension_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.g0.a.b */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/b.class */
public final class C14323b extends e {

    /* renamed from: f */
    public static final /* synthetic */ l[] f41416f = {C22128a.m8621g0(C14323b.class, "binding", "getBinding()Lcom/truecaller/suspension/databinding/BottomSheetEnterEmailBinding;", 0)};

    /* renamed from: g */
    public static final C14325c f41417g = new C14325c(null);

    /* renamed from: a */
    public final g f41418a = C25225a.m3978P1(new C14327e());

    /* renamed from: b */
    public final g f41419b = C25225a.m3978P1(new a(1, this));

    /* renamed from: c */
    public final g f41420c = C25225a.m3978P1(new a(0, this));

    /* renamed from: d */
    public final ViewBindingProperty f41421d = new C19350a(new C14324b());

    /* renamed from: e */
    public AbstractC14326d f41422e;

    /* renamed from: e.a.g0.a.b$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/a/b$b.class */
    public static final class C14324b extends m implements s1.z.b.l<C14323b, C14405a> {
        public C14324b() {
            super(1);
        }

        /* renamed from: d */
        public Object m20265d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4581R.C4583id.cancelButton;
            MaterialButton findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4581R.C4583id.emailEditText;
                TextInputEditText findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    i = C4581R.C4583id.emailSubtitleText;
                    TextView textView = (TextView) requireView.findViewById(i);
                    if (textView != null) {
                        i = C4581R.C4583id.emailTextInputLayout;
                        TextInputLayout textInputLayout = (TextInputLayout) requireView.findViewById(i);
                        if (textInputLayout != null) {
                            i = C4581R.C4583id.emailTitleText;
                            TextView textView2 = (TextView) requireView.findViewById(i);
                            if (textView2 != null) {
                                i = C4581R.C4583id.sendReportButton;
                                MaterialButton findViewById3 = requireView.findViewById(i);
                                if (findViewById3 != null) {
                                    return new C14405a((ConstraintLayout) requireView, findViewById, findViewById2, textView, textInputLayout, textView2, findViewById3);
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.g0.a.b$c */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/a/b$c.class */
    public static final class C14325c {
        public C14325c(f fVar) {
        }
    }

    /* renamed from: e.a.g0.a.b$d */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/a/b$d.class */
    public interface AbstractC14326d {
        /* renamed from: et */
        void mo20264et(String str);
    }

    /* renamed from: e.a.g0.a.b$e */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/a/b$e.class */
    public static final class C14327e extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14327e() {
            super(0);
            C14323b.this = r4;
        }

        public Object invoke() {
            Bundle arguments = C14323b.this.getArguments();
            return arguments != null ? arguments.getString("android.intent.extra.EMAIL") : null;
        }
    }

    /* renamed from: OA */
    public final C14405a m20267OA() {
        return (C14405a) this.f41421d.m34468b(this, f41416f[0]);
    }

    /* renamed from: PA */
    public final void m20266PA() {
        C14405a m20267OA = m20267OA();
        TextInputEditText textInputEditText = m20267OA.f41545b;
        s1.z.c.l.d(textInputEditText, "emailEditText");
        boolean m13664o = C19286f.m13664o(String.valueOf(textInputEditText.getText()));
        MaterialButton materialButton = m20267OA.f41546c;
        s1.z.c.l.d(materialButton, "sendReportButton");
        materialButton.setEnabled(m13664o);
        m20267OA.f41546c.setTextColor(m13664o ? ((Number) this.f41419b.getValue()).intValue() : ((Number) this.f41420c.getValue()).intValue());
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C14323b.super.onAttach(context);
        if (getParentFragment() instanceof AbstractC14326d) {
            AbstractC14326d parentFragment = getParentFragment();
            Objects.requireNonNull(parentFragment, "null cannot be cast to non-null type com.truecaller.suspension.ui.EnterEmailBottomSheet.Listener");
            this.f41422e = parentFragment;
            return;
        }
        throw new IllegalStateException((getParentFragment() + " must implement " + d0.a(AbstractC14326d.class).c()).toString());
    }

    public void onCreate(Bundle bundle) {
        C14323b.super.onCreate(bundle);
        setStyle(2, C4581R.style.StyleX_FormBottomSheetDialogTheme);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d onCreateDialog = C14323b.super.onCreateDialog(bundle);
        s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        BottomSheetBehavior e = onCreateDialog.e();
        s1.z.c.l.d(e, "(it as BottomSheetDialog).behavior");
        e.M(3);
        return onCreateDialog;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4581R.layout.bottom_sheet_enter_email, viewGroup, false);
    }

    public void onDetach() {
        C14323b.super.onDetach();
        this.f41422e = null;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C14323b.super.onViewCreated(view, bundle);
        C14405a m20267OA = m20267OA();
        TextInputEditText textInputEditText = m20267OA.f41545b;
        s1.z.c.l.d(textInputEditText, "emailEditText");
        C19291g.m13542j(textInputEditText, new C14328c(this));
        m20267OA.f41546c.setOnClickListener(new View$OnClickListenerC14329d(m20267OA, this));
        m20267OA.f41544a.setOnClickListener(new View$OnClickListenerC14330e(this));
        m20266PA();
        TextInputEditText textInputEditText2 = m20267OA().f41545b;
        textInputEditText2.setText((String) this.f41418a.getValue());
        String str = (String) this.f41418a.getValue();
        textInputEditText2.setSelection(str != null ? str.length() : 0);
        C19286f.m13679Y(textInputEditText2, true, 0L, 2);
    }
}
