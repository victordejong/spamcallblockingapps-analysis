package p193e.p194a.p918j.p919a.p928e;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.activity.result.ActivityResult;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import com.airbnb.lottie.LottieAnimationView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.surveys.C4528R;
import com.truecaller.surveys.p180ui.adapter.SurveyControllerViewModel;
import com.truecaller.surveys.p180ui.bottomSheetSurvey.BottomSheetSurveyActivity;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.p1731d.C25380d;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p918j.p919a.p925b.C15383a;
import p193e.p194a.p918j.p919a.p926c.C15392a;
import p193e.p194a.p918j.p933d.C15474g;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.e1;
import s1.a.l;
import s1.g;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018�� (2\u00020\u0001:\u0001)B\u0007¢\u0006\u0004\b&\u0010'J+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR$\u0010\u0014\u001a\u0010\u0012\f\u0012\n \u0011*\u0004\u0018\u00010\u00100\u00100\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R%\u0010\u001a\u001a\n \u0011*\u0004\u0018\u00010\u00150\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u001eR\u001d\u0010%\u001a\u00020 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006*"}, d2 = {"Le/a/j/a/e/b;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Ln3/a/e/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "h", "Ln3/a/e/b;", "getSurveyResult", "Landroid/view/animation/Animation;", "g", "Ls1/g;", "getFadeInAnim", "()Landroid/view/animation/Animation;", "fadeInAnim", "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;", "f", "getViewModel", "()Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;", "viewModel", "Le/a/j/d/g;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/j/d/g;", "binding", "<init>", "()V", "j", "d", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j.a.e.b */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/e/b.class */
public final class C15419b extends AbstractC15418a {

    /* renamed from: i */
    public static final /* synthetic */ l[] f43757i = {C22128a.m8621g0(C15419b.class, "binding", "getBinding()Lcom/truecaller/surveys/databinding/FragmentSurveyControllerBinding;", 0)};

    /* renamed from: j */
    public static final C15423d f43758j = new C15423d(null);

    /* renamed from: e */
    public final ViewBindingProperty f43759e = new C19350a(new C15422c());

    /* renamed from: f */
    public final g f43760f = MediaSessionCompat.m43278P(this, d0.a(SurveyControllerViewModel.class), new C15420a(this), new C15421b(this));

    /* renamed from: g */
    public final g f43761g = C25225a.m3978P1(new C15424e());

    /* renamed from: h */
    public final AbstractC25374b<Intent> f43762h;

    /* renamed from: e.a.j.a.e.b$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/e/b$a.class */
    public static final class C15420a extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43763b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15420a(Fragment fragment) {
            super(0);
            this.f43763b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f43763b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.j.a.e.b$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/e/b$b.class */
    public static final class C15421b extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43764b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15421b(Fragment fragment) {
            super(0);
            this.f43764b = fragment;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = this.f43764b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: e.a.j.a.e.b$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/e/b$c.class */
    public static final class C15422c extends m implements s1.z.b.l<C15419b, C15474g> {
        public C15422c() {
            super(1);
        }

        /* renamed from: d */
        public Object m18827d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            return C15474g.m18783a(fragment.requireView());
        }
    }

    /* renamed from: e.a.j.a.e.b$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/e/b$d.class */
    public static final class C15423d {
        public C15423d(f fVar) {
        }
    }

    /* renamed from: e.a.j.a.e.b$e */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/e/b$e.class */
    public static final class C15424e extends m implements a<Animation> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15424e() {
            super(0);
            C15419b.this = r4;
        }

        public Object invoke() {
            return AnimationUtils.loadAnimation(C15419b.this.getContext(), C4528R.anim.fade_in_400);
        }
    }

    /* renamed from: e.a.j.a.e.b$f */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/e/b$f.class */
    public static final class C15425f<O> implements AbstractC25373a<ActivityResult> {
        public C15425f() {
            C15419b.this = r4;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(ActivityResult activityResult) {
            C15419b.m18828SA(C15419b.this);
        }
    }

