package p193e.p194a.p437c.p438a.p494m.p497c;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9090z0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH$¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH$¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH$¢\u0006\u0004\b\u0013\u0010\u0011J+\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000fH$¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u000fH\u0004¢\u0006\u0004\b\u001a\u0010\u001bR\u001d\u0010!\u001a\u00020\u001c8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Le/a/c/a/m/c/g;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "SA", "()Ljava/lang/String;", "PA", "RA", "appVersion", "countryCode", "offsetVersion", "OA", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "response", "TA", "(Ljava/lang/String;)V", "Le/a/c/a/g/z0;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/c/a/g/z0;", "binding", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/g.class */
public abstract class AbstractC9319g extends Fragment {

    /* renamed from: b */
    public static final /* synthetic */ l[] f28338b = {C22128a.m8621g0(AbstractC9319g.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/LayoutCategorizerSeedFetcherBinding;", 0)};

    /* renamed from: a */
    public final ViewBindingProperty f28339a = new C19350a(new C9320a());

    /* renamed from: e.a.c.a.m.c.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/g$a.class */
    public static final class C9320a extends m implements s1.z.b.l<AbstractC9319g, C9090z0> {
        public C9320a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27695d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = C4078R.C4080id.appVersion;
            EditText editText = (EditText) requireView.findViewById(i);
            if (editText != null) {
                i = C4078R.C4080id.countryCode;
                EditText editText2 = (EditText) requireView.findViewById(i);
                if (editText2 != null) {
                    i = C4078R.C4080id.fetchResult;
                    TextView textView = (TextView) requireView.findViewById(i);
                    if (textView != null) {
                        i = C4078R.C4080id.offsetVersion;
                        EditText editText3 = (EditText) requireView.findViewById(i);
                        if (editText3 != null) {
                            i = C4078R.C4080id.submitButton;
                            Button button = (Button) requireView.findViewById(i);
                            if (button != null) {
                                return new C9090z0(requireView, editText, editText2, textView, editText3, button);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: OA */
    public abstract void mo27701OA(String str, String str2, String str3);

    /* renamed from: PA */
    public abstract String mo27700PA();

    /* renamed from: QA */
    public final C9090z0 m27699QA() {
        return (C9090z0) this.f28339a.m34468b(this, f28338b[0]);
    }

    /* renamed from: RA */
    public abstract String mo27698RA();

    /* renamed from: SA */
    public abstract String mo27697SA();

    /* renamed from: TA */
    public final void m27696TA(String str) {
        s1.z.c.l.e(str, "response");
        TextView textView = m27699QA().f27747c;
        s1.z.c.l.d(textView, "binding.fetchResult");
        String str2 = str;
        if (str.length() > 1000) {
            str2 = str.substring(0, 1000);
            s1.z.c.l.d(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        textView.setText(str2);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.layout_categorizer_seed_fetcher, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        AbstractC9319g.super.onViewCreated(view, bundle);
        EditText editText = m27699QA().f27748d;
        String mo27697SA = mo27697SA();
        if (mo27697SA == null) {
            mo27697SA = "";
        }
        editText.setText(mo27697SA);
        m27699QA().f27745a.setText(mo27700PA());
        m27699QA().f27746b.setText(mo27698RA());
        m27699QA().f27749e.setOnClickListener(new View$OnClickListenerC9321h(this));
    }
}
