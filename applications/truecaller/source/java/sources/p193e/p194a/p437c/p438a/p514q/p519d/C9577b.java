package p193e.p194a.p437c.p438a.p514q.p519d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
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
import p193e.p194a.p437c.p438a.p477g.C9048l0;
import p193e.p194a.p437c.p438a.p514q.p517c.C9573b;
import p193e.p194a.p437c.p438a.p514q.p517c.p518c.C9575a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� 72\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b5\u00106J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001d\u00104\u001a\u00020/8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103¨\u00068"}, d2 = {"Le/a/c/a/q/d/b;", "Landroidx/fragment/app/Fragment;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/c/a/q/c/b;", "d", "Ls1/g;", "getUpdatesPageViewModel", "()Le/a/c/a/q/c/b;", "updatesPageViewModel", "Le/a/c/a/q/c/c/a;", C22021b.f61237c, "Le/a/c/a/q/c/c/a;", "getUpdatesListAdapter", "()Le/a/c/a/q/c/c/a;", "setUpdatesListAdapter", "(Le/a/c/a/q/c/c/a;)V", "updatesListAdapter", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/c/b/j;", AbstractC2405c.f7629a, "Le/a/c/b/j;", "getInsightsStatusProvider", "()Le/a/c/b/j;", "setInsightsStatusProvider", "(Le/a/c/b/j;)V", "insightsStatusProvider", "Le/a/c/a/g/l0;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/l0;", "binding", "<init>", "()V", "g", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.q.d.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/d/b.class */
public final class C9577b extends Fragment {

    /* renamed from: f */
    public static final /* synthetic */ l[] f28986f = {C22128a.m8621g0(C9577b.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentUpdatesListBinding;", 0)};

    /* renamed from: g */
    public static final C9579b f28987g = new C9579b(null);
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f28988a;
    @Inject

    /* renamed from: b */
    public C9575a f28989b;
    @Inject

    /* renamed from: c */
    public AbstractC9691j f28990c;

    /* renamed from: d */
    public final g f28991d = C25225a.m3978P1(new C9580c());

    /* renamed from: e */
    public final ViewBindingProperty f28992e = new C19350a(new C9578a());

    /* renamed from: e.a.c.a.q.d.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/d/b$a.class */
    public static final class C9578a extends m implements s1.z.b.l<C9577b, C9048l0> {
        public C9578a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27416d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.emptyState;
            Group group = (Group) requireView.findViewById(i);
            if (group != null) {
                i = C4078R.C4080id.emptyStateDesc;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C4078R.C4080id.emptyStateImg;
                    ImageView imageView = (ImageView) requireView.findViewById(i);
                    if (imageView != null) {
                        i = C4078R.C4080id.emptyStateTitle;
                        TextView textView2 = (TextView) requireView.findViewById(i);
                        if (textView2 != null) {
                            i = C4078R.C4080id.scrollUp;
                            FloatingActionButton findViewById = requireView.findViewById(i);
                            if (findViewById != null) {
                                i = C4078R.C4080id.updatesRv;
                                RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                                if (recyclerView != null) {
                                    return new C9048l0((ConstraintLayout) requireView, group, textView, imageView, textView2, findViewById, recyclerView);
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.q.d.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/d/b$b.class */
    public static final class C9579b {
        public C9579b(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.q.d.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/d/b$c.class */
    public static final class C9580c extends m implements a<C9573b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9580c() {
            super(0);
            C9577b.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [e.a.c.a.q.d.b, n3.v.c1] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = C9577b.this;
            C26986a1.AbstractC26987b abstractC26987b = r0.f28988a;
            if (abstractC26987b == null) {
                s1.z.c.l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C9573b.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C9573b.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, C9573b.class) : abstractC26987b.create(C9573b.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            s1.z.c.l.d(abstractC27040y0, "ViewModelProvider(this, …ageViewModel::class.java)");
            return (C9573b) abstractC27040y0;
        }
    }

    /* renamed from: OA */
    public final C9048l0 m27417OA() {
        return (C9048l0) this.f28992e.m34468b(this, f28986f[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r10 != null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p514q.p519d.C9577b.onCreate(android.os.Bundle):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.fragment_updates_list, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [e.a.c.a.q.c.c.a, androidx.recyclerview.widget.RecyclerView$g] */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9577b.super.onViewCreated(view, bundle);
        ?? r0 = this.f28989b;
        if (r0 == 0) {
            s1.z.c.l.l("updatesListAdapter");
            throw null;
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        RecyclerView recyclerView = m27417OA().f27529c;
        s1.z.c.l.d(recyclerView, "binding.updatesRv");
        recyclerView.setAdapter(r0);
        RecyclerView recyclerView2 = m27417OA().f27529c;
        s1.z.c.l.d(recyclerView2, "binding.updatesRv");
        recyclerView2.setLayoutManager(linearLayoutManager);
        RecyclerView recyclerView3 = m27417OA().f27529c;
        s1.z.c.l.d(recyclerView3, "binding.updatesRv");
        FloatingActionButton floatingActionButton = m27417OA().f27528b;
        s1.z.c.l.d(floatingActionButton, "binding.scrollUp");
        C10480a.m26060I2(recyclerView3, linearLayoutManager, floatingActionButton, C9581c.f28994b);
        ((C9573b) this.f28991d.getValue()).f28973b.m42867f(getViewLifecycleOwner(), new C9582d(this));
        ((C9573b) this.f28991d.getValue()).f28975d.m42867f(getViewLifecycleOwner(), new C9583e(this));
    }
}
