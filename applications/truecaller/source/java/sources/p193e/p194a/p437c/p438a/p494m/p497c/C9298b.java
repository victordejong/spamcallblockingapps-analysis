package p193e.p194a.p437c.p438a.p494m.p497c;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SearchView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9079v1;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p438a.p494m.p496b.C9254b;
import p193e.p194a.p437c.p438a.p494m.p496b.C9256c;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010(J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u001a\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006)"}, d2 = {"Le/a/c/a/m/c/b;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/c/a/m/b/c;", C22021b.f61237c, "Ls1/g;", "getViewModel", "()Le/a/c/a/m/b/c;", "viewModel", "Le/a/c/a/g/v1;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/v1;", "binding", "Le/a/c/a/m/b/c$a;", "a", "Le/a/c/a/m/b/c$a;", "getViewModelFactory", "()Le/a/c/a/m/b/c$a;", "setViewModelFactory", "(Le/a/c/a/m/b/c$a;)V", "viewModelFactory", "Le/a/c/a/m/b/b;", "d", "Le/a/c/a/m/b/b;", "searchAdapter", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/b.class */
public final class C9298b extends Fragment {

    /* renamed from: e */
    public static final /* synthetic */ l[] f28283e = {C22128a.m8621g0(C9298b.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/QaFtsTesterBinding;", 0)};
    @Inject

    /* renamed from: a */
    public C9256c.C9257a f28284a;

    /* renamed from: b */
    public final g f28285b = C25225a.m3978P1(new C9300b());

    /* renamed from: c */
    public final ViewBindingProperty f28286c;

    /* renamed from: d */
    public final C9254b f28287d;

    /* renamed from: e.a.c.a.m.c.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/b$a.class */
    public static final class C9299a extends m implements s1.z.b.l<C9298b, C9079v1> {
        public C9299a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27734d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.ftsRV;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
            if (recyclerView != null) {
                i = C4078R.C4080id.searchView;
                SearchView searchView = (SearchView) requireView.findViewById(i);
                if (searchView != null) {
                    return new C9079v1((ConstraintLayout) requireView, recyclerView, searchView);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.m.c.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/b$b.class */
    public static final class C9300b extends m implements a<C9256c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9300b() {
            super(0);
            C9298b.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [n3.v.c1, e.a.c.a.m.c.b] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = C9298b.this;
            C9256c.C9257a c9257a = r0.f28284a;
            if (c9257a == null) {
                s1.z.c.l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C9256c.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C9256c.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (c9257a instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) c9257a).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = c9257a instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) c9257a).m1024b(m8543z2, C9256c.class) : c9257a.create(C9256c.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            s1.z.c.l.d(abstractC27040y0, "ViewModelProvider(this, …rchViewModel::class.java)");
            return (C9256c) abstractC27040y0;
        }
    }

    public C9298b() {
        int i = AbstractC9246a.f28129a;
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            s1.z.c.l.l("instance");
            throw null;
        }
        this.f28284a = (C9256c.C9257a) ((C9248b) abstractC9246a).f28134C.get();
        this.f28286c = new C19350a(new C9299a());
        this.f28287d = new C9254b();
    }

    /* renamed from: OA */
    public final C9079v1 m27735OA() {
        return (C9079v1) this.f28286c.m34468b(this, f28283e[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.qa_fts_tester, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [e.a.c.a.m.b.b, androidx.recyclerview.widget.RecyclerView$g] */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9298b.super.onViewCreated(view, bundle);
        ((C9256c) this.f28285b.getValue()).f28177b.m42867f(getViewLifecycleOwner(), new C9302c(this));
        Context context = view.getContext();
        s1.z.c.l.d(context, "view.context");
        RecyclerView recyclerView = m27735OA().f27699a;
        s1.z.c.l.d(recyclerView, "binding.ftsRV");
        recyclerView.setAdapter(this.f28287d);
        RecyclerView recyclerView2 = m27735OA().f27699a;
        s1.z.c.l.d(recyclerView2, "binding.ftsRV");
        recyclerView2.setLayoutManager(new LinearLayoutManager(context));
        m27735OA().f27700b.setOnQueryTextListener(new C9308d(this));
    }
}
