package p193e.p194a.p437c.p438a.p487k.p492e;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.markedimportantpage.presentation.MarkedImportantViewModel;
import com.truecaller.insights.p168ui.models.AdapterItem;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27010k0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p437c.p438a.p477g.C9036h0;
import p193e.p194a.p437c.p438a.p477g.C9061p1;
import p193e.p194a.p437c.p438a.p487k.p488a.C9191a;
import p193e.p194a.p437c.p438a.p487k.p488a.C9194b;
import p193e.p194a.p437c.p438a.p487k.p491d.C9215b;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� 12\u00020\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b0\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0012R\u001d\u0010\u0019\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001d\u0010/\u001a\u00020*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.¨\u00062"}, d2 = {"Le/a/c/a/k/e/e;", "Landroidx/fragment/app/Fragment;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "onStart", "Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;", AbstractC2405c.f7629a, "Ls1/g;", "OA", "()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;", "viewModel", "Le/a/c/a/k/d/b;", C22021b.f61237c, "Le/a/c/a/k/d/b;", "getListAdapter", "()Le/a/c/a/k/d/b;", "setListAdapter", "(Le/a/c/a/k/d/b;)V", "listAdapter", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/c/a/g/h0;", "d", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/c/a/g/h0;", "binding", "<init>", "f", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.k.e.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/e/e.class */
public final class C9223e extends Fragment {

    /* renamed from: e */
    public static final /* synthetic */ l[] f28014e = {C22128a.m8621g0(C9223e.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentMarkedImportantRowPageBinding;", 0)};

    /* renamed from: f */
    public static final C9225b f28015f = new C9225b(null);
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f28016a;
    @Inject

    /* renamed from: b */
    public C9215b f28017b;

    /* renamed from: c */
    public final g f28018c = C25225a.m3978P1(new C9226c());

    /* renamed from: d */
    public final ViewBindingProperty f28019d = new C19350a(new C9224a());

    /* renamed from: e.a.c.a.k.e.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/e/e$a.class */
    public static final class C9224a extends m implements s1.z.b.l<C9223e, C9036h0> {
        public C9224a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27787d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.emptyState;
            View findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                C9061p1 m27886a = C9061p1.m27886a(findViewById);
                i = C4078R.C4080id.rowItemList;
                RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                if (recyclerView != null) {
                    return new C9036h0((ConstraintLayout) requireView, m27886a, recyclerView);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.k.e.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/e/e$b.class */
    public static final class C9225b {
        public C9225b() {
        }

        public C9225b(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.k.e.e$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/e/e$c.class */
    public static final class C9226c extends m implements a<MarkedImportantViewModel> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9226c() {
            super(0);
            C9223e.this = r4;
        }

        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            n3.r.a.l requireActivity = C9223e.this.requireActivity();
            C26986a1.AbstractC26987b abstractC26987b = C9223e.this.f28016a;
            if (abstractC26987b == null) {
                s1.z.c.l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = requireActivity.getViewModelStore();
            String canonicalName = MarkedImportantViewModel.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (MarkedImportantViewModel.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, MarkedImportantViewModel.class) : abstractC26987b.create(MarkedImportantViewModel.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            s1.z.c.l.d(abstractC27040y0, "ViewModelProvider(requir…antViewModel::class.java)");
            return (MarkedImportantViewModel) abstractC27040y0;
        }
    }

    /* renamed from: OA */
    public final MarkedImportantViewModel m27788OA() {
        return (MarkedImportantViewModel) this.f28018c.getValue();
    }

    public void onCreate(Bundle bundle) {
        C9223e.super.onCreate(bundle);
        C9194b c9194b = new C9194b(null);
        AbstractC10451a abstractC10451a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        AbstractC10261a abstractC10261a = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
        AbstractC8412c m15207r = C18334g0.m15207r(this);
        C25225a.m3846s(c9194b, C9194b.class);
        C25225a.m3846s(abstractC10451a, AbstractC10451a.class);
        C25225a.m3846s(abstractC10261a, AbstractC10261a.class);
        C25225a.m3846s(m15207r, AbstractC8412c.class);
        C9191a c9191a = new C9191a(c9194b, abstractC10451a, abstractC10261a, m15207r, null);
        this.f28016a = (C26986a1.AbstractC26987b) c9191a.f27950m.get();
        this.f28017b = (C9215b) c9191a.f27952o.get();
        MarkedImportantViewModel m27788OA = m27788OA();
        AbstractC27028u lifecycle = getLifecycle();
        s1.z.c.l.d(lifecycle, "lifecycle");
        Objects.requireNonNull(m27788OA);
        s1.z.c.l.e(lifecycle, "lifecycle");
        lifecycle.mo988a(m27788OA.f12828f);
        lifecycle.mo988a(m27788OA);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.fragment_marked_important_row_page, viewGroup, false);
    }

    public void onResume() {
        C9223e.super.onResume();
        m27788OA().m35173h(false);
    }

    public void onStart() {
        C9223e.super.onStart();
        m27788OA().m35176e();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9223e.super.onViewCreated(view, bundle);
        C9036h0 c9036h0 = (C9036h0) this.f28019d.m34468b(this, f28014e[0]);
        C9215b c9215b = this.f28017b;
        View view2 = null;
        if (c9215b == null) {
            s1.z.c.l.l("listAdapter");
            throw null;
        }
        MarkedImportantViewModel m27788OA = m27788OA();
        s1.z.c.l.e(m27788OA, "importantMessageMarker");
        c9215b.f28000a = m27788OA;
        RecyclerView recyclerView = c9036h0.f27497b;
        s1.z.c.l.d(recyclerView, "rowItemList");
        if (recyclerView.getAdapter() == null) {
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(requireContext());
            RecyclerView recyclerView2 = c9036h0.f27497b;
            s1.z.c.l.d(recyclerView2, "rowItemList");
            C9215b c9215b2 = this.f28017b;
            if (c9215b2 == null) {
                s1.z.c.l.l("listAdapter");
                throw null;
            }
            recyclerView2.setAdapter(c9215b2);
            RecyclerView recyclerView3 = c9036h0.f27497b;
            s1.z.c.l.d(recyclerView3, "rowItemList");
            recyclerView3.setLayoutManager(linearLayoutManager);
        }
        c9036h0.f27497b.addOnScrollListener(new C9232k(this));
        C27010k0<List<AdapterItem>> c27010k0 = m27788OA().f12824b;
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        C9215b c9215b3 = this.f28017b;
        if (c9215b3 == null) {
            s1.z.c.l.l("listAdapter");
            throw null;
        }
        c27010k0.m42867f(viewLifecycleOwner, new C9230i(new C9228g(c9215b3)));
        m27788OA().f12825c.m42867f(getViewLifecycleOwner(), new C9230i(new C9229h(this)));
        m27788OA().f12830h.mo26815u().m42867f(getViewLifecycleOwner(), new C9227f(this));
        View view3 = getView();
        if (view3 instanceof NestedScrollView) {
            view2 = view3;
        }
        NestedScrollView nestedScrollView = view2;
        if (nestedScrollView == null) {
            return;
        }
        nestedScrollView.setOnScrollChangeListener(new C9231j(this));
    }
}
