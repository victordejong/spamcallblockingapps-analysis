package p193e.p194a.p918j.p919a.p926c;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.button.MaterialButton;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.data.entity.Contact;
import com.truecaller.surveys.C4528R;
import com.truecaller.surveys.data.entities.Answer;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.data.entities.SurveyFlow;
import com.truecaller.surveys.p180ui.adapter.SurveyControllerViewModel;
import com.truecaller.surveys.p180ui.bottomSheetSurvey.question.freetext.SuggestionType;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p798g5.AbstractC14535n;
import p193e.p194a.p918j.p933d.C15471d;
import p193e.p194a.p918j.p934e.AbstractC15489f;
import q3.a.i0;
import q3.a.x2.e1;
import q3.a.x2.i1;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u001a\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001d\u0010*\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u0017\u001a\u0004\b)\u0010\u001e¨\u0006-"}, d2 = {"Le/a/j/a/c/a;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/j/d/d;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/j/d/d;", "binding", "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;", "f", "Ls1/g;", "getViewModel", "()Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;", "viewModel", "", "h", "getHasFocusColor", "()I", "hasFocusColor", "Le/a/p5/h0;", "g", "Le/a/p5/h0;", "getResourceProvider", "()Le/a/p5/h0;", "setResourceProvider", "(Le/a/p5/h0;)V", "resourceProvider", "i", "getHasNoFocusColor", "hasNoFocusColor", "<init>", "()V", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j.a.c.a */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a.class */
public final class C15392a extends AbstractC15406c {

    /* renamed from: j */
    public static final /* synthetic */ l[] f43705j = {C22128a.m8621g0(C15392a.class, "binding", "getBinding()Lcom/truecaller/surveys/databinding/FragmentFreeTextQuestionBinding;", 0)};
    @Inject

    /* renamed from: g */
    public AbstractC19233h0 f43708g;

    /* renamed from: e */
    public final ViewBindingProperty f43706e = new C19350a(new C15396d());

    /* renamed from: f */
    public final g f43707f = MediaSessionCompat.m43278P(this, d0.a(SurveyControllerViewModel.class), new C15394b(this), new C15395c(this));

    /* renamed from: h */
    public final g f43709h = C25225a.m3978P1(new C15393a(0, this));

    /* renamed from: i */
    public final g f43710i = C25225a.m3978P1(new C15393a(1, this));

    /* renamed from: e.a.j.a.c.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/j/a/c/a$a.class */
    public static final class C15393a extends m implements a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ int f43711b;

        /* renamed from: c */
        public final /* synthetic */ Object f43712c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15393a(int i, Object obj) {
            super(0);
            this.f43711b = i;
            this.f43712c = obj;
        }

