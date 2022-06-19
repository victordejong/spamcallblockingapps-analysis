package p193e.p194a.p437c.p438a.p494m.p497c;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.actions.SearchIntents;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.p169qa.presentation.SmartSmsFeatureFilterStatus;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1868v.C27020r;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p456d.p463f.p468d.C8931a;
import p193e.p194a.p437c.p438a.p477g.C9052m1;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p438a.p494m.p496b.C9273m;
import p193e.p194a.p437c.p438a.p494m.p496b.C9276o;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b0\u0010\u0010J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0010R\u001d\u0010\u0017\u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\u001d\u001a\u00020\u00188\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001d\u0010/\u001a\u00020*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.¨\u00061"}, d2 = {"Le/a/c/a/m/c/z;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStop", "()V", "onStart", "Le/a/c/a/g/m1;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/m1;", "binding", "Le/a/c/a/m/b/m;", "d", "Le/a/c/a/m/b/m;", "getAdapter", "()Le/a/c/a/m/b/m;", "adapter", "Le/a/c/a/d/f/d/a;", "e", "Le/a/c/a/d/f/d/a;", "debouncedTextWatcher", "Le/a/c/a/m/b/o$a;", "a", "Le/a/c/a/m/b/o$a;", "getViewmodelFactory", "()Le/a/c/a/m/b/o$a;", "setViewmodelFactory", "(Le/a/c/a/m/b/o$a;)V", "viewmodelFactory", "Le/a/c/a/m/b/o;", C22021b.f61237c, "Ls1/g;", "PA", "()Le/a/c/a/m/b/o;", "viewModel", "<init>", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.z */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/z.class */
public final class C9367z extends Fragment {

    /* renamed from: f */
    public static final /* synthetic */ l[] f28466f = {C22128a.m8621g0(C9367z.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/LayoutSmsFeatureFilterTesterBinding;", 0)};
    @Inject

    /* renamed from: a */
    public C9276o.C9277a f28467a;

    /* renamed from: b */
    public final g f28468b = C25225a.m3978P1(new C9370c());

    /* renamed from: c */
    public final ViewBindingProperty f28469c;

    /* renamed from: d */
    public final C9273m f28470d;

    /* renamed from: e */
    public final C8931a f28471e;

    /* renamed from: e.a.c.a.m.c.z$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/z$a.class */
    public static final class C9368a extends m implements s1.z.b.l<C9367z, C9052m1> {
        public C9368a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27631d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.allowButton;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4078R.C4080id.blockButton;
                Button button2 = (Button) requireView.findViewById(i);
                if (button2 != null) {
                    i = C4078R.C4080id.pageHeader;
                    TextView textView = (TextView) requireView.findViewById(i);
                    if (textView != null) {
                        i = C4078R.C4080id.searchSenderEt;
                        TextInputEditText findViewById = requireView.findViewById(i);
                        if (findViewById != null) {
                            i = C4078R.C4080id.senderFiltersRv;
                            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                            if (recyclerView != null) {
                                i = C4078R.C4080id.senderInput;
                                TextInputLayout textInputLayout = (TextInputLayout) requireView.findViewById(i);
                                if (textInputLayout != null) {
                                    i = C4078R.C4080id.senderSearch;
                                    TextInputLayout textInputLayout2 = (TextInputLayout) requireView.findViewById(i);
                                    if (textInputLayout2 != null) {
                                        i = C4078R.C4080id.tiet_ifsc_number_frag_add_benfy;
                                        TextInputEditText findViewById2 = requireView.findViewById(i);
                                        if (findViewById2 != null) {
                                            return new C9052m1((ConstraintLayout) requireView, button, button2, textView, findViewById, recyclerView, textInputLayout, textInputLayout2, findViewById2);
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

    /* renamed from: e.a.c.a.m.c.z$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/z$b.class */
    public static final class C9369b extends m implements s1.z.b.l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9369b() {
            super(1);
            C9367z.this = r4;
        }

        /* renamed from: d */
        public Object m27630d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, SearchIntents.EXTRA_QUERY);
            C9367z c9367z = C9367z.this;
            l[] lVarArr = C9367z.f28466f;
            c9367z.m27632PA().m27758c(str);
            return s.a;
        }
    }

    /* renamed from: e.a.c.a.m.c.z$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/z$c.class */
    public static final class C9370c extends m implements a<C9276o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9370c() {
            super(0);
            C9367z.this = r4;
        }

        public Object invoke() {
            C9276o.C9277a c9277a = C9367z.this.f28467a;
            if (c9277a != null) {
                return (C9276o) c9277a.create(C9276o.class);
            }
            s1.z.c.l.l("viewmodelFactory");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C9367z() {
        int i = AbstractC9246a.f28129a;
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            s1.z.c.l.l("instance");
            throw null;
        }
        this.f28467a = (C9276o.C9277a) ((C9248b) abstractC9246a).f28136E.get();
        this.f28469c = new C19350a(new C9368a());
        this.f28470d = new C9273m();
        this.f28471e = new C8931a(C27020r.m994b(this), new C9369b());
    }

    /* renamed from: OA */
    public final C9052m1 m27633OA() {
        return (C9052m1) this.f28469c.m34468b(this, f28466f[0]);
    }

    /* renamed from: PA */
    public final C9276o m27632PA() {
        return (C9276o) this.f28468b.getValue();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.layout_sms_feature_filter_tester, viewGroup, false);
    }

    public void onStart() {
        C9367z.super.onStart();
        m27633OA().f27536c.addTextChangedListener(this.f28471e);
    }

    public void onStop() {
        C9367z.super.onStop();
        m27633OA().f27536c.removeTextChangedListener(this.f28471e);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9367z.super.onViewCreated(view, bundle);
        C9052m1 m27633OA = m27633OA();
        C27010k0<SmartSmsFeatureFilterStatus> c27010k0 = m27632PA().f28228e;
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
        c27010k0.m42867f(viewLifecycleOwner, new C9297a0(m27633OA, this, view));
        C9052m1 m27633OA2 = m27633OA();
        m27633OA2.f27534a.setOnClickListener(new f1(0, m27633OA2, this));
        m27633OA2.f27535b.setOnClickListener(new f1(1, m27633OA2, this));
        RecyclerView recyclerView = m27633OA().f27537d;
        s1.z.c.l.d(recyclerView, "binding.senderFiltersRv");
        recyclerView.setAdapter(this.f28470d);
        RecyclerView recyclerView2 = m27633OA().f27537d;
        s1.z.c.l.d(recyclerView2, "binding.senderFiltersRv");
        recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
        m27632PA().f28227d.m42867f(getViewLifecycleOwner(), new C9301b0(this));
        m27632PA().m27758c("");
    }
}
