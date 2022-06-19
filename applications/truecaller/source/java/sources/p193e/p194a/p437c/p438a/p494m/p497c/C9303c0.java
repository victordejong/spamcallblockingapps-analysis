package p193e.p194a.p437c.p438a.p494m.p497c;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.utils.DateFormat;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Date;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.C27020r;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p446c.p448e.C8789d;
import p193e.p194a.p437c.p438a.p477g.C9045k0;
import p193e.p194a.p437c.p438a.p479i.AbstractC9117k;
import p193e.p194a.p437c.p438a.p479i.C9109d;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import q3.a.i0;
import q3.a.j0;
import s1.a.l;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.m;
import w3.b.a.b;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001d\u0010*\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006-"}, d2 = {"Le/a/c/a/m/c/c0;", "Landroidx/fragment/app/Fragment;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "timeTook", "PA", "(J)V", "Le/a/c/a/i/d;", AbstractC2405c.f7629a, "Le/a/c/a/i/d;", "getSmartCardsCountUseCase", "()Le/a/c/a/i/d;", "setSmartCardsCountUseCase", "(Le/a/c/a/i/d;)V", "smartCardsCountUseCase", "Le/a/c/c0/o;", C22021b.f61237c, "Le/a/c/c0/o;", "getInsightsConfig", "()Le/a/c/c0/o;", "setInsightsConfig", "(Le/a/c/c0/o;)V", "insightsConfig", "Le/a/c/a/g/k0;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/k0;", "binding", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.c0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/c0.class */
public final class C9303c0 extends Fragment {

