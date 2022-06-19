package p193e.p194a.p786g0.p787a;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.suspension.C4581R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p786g0.AbstractC14352b;
import p193e.p194a.p786g0.p787a.C14323b;
import p193e.p194a.p786g0.p791m.C14406b;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.g;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018�� V2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001WB\u0007¢\u0006\u0004\bU\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\nJ\u000f\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\nJ\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\nJ\u000f\u0010\u0019\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\nJ\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\nJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\nJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\nJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\nJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\nJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\nJ\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0006H\u0016¢\u0006\u0004\b$\u0010\nJ\u000f\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b%\u0010\nJ\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\nJ\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\nJ\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\nJ\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010\nJ\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\nJ\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\nJ\u000f\u0010,\u001a\u00020\u0006H\u0016¢\u0006\u0004\b,\u0010\nJ\u000f\u0010-\u001a\u00020\u0006H\u0016¢\u0006\u0004\b-\u0010\nJ\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010\nJ\u000f\u0010/\u001a\u00020\u0006H\u0016¢\u0006\u0004\b/\u0010\nJ\u0019\u00102\u001a\u00020\u00062\b\u00101\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\nJ\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\nJ\u0017\u00106\u001a\u00020\u00062\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b6\u00103J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\nR\"\u0010?\u001a\u0002088\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010G\u001a\u00020@8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001f\u00101\u001a\u0004\u0018\u0001008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010KR\u001d\u0010Q\u001a\u00020L8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR\u001f\u0010T\u001a\u0004\u0018\u0001008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010I\u001a\u0004\bS\u0010K¨\u0006X"}, d2 = {"Le/a/g0/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/g0/a/n;", "Le/a/g0/a/b$d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "i0", "Fs", "t", "bn", "Ty", "Jn", "on", "je", "Oq", "JA", "xn", "", "remainingHours", "qt", "(I)V", "a0", "b0", "yp", "kw", "Do", "Ol", "B6", "Fb", "ur", "o6", "ij", "Jq", "", AnalyticsConstants.EMAIL, "Rm", "(Ljava/lang/String;)V", "W6", "cz", "et", "onDestroyView", "Le/a/g0/a/m;", "h", "Le/a/g0/a/m;", "getPresenter", "()Le/a/g0/a/m;", "setPresenter", "(Le/a/g0/a/m;)V", "presenter", "Le/a/g0/b;", "i", "Le/a/g0/b;", "getOnAccountUnsuspendedListener", "()Le/a/g0/b;", "setOnAccountUnsuspendedListener", "(Le/a/g0/b;)V", "onAccountUnsuspendedListener", "e", "Ls1/g;", "getEmail", "()Ljava/lang/String;", "Le/a/g0/m/b;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/g0/m/b;", "binding", "f", "getName", AnalyticsConstants.NAME, "<init>", "k", AbstractC2405c.f7629a, "account-suspension_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.g0.a.a */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/a.class */
public final class C14320a extends AbstractC14333h implements AbstractC14339n, C14323b.AbstractC14326d {

    /* renamed from: j */
    public static final /* synthetic */ l[] f41409j = {C22128a.m8621g0(C14320a.class, "binding", "getBinding()Lcom/truecaller/suspension/databinding/FragmentSuspensionBinding;", 0)};

    /* renamed from: k */
    public static final C14322c f41410k = new C14322c(null);

    /* renamed from: e */
    public final g f41411e = C25225a.m3978P1(new a(0, this));

    /* renamed from: f */
    public final g f41412f = C25225a.m3978P1(new a(1, this));

    /* renamed from: g */
    public final ViewBindingProperty f41413g = new C19350a(new C14321b());
    @Inject

    /* renamed from: h */
    public AbstractC14338m f41414h;
    @Inject

    /* renamed from: i */
    public AbstractC14352b f41415i;

    /* renamed from: e.a.g0.a.a$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/a/a$b.class */
    public static final class C14321b extends m implements s1.z.b.l<C14320a, C14406b> {
        public C14321b() {
            super(1);
        }

        /* renamed from: d */
        public Object m20268d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4581R.C4583id.disclaimerText;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C4581R.C4583id.suspendLoadingButton;
                ProgressBar progressBar = (ProgressBar) requireView.findViewById(i);
                if (progressBar != null) {
                    i = C4581R.C4583id.suspensionActionButton;
                    MaterialButton findViewById = requireView.findViewById(i);
                    if (findViewById != null) {
                        i = C4581R.C4583id.suspensionCloseAppButton;
                        MaterialButton findViewById2 = requireView.findViewById(i);
                        if (findViewById2 != null) {
                            i = C4581R.C4583id.suspensionImage;
                            ImageView imageView = (ImageView) requireView.findViewById(i);
                            if (imageView != null) {
                                i = C4581R.C4583id.suspensionSubtitleText;
                                TextView textView2 = (TextView) requireView.findViewById(i);
                                if (textView2 != null) {
                                    i = C4581R.C4583id.suspensionTitleText;
                                    TextView textView3 = (TextView) requireView.findViewById(i);
                                    if (textView3 != null) {
                                        return new C14406b((ConstraintLayout) requireView, textView, progressBar, findViewById, findViewById2, imageView, textView2, textView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.g0.a.a$c */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/a/a$c.class */
    public static final class C14322c {
        public C14322c(f fVar) {
        }
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: B6 */
    public void mo20258B6() {
        MaterialButton materialButton = m20269QA().f41549c;
        s1.z.c.l.d(materialButton, "binding.suspensionActionButton");
        materialButton.setText(getString(C4581R.string.account_suspension_action_change_email));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: Do */
    public void mo20257Do() {
        TextView textView = m20269QA().f41547a;
        s1.z.c.l.d(textView, "binding.disclaimerText");
        C19286f.m13684T(textView);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: Fb */
    public void mo20256Fb() {
        TextView textView = m20269QA().f41553g;
        s1.z.c.l.d(textView, "binding.suspensionTitleText");
        textView.setText(getString(C4581R.string.account_suspension_title_report_failed));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: Fs */
    public void mo20255Fs() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C19291g.m13589S1(requireContext, C4581R.string.account_suspension_unblocked, null, 0, 6);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: JA */
    public void mo20254JA() {
        TextView textView = m20269QA().f41552f;
        s1.z.c.l.d(textView, "binding.suspensionSubtitleText");
        textView.setText(getString(C4581R.string.account_suspension_subtitle_try_again));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: Jn */
    public void mo20253Jn() {
        TextView textView = m20269QA().f41553g;
        s1.z.c.l.d(textView, "binding.suspensionTitleText");
        textView.setText(getString(C4581R.string.account_suspension_title_blocked));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: Jq */
    public void mo20252Jq() {
        TextView textView = m20269QA().f41552f;
        s1.z.c.l.d(textView, "binding.suspensionSubtitleText");
        textView.setText(getString(C4581R.string.account_suspension_subtitle_recaptcha_failed_fallback));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: Ol */
    public void mo20251Ol() {
        TextView textView = m20269QA().f41547a;
        s1.z.c.l.d(textView, "binding.disclaimerText");
        C19286f.m13689O(textView);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: Oq */
    public void mo20250Oq() {
        TextView textView = m20269QA().f41553g;
        s1.z.c.l.d(textView, "binding.suspensionTitleText");
        textView.setText(getString(C4581R.string.account_suspension_title_error));
    }

    /* renamed from: QA */
    public final C14406b m20269QA() {
        return (C14406b) this.f41413g.m34468b(this, f41409j[0]);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: Rm */
    public void mo20249Rm(String str) {
        Objects.requireNonNull(C14323b.f41417g);
        C14323b c14323b = new C14323b();
        Bundle bundle = new Bundle();
        bundle.putString("android.intent.extra.EMAIL", str);
        c14323b.setArguments(bundle);
        c14323b.show(getChildFragmentManager(), C14323b.class.getSimpleName());
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: Ty */
    public void mo20248Ty() {
        MaterialButton materialButton = m20269QA().f41549c;
        s1.z.c.l.d(materialButton, "binding.suspensionActionButton");
        materialButton.setText(getString(C4581R.string.account_suspension_action_continue));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: W6 */
    public void mo20247W6() {
        TextView textView = m20269QA().f41553g;
        s1.z.c.l.d(textView, "binding.suspensionTitleText");
        textView.setText(getString(C4581R.string.account_suspension_title_thanks));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: a0 */
    public void mo20246a0() {
        ProgressBar progressBar = m20269QA().f41548b;
        s1.z.c.l.d(progressBar, "binding.suspendLoadingButton");
        C19286f.m13684T(progressBar);
        MaterialButton materialButton = m20269QA().f41549c;
        s1.z.c.l.d(materialButton, "binding.suspensionActionButton");
        C19286f.m13689O(materialButton);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: b0 */
    public void mo20245b0() {
        ProgressBar progressBar = m20269QA().f41548b;
        s1.z.c.l.d(progressBar, "binding.suspendLoadingButton");
        C19286f.m13689O(progressBar);
        MaterialButton materialButton = m20269QA().f41549c;
        s1.z.c.l.d(materialButton, "binding.suspensionActionButton");
        C19286f.m13684T(materialButton);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: bn */
    public void mo20244bn() {
        requireActivity().moveTaskToBack(true);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: cz */
    public void mo20243cz() {
        TextView textView = m20269QA().f41552f;
        s1.z.c.l.d(textView, "binding.suspensionSubtitleText");
        textView.setText(getString(C4581R.string.account_suspension_subtitle_will_get_back));
    }

    @Override // p193e.p194a.p786g0.p787a.C14323b.AbstractC14326d
    /* renamed from: et */
    public void mo20264et(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.EMAIL);
        AbstractC14338m abstractC14338m = this.f41414h;
        if (abstractC14338m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C14347r c14347r = (C14347r) abstractC14338m;
        s1.z.c.l.e(str, AnalyticsConstants.EMAIL);
        c14347r.f41452f.mo20192g(str, true);
        c14347r.m20212Kj();
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: i0 */
    public void mo20242i0() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C19291g.m13589S1(requireContext, C4581R.string.ErrorConnectionGeneral, null, 0, 6);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: ij */
    public void mo20241ij() {
        MaterialButton materialButton = m20269QA().f41550d;
        s1.z.c.l.d(materialButton, "binding.suspensionCloseAppButton");
        C19286f.m13689O(materialButton);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: je */
    public void mo20240je() {
        MaterialButton materialButton = m20269QA().f41549c;
        s1.z.c.l.d(materialButton, "binding.suspensionActionButton");
        materialButton.setText(getString(C4581R.string.account_suspension_action_try_again));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: kw */
    public void mo20239kw() {
        TextView textView = m20269QA().f41552f;
        s1.z.c.l.d(textView, "binding.suspensionSubtitleText");
        textView.setText(getString(C4581R.string.account_suspension_subtitle_send_report));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: o6 */
    public void mo20238o6() {
        MaterialButton materialButton = m20269QA().f41550d;
        s1.z.c.l.d(materialButton, "binding.suspensionCloseAppButton");
        C19286f.m13684T(materialButton);
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: on */
    public void mo20237on() {
        TextView textView = m20269QA().f41552f;
        s1.z.c.l.d(textView, "binding.suspensionSubtitleText");
        textView.setText(getString(C4581R.string.account_suspension_subtitle_verify));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        C14320a.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null && (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) != null) {
            onBackPressedDispatcher.m43175a(this, new C14335j(this, true));
        }
        AbstractC14338m abstractC14338m = this.f41414h;
        if (abstractC14338m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        String str = (String) this.f41412f.getValue();
        String str2 = (String) this.f41411e.getValue();
        C14347r c14347r = (C14347r) abstractC14338m;
        c14347r.f41452f.setName(str);
        c14347r.f41452f.mo20192g(str2, false);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C4581R.layout.fragment_suspension, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC14338m abstractC14338m = this.f41414h;
        if (abstractC14338m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C14347r) abstractC14338m).mo9806c();
        C14320a.super.onDestroyView();
    }

    public void onStart() {
        C14320a.super.onStart();
        AbstractC14338m abstractC14338m = this.f41414h;
        if (abstractC14338m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C14347r c14347r = (C14347r) abstractC14338m;
        c14347r.f41454h.mo20157f();
        if (c14347r.f41453g.mo13429d()) {
            d.w2(c14347r, (s1.w.f) null, (j0) null, new C14344p(c14347r, null), 3, (Object) null);
            return;
        }
        AbstractC14339n abstractC14339n = (AbstractC14339n) c14347r.f57683a;
        if (abstractC14339n == null) {
            return;
        }
        abstractC14339n.mo20242i0();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C14320a.super.onViewCreated(view, bundle);
        AbstractC14338m abstractC14338m = this.f41414h;
        if (abstractC14338m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C14347r) abstractC14338m).mo9029Y0(this);
        C14406b m20269QA = m20269QA();
        m20269QA.f41549c.setOnClickListener(new View$OnClickListenerC0429c1(0, this));
        m20269QA.f41550d.setOnClickListener(new View$OnClickListenerC0429c1(1, this));
        m20269QA.f41551e.setOnLongClickListener(new View$OnLongClickListenerC14336k(this));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: qt */
    public void mo20236qt(int i) {
        TextView textView = m20269QA().f41552f;
        s1.z.c.l.d(textView, "binding.suspensionSubtitleText");
        textView.setText(getResources().getQuantityString(C4581R.plurals.account_suspension_subtitle_error, i, Integer.valueOf(i)));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: t */
    public void mo20235t() {
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        if (!requireActivity.isTaskRoot()) {
            requireActivity().finish();
            return;
        }
        AbstractC14352b abstractC14352b = this.f41415i;
        if (abstractC14352b != null) {
            abstractC14352b.mo20202A();
        } else {
            s1.z.c.l.l("onAccountUnsuspendedListener");
            throw null;
        }
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: ur */
    public void mo20234ur() {
        TextView textView = m20269QA().f41552f;
        s1.z.c.l.d(textView, "binding.suspensionSubtitleText");
        textView.setText(getString(C4581R.string.account_suspension_subtitle_check_email));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: xn */
    public void mo20233xn() {
        MaterialButton materialButton = m20269QA().f41549c;
        s1.z.c.l.d(materialButton, "binding.suspensionActionButton");
        materialButton.setText(getString(C4581R.string.account_suspension_action_close_app));
    }

    @Override // p193e.p194a.p786g0.p787a.AbstractC14339n
    /* renamed from: yp */
    public void mo20232yp() {
        MaterialButton materialButton = m20269QA().f41549c;
        s1.z.c.l.d(materialButton, "binding.suspensionActionButton");
        materialButton.setText(getString(C4581R.string.account_suspension_action_send_report));
    }
}
