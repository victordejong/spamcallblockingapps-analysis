package p193e.p194a.p918j.p919a.p920a.p921a.p923b;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.surveys.C4528R;
import com.truecaller.surveys.data.entities.Answer;
import com.truecaller.surveys.p180ui.bottomSheetSurvey.question.freetext.FreeTextQuestionViewModel;
import com.truecaller.surveys.p180ui.bottomSheetSurvey.question.freetext.SuggestionType;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p918j.p933d.C15473f;
import q3.a.i0;
import q3.a.x2.e1;
import q3.a.x2.i1;
import s1.a.l;
import s1.f0.r;
import s1.g;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\b\u0007\u0018�� -2\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b+\u0010,J+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010\"\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001d\u0010'\u001a\u00020#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010&R\u001d\u0010*\u001a\u00020#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u001f\u001a\u0004\b)\u0010&¨\u0006."}, d2 = {"Le/a/j/a/a/a/b/a;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/p5/h0;", "f", "Le/a/p5/h0;", "getResourceProvider", "()Le/a/p5/h0;", "setResourceProvider", "(Le/a/p5/h0;)V", "resourceProvider", "Le/a/j/d/f;", "i", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/j/d/f;", "binding", "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;", "e", "Ls1/g;", "getViewModel", "()Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;", "viewModel", "", "h", "getHasNoFocusColor", "()I", "hasNoFocusColor", "g", "getHasFocusColor", "hasFocusColor", "<init>", "()V", "k", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j.a.a.a.b.a */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a.class */
public final class C15334a extends AbstractC15349d {

    /* renamed from: j */
    public static final /* synthetic */ l[] f43608j = {C22128a.m8621g0(C15334a.class, "binding", "getBinding()Lcom/truecaller/surveys/databinding/FragmentSuggestTextQuestionBinding;", 0)};

    /* renamed from: k */
    public static final C15340f f43609k = new C15340f(null);
    @Inject

    /* renamed from: f */
    public AbstractC19233h0 f43611f;

    /* renamed from: e */
    public final g f43610e = MediaSessionCompat.m43278P(this, d0.a(FreeTextQuestionViewModel.class), new C15339e(new C15338d(this)), null);

    /* renamed from: g */
    public final g f43612g = C25225a.m3978P1(new C15336b(0, this));

    /* renamed from: h */
    public final g f43613h = C25225a.m3978P1(new C15336b(1, this));

    /* renamed from: i */
    public final ViewBindingProperty f43614i = new C19350a(new C15337c());

    /* renamed from: e.a.j.a.a.a.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/j/a/a/a/b/a$a.class */
    public static final class View$OnClickListenerC15335a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f43615a;

        /* renamed from: b */
        public final /* synthetic */ Object f43616b;

        public View$OnClickListenerC15335a(int i, Object obj) {
            this.f43615a = i;
            this.f43616b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f43615a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                C15334a.m18915QA((C15334a) this.f43616b).f15131e.mo18774b();
                return;
            }
            FreeTextQuestionViewModel m18915QA = C15334a.m18915QA((C15334a) this.f43616b);
            EditText editText = ((C15334a) this.f43616b).m18914RA().f43866e;
            s1.z.c.l.d(editText, "binding.inputSuggestion");
            String obj = editText.getText().toString();
            Objects.requireNonNull(m18915QA);
            s1.z.c.l.e(obj, "text");
            if (r.p(obj)) {
                return;
            }
            C15348c c15348c = (C15348c) i.D(m18915QA.f15127a.b());
            if (c15348c != null && c15348c.f43632d) {
                m18915QA.f15131e.mo18775a(obj, (SuggestionType) m18915QA.f15128b.getValue());
            }
            m18915QA.f15131e.mo18773c(new Answer.FreeText(obj));
        }
    }

    /* renamed from: e.a.j.a.a.a.b.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/j/a/a/a/b/a$b.class */
    public static final class C15336b extends m implements a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ int f43617b;

        /* renamed from: c */
        public final /* synthetic */ Object f43618c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15336b(int i, Object obj) {
            super(0);
            this.f43617b = i;
            this.f43618c = obj;
        }

        public final Object invoke() {
            int i = this.f43617b;
            if (i == 0) {
                AbstractC19233h0 abstractC19233h0 = ((C15334a) this.f43618c).f43611f;
                if (abstractC19233h0 != null) {
                    return Integer.valueOf(abstractC19233h0.mo13758l(C4528R.attr.tcx_brandBackgroundBlue));
                }
                s1.z.c.l.l("resourceProvider");
                throw null;
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC19233h0 abstractC19233h02 = ((C15334a) this.f43618c).f43611f;
                if (abstractC19233h02 != null) {
                    return Integer.valueOf(abstractC19233h02.mo13758l(C4528R.attr.tcx_fillTertiaryBackground));
                }
                s1.z.c.l.l("resourceProvider");
                throw null;
            }
        }
    }

    /* renamed from: e.a.j.a.a.a.b.a$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$c.class */
    public static final class C15337c extends m implements s1.z.b.l<C15334a, C15473f> {
        public C15337c() {
            super(1);
        }

        /* renamed from: d */
        public Object m18913d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4528R.C4530id.buttonSkip;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4528R.C4530id.buttonSubmit;
                Button button2 = (Button) requireView.findViewById(i);
                if (button2 != null) {
                    i = C4528R.C4530id.choiceBusiness;
                    RadioButton radioButton = (RadioButton) requireView.findViewById(i);
                    if (radioButton != null) {
                        i = C4528R.C4530id.choicePerson;
                        RadioButton radioButton2 = (RadioButton) requireView.findViewById(i);
                        if (radioButton2 != null) {
                            i = C4528R.C4530id.inputSuggestion;
                            EditText editText = (EditText) requireView.findViewById(i);
                            if (editText != null) {
                                i = C4528R.C4530id.message;
                                TextView textView = (TextView) requireView.findViewById(i);
                                if (textView != null) {
                                    i = C4528R.C4530id.radioGroup;
                                    RadioGroup radioGroup = (RadioGroup) requireView.findViewById(i);
                                    if (radioGroup != null) {
                                        i = C4528R.C4530id.title;
                                        TextView textView2 = (TextView) requireView.findViewById(i);
                                        if (textView2 != null) {
                                            return new C15473f((ConstraintLayout) requireView, button, button2, radioButton, radioButton2, editText, textView, radioGroup, textView2);
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

    /* renamed from: e.a.j.a.a.a.b.a$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$d.class */
    public static final class C15338d extends m implements a<Fragment> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43619b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15338d(Fragment fragment) {
            super(0);
            this.f43619b = fragment;
        }

        public Object invoke() {
            return this.f43619b;
        }
    }

    /* renamed from: e.a.j.a.a.a.b.a$e */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$e.class */
    public static final class C15339e extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f43620b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15339e(a aVar) {
            super(0);
            this.f43620b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f43620b.invoke()).getViewModelStore();
            s1.z.c.l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.j.a.a.a.b.a$f */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$f.class */
    public static final class C15340f {
        public C15340f(f fVar) {
        }
    }

    /* renamed from: e.a.j.a.a.a.b.a$g */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$g.class */
    public static final class C15341g extends m implements s1.z.b.l<Boolean, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15341g() {
            super(1);
            C15334a.this = r4;
        }

        /* renamed from: d */
        public Object m18912d(Object obj) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            C15334a c15334a = C15334a.this;
            l[] lVarArr = C15334a.f43608j;
            EditText editText = c15334a.m18914RA().f43866e;
            s1.z.c.l.d(editText, "binding.inputSuggestion");
            Drawable background = editText.getBackground();
            Objects.requireNonNull(background, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
            ((GradientDrawable) background).setStroke(C19291g.m13603O(1), booleanValue ? ((Number) C15334a.this.f43612g.getValue()).intValue() : ((Number) C15334a.this.f43613h.getValue()).intValue());
            return s.a;
        }
    }

    /* renamed from: e.a.j.a.a.a.b.a$h */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$h.class */
    public static final class C15342h implements RadioGroup.OnCheckedChangeListener {
        public C15342h() {
            C15334a.this = r4;
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public final void onCheckedChanged(RadioGroup radioGroup, int i) {
            FreeTextQuestionViewModel m18915QA = C15334a.m18915QA(C15334a.this);
            RadioButton radioButton = C15334a.this.m18914RA().f43864c;
            s1.z.c.l.d(radioButton, "binding.choiceBusiness");
            SuggestionType suggestionType = i == radioButton.getId() ? SuggestionType.BUSINESS : SuggestionType.PERSON;
            Objects.requireNonNull(m18915QA);
            s1.z.c.l.e(suggestionType, "suggestionType");
            m18915QA.f15128b.setValue(suggestionType);
        }
    }

    @e(c = "com.truecaller.surveys.ui.bottomSheetSurvey.question.freetext.FreeTextQuestionFragment$onViewCreated$5", f = "FreeTextQuestionFragment.kt", l = {80}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.a.a.b.a$i */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$i.class */
    public static final class C15343i extends s1.w.k.a.i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43623e;

        /* renamed from: e.a.j.a.a.a.b.a$i$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$i$a.class */
        public static final class C15344a implements q3.a.x2.g<SuggestionType> {
            public C15344a() {
                C15343i.this = r4;
            }

            /* renamed from: a */
            public Object m18908a(SuggestionType suggestionType, d<? super s> dVar) {
                SuggestionType suggestionType2 = suggestionType;
                C15334a c15334a = C15334a.this;
                l[] lVarArr = C15334a.f43608j;
                RadioButton radioButton = c15334a.m18914RA().f43864c;
                s1.z.c.l.d(radioButton, "binding.choiceBusiness");
                radioButton.setChecked(suggestionType2 == SuggestionType.BUSINESS);
                RadioButton radioButton2 = C15334a.this.m18914RA().f43865d;
                s1.z.c.l.d(radioButton2, "binding.choicePerson");
                radioButton2.setChecked(suggestionType2 == SuggestionType.PERSON);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15343i(d dVar) {
            super(2, dVar);
            C15334a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18911i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15343i(dVar);
        }

        /* renamed from: k */
        public final Object m18910k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15343i(dVar).m18909s(s.a);
        }

        /* renamed from: s */
        public final Object m18909s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43623e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<SuggestionType> i1Var = C15334a.m18915QA(C15334a.this).f15130d;
                C15344a c15344a = new C15344a();
                this.f43623e = 1;
                if (i1Var.c(c15344a, this) == aVar) {
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

    @e(c = "com.truecaller.surveys.ui.bottomSheetSurvey.question.freetext.FreeTextQuestionFragment$onViewCreated$6", f = "FreeTextQuestionFragment.kt", l = {80}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.a.a.b.a$j */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$j.class */
    public static final class C15345j extends s1.w.k.a.i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43626e;

        /* renamed from: e.a.j.a.a.a.b.a$j$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/a$j$a.class */
        public static final class C15346a implements q3.a.x2.g<C15348c> {
            public C15346a() {
                C15345j.this = r4;
            }

            /* renamed from: a */
            public Object m18904a(C15348c c15348c, d<? super s> dVar) {
                C15348c c15348c2 = c15348c;
                C15334a c15334a = C15334a.this;
                l[] lVarArr = C15334a.f43608j;
                TextView textView = c15334a.m18914RA().f43869h;
                s1.z.c.l.d(textView, "binding.title");
                textView.setText(c15348c2.f43629a);
                TextView textView2 = C15334a.this.m18914RA().f43867f;
                s1.z.c.l.d(textView2, "binding.message");
                textView2.setText(c15348c2.f43630b);
                EditText editText = C15334a.this.m18914RA().f43866e;
                s1.z.c.l.d(editText, "binding.inputSuggestion");
                editText.setHint(c15348c2.f43631c);
                RadioGroup radioGroup = C15334a.this.m18914RA().f43868g;
                s1.z.c.l.d(radioGroup, "binding.radioGroup");
                C19286f.m13683U(radioGroup, c15348c2.f43632d);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15345j(d dVar) {
            super(2, dVar);
            C15334a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18907i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15345j(dVar);
        }

        /* renamed from: k */
        public final Object m18906k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15345j(dVar).m18905s(s.a);
        }

        /* renamed from: s */
        public final Object m18905s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43626e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                e1<C15348c> e1Var = C15334a.m18915QA(C15334a.this).f15129c;
                C15346a c15346a = new C15346a();
                this.f43626e = 1;
                if (e1Var.c(c15346a, this) == aVar) {
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
    public static final FreeTextQuestionViewModel m18915QA(C15334a c15334a) {
        return (FreeTextQuestionViewModel) c15334a.f43610e.getValue();
    }

    /* renamed from: RA */
    public final C15473f m18914RA() {
        return (C15473f) this.f43614i.m34468b(this, f43608j[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4528R.layout.fragment_suggest_text_question, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…estion, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15334a.super.onViewCreated(view, bundle);
        m18914RA().f43863b.setOnClickListener(new View$OnClickListenerC15335a(0, this));
        m18914RA().f43862a.setOnClickListener(new View$OnClickListenerC15335a(1, this));
        EditText editText = m18914RA().f43866e;
        s1.z.c.l.d(editText, "binding.inputSuggestion");
        C19286f.m13655x(editText, new C15341g());
        m18914RA().f43868g.setOnCheckedChangeListener(new C15342h());
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner).m981b(new C15343i(null));
        AbstractC26992b0 viewLifecycleOwner2 = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner2, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner2).m981b(new C15345j(null));
    }
}
