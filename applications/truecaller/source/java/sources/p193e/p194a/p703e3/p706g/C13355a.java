package p193e.p194a.p703e3.p706g;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.call_alert.C3576R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.r.a.k;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p677d3.AbstractC12589h;
import p193e.p194a.p703e3.p705f.C13354a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.f0.r;
import s1.w.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� 52\u00020\u00012\u00020\u0002:\u0001\u0013B\u0007¢\u0006\u0004\b4\u0010\u0011J+\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R(\u0010\u001a\u001a\u00020\u00128��@��X\u0081.¢\u0006\u0018\n\u0004\b\u0013\u0010\u0014\u0012\u0004\b\u0019\u0010\u0011\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00128V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0016R\"\u0010(\u001a\u00020!8��@��X\u0081.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R(\u0010-\u001a\u00020\u00128��@��X\u0081.¢\u0006\u0018\n\u0004\b)\u0010\u0014\u0012\u0004\b,\u0010\u0011\u001a\u0004\b*\u0010\u0016\"\u0004\b+\u0010\u0018R\u001d\u00103\u001a\u00020.8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102¨\u00066"}, d2 = {"Le/a/e3/g/a;", "Ln3/r/a/k;", "Lq3/a/i0;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "Ls1/w/f;", C22021b.f61237c, "Ls1/w/f;", "getUiContext$call_alert_release", "()Ls1/w/f;", "setUiContext$call_alert_release", "(Ls1/w/f;)V", "getUiContext$call_alert_release$annotations", "uiContext", "Lq3/a/p1;", "d", "Lq3/a/p1;", "job", "getCoroutineContext", "coroutineContext", "Le/a/d3/h;", "a", "Le/a/d3/h;", "getBusinessCardRepository$call_alert_release", "()Le/a/d3/h;", "setBusinessCardRepository$call_alert_release", "(Le/a/d3/h;)V", "businessCardRepository", AbstractC2405c.f7629a, "getIoContext$call_alert_release", "setIoContext$call_alert_release", "getIoContext$call_alert_release$annotations", "ioContext", "Le/a/e3/f/a;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/e3/f/a;", "binding", "<init>", "g", "call-alert_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e3.g.a */
/* loaded from: classes6-dex2jar.jar:e/a/e3/g/a.class */
public final class C13355a extends k implements i0 {

    /* renamed from: f */
    public static final /* synthetic */ l[] f38790f = {C22128a.m8621g0(C13355a.class, "binding", "getBinding()Lcom/truecaller/call_alert/databinding/DialogCallAlertDebugNotificationBinding;", 0)};

    /* renamed from: g */
    public static final C13357b f38791g = new C13357b(null);
    @Inject

    /* renamed from: a */
    public AbstractC12589h f38792a;
    @Inject

    /* renamed from: b */
    public f f38793b;
    @Inject

    /* renamed from: c */
    public f f38794c;

    /* renamed from: d */
    public p1 f38795d;

    /* renamed from: e */
    public final ViewBindingProperty f38796e = new C19350a(new C13356a());

    /* renamed from: e.a.e3.g.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/g/a$a.class */
    public static final class C13356a extends m implements s1.z.b.l<C13355a, C13354a> {
        public C13356a() {
            super(1);
        }

        /* renamed from: d */
        public Object m21883d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3576R.C3578id.badges;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C3576R.C3578id.badgesLabel;
                TextView textView2 = (TextView) requireView.findViewById(i);
                if (textView2 != null) {
                    i = C3576R.C3578id.businessCardTitle;
                    TextView textView3 = (TextView) requireView.findViewById(i);
                    if (textView3 != null) {
                        i = C3576R.C3578id.city;
                        TextView textView4 = (TextView) requireView.findViewById(i);
                        if (textView4 != null) {
                            i = C3576R.C3578id.cityLabel;
                            TextView textView5 = (TextView) requireView.findViewById(i);
                            if (textView5 != null) {
                                i = C3576R.C3578id.company;
                                TextView textView6 = (TextView) requireView.findViewById(i);
                                if (textView6 != null) {
                                    i = C3576R.C3578id.companyLabel;
                                    TextView textView7 = (TextView) requireView.findViewById(i);
                                    if (textView7 != null) {
                                        i = C3576R.C3578id.firstName;
                                        TextView textView8 = (TextView) requireView.findViewById(i);
                                        if (textView8 != null) {
                                            i = C3576R.C3578id.firstNameLabel;
                                            TextView textView9 = (TextView) requireView.findViewById(i);
                                            if (textView9 != null) {
                                                i = C3576R.C3578id.jobTitle;
                                                TextView textView10 = (TextView) requireView.findViewById(i);
                                                if (textView10 != null) {
                                                    i = C3576R.C3578id.jobTitleLabel;
                                                    TextView textView11 = (TextView) requireView.findViewById(i);
                                                    if (textView11 != null) {
                                                        i = C3576R.C3578id.labels_flow;
                                                        Flow findViewById = requireView.findViewById(i);
                                                        if (findViewById != null) {
                                                            i = C3576R.C3578id.lastName;
                                                            TextView textView12 = (TextView) requireView.findViewById(i);
                                                            if (textView12 != null) {
                                                                i = C3576R.C3578id.lastNameLabel;
                                                                TextView textView13 = (TextView) requireView.findViewById(i);
                                                                if (textView13 != null) {
                                                                    i = C3576R.C3578id.phoneNumber;
                                                                    TextView textView14 = (TextView) requireView.findViewById(i);
                                                                    if (textView14 != null) {
                                                                        i = C3576R.C3578id.phoneNumberLabel;
                                                                        TextView textView15 = (TextView) requireView.findViewById(i);
                                                                        if (textView15 != null) {
                                                                            i = C3576R.C3578id.values_flow;
                                                                            Flow findViewById2 = requireView.findViewById(i);
                                                                            if (findViewById2 != null) {
                                                                                i = C3576R.C3578id.videoId;
                                                                                TextView textView16 = (TextView) requireView.findViewById(i);
                                                                                if (textView16 != null) {
                                                                                    i = C3576R.C3578id.videoIdLabel;
                                                                                    TextView textView17 = (TextView) requireView.findViewById(i);
                                                                                    if (textView17 != null) {
                                                                                        return new C13354a((ConstraintLayout) requireView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, findViewById, textView12, textView13, textView14, textView15, findViewById2, textView16, textView17);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    /* renamed from: e.a.e3.g.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/g/a$b.class */
    public static final class C13357b {
        public C13357b(s1.z.c.f fVar) {
        }
    }

    /* renamed from: OA */
    public static final String m21884OA(C13355a c13355a, String str, String str2) {
        Objects.requireNonNull(c13355a);
        String str3 = str2;
        if (str != null) {
            if (!(!r.p(str))) {
                str = null;
            }
            str3 = str2;
            if (str != null) {
                str3 = str;
            }
        }
        return str3;
    }

    public f getCoroutineContext() {
        f fVar = this.f38793b;
        if (fVar == null) {
            s1.z.c.l.l("uiContext");
            throw null;
        }
        p1 p1Var = this.f38795d;
        if (p1Var != null) {
            return fVar.plus(p1Var);
        }
        s1.z.c.l.l("job");
        throw null;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C3576R.layout.dialog_call_alert_debug_notification, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…cation, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        p1 p1Var = this.f38795d;
        if (p1Var == null) {
            s1.z.c.l.l("job");
            throw null;
        }
        d.T(p1Var, (CancellationException) null, 1, (Object) null);
        C13355a.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C13355a.super.onViewCreated(view, bundle);
        this.f38795d = d.j((p1) null, 1, (Object) null);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C18334g0.m15205s(requireContext).mo21873b(this);
        d.w2(this, (f) null, (j0) null, new C13358b(this, null), 3, (Object) null);
    }
}
