package p193e.p194a.p437c.p438a.p478h;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9058o1;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \u001d2\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, d2 = {"Le/a/c/a/h/c;", "Ln3/b/a/q;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/c/a/g/o1;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/c/a/g/o1;", "binding", "Le/a/c/a/h/e;", C22021b.f61237c, "Le/a/c/a/h/e;", "callback", "<init>", "()V", "d", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.h.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/h/c.class */
public final class C9097c extends q {

    /* renamed from: c */
    public static final /* synthetic */ l[] f27761c = {C22128a.m8621g0(C9097c.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/LayoutTranslationPreferencesDialogBinding;", 0)};

    /* renamed from: d */
    public static final C9099b f27762d = new C9099b(null);

    /* renamed from: a */
    public final ViewBindingProperty f27763a = new C19350a(new C9098a());

    /* renamed from: b */
    public AbstractC9103e f27764b;

    /* renamed from: e.a.c.a.h.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/h/c$a.class */
    public static final class C9098a extends m implements s1.z.b.l<C9097c, C9058o1> {
        public C9098a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27883d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.cancelButton;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4078R.C4080id.downloadButton;
                Button button2 = (Button) requireView.findViewById(i);
                if (button2 != null) {
                    i = C4078R.C4080id.radioGroup;
                    RadioGroup radioGroup = (RadioGroup) requireView.findViewById(i);
                    if (radioGroup != null) {
                        i = C4078R.C4080id.radio_wifi;
                        RadioButton radioButton = (RadioButton) requireView.findViewById(i);
                        if (radioButton != null) {
                            i = C4078R.C4080id.radio_wifi_mobile;
                            RadioButton radioButton2 = (RadioButton) requireView.findViewById(i);
                            if (radioButton2 != null) {
                                i = C4078R.C4080id.title;
                                TextView textView = (TextView) requireView.findViewById(i);
                                if (textView != null) {
                                    return new C9058o1((CardView) requireView, button, button2, radioGroup, radioButton, radioButton2, textView);
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.h.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/h/c$b.class */
    public static final class C9099b {
        public C9099b(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.h.c$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/h/c$c.class */
    public static final class View$OnClickListenerC9100c implements View.OnClickListener {
        public View$OnClickListenerC9100c() {
            C9097c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C9097c.this.dismissAllowingStateLoss();
        }
    }

    /* renamed from: e.a.c.a.h.c$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/h/c$d.class */
    public static final class View$OnClickListenerC9101d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C9058o1 f27766a;

        /* renamed from: b */
        public final /* synthetic */ C9097c f27767b;

        public View$OnClickListenerC9101d(C9058o1 c9058o1, C9097c c9097c) {
            this.f27766a = c9058o1;
            this.f27767b = c9097c;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f27767b.dismissAllowingStateLoss();
            C9097c c9097c = this.f27767b;
            AbstractC9103e abstractC9103e = c9097c.f27764b;
            String str = null;
            if (abstractC9103e == null) {
                s1.z.c.l.l("callback");
                throw null;
            }
            Bundle arguments = c9097c.getArguments();
            if (arguments != null) {
                str = arguments.getString("LANGUAGE_CODE");
            }
            s1.z.c.l.c(str);
            s1.z.c.l.d(str, "arguments?.getString(PARAM_LANGUAGE_CODE)!!");
            RadioGroup radioGroup = this.f27766a.f27582c;
            s1.z.c.l.d(radioGroup, "radioGroup");
            abstractC9103e.mo27882k8(str, radioGroup.getCheckedRadioButtonId() == C4078R.C4080id.radio_wifi_mobile);
        }
    }

    public void onCreate(Bundle bundle) {
        C9097c.super.onCreate(bundle);
        setStyle(0, C4078R.style.StyleX_Dialog_Startup_Big);
        try {
            AbstractC9103e parentFragment = getParentFragment();
            if (parentFragment == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.truecaller.insights.ui.dialogs.DownloadTranslationsDialogCallback");
            }
            this.f27764b = parentFragment;
        } catch (ClassCastException e) {
            throw new ClassCastException("Parent fragment should implement this interface");
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C4078R.layout.layout_translation_preferences_dialog, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9097c.super.onViewCreated(view, bundle);
        C9058o1 c9058o1 = (C9058o1) this.f27763a.m34468b(this, f27761c[0]);
        c9058o1.f27580a.setOnClickListener(new View$OnClickListenerC9100c());
        c9058o1.f27581b.setOnClickListener(new View$OnClickListenerC9101d(c9058o1, this));
    }
}
