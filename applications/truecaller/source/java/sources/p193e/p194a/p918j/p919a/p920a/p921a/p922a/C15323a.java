package p193e.p194a.p918j.p919a.p920a.p921a.p922a;

import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.surveys.C4528R;
import com.truecaller.surveys.p180ui.bottomSheetSurvey.question.booleanchoice.BooleanChoiceViewModel;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p918j.p933d.C15470c;
import q3.a.i0;
import q3.a.x2.e1;
import s1.a.l;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018�� \u001d2\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u001a\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, d2 = {"Le/a/j/a/a/a/a/a;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/j/d/c;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/j/d/c;", "binding", "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;", "e", "Ls1/g;", "getViewModel", "()Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;", "viewModel", "<init>", "()V", "h", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j.a.a.a.a.a */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/a/a.class */
public final class C15323a extends AbstractC15333d {

    /* renamed from: g */
    public static final /* synthetic */ l[] f43589g = {C22128a.m8621g0(C15323a.class, "binding", "getBinding()Lcom/truecaller/surveys/databinding/FragmentBooleanChoiceQuestionBinding;", 0)};

    /* renamed from: h */
    public static final C15328e f43590h = new C15328e(null);

    /* renamed from: e */
    public final g f43591e = MediaSessionCompat.m43278P(this, d0.a(BooleanChoiceViewModel.class), new C15327d(new C15326c(this)), null);

    /* renamed from: f */
    public final ViewBindingProperty f43592f = new C19350a(new C15325b());

    /* renamed from: e.a.j.a.a.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/j/a/a/a/a/a$a.class */
    public static final class View$OnClickListenerC15324a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f43593a;

        /* renamed from: b */
        public final /* synthetic */ Object f43594b;

        public View$OnClickListenerC15324a(int i, Object obj) {
            this.f43593a = i;
            this.f43594b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f43593a;
            if (i == 0) {
                C15323a.m18925QA((C15323a) this.f43594b).m34641c(false);
            } else if (i == 1) {
                C15323a.m18925QA((C15323a) this.f43594b).m34641c(true);
            } else if (i != 2) {
                throw null;
            } else {
                C15323a.m18925QA((C15323a) this.f43594b).f15123e.mo18774b();
            }
        }
    }

    /* renamed from: e.a.j.a.a.a.a.a$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/a/a$b.class */
    public static final class C15325b extends m implements s1.z.b.l<C15323a, C15470c> {
        public C15325b() {
            super(1);
        }

        /* renamed from: d */
        public Object m18923d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4528R.C4530id.buttonFalse;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C4528R.C4530id.buttonSkip;
                Button button = (Button) requireView.findViewById(i);
                if (button != null) {
                    i = C4528R.C4530id.buttonTrue;
                    TextView textView2 = (TextView) requireView.findViewById(i);
                    if (textView2 != null) {
                        i = C4528R.C4530id.message;
                        TextView textView3 = (TextView) requireView.findViewById(i);
                        if (textView3 != null) {
                            i = C4528R.C4530id.title;
                            TextView textView4 = (TextView) requireView.findViewById(i);
                            if (textView4 != null) {
                                return new C15470c((ConstraintLayout) requireView, textView, button, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.j.a.a.a.a.a$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/a/a$c.class */
    public static final class C15326c extends m implements a<Fragment> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43595b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15326c(Fragment fragment) {
            super(0);
            this.f43595b = fragment;
        }

        public Object invoke() {
            return this.f43595b;
        }
    }

    /* renamed from: e.a.j.a.a.a.a.a$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/a/a$d.class */
    public static final class C15327d extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f43596b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15327d(a aVar) {
            super(0);
            this.f43596b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f43596b.invoke()).getViewModelStore();
            s1.z.c.l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.j.a.a.a.a.a$e */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/a/a$e.class */
    public static final class C15328e {
        public C15328e(f fVar) {
        }
    }

    @e(c = "com.truecaller.surveys.ui.bottomSheetSurvey.question.booleanchoice.BooleanChoiceQuestionFragment$onViewCreated$1", f = "BooleanChoiceQuestionFragment.kt", l = {55}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.a.a.a.a$f */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/a/a$f.class */
    public static final class C15329f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43597e;

        /* renamed from: e.a.j.a.a.a.a.a$f$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/a/a$f$a.class */
        public static final class C15330a implements q3.a.x2.g<C15332c> {
            public C15330a() {
                C15329f.this = r4;
            }

            /* renamed from: a */
            public Object m18919a(C15332c c15332c, d<? super s> dVar) {
                C15332c c15332c2 = c15332c;
                if (c15332c2 != null) {
                    C15323a c15323a = C15323a.this;
                    l[] lVarArr = C15323a.f43589g;
                    TextView textView = c15323a.m18924RA().f43846a;
                    s1.z.c.l.d(textView, "binding.buttonFalse");
                    textView.setText(c15332c2.f43603d);
                    TextView textView2 = C15323a.this.m18924RA().f43848c;
                    s1.z.c.l.d(textView2, "binding.buttonTrue");
                    textView2.setText(c15332c2.f43602c);
                    TextView textView3 = C15323a.this.m18924RA().f43850e;
                    s1.z.c.l.d(textView3, "binding.title");
                    textView3.setText(c15332c2.f43600a);
                    TextView textView4 = C15323a.this.m18924RA().f43849d;
                    s1.z.c.l.d(textView4, "binding.message");
                    textView4.setText(c15332c2.f43601b);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15329f(d dVar) {
            super(2, dVar);
            C15323a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18922i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15329f(dVar);
        }

        /* renamed from: k */
        public final Object m18921k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15329f(dVar).m18920s(s.a);
        }

        /* renamed from: s */
        public final Object m18920s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43597e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                e1<C15332c> e1Var = C15323a.m18925QA(C15323a.this).f15122d;
                C15330a c15330a = new C15330a();
                this.f43597e = 1;
                if (e1Var.c(c15330a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* renamed from: QA */
    public static final BooleanChoiceViewModel m18925QA(C15323a c15323a) {
        return (BooleanChoiceViewModel) c15323a.f43591e.getValue();
    }

    /* renamed from: RA */
    public final C15470c m18924RA() {
        return (C15470c) this.f43592f.m34468b(this, f43589g[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4528R.layout.fragment_boolean_choice_question, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…estion, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15323a.super.onViewCreated(view, bundle);
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner).m981b(new C15329f(null));
        m18924RA().f43846a.setOnClickListener(new View$OnClickListenerC15324a(0, this));
        m18924RA().f43848c.setOnClickListener(new View$OnClickListenerC15324a(1, this));
        m18924RA().f43847b.setOnClickListener(new View$OnClickListenerC15324a(2, this));
    }
}
