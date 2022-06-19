package p193e.p194a.p437c.p438a.p446c.p447a;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.utils.HideTrxTempState;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p442b.p444b.C8761b;
import p193e.p194a.p437c.p438a.p446c.p455i.C8868a;
import p193e.p194a.p437c.p438a.p477g.C9050m;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� 42\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b2\u00103J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001d\u0010\"\u001a\u00020\u001d8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\"\u0010&\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u00065"}, d2 = {"Le/a/c/a/c/a/a;", "Le/m/a/g/e/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Le/a/c/e/c;", C22021b.f61237c, "Le/a/c/e/c;", "getAnalyticsManager", "()Le/a/c/e/c;", "setAnalyticsManager", "(Le/a/c/e/c;)V", "analyticsManager", "Le/a/c/a/g/m;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/c/a/g/m;", "binding", "", "d", "Z", "isAutoDismiss", "()Z", "setAutoDismiss", "(Z)V", "Le/a/c/c0/o;", "a", "Le/a/c/c0/o;", "OA", "()Le/a/c/c0/o;", "setInsightsConfig", "(Le/a/c/c0/o;)V", "insightsConfig", "<init>", "()V", "g", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.c.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/a/a.class */
public final class C8770a extends e {
    @Inject

    /* renamed from: a */
    public AbstractC10028o f26774a;
    @Inject

    /* renamed from: b */
    public AbstractC10060c f26775b;

    /* renamed from: c */
    public final ViewBindingProperty f26776c = new C19350a(new C8772b());

    /* renamed from: d */
    public boolean f26777d;

    /* renamed from: e */
    public static final /* synthetic */ l[] f26771e = {C22128a.m8621g0(C8770a.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetHideTrxInfoBinding;", 0)};

    /* renamed from: g */
    public static final C8773c f26773g = new C8773c(null);

    /* renamed from: f */
    public static final String f26772f = "javaClass";

    /* renamed from: e.a.c.a.c.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/c/a/c/a/a$a.class */
    public static final class View$OnClickListenerC8771a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f26778a;

        /* renamed from: b */
        public final /* synthetic */ Object f26779b;

        public View$OnClickListenerC8771a(int i, Object obj) {
            this.f26778a = i;
            this.f26779b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f26778a;
            if (i == 0) {
                C8770a c8770a = (C8770a) this.f26779b;
                c8770a.f26777d = true;
                c8770a.m28082OA().mo26823q(false);
                ((C8770a) this.f26779b).m28082OA().mo26869M(HideTrxTempState.HIDDEN);
                AbstractC10060c abstractC10060c = ((C8770a) this.f26779b).f26775b;
                if (abstractC10060c == null) {
                    s1.z.c.l.l("analyticsManager");
                    throw null;
                }
                C8868a c8868a = C8868a.f27022i;
                abstractC10060c.mo26757a(C8868a.f27017d);
                ((C8770a) this.f26779b).dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                C8770a c8770a2 = (C8770a) this.f26779b;
                c8770a2.f26777d = true;
                c8770a2.m28082OA().mo26823q(true);
                ((C8770a) this.f26779b).m28082OA().mo26869M(HideTrxTempState.HIDDEN);
                AbstractC10060c abstractC10060c2 = ((C8770a) this.f26779b).f26775b;
                if (abstractC10060c2 == null) {
                    s1.z.c.l.l("analyticsManager");
                    throw null;
                }
                C8868a c8868a2 = C8868a.f27022i;
                abstractC10060c2.mo26757a(C8868a.f27016c);
                ((C8770a) this.f26779b).dismiss();
            }
        }
    }

    /* renamed from: e.a.c.a.c.a.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/a/a$b.class */
    public static final class C8772b extends m implements s1.z.b.l<C8770a, C9050m> {
        public C8772b() {
            super(1);
        }

        /* renamed from: d */
        public Object m28081d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.cancelBtn;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4078R.C4080id.confirmBtn;
                Button button2 = (Button) requireView.findViewById(i);
                if (button2 != null) {
                    i = C4078R.C4080id.desc;
                    TextView textView = (TextView) requireView.findViewById(i);
                    if (textView != null) {
                        i = C4078R.C4080id.title;
                        TextView textView2 = (TextView) requireView.findViewById(i);
                        if (textView2 != null) {
                            return new C9050m((ConstraintLayout) requireView, button, button2, textView, textView2);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.c.a.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/a/a$c.class */
    public static final class C8773c {
        public C8773c(f fVar) {
        }
    }

    /* renamed from: OA */
    public final AbstractC10028o m28082OA() {
        AbstractC10028o abstractC10028o = this.f26774a;
        if (abstractC10028o != null) {
            return abstractC10028o;
        }
        s1.z.c.l.l("insightsConfig");
        throw null;
    }

    public void onCreate(Bundle bundle) {
        C8770a.super.onCreate(bundle);
        C8761b.C8763b m28085a = C8761b.m28085a();
        m28085a.f26741a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        C8761b c8761b = (C8761b) m28085a.m28084a();
        AbstractC10028o mo12751E2 = c8761b.f26740a.mo12751E2();
        Objects.requireNonNull(mo12751E2, "Cannot return null from a non-@Nullable component method");
        this.f26774a = mo12751E2;
        AbstractC10060c mo12429c5 = c8761b.f26740a.mo12429c5();
        Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
        this.f26775b = mo12429c5;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_hide_trx_info, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toInsightsTheme…x_info, container, false)");
        return inflate;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C8770a.super.onDismiss(dialogInterface);
        if (!this.f26777d) {
            Toast.makeText(requireContext(), C4078R.string.change_preference_to_auto_hide_trx, 0).show();
            AbstractC10060c abstractC10060c = this.f26775b;
            if (abstractC10060c == null) {
                s1.z.c.l.l("analyticsManager");
                throw null;
            }
            C8868a c8868a = C8868a.f27022i;
            abstractC10060c.mo26757a(C8868a.f27018e);
            AbstractC10028o abstractC10028o = this.f26774a;
            if (abstractC10028o == null) {
                s1.z.c.l.l("insightsConfig");
                throw null;
            }
            abstractC10028o.mo26869M(HideTrxTempState.HIDDEN);
            AbstractC10028o abstractC10028o2 = this.f26774a;
            if (abstractC10028o2 != null) {
                abstractC10028o2.mo26823q(false);
            } else {
                s1.z.c.l.l("insightsConfig");
                throw null;
            }
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8770a.super.onViewCreated(view, bundle);
        AbstractC10028o abstractC10028o = this.f26774a;
        if (abstractC10028o == null) {
            s1.z.c.l.l("insightsConfig");
            throw null;
        }
        abstractC10028o.mo26826o0(true);
        ViewBindingProperty viewBindingProperty = this.f26776c;
        l<?>[] lVarArr = f26771e;
        ((C9050m) viewBindingProperty.m34468b(this, lVarArr[0])).f27531a.setOnClickListener(new View$OnClickListenerC8771a(0, this));
        ((C9050m) this.f26776c.m34468b(this, lVarArr[0])).f27532b.setOnClickListener(new View$OnClickListenerC8771a(1, this));
    }
}
