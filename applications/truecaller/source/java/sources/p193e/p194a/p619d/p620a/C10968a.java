package p193e.p194a.p619d.p620a;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.voip.C4781R;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p619d.p654s.C11793i;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.s;
import s1.u.u;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018�� ;2\u00020\u00012\u00020\u0002:\u0001<B\u0007¢\u0006\u0004\b:\u0010\u0014J+\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014JE\u0010\u001b\u001a\u00020\u00102\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\"\u0010\u001a\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\t0\u0018j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\t`\u0019H\u0082@ø\u0001��¢\u0006\u0004\b\u001b\u0010\u001cR(\u0010%\u001a\u00020\u001d8��@��X\u0081.¢\u0006\u0018\n\u0004\b\u001e\u0010\u001f\u0012\u0004\b$\u0010\u0014\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001d\u0010+\u001a\u00020&8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\"\u00103\u001a\u00020,8��@��X\u0081.¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0016\u00105\u001a\u00020\u001d8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u0010!R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006="}, d2 = {"Le/a/d/a/a;", "Le/m/a/g/e/e;", "Lq3/a/i0;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "Le/a/d/a/o;", "peers", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "peerViewMap", "RA", "(Ljava/util/Set;Ljava/util/HashMap;Ls1/w/d;)Ljava/lang/Object;", "Ls1/w/f;", "e", "Ls1/w/f;", "getUiContext$voip_release", "()Ls1/w/f;", "setUiContext$voip_release", "(Ls1/w/f;)V", "getUiContext$voip_release$annotations", "uiContext", "Le/a/d/s/i;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "SA", "()Le/a/d/s/i;", "binding", "Le/a/d/v/d;", "f", "Le/a/d/v/d;", "getGroupCallManager$voip_release", "()Le/a/d/v/d;", "setGroupCallManager$voip_release", "(Le/a/d/v/d;)V", "groupCallManager", "getCoroutineContext", "coroutineContext", "Lq3/a/y;", "h", "Lq3/a/y;", "job", "<init>", "j", AbstractC2405c.f7629a, "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/a.class */
public final class C10968a extends AbstractC11026l implements i0 {

    /* renamed from: i */
    public static final /* synthetic */ l[] f32488i = {C22128a.m8621g0(C10968a.class, "binding", "getBinding()Lcom/truecaller/voip/databinding/VoipDebugFragmentGroupCallBinding;", 0)};

    /* renamed from: j */
    public static final C10971c f32489j = new C10971c(null);
    @Inject

    /* renamed from: e */
    public f f32490e;
    @Inject

    /* renamed from: f */
    public AbstractC11824d f32491f;

    /* renamed from: g */
    public final ViewBindingProperty f32492g = new C19350a(new C10970b());

    /* renamed from: h */
    public final y f32493h = d.j((p1) null, 1, (Object) null);

    /* renamed from: e.a.d.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/d/a/a$a.class */
    public static final class View$OnClickListenerC10969a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f32494a;

        /* renamed from: b */
        public final /* synthetic */ Object f32495b;

        /* renamed from: c */
        public final /* synthetic */ Object f32496c;

        /* renamed from: d */
        public final /* synthetic */ Object f32497d;

        public View$OnClickListenerC10969a(int i, Object obj, Object obj2, Object obj3) {
            this.f32494a = i;
            this.f32495b = obj;
            this.f32496c = obj2;
            this.f32497d = obj3;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f32494a;
            if (i == 0) {
                n3.r.a.l activity = ((C10968a) this.f32495b).getActivity();
                if (activity == null) {
                    return;
                }
                activity.recreate();
            } else if (i != 1) {
                throw null;
            } else {
                for (C11029o c11029o : C10968a.m25460QA((C10968a) this.f32495b)) {
                    c11029o.f32619b.setValue(AbstractC12022c.C12033c.f35254b);
                }
                ((C10968a) this.f32495b).dismissAllowingStateLoss();
            }
        }
    }

    /* renamed from: e.a.d.a.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/a$b.class */
    public static final class C10970b extends m implements s1.z.b.l<C10968a, C11793i> {
        public C10970b() {
            super(1);
        }

        /* renamed from: d */
        public Object m25457d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = C4781R.C4783id.button_restart;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4781R.C4783id.button_set_ongoing;
                Button button2 = (Button) requireView.findViewById(i);
                if (button2 != null) {
                    i = C4781R.C4783id.button_set_user_ready;
                    Button button3 = (Button) requireView.findViewById(i);
                    if (button3 != null) {
                        i = C4781R.C4783id.ll_calls;
                        LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                        if (linearLayout != null) {
                            i = C4781R.C4783id.spinner_audio_route;
                            Spinner spinner = (Spinner) requireView.findViewById(i);
                            if (spinner != null) {
                                i = C4781R.C4783id.spinner_state;
                                Spinner spinner2 = (Spinner) requireView.findViewById(i);
                                if (spinner2 != null) {
                                    i = C4781R.C4783id.switch_hold;
                                    SwitchMaterial findViewById = requireView.findViewById(i);
                                    if (findViewById != null) {
                                        i = C4781R.C4783id.switch_muted;
                                        SwitchMaterial findViewById2 = requireView.findViewById(i);
                                        if (findViewById2 != null) {
                                            return new C11793i(requireView, button, button2, button3, linearLayout, spinner, spinner2, findViewById, findViewById2);
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

    /* renamed from: e.a.d.a.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/a$c.class */
    public static final class C10971c {
        public C10971c(s1.z.c.f fVar) {
        }
    }

    @e(c = "com.truecaller.voip.debug.DebugGroupCallFragment", f = "DebugGroupCallFragment.kt", l = {Constants.ERR_WATERMARKR_INFO}, m = "addPeerViews")
    /* renamed from: e.a.d.a.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/a$d.class */
    public static final class C10972d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32498d;

        /* renamed from: e */
        public int f32499e;

        /* renamed from: g */
        public Object f32501g;

        /* renamed from: h */
        public Object f32502h;

        /* renamed from: i */
        public Object f32503i;

        /* renamed from: j */
        public Object f32504j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10972d(s1.w.d dVar) {
            super(dVar);
            C10968a.this = r4;
        }

        /* renamed from: s */
        public final Object m25456s(Object obj) {
            this.f32498d = obj;
            this.f32499e |= Integer.MIN_VALUE;
            return C10968a.this.m25459RA(null, null, this);
        }
    }

    /* renamed from: e.a.d.a.a$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/a$e.class */
    public static final class View$OnClickListenerC10973e implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ View f32506b;

        @e(c = "com.truecaller.voip.debug.DebugGroupCallFragment$onViewCreated$1$3$1", f = "DebugGroupCallFragment.kt", l = {88}, m = "invokeSuspend")
        /* renamed from: e.a.d.a.a$e$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/a$e$a.class */
        public static final class C10974a extends i implements p<i0, s1.w.d<? super s>, Object> {

            /* renamed from: e */
            public Object f32507e;

            /* renamed from: f */
            public int f32508f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10974a(s1.w.d dVar) {
                super(2, dVar);
                View$OnClickListenerC10973e.this = r5;
            }

            /* renamed from: i */
            public final s1.w.d<s> m25455i(Object obj, s1.w.d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C10974a(dVar);
            }

            /* renamed from: k */
            public final Object m25454k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                s1.z.c.l.e(dVar, "completion");
                return new C10974a(dVar).m25453s(s.a);
            }

            /* renamed from: s */
            public final Object m25453s(Object obj) {
                Iterator it;
                a aVar = a.a;
                int i = this.f32508f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    it = C10968a.m25460QA(C10968a.this).iterator();
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                    it = (Iterator) this.f32507e;
                }
                while (it.hasNext()) {
                    C11029o c11029o = (C11029o) it.next();
                    C11033p c11033p = c11029o.f32624g;
                    int i2 = c11029o.f32623f;
                    this.f32507e = it;
                    this.f32508f = 1;
                    if (c11033p.m25380y(i2, this) == aVar) {
                        return aVar;
                    }
                }
                C10968a.this.dismissAllowingStateLoss();
                return s.a;
            }
        }

        public View$OnClickListenerC10973e(View view, Bundle bundle) {
            C10968a.this = r4;
            this.f32506b = view;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            d.w2(C10968a.this, (f) null, (j0) null, new C10974a(null), 3, (Object) null);
        }
    }

    /* renamed from: QA */
    public static final Set m25460QA(C10968a c10968a) {
        Set set;
        AbstractC11822b abstractC11822b;
        AbstractC11824d abstractC11824d = c10968a.f32491f;
        AbstractC11835f.C11836a c11836a = null;
        if (abstractC11824d == null) {
            s1.z.c.l.l("groupCallManager");
            throw null;
        }
        Object value = abstractC11824d.getState().getValue();
        if (value instanceof AbstractC11835f.C11836a) {
            c11836a = value;
        }
        AbstractC11835f.C11836a c11836a2 = c11836a;
        if (c11836a2 == null || (abstractC11822b = c11836a2.f34807a) == null) {
            set = u.a;
        } else {
            Iterable iterable = (Iterable) abstractC11822b.mo23965a().getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : iterable) {
                if (obj instanceof C11029o) {
                    arrayList.add(obj);
                }
            }
            set = s1.u.i.d1(arrayList);
        }
        return set;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0126  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00f0 -> B:22:0x00f6). Please submit an issue!!! */
    /* renamed from: RA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m25459RA(java.util.Set<p193e.p194a.p619d.p620a.C11029o> r6, java.util.HashMap<p193e.p194a.p619d.p620a.C11029o, android.view.View> r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C10968a.m25459RA(java.util.Set, java.util.HashMap, s1.w.d):java.lang.Object");
    }

    /* renamed from: SA */
    public final C11793i m25458SA() {
        return (C11793i) this.f32492g.m34468b(this, f32488i[0]);
    }

    public f getCoroutineContext() {
        f fVar = this.f32490e;
        if (fVar != null) {
            return fVar.plus(this.f32493h);
        }
        s1.z.c.l.l("uiContext");
        throw null;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        e.m.a.g.e.d onCreateDialog = C10968a.super.onCreateDialog(bundle);
        s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        e.m.a.g.e.d dVar = onCreateDialog;
        BottomSheetBehavior e = dVar.e();
        e.M(3);
        e.D = true;
        return dVar;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4781R.layout.voip_debug_fragment_group_call, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…p_call, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        d.T(this.f32493h, (CancellationException) null, 1, (Object) null);
        C10968a.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C11793i m25458SA = m25458SA();
        C10968a.super.onViewCreated(view, bundle);
        d.w2(this, (f) null, (j0) null, new C10995e(this, null), 3, (Object) null);
        m25458SA.f34669b.setOnClickListener(new View$OnClickListenerC10969a(0, this, view, bundle));
        m25458SA.f34670c.setOnClickListener(new View$OnClickListenerC10969a(1, this, view, bundle));
        m25458SA.f34671d.setOnClickListener(new View$OnClickListenerC10973e(view, bundle));
        LinearLayout linearLayout = m25458SA.f34672e;
        s1.z.c.l.d(linearLayout, "llCalls");
        C19286f.m13689O(linearLayout);
    }
}
