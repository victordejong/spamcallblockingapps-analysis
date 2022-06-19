package p193e.p194a.p437c.p438a.p480j.p486e;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetBehavior$d;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.huawei.hms.actions.SearchIntents;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.filters.states.SmsFilterState;
import com.truecaller.insights.p168ui.filters.view.FilterSearchEditText;
import com.truecaller.insights.p168ui.important.view.BusinessInsightsFragment;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1164r.p1170c.ViewTreeObserver$OnGlobalLayoutListenerC19739h;
import p193e.p194a.p437c.p438a.p456d.p463f.p468d.C8931a;
import p193e.p194a.p437c.p438a.p477g.C9019c1;
import p193e.p194a.p437c.p438a.p477g.C9035h;
import p193e.p194a.p437c.p438a.p480j.p483c.C9147f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import q3.a.j0;
import q3.a.x2.a1;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018�� @2\u00020\u0001:\u0001AB\u0007¢\u0006\u0004\b?\u0010\u0015J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00112\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0016\u0010\u0015J1\u0010\u001d\u001a\u00020\u001c2\b\b\u0001\u0010\u0018\u001a\u00020\u00172\b\b\u0001\u0010\u0019\u001a\u00020\u00172\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u001d\u00100\u001a\u00020+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u001d\u00106\u001a\u0002018B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=¨\u0006B"}, d2 = {"Le/a/c/a/j/e/a;", "Le/m/a/g/e/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "dismiss", "()V", "onDestroy", "", "iconResource", "label", "Lkotlin/Function0;", "action", "Lcom/google/android/material/chip/Chip;", "RA", "(IILs1/z/b/a;)Lcom/google/android/material/chip/Chip;", "Le/a/c/a/j/c/f;", "f", "Le/a/c/a/j/c/f;", "UA", "()Le/a/c/a/j/c/f;", "setSenderFilterAdapter", "(Le/a/c/a/j/c/f;)V", "senderFilterAdapter", "Le/a/c/a/d/f/d/a;", "i", "Le/a/c/a/d/f/d/a;", "debouncedTextWatcher", "Le/a/c/a/g/h;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "SA", "()Le/a/c/a/g/h;", "binding", "Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;", "h", "Ls1/g;", "TA", "()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;", "insightSmartFeedViewModel", "Le/a/p5/h0;", "e", "Le/a/p5/h0;", "getThemedResourceProvider", "()Le/a/p5/h0;", "setThemedResourceProvider", "(Le/a/p5/h0;)V", "themedResourceProvider", "<init>", "l", "d", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.j.e.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/a.class */
public final class C9162a extends AbstractC9190p {
    @Inject

    /* renamed from: e */
    public AbstractC19233h0 f27894e;
    @Inject

    /* renamed from: f */
    public C9147f f27895f;

    /* renamed from: g */
    public final ViewBindingProperty f27896g = new C19350a(new C9165c());

    /* renamed from: h */
    public final g f27897h = MediaSessionCompat.m43278P(this, d0.a(InsightsSmartFeedViewModel.class), new C9163a(this), new C9164b(this));

    /* renamed from: i */
    public final C8931a f27898i = new C8931a(C27020r.m994b(this), new C9168f());