    /* renamed from: d */
    public static final /* synthetic */ l[] f28291d = {C22128a.m8621g0(C9303c0.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentTotalSmartCardsShownBinding;", 0)};

    /* renamed from: a */
    public final ViewBindingProperty f28292a = new C19350a(new C9304a());
    @Inject

    /* renamed from: b */
    public AbstractC10028o f28293b;
    @Inject

    /* renamed from: c */
    public C9109d f28294c;

    /* renamed from: e.a.c.a.m.c.c0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/c0$a.class */
    public static final class C9304a extends m implements s1.z.b.l<C9303c0, C9045k0> {
        public C9304a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27731d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.clearStats;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4078R.C4080id.countResult;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C4078R.C4080id.dateResult;
                    TextView textView2 = (TextView) requireView.findViewById(i);
                    if (textView2 != null) {
                        i = C4078R.C4080id.processingTime;
                        TextView textView3 = (TextView) requireView.findViewById(i);
                        if (textView3 != null) {
                            i = C4078R.C4080id.triggerAction;
                            Button button2 = (Button) requireView.findViewById(i);
                            if (button2 != null) {
                                return new C9045k0((ConstraintLayout) requireView, button, textView, textView2, textView3, button2);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.m.c.c0$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/c0$b.class */
    public static final class View$OnClickListenerC9305b implements View.OnClickListener {

        @e(c = "com.truecaller.insights.ui.qa.view.TotalSmartCardsShownQaFragment$onViewCreated$1$1", f = "TotalSmartCardsShownQaFragment.kt", l = {47}, m = "invokeSuspend")
        /* renamed from: e.a.c.a.m.c.c0$b$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/c0$b$a.class */
        public static final class C9306a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public long f28296e;

            /* renamed from: f */
            public int f28297f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9306a(d dVar) {
                super(2, dVar);
                View$OnClickListenerC9305b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m27730i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C9306a(dVar);
            }

            /* renamed from: k */
            public final Object m27729k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                return new C9306a(dVar).m27728s(s.a);
            }

            /* JADX WARN: Type inference failed for: r0v14, types: [long] */
            /* JADX WARN: Type inference failed for: r0v32, types: [long] */
            /* renamed from: s */
            public final Object m27728s(Object obj) {
                char c;
                a aVar = a.a;
                int i = this.f28297f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    b P = new b(2021, 1, 1, 0, 0).P();
                    c = System.currentTimeMillis();
                    C9109d c9109d = C9303c0.this.f28294c;
                    if (c9109d == null) {
                        s1.z.c.l.l("smartCardsCountUseCase");
                        throw null;
                    }
                    s1.z.c.l.d(P, "date");
                    this.f28296e = c;
                    this.f28297f = 1;
                    if (s1.a.a.a.v0.f.d.a4(c9109d.f27793a, new AbstractC9117k.C9118a(P, null), this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    c = this.f28296e;
                    C25225a.m3932a3(obj);
                }
                long currentTimeMillis = System.currentTimeMillis();
                C9303c0 c9303c0 = C9303c0.this;
                l[] lVarArr = C9303c0.f28291d;
                c9303c0.m27732PA(currentTimeMillis - c);
                return s.a;
            }
        }

        public View$OnClickListenerC9305b() {
            C9303c0.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [e.a.c.a.m.c.c0, n3.v.b0] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            s1.a.a.a.v0.f.d.w2(C27020r.m994b(C9303c0.this), (f) null, (j0) null, new C9306a(null), 3, (Object) null);
        }
    }

    /* renamed from: e.a.c.a.m.c.c0$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/c0$c.class */
    public static final class View$OnClickListenerC9307c implements View.OnClickListener {
        public View$OnClickListenerC9307c() {
            C9303c0.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC10028o abstractC10028o = C9303c0.this.f28293b;
            if (abstractC10028o == null) {
                s1.z.c.l.l("insightsConfig");
                throw null;
            }
            abstractC10028o.mo26818s0();
            C9303c0.this.m27732PA(0L);
        }
    }

    /* renamed from: OA */
    public final C9045k0 m27733OA() {
        return (C9045k0) this.f28292a.m34468b(this, f28291d[0]);
    }

    /* renamed from: PA */
    public final void m27732PA(long j) {
        TextView textView = m27733OA().f27521b;
        StringBuilder m8732B = C22128a.m8732B(textView, "binding.countResult", "Total smart cards shown: ");
        AbstractC10028o abstractC10028o = this.f28293b;
        if (abstractC10028o == null) {
            s1.z.c.l.l("insightsConfig");
            throw null;
        }
        m8732B.append(String.valueOf(abstractC10028o.mo26807y()));
        textView.setText(m8732B.toString());
        AbstractC10028o abstractC10028o2 = this.f28293b;
        if (abstractC10028o2 == null) {
            s1.z.c.l.l("insightsConfig");
            throw null;
        }
        Date mo26830m0 = abstractC10028o2.mo26830m0();
        if (mo26830m0 == null) {
            TextView textView2 = m27733OA().f27522c;
            s1.z.c.l.d(textView2, "binding.dateResult");
            textView2.setText("Last counted date: null");
        } else {
            String formatDate = DateFormat.yyyy_MM_dd_HH_mm_ss.formatDate(mo26830m0);
            TextView textView3 = m27733OA().f27522c;
            s1.z.c.l.d(textView3, "binding.dateResult");
            textView3.setText("Last counted date: " + formatDate);
        }
        TextView textView4 = m27733OA().f27523d;
        s1.z.c.l.d(textView4, "binding.processingTime");
        textView4.setText("Processing time: " + j + "ms");
    }

    public void onCreate(Bundle bundle) {
        C9303c0.super.onCreate(bundle);
        int i = AbstractC9246a.f28129a;
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            s1.z.c.l.l("instance");
            throw null;
        }
        C9248b c9248b = (C9248b) abstractC9246a;
        AbstractC10028o mo12751E2 = c9248b.f28140d.mo12751E2();
        Objects.requireNonNull(mo12751E2, "Cannot return null from a non-@Nullable component method");
        this.f28293b = mo12751E2;
        C8789d c8789d = c9248b.f28144h;
        f mo12793B1 = c9248b.f28142f.mo12793B1();
        Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
        AbstractC10028o mo12751E22 = c9248b.f28140d.mo12751E2();
        Objects.requireNonNull(mo12751E22, "Cannot return null from a non-@Nullable component method");
        AbstractC10497d mo12431c2 = c9248b.f28140d.mo12431c2();
        Objects.requireNonNull(mo12431c2, "Cannot return null from a non-@Nullable component method");
        AbstractC9691j mo12160w0 = c9248b.f28140d.mo12160w0();
        Objects.requireNonNull(mo12160w0, "Cannot return null from a non-@Nullable component method");
        this.f28294c = C10480a.m25973d2(c8789d, mo12793B1, mo12751E22, mo12431c2, mo12160w0);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.fragment_total_smart_cards_shown, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9303c0.super.onViewCreated(view, bundle);
        m27733OA().f27524e.setOnClickListener(new View$OnClickListenerC9305b());
        m27733OA().f27520a.setOnClickListener(new View$OnClickListenerC9307c());
        m27732PA(0L);
    }
}