        public final Object invoke() {
            int i = this.f43711b;
            if (i == 0) {
                AbstractC19233h0 abstractC19233h0 = ((C15392a) this.f43712c).f43708g;
                if (abstractC19233h0 != null) {
                    return Integer.valueOf(abstractC19233h0.mo13758l(C4528R.attr.tcx_brandBackgroundBlue));
                }
                s1.z.c.l.l("resourceProvider");
                throw null;
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC19233h0 abstractC19233h02 = ((C15392a) this.f43712c).f43708g;
                if (abstractC19233h02 != null) {
                    return Integer.valueOf(abstractC19233h02.mo13758l(C4528R.attr.tcx_fillTertiaryBackground));
                }
                s1.z.c.l.l("resourceProvider");
                throw null;
            }
        }
    }

    /* renamed from: e.a.j.a.c.a$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$b.class */
    public static final class C15394b extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43713b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15394b(Fragment fragment) {
            super(0);
            this.f43713b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f43713b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.j.a.c.a$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$c.class */
    public static final class C15395c extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f43714b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15395c(Fragment fragment) {
            super(0);
            this.f43714b = fragment;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = this.f43714b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: e.a.j.a.c.a$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$d.class */
    public static final class C15396d extends m implements s1.z.b.l<C15392a, C15471d> {
        public C15396d() {
            super(1);
        }

        /* renamed from: d */
        public Object m18860d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4528R.C4530id.answer;
            EditText editText = (EditText) requireView.findViewById(i);
            if (editText != null) {
                i = C4528R.C4530id.btnSubmit;
                MaterialButton findViewById = requireView.findViewById(i);
                if (findViewById != null) {
                    i = C4528R.C4530id.choiceBusiness;
                    RadioButton radioButton = (RadioButton) requireView.findViewById(i);
                    if (radioButton != null) {
                        i = C4528R.C4530id.choicePerson;
                        RadioButton radioButton2 = (RadioButton) requireView.findViewById(i);
                        if (radioButton2 != null) {
                            i = C4528R.C4530id.question;
                            TextView textView = (TextView) requireView.findViewById(i);
                            if (textView != null) {
                                i = C4528R.C4530id.questionContainer;
                                ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                                if (constraintLayout != null) {
                                    i = C4528R.C4530id.radioGroup;
                                    RadioGroup radioGroup = (RadioGroup) requireView.findViewById(i);
                                    if (radioGroup != null) {
                                        return new C15471d((ConstraintLayout) requireView, editText, findViewById, radioButton, radioButton2, textView, constraintLayout, radioGroup);
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

    /* renamed from: e.a.j.a.c.a$e */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$e.class */
    public static final class C15397e extends m implements s1.z.b.l<Boolean, s> {

        /* renamed from: b */
        public final /* synthetic */ C15471d f43715b;

        /* renamed from: c */
        public final /* synthetic */ C15392a f43716c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15397e(C15471d c15471d, C15392a c15392a) {
            super(1);
            this.f43715b = c15471d;
            this.f43716c = c15392a;
        }

        /* renamed from: d */
        public Object m18859d(Object obj) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            ConstraintLayout constraintLayout = this.f43715b.f43856f;
            s1.z.c.l.d(constraintLayout, "questionContainer");
            Drawable background = constraintLayout.getBackground();
            Objects.requireNonNull(background, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
            ((GradientDrawable) background).setStroke(C19291g.m13603O(1), booleanValue ? ((Number) this.f43716c.f43709h.getValue()).intValue() : ((Number) this.f43716c.f43710i.getValue()).intValue());
            return s.a;
        }
    }

    /* renamed from: e.a.j.a.c.a$f */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$f.class */
    public static final class C15398f implements TextWatcher {

        /* renamed from: a */
        public final /* synthetic */ C15471d f43717a;

        public C15398f(C15471d c15471d, C15392a c15392a) {
            this.f43717a = c15471d;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            MaterialButton materialButton = this.f43717a.f43852b;
            s1.z.c.l.d(materialButton, "btnSubmit");
            boolean z = false;
            if (editable != null) {
                z = false;
                if (!r.p(editable)) {
                    z = true;
                }
            }
            materialButton.setEnabled(z);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: e.a.j.a.c.a$g */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$g.class */
    public static final class View$OnClickListenerC15399g implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C15471d f43718a;

        /* renamed from: b */
        public final /* synthetic */ C15392a f43719b;

        public View$OnClickListenerC15399g(C15471d c15471d, C15392a c15392a) {
            this.f43718a = c15471d;
            this.f43719b = c15392a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SurveyControllerViewModel m18862QA = C15392a.m18862QA(this.f43719b);
            EditText editText = this.f43718a.f43851a;
            s1.z.c.l.d(editText, "answer");
            String obj = editText.getText().toString();
            Objects.requireNonNull(m18862QA);
            s1.z.c.l.e(obj, "suggestedName");
            if (m18862QA.m34644c()) {
                return;
            }
            AbstractC15489f state = m18862QA.f15103f.getState();
            Objects.requireNonNull(state, "null cannot be cast to non-null type com.truecaller.surveys.utils.SurveyState.Active");
            if (((AbstractC15489f.C15490a) state).f43907b instanceof SurveyFlow.NameSuggestion) {
                AbstractC14535n mo11854a = m18862QA.f15104g.mo11854a();
                Contact contact = m18862QA.f15102e;
                if (contact == null) {
                    s1.z.c.l.l(AnalyticsConstants.CONTACT);
                    throw null;
                }
                mo11854a.mo20028a(contact, obj, ((SuggestionType) m18862QA.f15099b.getValue()).getValue()).mo11828g();
            }
            m18862QA.f15103f.mo18779d(new Answer.FreeText(obj));
            m18862QA.f15103f.mo18782a();
            m18862QA.m34642e();
        }
    }

    /* renamed from: e.a.j.a.c.a$h */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$h.class */
    public static final class C15400h implements RadioGroup.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ C15471d f43720a;

        /* renamed from: b */
        public final /* synthetic */ C15392a f43721b;

        public C15400h(C15471d c15471d, C15392a c15392a) {
            this.f43720a = c15471d;
            this.f43721b = c15392a;
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public final void onCheckedChanged(RadioGroup radioGroup, int i) {
            SurveyControllerViewModel m18862QA = C15392a.m18862QA(this.f43721b);
            RadioButton radioButton = this.f43720a.f43853c;
            s1.z.c.l.d(radioButton, "choiceBusiness");
            SuggestionType suggestionType = i == radioButton.getId() ? SuggestionType.BUSINESS : SuggestionType.PERSON;
            Objects.requireNonNull(m18862QA);
            s1.z.c.l.e(suggestionType, "suggestionType");
            m18862QA.f15099b.setValue(suggestionType);
        }
    }

    @e(c = "com.truecaller.surveys.ui.suggestName.FreeTextQuestionFragment$onViewCreated$2", f = "FreeTextQuestionFragment.kt", l = {93}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.c.a$i */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$i.class */
    public static final class C15401i extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43722e;

        /* renamed from: e.a.j.a.c.a$i$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$i$a.class */
        public static final class C15402a implements q3.a.x2.g<SuggestionType> {
            public C15402a() {
                C15401i.this = r4;
            }

            /* renamed from: a */
            public Object m18855a(SuggestionType suggestionType, d<? super s> dVar) {
                SuggestionType suggestionType2 = suggestionType;
                C15392a c15392a = C15392a.this;
                l[] lVarArr = C15392a.f43705j;
                RadioButton radioButton = c15392a.m18861RA().f43853c;
                s1.z.c.l.d(radioButton, "binding.choiceBusiness");
                radioButton.setChecked(suggestionType2 == SuggestionType.BUSINESS);
                RadioButton radioButton2 = C15392a.this.m18861RA().f43854d;
                s1.z.c.l.d(radioButton2, "binding.choicePerson");
                radioButton2.setChecked(suggestionType2 == SuggestionType.PERSON);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15401i(d dVar) {
            super(2, dVar);
            C15392a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18858i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15401i(dVar);
        }

        /* renamed from: k */
        public final Object m18857k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15401i(dVar).m18856s(s.a);
        }

        /* renamed from: s */
        public final Object m18856s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43722e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<SuggestionType> i1Var = C15392a.m18862QA(C15392a.this).f15101d;
                C15402a c15402a = new C15402a();
                this.f43722e = 1;
                if (i1Var.c(c15402a, this) == aVar) {
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

    @e(c = "com.truecaller.surveys.ui.suggestName.FreeTextQuestionFragment$onViewCreated$3", f = "FreeTextQuestionFragment.kt", l = {80}, m = "invokeSuspend")
    /* renamed from: e.a.j.a.c.a$j */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$j.class */
    public static final class C15403j extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43725e;

        @e(c = "com.truecaller.surveys.ui.suggestName.FreeTextQuestionFragment$onViewCreated$3$1", f = "FreeTextQuestionFragment.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.j.a.c.a$j$a */
        /* loaded from: classes14-dex2jar.jar:e/a/j/a/c/a$j$a.class */
        public static final class C15404a extends i implements p<SurveyControllerViewModel.AbstractC4565a, d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f43727e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15404a(d dVar) {
                super(2, dVar);
                C15403j.this = r5;
            }

            /* renamed from: i */
            public final d<s> m18851i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                C15404a c15404a = new C15404a(dVar);
                c15404a.f43727e = obj;
                return c15404a;
            }

            /* renamed from: k */
            public final Object m18850k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                C15403j c15403j = C15403j.this;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                SurveyControllerViewModel.AbstractC4565a abstractC4565a = (SurveyControllerViewModel.AbstractC4565a) obj;
                if (abstractC4565a instanceof SurveyControllerViewModel.AbstractC4565a.C4567b) {
                    C15392a c15392a = C15392a.this;
                    SurveyControllerViewModel.AbstractC4565a.C4567b c4567b = (SurveyControllerViewModel.AbstractC4565a.C4567b) abstractC4565a;
                    Question.FreeText freeText = c4567b.f15106a;
                    boolean z = c4567b.f15107b;
                    l[] lVarArr = C15392a.f43705j;
                    C15471d m18861RA = c15392a.m18861RA();
                    TextView textView = m18861RA.f43855e;
                    s1.z.c.l.d(textView, "this.question");
                    textView.setText(freeText.getHeaderMessage());
                    EditText editText = m18861RA.f43851a;
                    s1.z.c.l.d(editText, "answer");
                    editText.setHint(freeText.getHint());
                    MaterialButton materialButton = m18861RA.f43852b;
                    s1.z.c.l.d(materialButton, "btnSubmit");
                    materialButton.setText(freeText.getActionLabel());
                    RadioGroup radioGroup = c15392a.m18861RA().f43857g;
                    s1.z.c.l.d(radioGroup, "binding.radioGroup");
                    C19286f.m13683U(radioGroup, z);
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m18849s(Object obj) {
                C25225a.m3932a3(obj);
                SurveyControllerViewModel.AbstractC4565a abstractC4565a = (SurveyControllerViewModel.AbstractC4565a) this.f43727e;
                if (abstractC4565a instanceof SurveyControllerViewModel.AbstractC4565a.C4567b) {
                    C15392a c15392a = C15392a.this;
                    SurveyControllerViewModel.AbstractC4565a.C4567b c4567b = (SurveyControllerViewModel.AbstractC4565a.C4567b) abstractC4565a;
                    Question.FreeText freeText = c4567b.f15106a;
                    boolean z = c4567b.f15107b;
                    l[] lVarArr = C15392a.f43705j;
                    C15471d m18861RA = c15392a.m18861RA();
                    TextView textView = m18861RA.f43855e;
                    s1.z.c.l.d(textView, "this.question");
                    textView.setText(freeText.getHeaderMessage());
                    EditText editText = m18861RA.f43851a;
                    s1.z.c.l.d(editText, "answer");
                    editText.setHint(freeText.getHint());
                    MaterialButton materialButton = m18861RA.f43852b;
                    s1.z.c.l.d(materialButton, "btnSubmit");
                    materialButton.setText(freeText.getActionLabel());
                    RadioGroup radioGroup = c15392a.m18861RA().f43857g;
                    s1.z.c.l.d(radioGroup, "binding.radioGroup");
                    C19286f.m13683U(radioGroup, z);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15403j(d dVar) {
            super(2, dVar);
            C15392a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18854i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15403j(dVar);
        }

        /* renamed from: k */
        public final Object m18853k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15403j(dVar).m18852s(s.a);
        }

        /* renamed from: s */
        public final Object m18852s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43725e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                e1<SurveyControllerViewModel.AbstractC4565a> e1Var = C15392a.m18862QA(C15392a.this).f15100c;
                C15404a c15404a = new C15404a(null);
                this.f43725e = 1;
                if (s1.a.a.a.v0.f.d.g0(e1Var, c15404a, this) == aVar) {
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
    public static final SurveyControllerViewModel m18862QA(C15392a c15392a) {
        return (SurveyControllerViewModel) c15392a.f43707f.getValue();
    }

    /* renamed from: RA */
    public final C15471d m18861RA() {
        return (C15471d) this.f43706e.m34468b(this, f43705j[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4528R.layout.fragment_free_text_question, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…estion, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15392a.super.onViewCreated(view, bundle);
        C15471d m18861RA = m18861RA();
        EditText editText = m18861RA.f43851a;
        C19286f.m13655x(editText, new C15397e(m18861RA, this));
        editText.addTextChangedListener(new C15398f(m18861RA, this));
        m18861RA.f43852b.setOnClickListener(new View$OnClickListenerC15399g(m18861RA, this));
        m18861RA.f43857g.setOnCheckedChangeListener(new C15400h(m18861RA, this));
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner).m981b(new C15401i(null));
        AbstractC26992b0 viewLifecycleOwner2 = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner2, "viewLifecycleOwner");
        C27020r.m994b(viewLifecycleOwner2).m981b(new C15403j(null));
    }
}