    /* renamed from: j */
    public static final /* synthetic */ l[] f27891j = {C22128a.m8621g0(C9162a.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomSheetFilterBinding;", 0)};

    /* renamed from: l */
    public static final C9166d f27893l = new C9166d(null);

    /* renamed from: k */
    public static final String f27892k = C9162a.class.getSimpleName();

    /* renamed from: e.a.c.a.j.e.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/a$a.class */
    public static final class C9163a extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f27899b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9163a(Fragment fragment) {
            super(0);
            this.f27899b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f27899b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.c.a.j.e.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/a$b.class */
    public static final class C9164b extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f27900b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9164b(Fragment fragment) {
            super(0);
            this.f27900b = fragment;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = this.f27900b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: e.a.c.a.j.e.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/a$c.class */
    public static final class C9165c extends m implements s1.z.b.l<C9162a, C9035h> {
        public C9165c() {
            super(1);
        }

        /* renamed from: d */
        public Object m27836d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.applyButton;
            MaterialButton findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4078R.C4080id.category_tags;
                ChipGroup findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    i = C4078R.C4080id.clearButton;
                    MaterialButton findViewById3 = requireView.findViewById(i);
                    if (findViewById3 != null) {
                        i = C4078R.C4080id.close_button;
                        ImageButton imageButton = (ImageButton) requireView.findViewById(i);
                        if (imageButton != null) {
                            i = C4078R.C4080id.filterSearch;
                            View findViewById4 = requireView.findViewById(i);
                            if (findViewById4 != null) {
                                CardView cardView = (CardView) findViewById4;
                                int i2 = C4078R.C4080id.searchBar;
                                FilterSearchEditText filterSearchEditText = (FilterSearchEditText) findViewById4.findViewById(i2);
                                if (filterSearchEditText == null) {
                                    throw new NullPointerException("Missing required view with ID: ".concat(findViewById4.getResources().getResourceName(i2)));
                                }
                                C9019c1 c9019c1 = new C9019c1(cardView, cardView, filterSearchEditText);
                                i = C4078R.C4080id.senderList;
                                RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                                if (recyclerView != null) {
                                    i = C4078R.C4080id.title_text;
                                    TextView textView = (TextView) requireView.findViewById(i);
                                    if (textView != null) {
                                        return new C9035h((ConstraintLayout) requireView, findViewById, findViewById2, findViewById3, imageButton, c9019c1, recyclerView, textView);
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

    /* renamed from: e.a.c.a.j.e.a$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/a$d.class */
    public static final class C9166d {
        public C9166d(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.j.e.a$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/a$e.class */
    public static final class View$OnClickListenerC9167e implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f27901a;

        public View$OnClickListenerC9167e(int i, int i2, a aVar) {
            this.f27901a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f27901a.invoke();
        }
    }

    /* renamed from: e.a.c.a.j.e.a$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/a$f.class */
    public static final class C9168f extends m implements s1.z.b.l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9168f() {
            super(1);
            C9162a.this = r4;
        }

        /* renamed from: d */
        public Object m27835d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, SearchIntents.EXTRA_QUERY);
            C9162a c9162a = C9162a.this;
            l[] lVarArr = C9162a.f27891j;
            c9162a.m27838TA().m35151h(str);
            return s.a;
        }
    }

    /* renamed from: e.a.c.a.j.e.a$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/a$g.class */
    public static final class DialogInterface$OnShowListenerC9169g implements DialogInterface.OnShowListener {

        /* renamed from: e.a.c.a.j.e.a$g$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/a$g$a.class */
        public static final class C9170a extends BottomSheetBehavior$d {
            public C9170a() {
                DialogInterface$OnShowListenerC9169g.this = r4;
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior$d
            /* renamed from: a */
            public void mo24294a(View view, float f) {
                s1.z.c.l.e(view, "bottomSheet");
            }

            /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object, n3.v.b0, e.a.c.a.j.e.a] */
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior$d
            /* renamed from: b */
            public void mo24293b(View view, int i) {
                s1.z.c.l.e(view, "bottomSheet");
                if (i != 3) {
                    if (i != 4 && i != 6) {
                        return;
                    }
                    C9162a.this.dismiss();
                } else if (!C9162a.this.m27837UA().getCurrentList().isEmpty()) {
                } else {
                    ?? r0 = C9162a.this;
                    Objects.requireNonNull(r0);
                    d.w2(C27020r.m994b(r0), (s1.w.f) null, (j0) null, new C9181h(r0, null), 3, (Object) null);
                }
            }
        }

        public DialogInterface$OnShowListenerC9169g() {
            C9162a.this = r4;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            FrameLayout m25920o0 = C10480a.m25920o0(C9162a.this);
            if (m25920o0 != null) {
                ViewGroup.LayoutParams layoutParams = m25920o0.getLayoutParams();
                layoutParams.height = -1;
                m25920o0.setLayoutParams(layoutParams);
                BottomSheetBehavior<FrameLayout> m25915p0 = C10480a.m25915p0(C9162a.this);
                if (m25915p0 == null) {
                    return;
                }
                m25915p0.M(3);
                C9170a c9170a = new C9170a();
                if (m25915p0.P.contains(c9170a)) {
                    return;
                }
                m25915p0.P.add(c9170a);
            }
        }
    }

    /* renamed from: QA */
    public static final void m27841QA(C9162a c9162a, View view) {
        Objects.requireNonNull(c9162a);
        Object systemService = view.getContext().getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
        c9162a.m27839SA().f27495g.requestLayout();
    }

    /* renamed from: RA */
    public final Chip m27840RA(int i, int i2, a<s> aVar) {
        LayoutInflater layoutInflater = getLayoutInflater();
        s1.z.c.l.d(layoutInflater, "layoutInflater");
        Chip inflate = C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.layout_filter_chip_action, (ViewGroup) m27839SA().f27491c, false);
        Objects.requireNonNull(inflate, "null cannot be cast to non-null type com.google.android.material.chip.Chip");
        Chip chip = inflate;
        chip.setText(chip.getResources().getText(i2));
        Context context = chip.getContext();
        Object obj = C26467a.f74235a;
        chip.setChipIcon(C26467a.C26470c.m1789b(context, i));
        chip.setOnClickListener(new View$OnClickListenerC9167e(i2, i, aVar));
        return chip;
    }

    /* renamed from: SA */
    public final C9035h m27839SA() {
        return (C9035h) this.f27896g.m34468b(this, f27891j[0]);
    }

    /* renamed from: TA */
    public final InsightsSmartFeedViewModel m27838TA() {
        return (InsightsSmartFeedViewModel) this.f27897h.getValue();
    }

    /* renamed from: UA */
    public final C9147f m27837UA() {
        C9147f c9147f = this.f27895f;
        if (c9147f != null) {
            return c9147f;
        }
        s1.z.c.l.l("senderFilterAdapter");
        throw null;
    }

    public void dismiss() {
        m27838TA().m35150i(false);
        m27838TA().m35151h("");
        C9162a.super.dismiss();
    }

    public void onCreate(Bundle bundle) {
        C9162a.super.onCreate(bundle);
        setStyle(0, C4078R.style.FilterBottomSheetStyle);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = C9162a.super.onCreateDialog(bundle);
        s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        onCreateDialog.setOnShowListener(new DialogInterface$OnShowListenerC9169g());
        return onCreateDialog;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottom_sheet_filter, viewGroup, false);
    }

    public void onDestroy() {
        m27839SA().f27494f.f27413a.removeTextChangedListener(this.f27898i);
        C9162a.super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9162a.super.onViewCreated(view, bundle);
        InsightsSmartFeedViewModel m27838TA = m27838TA();
        SmsFilterState smsFilterState = m27838TA.f12910g;
        Set<AbstractC10836e> set = m27838TA.f12909f;
        Objects.requireNonNull(smsFilterState);
        s1.z.c.l.e(set, "newFilters");
        a1<Set<AbstractC10836e>> a1Var = smsFilterState.f12726a;
        a1Var.e(a1Var.getValue(), set);
        m27838TA.m35156c(ViewAction.VIEW);
        C27020r.m994b(this).m981b(new C9177f(this, null));
        C27020r.m994b(this).m981b(new C9179g(this, null));
        C9035h m27839SA = m27839SA();
        m27839SA.f27493e.setOnClickListener(new w0(0, this));
        m27839SA.f27494f.f27413a.setOnFocusChangeListener(new View$OnFocusChangeListenerC9184j(this));
        m27839SA.f27490b.setOnClickListener(new w0(1, this));
        m27839SA.f27492d.setOnClickListener(new View$OnClickListenerC9185k(m27839SA, this));
        RecyclerView recyclerView = m27839SA().f27495g;
        C9147f c9147f = this.f27895f;
        if (c9147f == null) {
            s1.z.c.l.l("senderFilterAdapter");
            throw null;
        }
        C9183i c9183i = new C9183i(this);
        s1.z.c.l.e(c9183i, "callback");
        c9147f.f27857a = c9183i;
        C9147f c9147f2 = this.f27895f;
        if (c9147f2 == null) {
            s1.z.c.l.l("senderFilterAdapter");
            throw null;
        }
        recyclerView.setAdapter(c9147f2);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        recyclerView.setLayoutManager(new BusinessInsightsFragment.SafeLinearLayoutManager(requireContext));
        recyclerView.setItemAnimator(new n3.b0.a.g());
        C9035h m27839SA2 = m27839SA();
        s1.z.c.l.d(m27839SA2, "binding");
        ConstraintLayout constraintLayout = m27839SA2.f27489a;
        s1.z.c.l.d(constraintLayout, "binding.root");
        new ViewTreeObserver$OnGlobalLayoutListenerC19739h(constraintLayout, new C9172c(this));
        m27839SA.f27494f.f27413a.addTextChangedListener(this.f27898i);
        m27839SA.f27494f.f27413a.setClearIconClickListener(new C9186l(this));
        C27020r.m994b(this).m981b(new C9175e(this, null));
    }
}
