package p193e.p194a.p918j.p919a.p929f;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
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
import com.truecaller.surveys.p180ui.bizmonAdapter.BizSurveyControllerViewModel;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import kotlin.Metadata;
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
import p193e.p194a.p918j.p919a.p927d.C15407a;
import p193e.p194a.p918j.p933d.C15474g;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.i1;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018�� #2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b!\u0010\"J+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R%\u0010\u001a\u001a\n \u0016*\u0004\u0018\u00010\u00150\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0011\u001a\u0004\b\u0018\u0010\u0019R\u001d\u0010 \u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006%"}, d2 = {"Le/a/j/a/f/a;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;", "f", "Ls1/g;", "getViewModel", "()Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;", "viewModel", "Landroid/view/animation/Animation;", "kotlin.jvm.PlatformType", "g", "getFadeInAnim", "()Landroid/view/animation/Animation;", "fadeInAnim", "Le/a/j/d/g;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/j/d/g;", "binding", "<init>", "()V", "i", "d", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j.a.f.a */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/f/a.class */
public final class C15431a extends AbstractC15442e {

    /* renamed from: h */
    public static final /* synthetic */ l[] f43774h = {C22128a.m8621g0(C15431a.class, "binding", "getBinding()Lcom/truecaller/surveys/databinding/FragmentSurveyControllerBinding;", 0)};

    /* renamed from: i */
    public static final C15435d f43775i = new C15435d(null);

    /* renamed from: e */
    public final ViewBindingProperty f43776e = new C19350a(new C15434c());

    /* renamed from: f */
    public final g f43777f = MediaSessionCompat.m43278P(this, d0.a(BizSurveyControllerViewModel.class), new C15432a(this), new C15433b(this));

    /* renamed from: g */
    public final g f43778g = C25225a.m3978P1(new C15436e());

    /* renamed from: e.a.j.a.f.a$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/f/a$a.class */
    public static final class C15432a extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43779b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15432a(Fragment fragment) {
            super(0);
            this.f43779b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f43779b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.j.a.f.a$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/f/a$b.class */
    public static final class C15433b extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43780b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15433b(Fragment fragment) {
            super(0);
            this.f43780b = fragment;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = this.f43780b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: e.a.j.a.f.a$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/f/a$c.class */
    public static final class C15434c extends m implements s1.z.b.l<C15431a, C15474g> {
        public C15434c() {
            super(1);
        }

        /* renamed from: d */
        public Object m18817d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            return C15474g.m18783a(fragment.requireView());
        }
    }

    /* renamed from: e.a.j.a.f.a$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/f/a$d.class */
    public static final class C15435d {
        public C15435d(f fVar) {
        }
    }

    /* renamed from: e.a.j.a.f.a$e */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/f/a$e.class */
    public static final class C15436e extends m implements a<Animation> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15436e() {
            super(0);
            C15431a.this = r4;
        }

        public Object invoke() {
            return AnimationUtils.loadAnimation(C15431a.this.getContext(), C4528R.anim.fade_in_400);
        }
    }

