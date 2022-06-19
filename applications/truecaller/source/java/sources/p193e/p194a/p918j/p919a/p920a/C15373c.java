package p193e.p194a.p918j.p919a.p920a;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.log.AssertionUtil;
import com.truecaller.surveys.C4528R;
import com.truecaller.surveys.p180ui.bottomSheetSurvey.BottomSheetSurveyViewModel;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p918j.p919a.p920a.p921a.p922a.C15323a;
import p193e.p194a.p918j.p919a.p920a.p921a.p923b.C15334a;
import p193e.p194a.p918j.p919a.p920a.p921a.p924c.C15350a;
import p193e.p194a.p918j.p934e.C15480d;
import q3.a.i0;
import q3.a.x2.i1;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u0016J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Le/a/j/a/a/c;", "Le/m/a/g/e/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "dismiss", "()V", "Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;", "e", "Ls1/g;", "getViewModel", "()Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;", "viewModel", "<init>", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j.a.a.c */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/c.class */
public final class C15373c extends AbstractC15382h {

    /* renamed from: e */
    public final g f43676e = MediaSessionCompat.m43278P(this, d0.a(BottomSheetSurveyViewModel.class), new C15375b(new C15374a(this)), null);

    /* renamed from: e.a.j.a.a.c$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/c$a.class */
    public static final class C15374a extends m implements a<Fragment> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43677b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15374a(Fragment fragment) {
            super(0);
            this.f43677b = fragment;
        }

        public Object invoke() {
            return this.f43677b;
        }
    }

    /* renamed from: e.a.j.a.a.c$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/c$b.class */
    public static final class C15375b extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f43678b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15375b(a aVar) {
            super(0);
            this.f43678b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f43678b.invoke()).getViewModelStore();
            l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    @e(c = "com.truecaller.surveys.ui.bottomSheetSurvey.BottomSheetSurveyFragment$onViewCreated$1", f = "BottomSheetSurveyFragment.kt", l = {119}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.a.c$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/c$c.class */
    public static final class C15376c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43679e;

        /* renamed from: e.a.j.a.a.c$c$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/c$c$a.class */
        public static final class C15377a implements q3.a.x2.g<C15480d.AbstractC15481a> {
            public C15377a() {
                C15376c.this = r4;
            }

            /* renamed from: a */
            public Object m18877a(C15480d.AbstractC15481a abstractC15481a, d<? super s> dVar) {
                C15480d.AbstractC15481a abstractC15481a2 = abstractC15481a;
                if (abstractC15481a2 instanceof C15480d.AbstractC15481a.C15485d) {
                    C15373c c15373c = C15373c.this;
                    Objects.requireNonNull(C15350a.f43638i);
                    C15373c.m18881QA(c15373c, new C15350a(), "SingleChoiceQuestionFragment");
                } else if (abstractC15481a2 instanceof C15480d.AbstractC15481a.C15482a) {
                    C15373c c15373c2 = C15373c.this;
                    Objects.requireNonNull(C15323a.f43590h);
                    C15373c.m18881QA(c15373c2, new C15323a(), "BooleanChoiceQuestionFragment");
                } else if (abstractC15481a2 instanceof C15480d.AbstractC15481a.C15483b) {
                    C15373c c15373c3 = C15373c.this;
                    Objects.requireNonNull(C15334a.f43609k);
                    C15373c.m18881QA(c15373c3, new C15334a(), "SingleChoiceQuestionFragment");
                } else if (l.a(abstractC15481a2, C15480d.AbstractC15481a.C15486e.f43903a)) {
                    C15373c.this.dismiss();
                } else if (l.a(abstractC15481a2, C15480d.AbstractC15481a.C15484c.f43901a)) {
                    AssertionUtil.reportWeirdnessButNeverCrash("Survey in bottom sheet invalid state, question can't be handled");
                    C15373c.this.dismiss();
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15376c(d dVar) {
            super(2, dVar);
            C15373c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18880i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15376c(dVar);
        }

        /* renamed from: k */
        public final Object m18879k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15376c(dVar).m18878s(s.a);
        }

        /* renamed from: s */
        public final Object m18878s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43679e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<C15480d.AbstractC15481a> i1Var = ((BottomSheetSurveyViewModel) C15373c.this.f43676e.getValue()).f15117a;
                C15377a c15377a = new C15377a();
                this.f43679e = 1;
                if (i1Var.c(c15377a, this) == aVar) {
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
    public static final void m18881QA(C15373c c15373c, Fragment fragment, String str) {
        FragmentManager childFragmentManager = c15373c.getChildFragmentManager();
        l.d(childFragmentManager, "childFragmentManager");
        C26907a c26907a = new C26907a(childFragmentManager);
        l.d(c26907a, "beginTransaction()");
        int i = C4528R.anim.question_fade_in;
        int i2 = C4528R.anim.question_fade_out;
        c26907a.m1118o(i, i2, i, i2);
        c26907a.m1120m(C4528R.C4530id.questionFragment, fragment, str);
        c26907a.mo1126g();
    }

    public void dismiss() {
        C15373c.super.dismiss();
        FragmentManager childFragmentManager = getChildFragmentManager();
        for (String str : s1.u.i.T(new String[]{"SingleChoiceQuestionFragment", "BooleanChoiceQuestionFragment"})) {
            Fragment m42942K = childFragmentManager.m42942K(str);
            if (m42942K != null) {
                C26907a c26907a = new C26907a(childFragmentManager);
                c26907a.mo1121l(m42942K);
                c26907a.mo1126g();
            }
        }
    }

    public void onCreate(Bundle bundle) {
        C15373c.super.onCreate(bundle);
        setStyle(0, C4528R.style.Theme_BottomSheetSurvey);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4528R.layout.dialog_bottom_sheet_survey, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        C15373c.super.onDismiss(dialogInterface);
        n3.r.a.l requireActivity = requireActivity();
        requireActivity.setResult(-1);
        requireActivity.finish();
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C15373c.super.onViewCreated(view, bundle);
        e.m.a.g.e.d requireDialog = requireDialog();
        Objects.requireNonNull(requireDialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        e.m.a.g.e.d dVar = requireDialog;
        dVar.g = true;
        dVar.setOnDismissListener(new DialogInterface$OnDismissListenerC15378d(this));
        BottomSheetBehavior e = dVar.e();
        e.E = false;
        e.M(3);
        ((BottomSheetSurveyViewModel) this.f43676e.getValue()).f15118b.start();
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        l.d(viewLifecycleOwner, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner).m981b(new C15376c(null));
    }
}
