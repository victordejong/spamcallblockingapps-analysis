package p193e.p194a.p918j.p919a.p925b;

import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.surveys.C4528R;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.p180ui.adapter.SurveyControllerViewModel;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p918j.p933d.C15469b;
import q3.a.i0;
import q3.a.x2.e1;
import s1.a.l;
import s1.f0.r;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u001a\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Le/a/j/a/b/a;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/j/d/b;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/j/d/b;", "binding", "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;", "f", "Ls1/g;", "getViewModel", "()Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;", "viewModel", "<init>", "()V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j.a.b.a */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/b/a.class */
public final class C15383a extends AbstractC15391c {

    /* renamed from: g */
    public static final /* synthetic */ l[] f43691g = {C22128a.m8621g0(C15383a.class, "binding", "getBinding()Lcom/truecaller/surveys/databinding/FragmentBoolQuestionBinding;", 0)};

    /* renamed from: e */
    public final ViewBindingProperty f43692e = new C19350a(new C15387d());

    /* renamed from: f */
    public final g f43693f = MediaSessionCompat.m43278P(this, d0.a(SurveyControllerViewModel.class), new C15385b(this), new C15386c(this));

    /* renamed from: e.a.j.a.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/j/a/b/a$a.class */
    public static final class View$OnClickListenerC15384a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f43694a;

        /* renamed from: b */
        public final /* synthetic */ Object f43695b;

        public View$OnClickListenerC15384a(int i, Object obj) {
            this.f43694a = i;
            this.f43695b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f43694a;
            if (i == 0) {
                C10480a.m26045M1("BoolQuestionFragment on answerTrue clicked");
                C15383a.m18872QA((C15383a) this.f43695b).m34643d(true);
            } else if (i != 1) {
                throw null;
            } else {
                C10480a.m26045M1("BoolQuestionFragment on answerFalse clicked");
                C15383a.m18872QA((C15383a) this.f43695b).m34643d(false);
            }
        }
    }

    /* renamed from: e.a.j.a.b.a$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/b/a$b.class */
    public static final class C15385b extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43696b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15385b(Fragment fragment) {
            super(0);
            this.f43696b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f43696b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.j.a.b.a$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/b/a$c.class */
    public static final class C15386c extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43697b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15386c(Fragment fragment) {
            super(0);
            this.f43697b = fragment;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = this.f43697b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: e.a.j.a.b.a$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/b/a$d.class */
    public static final class C15387d extends m implements s1.z.b.l<C15383a, C15469b> {
        public C15387d() {
            super(1);
        }

        /* renamed from: d */
        public Object m18870d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4528R.C4530id.answerFalse;
            ImageView imageView = (ImageView) requireView.findViewById(i);
            if (imageView != null) {
                i = C4528R.C4530id.answerTrue;
                ImageView imageView2 = (ImageView) requireView.findViewById(i);
                if (imageView2 != null) {
                    i = C4528R.C4530id.header;
                    TextView textView = (TextView) requireView.findViewById(i);
                    if (textView != null) {
                        i = C4528R.C4530id.message;
                        TextView textView2 = (TextView) requireView.findViewById(i);
                        if (textView2 != null) {
                            return new C15469b((ConstraintLayout) requireView, imageView, imageView2, textView, textView2);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    @e(c = "com.truecaller.surveys.ui.boolQuestion.BoolQuestionFragment$onViewCreated$1", f = "BoolQuestionFragment.kt", l = {70}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.b.a$e */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/b/a$e.class */
    public static final class C15388e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43698e;

        /* renamed from: e.a.j.a.b.a$e$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/b/a$e$a.class */
        public static final class C15389a implements q3.a.x2.g<SurveyControllerViewModel.AbstractC4565a> {
            public C15389a() {
                C15388e.this = r4;
            }

            /* renamed from: a */
            public Object m18866a(SurveyControllerViewModel.AbstractC4565a abstractC4565a, d<? super s> dVar) {
                SurveyControllerViewModel.AbstractC4565a abstractC4565a2 = abstractC4565a;
                if (abstractC4565a2 instanceof SurveyControllerViewModel.AbstractC4565a.C4566a) {
                    C15383a c15383a = C15383a.this;
                    Question.Binary binary = ((SurveyControllerViewModel.AbstractC4565a.C4566a) abstractC4565a2).f15105a;
                    l[] lVarArr = C15383a.f43691g;
                    C15469b m18871RA = c15383a.m18871RA();
                    C10480a.m26045M1("BoolQuestionFragment showQuestion");
                    TextView textView = m18871RA.f43844c;
                    s1.z.c.l.d(textView, "header");
                    C19286f.m13683U(textView, !r.p(binary.getHeaderMessage()));
                    TextView textView2 = m18871RA.f43844c;
                    s1.z.c.l.d(textView2, "header");
                    textView2.setText(binary.getHeaderMessage());
                    TextView textView3 = m18871RA.f43845d;
                    s1.z.c.l.d(textView3, "message");
                    C19286f.m13683U(textView3, !r.p(binary.getMessage()));
                    TextView textView4 = m18871RA.f43845d;
                    s1.z.c.l.d(textView4, "message");
                    textView4.setText(binary.getMessage());
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15388e(d dVar) {
            super(2, dVar);
            C15383a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18869i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15388e(dVar);
        }

        /* renamed from: k */
        public final Object m18868k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15388e(dVar).m18867s(s.a);
        }

        /* renamed from: s */
        public final Object m18867s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43698e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10480a.m26045M1("BoolQuestionFragment onViewCreated, collect viewModel state");
                e1<SurveyControllerViewModel.AbstractC4565a> e1Var = C15383a.m18872QA(C15383a.this).f15100c;
                C15389a c15389a = new C15389a();
                this.f43698e = 1;
                if (e1Var.c(c15389a, this) == aVar) {
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
    public static final SurveyControllerViewModel m18872QA(C15383a c15383a) {
        return (SurveyControllerViewModel) c15383a.f43693f.getValue();
    }

    /* renamed from: RA */
    public final C15469b m18871RA() {
        return (C15469b) this.f43692e.m34468b(this, f43691g[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4528R.layout.fragment_bool_question, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…estion, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15383a.super.onViewCreated(view, bundle);
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner).m981b(new C15388e(null));
        m18871RA().f43843b.setOnClickListener(new View$OnClickListenerC15384a(0, this));
        m18871RA().f43842a.setOnClickListener(new View$OnClickListenerC15384a(1, this));
    }
}
