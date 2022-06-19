package p193e.p194a.p437c.p438a.p456d.p470g;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.financepage.models.FinanceTab;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p446c.AbstractC8780b;
import p193e.p194a.p437c.p438a.p456d.p457a.C8869a;
import p193e.p194a.p437c.p438a.p456d.p457a.p458c.C8879g;
import p193e.p194a.p437c.p438a.p477g.C9030f0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.g;
import s1.i;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� 42\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b3\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001d\u0010 \u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001d\u00102\u001a\u00020-8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101¨\u00065"}, d2 = {"Le/a/c/a/d/g/l;", "Landroidx/fragment/app/Fragment;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "Le/a/c/a/d/a/c/g;", C22021b.f61237c, "Le/a/c/a/d/a/c/g;", "getTransactionAdapter", "()Le/a/c/a/d/a/c/g;", "setTransactionAdapter", "(Le/a/c/a/d/a/c/g;)V", "transactionAdapter", "Le/a/c/a/g/f0;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/f0;", "binding", "Lcom/truecaller/insights/ui/financepage/models/FinanceTab;", "d", "Lcom/truecaller/insights/ui/financepage/models/FinanceTab;", "financeTab", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/c/a/d/a/a;", AbstractC2405c.f7629a, "Ls1/g;", "PA", "()Le/a/c/a/d/a/a;", "financePageViewModel", "<init>", "g", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.d.g.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/l.class */
public final class C8956l extends Fragment {

    /* renamed from: f */
    public static final /* synthetic */ l[] f27246f = {C22128a.m8621g0(C8956l.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentFinanceTransactionsBinding;", 0)};

    /* renamed from: g */
    public static final C8958b f27247g = new C8958b(null);
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f27248a;
    @Inject

    /* renamed from: b */
    public C8879g f27249b;

    /* renamed from: d */
    public FinanceTab f27251d;

    /* renamed from: c */
    public final g f27250c = C25225a.m3978P1(new C8959c());

    /* renamed from: e */
    public final ViewBindingProperty f27252e = new C19350a(new C8957a());

    /* renamed from: e.a.c.a.d.g.l$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/l$a.class */
    public static final class C8957a extends m implements s1.z.b.l<C8956l, C9030f0> {
        public C8957a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27918d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.scrollUp;
            FloatingActionButton findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4078R.C4080id.transactionRv;
                RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                if (recyclerView != null) {
                    return new C9030f0((ConstraintLayout) requireView, findViewById, recyclerView);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.d.g.l$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/l$b.class */
    public static final class C8958b {
        public C8958b(f fVar) {
        }

        /* renamed from: a */
        public final C8956l m27917a(FinanceTab financeTab) {
            s1.z.c.l.e(financeTab, "financeTab");
            Bundle bundle = new Bundle();
            bundle.putSerializable("finance_tab_type", financeTab);
            C8956l c8956l = new C8956l();
            c8956l.setArguments(bundle);
            return c8956l;
        }
    }

    /* renamed from: e.a.c.a.d.g.l$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/l$c.class */
    public static final class C8959c extends m implements a<C8869a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8959c() {
            super(0);
            C8956l.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [e.a.c.a.d.g.l, n3.v.c1] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = C8956l.this;
            C26986a1.AbstractC26987b abstractC26987b = r0.f27248a;
            if (abstractC26987b == null) {
                s1.z.c.l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C8869a.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C8869a.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, C8869a.class) : abstractC26987b.create(C8869a.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            s1.z.c.l.d(abstractC27040y0, "ViewModelProvider(this, …ageViewModel::class.java)");
            return (C8869a) abstractC27040y0;
        }
    }

    /* renamed from: OA */
    public final C9030f0 m27920OA() {
        return (C9030f0) this.f27252e.m34468b(this, f27246f[0]);
    }

    /* renamed from: PA */
    public final C8869a m27919PA() {
        return (C8869a) this.f27250c.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
        if (r9 != null) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p456d.p470g.C8956l.onCreate(android.os.Bundle):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.fragment_finance_transactions, viewGroup, false);
    }

    public void onResume() {
        FloatingActionButton mo28075b7;
        C8956l.super.onResume();
        AbstractC8780b activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof AbstractC8780b)) {
            lVar = null;
        }
        AbstractC8780b abstractC8780b = lVar;
        if (abstractC8780b == null || (mo28075b7 = abstractC8780b.mo28075b7()) == null) {
            return;
        }
        RecyclerView recyclerView = m27920OA().f27471a;
        s1.z.c.l.d(recyclerView, "binding.transactionRv");
        RecyclerView recyclerView2 = m27920OA().f27471a;
        s1.z.c.l.d(recyclerView2, "binding.transactionRv");
        RecyclerView.AbstractC0329o layoutManager = recyclerView2.getLayoutManager();
        Objects.requireNonNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        C10480a.m26060I2(recyclerView, (LinearLayoutManager) layoutManager, mo28075b7, new C8960m(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [e.a.c.a.d.a.c.g, androidx.recyclerview.widget.RecyclerView$g] */
    public void onViewCreated(View view, Bundle bundle) {
        LiveData liveData;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8956l.super.onViewCreated(view, bundle);
        C8879g c8879g = this.f27249b;
        if (c8879g == null) {
            s1.z.c.l.l("transactionAdapter");
            throw null;
        }
        FinanceTab financeTab = this.f27251d;
        if (financeTab == null) {
            s1.z.c.l.l("financeTab");
            throw null;
        }
        s1.z.c.l.e(financeTab, "financeTab");
        c8879g.f27045c = financeTab;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        RecyclerView recyclerView = m27920OA().f27471a;
        s1.z.c.l.d(recyclerView, "binding.transactionRv");
        ?? r0 = this.f27249b;
        if (r0 == 0) {
            s1.z.c.l.l("transactionAdapter");
            throw null;
        }
        recyclerView.setAdapter(r0);
        RecyclerView recyclerView2 = m27920OA().f27471a;
        s1.z.c.l.d(recyclerView2, "binding.transactionRv");
        recyclerView2.setLayoutManager(linearLayoutManager);
        FinanceTab financeTab2 = this.f27251d;
        if (financeTab2 == null) {
            s1.z.c.l.l("financeTab");
            throw null;
        }
        int ordinal = financeTab2.ordinal();
        if (ordinal == 0) {
            liveData = m27919PA().f27024b;
        } else if (ordinal == 1) {
            liveData = m27919PA().f27025c;
        } else if (ordinal != 2) {
            throw new i();
        } else {
            liveData = m27919PA().f27026d;
        }
        liveData.m42867f(getViewLifecycleOwner(), new C8961n(this));
    }
}
