package p193e.p194a.p437c.p438a.p494m.p497c;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.models.InsightsReminder;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p437c.p438a.p477g.C9085x1;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p438a.p494m.p496b.C9263g;
import p193e.p194a.p437c.p438a.p494m.p496b.C9265h;
import p193e.p194a.p437c.p438a.p494m.p496b.C9266i;
import p193e.p194a.p437c.p438a.p494m.p496b.C9268j;
import p193e.p194a.p437c.p438a.p494m.p496b.C9270k;
import p193e.p194a.p437c.p570j.AbstractC10442e;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import p193e.p194a.p437c.p598v.p599f.p601b.C10720a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.g;
import s1.s;
import s1.u.i;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b0\u00101J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001d\u0010+\u001a\u00020&8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, d2 = {"Le/a/c/a/m/c/w;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/c/a/m/b/i;", "d", "Ls1/g;", "OA", "()Le/a/c/a/m/b/i;", "viewModel", "Le/a/c/j/e;", "Le/a/c/j/f$a;", C22021b.f61237c, "Le/a/c/j/e;", "getDeepLinkFactory", "()Le/a/c/j/e;", "setDeepLinkFactory", "(Le/a/c/j/e;)V", "deepLinkFactory", "Le/a/c/a/m/b/i$a;", "a", "Le/a/c/a/m/b/i$a;", "getReminderViewModelFactory", "()Le/a/c/a/m/b/i$a;", "setReminderViewModelFactory", "(Le/a/c/a/m/b/i$a;)V", "reminderViewModelFactory", "Le/a/c/a/g/x1;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/c/a/g/x1;", "binding", "Le/a/c/a/m/b/g;", AbstractC2405c.f7629a, "Le/a/c/a/m/b/g;", "rvDataAdapter", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.w */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/w.class */
public final class C9356w extends Fragment {

    /* renamed from: f */
    public static final /* synthetic */ l[] f28446f = {C22128a.m8621g0(C9356w.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/QaReminderDataTesterBinding;", 0)};
    @Inject

    /* renamed from: a */
    public C9266i.C9267a f28447a;
    @Inject

    /* renamed from: b */
    public AbstractC10442e<AbstractC10443f.C10444a> f28448b;

    /* renamed from: c */
    public C9263g f28449c;

    /* renamed from: d */
    public final g f28450d;

    /* renamed from: e */
    public final ViewBindingProperty f28451e;

    /* renamed from: e.a.c.a.m.c.w$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/w$a.class */
    public static final class C9357a extends m implements s1.z.b.l<C9356w, C9085x1> {
        public C9357a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27637d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.clear;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4078R.C4080id.refresh;
                ExtendedFloatingActionButton findViewById = requireView.findViewById(i);
                if (findViewById != null) {
                    i = C4078R.C4080id.reminderRV;
                    RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                    if (recyclerView != null) {
                        i = C4078R.C4080id.title;
                        TextView textView = (TextView) requireView.findViewById(i);
                        if (textView != null) {
                            return new C9085x1((ConstraintLayout) requireView, button, findViewById, recyclerView, textView);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.m.c.w$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/w$b.class */
    public static final class C9358b extends m implements s1.z.b.l<InsightsReminder, s> {

        /* renamed from: c */
        public final /* synthetic */ View f28453c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9358b(View view) {
            super(1);
            C9356w.this = r4;
            this.f28453c = view;
        }

        /* renamed from: d */
        public Object m27636d(Object obj) {
            InsightsReminder insightsReminder = (InsightsReminder) obj;
            s1.z.c.l.e(insightsReminder, "reminder");
            C9356w c9356w = C9356w.this;
            l[] lVarArr = C9356w.f28446f;
            C9266i m27638OA = c9356w.m27638OA();
            Objects.requireNonNull(m27638OA);
            s1.z.c.l.e(insightsReminder, "insightsReminder");
            d.w2(m27638OA.f28201b, (f) null, (j0) null, new C9270k(m27638OA, insightsReminder, null), 3, (Object) null);
            return s.a;
        }
    }

    /* renamed from: e.a.c.a.m.c.w$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/w$c.class */
    public static final class C9359c<T> implements AbstractC27012l0<List<? extends InsightsReminder>> {

        /* renamed from: b */
        public final /* synthetic */ View f28455b;

        public C9359c(View view) {
            C9356w.this = r4;
            this.f28455b = view;
        }

        @Override // p1727n3.p1868v.AbstractC27012l0
        public void onChanged(List<? extends InsightsReminder> list) {
            List<? extends InsightsReminder> list2 = list;
            C9263g c9263g = C9356w.this.f28449c;
            if (c9263g == null) {
                s1.z.c.l.l("rvDataAdapter");
                throw null;
            }
            s1.z.c.l.d(list2, "it");
            s1.z.c.l.e(list2, RemoteMessageConst.DATA);
            c9263g.f28192a.clear();
            c9263g.f28192a.addAll(i.F0(list2, new C9265h()));
            c9263g.notifyDataSetChanged();
        }
    }

    /* renamed from: e.a.c.a.m.c.w$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/w$d.class */
    public static final class View$OnClickListenerC9360d implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ View f28457b;

        public View$OnClickListenerC9360d(View view) {
            C9356w.this = r4;
            this.f28457b = view;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C26702l m1431n = C26702l.m1431n(C9356w.this.requireContext());
            s1.z.c.l.d(m1431n, "WorkManager.getInstance(requireContext())");
            Context requireContext = C9356w.this.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            C21782c.m9083c(m1431n, "InsightsRemindersWorkAction", requireContext, null, null, 12);
        }
    }

    /* renamed from: e.a.c.a.m.c.w$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/w$e.class */
    public static final class View$OnClickListenerC9361e implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ View f28459b;

        /* renamed from: e.a.c.a.m.c.w$e$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/w$e$a.class */
        public static final class C9362a extends m implements a<s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9362a() {
                super(0);
                View$OnClickListenerC9361e.this = r4;
            }

            public Object invoke() {
                Context context = C9356w.this.getContext();
                if (context != null) {
                    C9356w c9356w = C9356w.this;
                    l[] lVarArr = C9356w.f28446f;
                    Objects.requireNonNull(c9356w);
                    Toast.makeText(context, "Reset success ..", 0).show();
                }
                return s.a;
            }
        }

        public View$OnClickListenerC9361e(View view) {
            C9356w.this = r4;
            this.f28459b = view;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C9356w c9356w = C9356w.this;
            l[] lVarArr = C9356w.f28446f;
            C9266i m27638OA = c9356w.m27638OA();
            C9362a c9362a = new C9362a();
            Objects.requireNonNull(m27638OA);
            s1.z.c.l.e(c9362a, "cb");
            d.w2(m27638OA.f28201b, (f) null, (j0) null, new C9268j(m27638OA, c9362a, null), 3, (Object) null);
        }
    }

    /* renamed from: e.a.c.a.m.c.w$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/w$f.class */
    public static final class C9363f extends m implements a<C9266i> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9363f() {
            super(0);
            C9356w.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [e.a.c.a.m.c.w, n3.v.c1] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = C9356w.this;
            C9266i.C9267a c9267a = r0.f28447a;
            if (c9267a == null) {
                s1.z.c.l.l("reminderViewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C9266i.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C9266i.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (c9267a instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) c9267a).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = c9267a instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) c9267a).m1024b(m8543z2, C9266i.class) : c9267a.create(C9266i.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            s1.z.c.l.d(abstractC27040y0, "ViewModelProvider(this, …derViewModel::class.java)");
            return (C9266i) abstractC27040y0;
        }
    }

    public C9356w() {
        int i = AbstractC9246a.f28129a;
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            s1.z.c.l.l("instance");
            throw null;
        }
        C9248b c9248b = (C9248b) abstractC9246a;
        this.f28447a = (C9266i.C9267a) c9248b.f28135D.get();
        AbstractC10442e<AbstractC10443f.C10444a> mo12481Y3 = c9248b.f28140d.mo12481Y3();
        Objects.requireNonNull(mo12481Y3, "Cannot return null from a non-@Nullable component method");
        this.f28448b = mo12481Y3;
        this.f28450d = C25225a.m3978P1(new C9363f());
        this.f28451e = new C19350a(new C9357a());
    }

    /* renamed from: OA */
    public final C9266i m27638OA() {
        return (C9266i) this.f28450d.getValue();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4078R.layout.qa_reminder_data_tester, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9356w.super.onViewCreated(view, bundle);
        C9085x1 c9085x1 = (C9085x1) this.f28451e.m34468b(this, f28446f[0]);
        C10720a c10720a = m27638OA().f28204e;
        AbstractC10442e<AbstractC10443f.C10444a> abstractC10442e = this.f28448b;
        if (abstractC10442e == null) {
            s1.z.c.l.l("deepLinkFactory");
            throw null;
        }
        this.f28449c = new C9263g(c10720a, abstractC10442e, new C9358b(view));
        RecyclerView recyclerView = c9085x1.f27720c;
        s1.z.c.l.d(recyclerView, "reminderRV");
        C9263g c9263g = this.f28449c;
        if (c9263g == null) {
            s1.z.c.l.l("rvDataAdapter");
            throw null;
        }
        recyclerView.setAdapter(c9263g);
        RecyclerView recyclerView2 = c9085x1.f27720c;
        s1.z.c.l.d(recyclerView2, "reminderRV");
        recyclerView2.setLayoutManager(new LinearLayoutManager(view.getContext()));
        C9266i m27638OA = m27638OA();
        C27020r.m995a(m27638OA.f28202c.mo25706a(), m27638OA.f28201b.getCoroutineContext(), 0L, 2).m42867f(getViewLifecycleOwner(), new C9359c(view));
        c9085x1.f27719b.setOnClickListener(new View$OnClickListenerC9360d(view));
        c9085x1.f27718a.setOnClickListener(new View$OnClickListenerC9361e(view));
    }
}
