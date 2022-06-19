package p193e.p194a.p918j.p919a.p920a.p921a.p924c;

import android.os.Build;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.surveys.C4528R;
import com.truecaller.surveys.data.entities.Answer;
import com.truecaller.surveys.p180ui.bottomSheetSurvey.question.singlechoice.SingleChoiceQuestionViewModel;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1744b0.p1745a.C25586h;
import p1727n3.p1807k.p1824j.AbstractC26635f;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.p373a.p385r.C8328a;
import p193e.p194a.p918j.p933d.C15472e;
import p193e.p194a.p918j.p933d.C15475h;
import q3.a.i0;
import q3.a.x2.i1;
import s1.a.l;
import s1.b0.b;
import s1.b0.c;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� !2\u00020\u0001:\u0002\u0010\u0016B\u0007¢\u0006\u0004\b\u001f\u0010 J+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u001a\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001e\u001a\u00060\u001bR\u00020��8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\""}, d2 = {"Le/a/j/a/a/a/c/a;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;", "e", "Ls1/g;", "getViewModel", "()Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;", "viewModel", "Le/a/j/d/e;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/j/d/e;", "binding", "Le/a/j/a/a/a/c/a$e;", "g", "Le/a/j/a/a/a/c/a$e;", "adapter", "<init>", "()V", "i", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j.a.a.a.c.a */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a.class */
public final class C15350a extends AbstractC15366b {

    /* renamed from: h */
    public static final /* synthetic */ l[] f43637h = {C22128a.m8621g0(C15350a.class, "binding", "getBinding()Lcom/truecaller/surveys/databinding/FragmentSingleChoiceQuestionBinding;", 0)};

    /* renamed from: i */
    public static final C15359f f43638i = new C15359f(null);

    /* renamed from: e */
    public final g f43639e = MediaSessionCompat.m43278P(this, d0.a(SingleChoiceQuestionViewModel.class), new C15354d(new C15353c(this)), null);

    /* renamed from: f */
    public final ViewBindingProperty f43640f = new C19350a(new C15352b());

    /* renamed from: g */
    public final C15355e f43641g = new C15355e(this, new C15360g(), new C15361h());

    /* renamed from: e.a.j.a.a.a.c.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/j/a/a/a/c/a$a.class */
    public static final class View$OnClickListenerC15351a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f43642a;

        /* renamed from: b */
        public final /* synthetic */ Object f43643b;

        public View$OnClickListenerC15351a(int i, Object obj) {
            this.f43642a = i;
            this.f43643b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Object obj;
            int i = this.f43642a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                C15350a.m18900QA((C15350a) this.f43643b).f15140f.mo18774b();
                return;
            }
            SingleChoiceQuestionViewModel m18900QA = C15350a.m18900QA((C15350a) this.f43643b);
            Iterator<T> it = m18900QA.f15135a.iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    break;
                }
                obj = it.next();
            } while (!((C15371f) obj).f43674c);
            C15371f c15371f = (C15371f) obj;
            if (c15371f == null) {
                return;
            }
            m18900QA.f15140f.mo18773c(new Answer.SingleChoice(c15371f.f43672a));
        }
    }

    /* renamed from: e.a.j.a.a.a.c.a$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$b.class */
    public static final class C15352b extends m implements s1.z.b.l<C15350a, C15472e> {
        public C15352b() {
            super(1);
        }

        /* renamed from: d */
        public Object m18898d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4528R.C4530id.buttonConfirm;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4528R.C4530id.buttonSkip;
                Button button2 = (Button) requireView.findViewById(i);
                if (button2 != null) {
                    i = C4528R.C4530id.choicesRecyclerView;
                    RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                    if (recyclerView != null) {
                        i = C4528R.C4530id.title;
                        TextView textView = (TextView) requireView.findViewById(i);
                        if (textView != null) {
                            return new C15472e((ConstraintLayout) requireView, button, button2, recyclerView, textView);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.j.a.a.a.c.a$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$c.class */
    public static final class C15353c extends m implements a<Fragment> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43644b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15353c(Fragment fragment) {
            super(0);
            this.f43644b = fragment;
        }

        public Object invoke() {
            return this.f43644b;
        }
    }

    /* renamed from: e.a.j.a.a.a.c.a$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$d.class */
    public static final class C15354d extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f43645b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15354d(a aVar) {
            super(0);
            this.f43645b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f43645b.invoke()).getViewModelStore();
            s1.z.c.l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.j.a.a.a.c.a$e */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$e.class */
    public final class C15355e extends RecyclerView.AbstractC0317g<C15357b> {

        /* renamed from: d */
        public static final /* synthetic */ l[] f43646d = {C22128a.m8629e0(C15355e.class, "choices", "getChoices()Ljava/util/List;", 0)};

        /* renamed from: a */
        public final c f43647a;

        /* renamed from: b */
        public final s1.z.b.l<Integer, s> f43648b;

        /* renamed from: c */
        public final s1.z.b.l<C15371f, s> f43649c;

        /* renamed from: e.a.j.a.a.a.c.a$e$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$e$a.class */
        public static final class C15356a extends b<List<? extends C15371f>> {

            /* renamed from: b */
            public final /* synthetic */ C15355e f43650b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15356a(Object obj, Object obj2, C15355e c15355e) {
                super(obj2);
                this.f43650b = c15355e;
            }

            /* renamed from: b */
            public void m18897b(l<?> lVar, List<? extends C15371f> list, List<? extends C15371f> list2) {
                s1.z.c.l.e(lVar, "property");
                C25586h.m3181a(new C8328a(list, list2, C15358c.f43653b), true).m3178c(this.f43650b);
            }
        }

        /* renamed from: e.a.j.a.a.a.c.a$e$b */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$e$b.class */
        public final class C15357b extends RecyclerView.AbstractC0313c0 {

            /* renamed from: a */
            public final C15475h f43651a;

            /* renamed from: b */
            public final /* synthetic */ C15355e f43652b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15357b(C15355e c15355e, C15475h c15475h) {
                super(c15475h.f43874a);
                s1.z.c.l.e(c15475h, "binding");
                this.f43652b = c15355e;
                this.f43651a = c15475h;
            }
        }

        /* renamed from: e.a.j.a.a.a.c.a$e$c */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$e$c.class */
        public static final class C15358c extends m implements p<C15371f, C15371f, Boolean> {

            /* renamed from: b */
            public static final C15358c f43653b = new C15358c();

            public C15358c() {
                super(2);
            }

            /* renamed from: k */
            public Object m18896k(Object obj, Object obj2) {
                C15371f c15371f = (C15371f) obj;
                C15371f c15371f2 = (C15371f) obj2;
                s1.z.c.l.e(c15371f, "oldItem");
                s1.z.c.l.e(c15371f2, "newItem");
                return Boolean.valueOf(s1.z.c.l.a(c15371f.f43673b, c15371f2.f43673b));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C15355e(C15350a c15350a, s1.z.b.l<? super Integer, s> lVar, s1.z.b.l<? super C15371f, s> lVar2) {
            s1.z.c.l.e(lVar, "onChoiceSelected");
            s1.z.c.l.e(lVar2, "onChoiceMeasured");
            this.f43648b = lVar;
            this.f43649c = lVar2;
            s1.u.s sVar = s1.u.s.a;
            this.f43647a = new C15356a(sVar, sVar, this);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            return ((List) this.f43647a.A1(this, f43646d[0])).size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public void onBindViewHolder(C15357b c15357b, int i) {
            C15357b c15357b2 = c15357b;
            s1.z.c.l.e(c15357b2, "holder");
            C15371f c15371f = (C15371f) ((List) this.f43647a.A1(this, f43646d[0])).get(i);
            s1.z.c.l.e(c15371f, "singleChoiceUIModel");
            RadioButton radioButton = c15357b2.f43651a.f43875b;
            Float f = c15371f.f43675d;
            if (f != null) {
                float floatValue = f.floatValue();
                if (Build.VERSION.SDK_INT >= 27) {
                    radioButton.setAutoSizeTextTypeWithDefaults(0);
                } else if (radioButton instanceof AbstractC26635f) {
                    ((AbstractC26635f) radioButton).setAutoSizeTextTypeWithDefaults(0);
                }
                radioButton.setTextSize(0, floatValue);
            }
            radioButton.setText(c15371f.f43672a.getText());
            if (c15371f.f43675d == null) {
                radioButton.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC15367c(radioButton, c15357b2, c15371f));
            }
            RadioButton radioButton2 = c15357b2.f43651a.f43875b;
            s1.z.c.l.d(radioButton2, "binding.choiceRadioButton");
            radioButton2.setChecked(c15371f.f43674c);
            c15357b2.f43651a.f43875b.setOnClickListener(new View$OnClickListenerC15369d(c15357b2, c15371f));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public C15357b onCreateViewHolder(ViewGroup viewGroup, int i) {
            s1.z.c.l.e(viewGroup, "parent");
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4528R.layout.layout_single_choice, viewGroup, false);
            Objects.requireNonNull(inflate, "rootView");
            RadioButton radioButton = (RadioButton) inflate;
            C15475h c15475h = new C15475h(radioButton, radioButton);
            s1.z.c.l.d(c15475h, "LayoutSingleChoiceBindin….context), parent, false)");
            return new C15357b(this, c15475h);
        }
    }

    /* renamed from: e.a.j.a.a.a.c.a$f */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$f.class */
    public static final class C15359f {
        public C15359f(f fVar) {
        }
    }

    /* renamed from: e.a.j.a.a.a.c.a$g */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$g.class */
    public static final class C15360g extends m implements s1.z.b.l<Integer, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15360g() {
            super(1);
            C15350a.this = r4;
        }

        /* renamed from: d */
        public Object m18895d(Object obj) {
            int intValue = ((Number) obj).intValue();
            SingleChoiceQuestionViewModel m18900QA = C15350a.m18900QA(C15350a.this);
            for (C15371f c15371f : m18900QA.f15135a) {
                c15371f.f43674c = c15371f.f43672a.getId() == intValue;
            }
            m18900QA.m34632c();
            return s.a;
        }
    }

    /* renamed from: e.a.j.a.a.a.c.a$h */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$h.class */
    public static final class C15361h extends m implements s1.z.b.l<C15371f, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15361h() {
            super(1);
            C15350a.this = r4;
        }

        /* renamed from: d */
        public Object m18894d(Object obj) {
            Object obj2;
            C15371f c15371f = (C15371f) obj;
            s1.z.c.l.e(c15371f, "choice");
            SingleChoiceQuestionViewModel m18900QA = C15350a.m18900QA(C15350a.this);
            Objects.requireNonNull(m18900QA);
            s1.z.c.l.e(c15371f, "choiceViewModel");
            Iterator<T> it = m18900QA.f15135a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it.next();
                if (((C15371f) obj2).f43672a.getId() == c15371f.f43672a.getId()) {
                    break;
                }
            }
            C15371f c15371f2 = (C15371f) obj2;
            if (c15371f2 != null) {
                c15371f2.f43675d = c15371f.f43675d;
            }
            m18900QA.m34632c();
            return s.a;
        }
    }

    @e(c = "com.truecaller.surveys.ui.bottomSheetSurvey.question.singlechoice.SingleChoiceQuestionFragment$onViewCreated$3", f = "SingleChoiceQuestionFragment.kt", l = {122}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.a.a.c.a$i */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$i.class */
    public static final class C15362i extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43656e;

        /* renamed from: e.a.j.a.a.a.c.a$i$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$i$a.class */
        public static final class C15363a implements q3.a.x2.g<String> {
            public C15363a() {
                C15362i.this = r4;
            }

            /* renamed from: a */
            public Object m18890a(String str, d<? super s> dVar) {
                C15350a c15350a = C15350a.this;
                l[] lVarArr = C15350a.f43637h;
                TextView textView = c15350a.m18899RA().f43861d;
                s1.z.c.l.d(textView, "binding.title");
                textView.setText(str);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15362i(d dVar) {
            super(2, dVar);
            C15350a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18893i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15362i(dVar);
        }

        /* renamed from: k */
        public final Object m18892k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15362i(dVar).m18891s(s.a);
        }

        /* renamed from: s */
        public final Object m18891s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43656e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<String> i1Var = C15350a.m18900QA(C15350a.this).f15139e;
                C15363a c15363a = new C15363a();
                this.f43656e = 1;
                if (i1Var.c(c15363a, this) == aVar) {
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

    @e(c = "com.truecaller.surveys.ui.bottomSheetSurvey.question.singlechoice.SingleChoiceQuestionFragment$onViewCreated$4", f = "SingleChoiceQuestionFragment.kt", l = {122}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.a.a.c.a$j */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$j.class */
    public static final class C15364j extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43659e;

        /* renamed from: e.a.j.a.a.a.c.a$j$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/a$j$a.class */
        public static final class C15365a implements q3.a.x2.g<List<? extends C15371f>> {
            public C15365a() {
                C15364j.this = r4;
            }

            /* renamed from: a */
            public Object m18886a(List<? extends C15371f> list, d<? super s> dVar) {
                List<? extends C15371f> list2 = list;
                C15355e c15355e = C15350a.this.f43641g;
                Objects.requireNonNull(c15355e);
                s1.z.c.l.e(list2, "<set-?>");
                c15355e.f43647a.a(c15355e, C15355e.f43646d[0], list2);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15364j(d dVar) {
            super(2, dVar);
            C15350a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18889i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15364j(dVar);
        }

        /* renamed from: k */
        public final Object m18888k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15364j(dVar).m18887s(s.a);
        }

        /* renamed from: s */
        public final Object m18887s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43659e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<List<C15371f>> i1Var = C15350a.m18900QA(C15350a.this).f15138d;
                C15365a c15365a = new C15365a();
                this.f43659e = 1;
                if (i1Var.c(c15365a, this) == aVar) {
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
    public static final SingleChoiceQuestionViewModel m18900QA(C15350a c15350a) {
        return (SingleChoiceQuestionViewModel) c15350a.f43639e.getValue();
    }

    /* renamed from: RA */
    public final C15472e m18899RA() {
        return (C15472e) this.f43640f.m34468b(this, f43637h[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4528R.layout.fragment_single_choice_question, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…estion, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15350a.super.onViewCreated(view, bundle);
        RecyclerView recyclerView = m18899RA().f43860c;
        s1.z.c.l.d(recyclerView, "binding.choicesRecyclerView");
        recyclerView.setAdapter(this.f43641g);
        RecyclerView recyclerView2 = m18899RA().f43860c;
        s1.z.c.l.d(recyclerView2, "binding.choicesRecyclerView");
        RecyclerView.AbstractC0323l itemAnimator = recyclerView2.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.setChangeDuration(0L);
        }
        m18899RA().f43858a.setOnClickListener(new View$OnClickListenerC15351a(0, this));
        m18899RA().f43859b.setOnClickListener(new View$OnClickListenerC15351a(1, this));
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner).m981b(new C15362i(null));
        AbstractC26992b0 viewLifecycleOwner2 = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner2, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner2).m981b(new C15364j(null));
    }
}