    @e(c = "com.truecaller.surveys.ui.adapter.SurveyControllerFragment$onViewCreated$1", f = "SurveyControllerFragment.kt", l = {135}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.e.b$g */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/e/b$g.class */
    public static final class C15426g extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43767e;

        /* renamed from: e.a.j.a.e.b$g$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/e/b$g$a.class */
        public static final class C15427a implements q3.a.x2.g<SurveyControllerViewModel.AbstractC4565a> {
            public C15427a() {
                C15426g.this = r4;
            }

            /* renamed from: a */
            public Object m18823a(SurveyControllerViewModel.AbstractC4565a abstractC4565a, d<? super s> dVar) {
                SurveyControllerViewModel.AbstractC4565a abstractC4565a2 = abstractC4565a;
                if (abstractC4565a2 instanceof SurveyControllerViewModel.AbstractC4565a.C4566a) {
                    C15419b.m18829RA(C15419b.this, new C15383a(), "BoolQuestionFragment");
                } else if (abstractC4565a2 instanceof SurveyControllerViewModel.AbstractC4565a.C4567b) {
                    C15419b.m18829RA(C15419b.this, new C15392a(), "BoolQuestionFragment");
                } else if (abstractC4565a2 instanceof SurveyControllerViewModel.AbstractC4565a.C4569d) {
                    C15419b c15419b = C15419b.this;
                    AbstractC25374b<Intent> abstractC25374b = c15419b.f43762h;
                    Context requireContext = c15419b.requireContext();
                    s1.z.c.l.d(requireContext, "requireContext()");
                    s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
                    abstractC25374b.mo3694a(new Intent(requireContext, BottomSheetSurveyActivity.class), null);
                } else if (s1.z.c.l.a(abstractC4565a2, SurveyControllerViewModel.AbstractC4565a.C4570e.f15110a)) {
                    C15419b.m18828SA(C15419b.this);
                } else if (s1.z.c.l.a(abstractC4565a2, SurveyControllerViewModel.AbstractC4565a.C4568c.f15108a)) {
                    AssertionUtil.reportWeirdnessButNeverCrash("Survey invalid state, question can't be handled");
                    C15419b.m18830QA(C15419b.this);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15426g(d dVar) {
            super(2, dVar);
            C15419b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18826i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15426g(dVar);
        }

        /* renamed from: k */
        public final Object m18825k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15426g(dVar).m18824s(s.a);
        }

        /* renamed from: s */
        public final Object m18824s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43767e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                e1<SurveyControllerViewModel.AbstractC4565a> e1Var = ((SurveyControllerViewModel) C15419b.this.f43760f.getValue()).f15100c;
                C15427a c15427a = new C15427a();
                this.f43767e = 1;
                if (e1Var.c(c15427a, this) == aVar) {
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

    public C15419b() {
        AbstractC25374b<Intent> registerForActivityResult = registerForActivityResult(new C25380d(), new C15425f());
        s1.z.c.l.d(registerForActivityResult, "registerForActivityResul…       showThanks()\n    }");
        this.f43762h = registerForActivityResult;
    }

    /* renamed from: QA */
    public static final void m18830QA(C15419b c15419b) {
        FragmentManager childFragmentManager = c15419b.getChildFragmentManager();
        for (String str : s1.u.i.T(new String[]{"BoolQuestionFragment", "BoolQuestionFragment"})) {
            Fragment m42942K = childFragmentManager.m42942K(str);
            if (m42942K != null) {
                C26907a c26907a = new C26907a(childFragmentManager);
                c26907a.mo1121l(m42942K);
                c26907a.mo1126g();
            }
        }
        MediaSessionCompat.m43203r1(c15419b, "survey_adapter_request_key", MediaSessionCompat.m43226k(new k[0]));
    }

    /* renamed from: RA */
    public static final void m18829RA(C15419b c15419b, Fragment fragment, String str) {
        FragmentManager childFragmentManager = c15419b.getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        C26907a c26907a = new C26907a(childFragmentManager);
        s1.z.c.l.d(c26907a, "beginTransaction()");
        c26907a.m1118o(C4528R.anim.question_slide_in, C4528R.anim.question_fade_out, C4528R.anim.question_fade_in, C4528R.anim.question_slide_out);
        c26907a.m1120m(C4528R.C4530id.questionContainer, fragment, str);
        c26907a.mo1126g();
    }

    /* renamed from: SA */
    public static final LottieAnimationView m18828SA(C15419b c15419b) {
        C15474g c15474g = (C15474g) c15419b.f43759e.m34468b(c15419b, f43757i[0]);
        FragmentContainerView fragmentContainerView = c15474g.f43870a;
        s1.z.c.l.d(fragmentContainerView, "questionContainer");
        C19286f.m13687Q(fragmentContainerView);
        Group group = c15474g.f43872c;
        s1.z.c.l.d(group, "thanksGroup");
        C19286f.m13684T(group);
        c15474g.f43873d.startAnimation((Animation) c15419b.f43761g.getValue());
        LottieAnimationView lottieAnimationView = c15474g.f43871b;
        lottieAnimationView.m42591g();
        C12864a2.m22579O(lottieAnimationView, new C15428c(c15419b));
        s1.z.c.l.d(lottieAnimationView, "with(binding) {\n        …        }\n        }\n    }");
        return lottieAnimationView;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4528R.layout.fragment_survey_controller, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…roller, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15419b.super.onViewCreated(view, bundle);
        SurveyControllerViewModel surveyControllerViewModel = (SurveyControllerViewModel) this.f43760f.getValue();
        Parcelable parcelable = requireArguments().getParcelable(AnalyticsConstants.CONTACT);
        if (parcelable != null) {
            Contact contact = (Contact) parcelable;
            Objects.requireNonNull(surveyControllerViewModel);
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            s1.a.a.a.v0.f.d.w2(MediaSessionCompat.m43315C0(surveyControllerViewModel), (s1.w.f) null, (j0) null, new C15430e(surveyControllerViewModel, contact, null), 3, (Object) null);
            AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
            s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
            C27020r.m994b(viewLifecycleOwner).m981b(new C15426g(null));
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }
}