    @e(c = "com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerFragment$onViewCreated$1", f = "BizSurveyControllerFragment.kt", l = {119}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.f.a$f */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/f/a$f.class */
    public static final class C15437f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43782e;

        /* renamed from: e.a.j.a.f.a$f$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/f/a$f$a.class */
        public static final class C15438a implements q3.a.x2.g<BizSurveyControllerViewModel.AbstractC4571a> {
            public C15438a() {
                C15437f.this = r4;
            }

            /* renamed from: a */
            public Object m18813a(BizSurveyControllerViewModel.AbstractC4571a abstractC4571a, d<? super s> dVar) {
                BizSurveyControllerViewModel.AbstractC4571a abstractC4571a2 = abstractC4571a;
                if (abstractC4571a2 instanceof BizSurveyControllerViewModel.AbstractC4571a.C4573b) {
                    C15431a c15431a = C15431a.this;
                    Fragment c15407a = new C15407a();
                    l[] lVarArr = C15431a.f43774h;
                    FragmentManager childFragmentManager = c15431a.getChildFragmentManager();
                    s1.z.c.l.d(childFragmentManager, "childFragmentManager");
                    C26907a c26907a = new C26907a(childFragmentManager);
                    s1.z.c.l.d(c26907a, "beginTransaction()");
                    c26907a.m1118o(C4528R.anim.question_slide_in, C4528R.anim.question_fade_out, C4528R.anim.question_fade_in, C4528R.anim.question_slide_out);
                    c26907a.m1120m(C4528R.C4530id.questionContainer, c15407a, "RatingQuestionFragment");
                    c26907a.mo1126g();
                } else if (s1.z.c.l.a(abstractC4571a2, BizSurveyControllerViewModel.AbstractC4571a.C4574c.f15116a)) {
                    C15431a c15431a2 = C15431a.this;
                    C15474g c15474g = (C15474g) c15431a2.f43776e.m34468b(c15431a2, C15431a.f43774h[0]);
                    FragmentContainerView fragmentContainerView = c15474g.f43870a;
                    s1.z.c.l.d(fragmentContainerView, "questionContainer");
                    C19286f.m13687Q(fragmentContainerView);
                    Group group = c15474g.f43872c;
                    s1.z.c.l.d(group, "thanksGroup");
                    C19286f.m13684T(group);
                    c15474g.f43873d.startAnimation((Animation) c15431a2.f43778g.getValue());
                    LottieAnimationView lottieAnimationView = c15474g.f43871b;
                    lottieAnimationView.m42591g();
                    C12864a2.m22579O(lottieAnimationView, new C15439b(c15431a2));
                    s1.z.c.l.d(lottieAnimationView, "with(binding) {\n        …        }\n        }\n    }");
                } else if (s1.z.c.l.a(abstractC4571a2, BizSurveyControllerViewModel.AbstractC4571a.C4572a.f15114a)) {
                    AssertionUtil.reportWeirdnessButNeverCrash("Biz Survey invalid state, question can't be handled");
                    C15431a.m18818QA(C15431a.this);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15437f(d dVar) {
            super(2, dVar);
            C15431a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18816i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15437f(dVar);
        }

        /* renamed from: k */
        public final Object m18815k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15437f(dVar).m18814s(s.a);
        }

        /* renamed from: s */
        public final Object m18814s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43782e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<BizSurveyControllerViewModel.AbstractC4571a> i1Var = ((BizSurveyControllerViewModel) C15431a.this.f43777f.getValue()).f15112b;
                C15438a c15438a = new C15438a();
                this.f43782e = 1;
                if (i1Var.c(c15438a, this) == aVar) {
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
    public static final void m18818QA(C15431a c15431a) {
        FragmentManager childFragmentManager = c15431a.getChildFragmentManager();
        for (String str : C25225a.m3962T1("RatingQuestionFragment")) {
            Fragment m42942K = childFragmentManager.m42942K(str);
            if (m42942K != null) {
                C26907a c26907a = new C26907a(childFragmentManager);
                c26907a.mo1121l(m42942K);
                c26907a.mo1126g();
            }
        }
        MediaSessionCompat.m43203r1(c15431a, "biz_survey_adapter_request_key", MediaSessionCompat.m43226k(new k[0]));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4528R.layout.biz_fragment_survey_controller, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…roller, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15431a.super.onViewCreated(view, bundle);
        BizSurveyControllerViewModel bizSurveyControllerViewModel = (BizSurveyControllerViewModel) this.f43777f.getValue();
        Parcelable parcelable = requireArguments().getParcelable(AnalyticsConstants.CONTACT);
        if (parcelable != null) {
            Contact contact = (Contact) parcelable;
            Objects.requireNonNull(bizSurveyControllerViewModel);
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            s1.a.a.a.v0.f.d.w2(MediaSessionCompat.m43315C0(bizSurveyControllerViewModel), (s1.w.f) null, (j0) null, new C15441d(bizSurveyControllerViewModel, contact, null), 3, (Object) null);
            AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
            s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
            C27020r.m994b(viewLifecycleOwner).m981b(new C15437f(null));
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }
}
