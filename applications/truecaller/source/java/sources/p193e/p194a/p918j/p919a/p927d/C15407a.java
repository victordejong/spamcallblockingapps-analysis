package p193e.p194a.p918j.p919a.p927d;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.surveys.C4528R;
import com.truecaller.surveys.data.entities.Answer;
import com.truecaller.surveys.data.entities.Choice;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.p180ui.bizmonAdapter.BizSurveyControllerViewModel;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
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
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p918j.p933d.C15468a;
import p193e.p194a.p918j.p934e.AbstractC15476a;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.i1;
import s1.a.l;
import s1.f0.r;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010\u001f\u001a\u00020\u001a8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001d\u0010\"\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0011\u001a\u0004\b!\u0010\u0018R\u001d\u0010%\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u0011\u001a\u0004\b$\u0010\u0018¨\u0006("}, d2 = {"Le/a/j/a/d/a;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;", "f", "Ls1/g;", "getViewModel", "()Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;", "viewModel", "", "i", "getRatingGreenColor", "()I", "ratingGreenColor", "Le/a/j/d/a;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/j/d/a;", "binding", "h", "getRatingYellowColor", "ratingYellowColor", "g", "getRatingRedColor", "ratingRedColor", "<init>", "()V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j.a.d.a */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/d/a.class */
public final class C15407a extends AbstractC15417c {

    /* renamed from: j */
    public static final /* synthetic */ l[] f43733j = {C22128a.m8621g0(C15407a.class, "binding", "getBinding()Lcom/truecaller/surveys/databinding/FragmentBizRatingQuestionBinding;", 0)};

    /* renamed from: e */
    public final ViewBindingProperty f43734e = new C19350a(new C15411d());

    /* renamed from: f */
    public final g f43735f = MediaSessionCompat.m43278P(this, d0.a(BizSurveyControllerViewModel.class), new C15409b(this), new C15410c(this));

    /* renamed from: g */
    public final g f43736g = C25225a.m3978P1(new C15408a(1, this));

    /* renamed from: h */
    public final g f43737h = C25225a.m3978P1(new C15408a(2, this));

    /* renamed from: i */
    public final g f43738i = C25225a.m3978P1(new C15408a(0, this));

    /* renamed from: e.a.j.a.d.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/j/a/d/a$a.class */
    public static final class C15408a extends m implements a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ int f43739b;

        /* renamed from: c */
        public final /* synthetic */ Object f43740c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15408a(int i, Object obj) {
            super(0);
            this.f43739b = i;
            this.f43740c = obj;
        }

        public final Object invoke() {
            int i = this.f43739b;
            if (i == 0) {
                Context requireContext = ((C15407a) this.f43740c).requireContext();
                int i2 = C4528R.color.ratingGreen;
                Object obj = C26467a.f74235a;
                return Integer.valueOf(C26467a.C26471d.m1787a(requireContext, i2));
            } else if (i == 1) {
                Context requireContext2 = ((C15407a) this.f43740c).requireContext();
                int i3 = C4528R.color.ratingRed;
                Object obj2 = C26467a.f74235a;
                return Integer.valueOf(C26467a.C26471d.m1787a(requireContext2, i3));
            } else if (i != 2) {
                throw null;
            } else {
                Context requireContext3 = ((C15407a) this.f43740c).requireContext();
                int i4 = C4528R.color.ratingYellow;
                Object obj3 = C26467a.f74235a;
                return Integer.valueOf(C26467a.C26471d.m1787a(requireContext3, i4));
            }
        }
    }

    /* renamed from: e.a.j.a.d.a$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/d/a$b.class */
    public static final class C15409b extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43741b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15409b(Fragment fragment) {
            super(0);
            this.f43741b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f43741b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.j.a.d.a$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/d/a$c.class */
    public static final class C15410c extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43742b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15410c(Fragment fragment) {
            super(0);
            this.f43742b = fragment;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = this.f43742b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: e.a.j.a.d.a$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/d/a$d.class */
    public static final class C15411d extends m implements s1.z.b.l<C15407a, C15468a> {
        public C15411d() {
            super(1);
        }

        /* renamed from: d */
        public Object m18844d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4528R.C4530id.header;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C4528R.C4530id.ratingBar;
                RatingBar ratingBar = (RatingBar) requireView.findViewById(i);
                if (ratingBar != null) {
                    return new C15468a((ConstraintLayout) requireView, textView, ratingBar);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    @e(c = "com.truecaller.surveys.ui.ratingQuestion.BizRatingQuestionFragment$onViewCreated$1", f = "BizRatingQuestionFragment.kt", l = {91}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.d.a$e */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/d/a$e.class */
    public static final class C15412e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43743e;

        /* renamed from: e.a.j.a.d.a$e$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/d/a$e$a.class */
        public static final class C15413a implements q3.a.x2.g<BizSurveyControllerViewModel.AbstractC4571a> {
            public C15413a() {
                C15412e.this = r4;
            }

            /* renamed from: a */
            public Object m18840a(BizSurveyControllerViewModel.AbstractC4571a abstractC4571a, d<? super s> dVar) {
                BizSurveyControllerViewModel.AbstractC4571a abstractC4571a2 = abstractC4571a;
                if (abstractC4571a2 instanceof BizSurveyControllerViewModel.AbstractC4571a.C4573b) {
                    C15407a c15407a = C15407a.this;
                    Question.Rating rating = ((BizSurveyControllerViewModel.AbstractC4571a.C4573b) abstractC4571a2).f15115a;
                    l[] lVarArr = C15407a.f43733j;
                    C15468a m18845QA = c15407a.m18845QA();
                    TextView textView = m18845QA.f43840a;
                    s1.z.c.l.d(textView, "header");
                    C19286f.m13683U(textView, !r.p(rating.getHeaderMessage()));
                    TextView textView2 = m18845QA.f43840a;
                    s1.z.c.l.d(textView2, "header");
                    textView2.setText(rating.getHeaderMessage());
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15412e(d dVar) {
            super(2, dVar);
            C15407a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18843i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15412e(dVar);
        }

        /* renamed from: k */
        public final Object m18842k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15412e(dVar).m18841s(s.a);
        }

        /* renamed from: s */
        public final Object m18841s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43743e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10480a.m26045M1("BizRatingQuestionFragment onViewCreated, collect viewModel state");
                i1<BizSurveyControllerViewModel.AbstractC4571a> i1Var = ((BizSurveyControllerViewModel) C15407a.this.f43735f.getValue()).f15112b;
                C15413a c15413a = new C15413a();
                this.f43743e = 1;
                if (i1Var.c(c15413a, this) == aVar) {
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

    /* renamed from: e.a.j.a.d.a$f */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/d/a$f.class */
    public static final class C15414f implements RatingBar.OnRatingBarChangeListener {

        @e(c = "com.truecaller.surveys.ui.ratingQuestion.BizRatingQuestionFragment$onViewCreated$2$2", f = "BizRatingQuestionFragment.kt", l = {80}, m = "invokeSuspend")
        /* renamed from: e.a.j.a.d.a$f$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/d/a$f$a.class */
        public static final class C15415a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f43747e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15415a(d dVar) {
                super(2, dVar);
                C15414f.this = r5;
            }

            /* renamed from: i */
            public final d<s> m18839i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C15415a(dVar);
            }

            /* renamed from: k */
            public final Object m18838k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                return new C15415a(dVar).m18837s(s.a);
            }

            /* renamed from: s */
            public final Object m18837s(Object obj) {
                Object obj2;
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f43747e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f43747e = 1;
                    if (s1.a.a.a.v0.f.d.D0(300L, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                BizSurveyControllerViewModel bizSurveyControllerViewModel = (BizSurveyControllerViewModel) C15407a.this.f43735f.getValue();
                RatingBar ratingBar = C15407a.this.m18845QA().f43841b;
                s1.z.c.l.d(ratingBar, "binding.ratingBar");
                float rating = ratingBar.getRating();
                AbstractC15476a abstractC15476a = bizSurveyControllerViewModel.f15113c;
                if (rating != 0.0f && (((BizSurveyControllerViewModel.AbstractC4571a) bizSurveyControllerViewModel.f15112b.getValue()) instanceof BizSurveyControllerViewModel.AbstractC4571a.C4573b)) {
                    Object value = bizSurveyControllerViewModel.f15112b.getValue();
                    Objects.requireNonNull(value, "null cannot be cast to non-null type com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel.State.RatingQuestion");
                    Iterator<T> it = ((BizSurveyControllerViewModel.AbstractC4571a.C4573b) value).f15115a.getChoices().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = it.next();
                        if (Float.parseFloat(((Choice) obj2).getText()) == rating) {
                            break;
                        }
                    }
                    Choice choice = (Choice) obj2;
                    if (choice != null) {
                        abstractC15476a.mo18779d(new Answer.Rating(choice));
                        bizSurveyControllerViewModel.f15111a.setValue(BizSurveyControllerViewModel.AbstractC4571a.C4574c.f15116a);
                    }
                }
                return s.a;
            }
        }

        public C15414f() {
            C15407a.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [e.a.j.a.d.a, n3.v.b0] */
        @Override // android.widget.RatingBar.OnRatingBarChangeListener
        public final void onRatingChanged(RatingBar ratingBar, float f, boolean z) {
            C15407a c15407a = C15407a.this;
            l[] lVarArr = C15407a.f43733j;
            RatingBar ratingBar2 = c15407a.m18845QA().f43841b;
            s1.z.c.l.d(ratingBar2, "ratingBar");
            Drawable progressDrawable = ratingBar2.getProgressDrawable();
            Objects.requireNonNull(progressDrawable, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable");
            Drawable drawable = ((LayerDrawable) progressDrawable).getDrawable(2);
            if (f == 1.0f || f == 2.0f) {
                drawable.setTint(((Number) C15407a.this.f43736g.getValue()).intValue());
            } else if (f == 3.0f) {
                drawable.setTint(((Number) C15407a.this.f43737h.getValue()).intValue());
            } else if (f == 4.0f || f == 5.0f) {
                drawable.setTint(((Number) C15407a.this.f43738i.getValue()).intValue());
            }
            s1.a.a.a.v0.f.d.w2(C27020r.m994b(C15407a.this), (f) null, (j0) null, new C15415a(null), 3, (Object) null);
        }
    }

    /* renamed from: QA */
    public final C15468a m18845QA() {
        return (C15468a) this.f43734e.m34468b(this, f43733j[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4528R.layout.fragment_biz_rating_question, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…estion, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15407a.super.onViewCreated(view, bundle);
        C15314a c15314a = C15314a.f43582g;
        AbstractC15317d m18938a = C15314a.m18938a();
        if (!(m18938a instanceof AbstractC15317d.C15321d) && !(m18938a instanceof AbstractC15317d.C15319b)) {
            RatingBar ratingBar = m18845QA().f43841b;
            s1.z.c.l.d(ratingBar, "binding.ratingBar");
            ratingBar.setSelected(false);
        } else {
            RatingBar ratingBar2 = m18845QA().f43841b;
            s1.z.c.l.d(ratingBar2, "binding.ratingBar");
            ratingBar2.setSelected(true);
        }
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner).m981b(new C15412e(null));
        m18845QA().f43841b.setOnRatingBarChangeListener(new C15414f());
    }
}
