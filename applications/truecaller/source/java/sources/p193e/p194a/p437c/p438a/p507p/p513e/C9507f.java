package p193e.p194a.p437c.p438a.p507p.p513e;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.ShimmerLoadingView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.p1731d.C25378b;
import p1727n3.p1728a.p1730e.p1731d.C25380d;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9033g0;
import p193e.p194a.p437c.p438a.p477g.C9046k1;
import p193e.p194a.p437c.p438a.p480j.p483c.C9142a;
import p193e.p194a.p437c.p438a.p480j.p483c.C9144c;
import p193e.p194a.p437c.p438a.p480j.p483c.C9145d;
import p193e.p194a.p437c.p438a.p507p.p511d.C9467a;
import p193e.p194a.p437c.p438a.p507p.p511d.C9485l;
import p193e.p194a.p437c.p438a.p507p.p511d.C9486m;
import p193e.p194a.p437c.p438a.p507p.p511d.C9487n;
import p193e.p194a.p437c.p438a.p507p.p511d.C9489p;
import p193e.p194a.p437c.p438a.p507p.p513e.C9526s;
import p193e.p194a.p437c.p524b.AbstractC9689h;
import p193e.p194a.p437c.p548h.AbstractC10256f;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018�� R2\u00020\u0001:\u0001SB\u0007¢\u0006\u0004\bQ\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\bJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\bJ\u0019\u0010\u000f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001b\u0010\u0004R\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001d\u0010)\u001a\u00020$8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001d\u00107\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\"\u0010?\u001a\u0002088\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010G\u001a\u00020@8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001e\u0010L\u001a\n\u0012\u0004\u0012\u00020I\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR$\u0010P\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020N0M\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010K¨\u0006T"}, d2 = {"Le/a/c/a/p/e/f;", "Landroidx/fragment/app/Fragment;", "Ls1/s;", "SA", "()V", "", "isEmpty", "TA", "(Z)V", "isLoading", "UA", "hasPermission", "VA", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Le/a/c/a/p/d/a;", "e", "Le/a/c/a/p/d/a;", "getInsightsSmartFeedAdapter", "()Le/a/c/a/p/d/a;", "setInsightsSmartFeedAdapter", "(Le/a/c/a/p/d/a;)V", "insightsSmartFeedAdapter", "Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;", "i", "Ls1/g;", "RA", "()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;", "smartFeedViewModel", "Le/a/c/b/h;", "g", "Le/a/c/b/h;", "getPermissionHelper", "()Le/a/c/b/h;", "setPermissionHelper", "(Le/a/c/b/h;)V", "permissionHelper", "Le/a/c/a/g/g0;", "j", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/c/a/g/g0;", "binding", "Le/a/c/a/j/c/a;", "f", "Le/a/c/a/j/c/a;", "getQuickFilterAdapter", "()Le/a/c/a/j/c/a;", "setQuickFilterAdapter", "(Le/a/c/a/j/c/a;)V", "quickFilterAdapter", "Le/a/c/h/f;", "h", "Le/a/c/h/f;", "getInsightsSmsIntents", "()Le/a/c/h/f;", "setInsightsSmsIntents", "(Le/a/c/h/f;)V", "insightsSmsIntents", "Ln3/a/e/b;", "Landroid/content/Intent;", "k", "Ln3/a/e/b;", "defaultSmsAppRequestLauncher", "", "", "l", "readSmsPermissionRequestLauncher", "<init>", "n", "d", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.p.e.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/f.class */
public final class C9507f extends AbstractC9504c {

    /* renamed from: m */
    public static final /* synthetic */ l[] f28829m = {C22128a.m8621g0(C9507f.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentInsightsSmartFeedBinding;", 0)};

    /* renamed from: n */
    public static final C9511d f28830n = new C9511d(null);
    @Inject

    /* renamed from: e */
    public C9467a f28831e;
    @Inject

    /* renamed from: f */
    public C9142a f28832f;
    @Inject

    /* renamed from: g */
    public AbstractC9689h f28833g;
    @Inject

    /* renamed from: h */
    public AbstractC10256f f28834h;

    /* renamed from: i */
    public final g f28835i = MediaSessionCompat.m43278P(this, d0.a(InsightsSmartFeedViewModel.class), new C9508a(this), new C9509b(this));

    /* renamed from: j */
    public final ViewBindingProperty f28836j = new C19350a(new C9510c());

    /* renamed from: k */
    public AbstractC25374b<Intent> f28837k;

    /* renamed from: l */
    public AbstractC25374b<String[]> f28838l;

    /* renamed from: e.a.c.a.p.e.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/f$a.class */
    public static final class C9508a extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f28839b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9508a(Fragment fragment) {
            super(0);
            this.f28839b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f28839b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.c.a.p.e.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/f$b.class */
    public static final class C9509b extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f28840b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9509b(Fragment fragment) {
            super(0);
            this.f28840b = fragment;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = this.f28840b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: e.a.c.a.p.e.f$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/f$c.class */
    public static final class C9510c extends m implements s1.z.b.l<C9507f, C9033g0> {
        public C9510c() {
            super(1);
        }

        /* renamed from: d */
        public Object m27483d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.emptyState;
            Group group = (Group) requireView.findViewById(i);
            if (group != null) {
                i = C4078R.C4080id.emptyStateDesc;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C4078R.C4080id.emptyStateImg;
                    ImageView imageView = (ImageView) requireView.findViewById(i);
                    if (imageView != null) {
                        i = C4078R.C4080id.emptyStateTitle;
                        TextView textView2 = (TextView) requireView.findViewById(i);
                        if (textView2 != null) {
                            i = C4078R.C4080id.grantPermission;
                            MaterialButton findViewById = requireView.findViewById(i);
                            if (findViewById != null) {
                                i = C4078R.C4080id.moreFilters;
                                MaterialButton findViewById2 = requireView.findViewById(i);
                                if (findViewById2 != null) {
                                    i = C4078R.C4080id.noPermissionDescription;
                                    TextView textView3 = (TextView) requireView.findViewById(i);
                                    if (textView3 != null) {
                                        i = C4078R.C4080id.noPermissionGroup;
                                        Group group2 = (Group) requireView.findViewById(i);
                                        if (group2 != null) {
                                            i = C4078R.C4080id.noPermissionImage;
                                            ImageView imageView2 = (ImageView) requireView.findViewById(i);
                                            if (imageView2 != null) {
                                                i = C4078R.C4080id.noPermissionTitle;
                                                TextView textView4 = (TextView) requireView.findViewById(i);
                                                if (textView4 != null) {
                                                    i = C4078R.C4080id.permissionGroup;
                                                    Group group3 = (Group) requireView.findViewById(i);
                                                    if (group3 != null) {
                                                        i = C4078R.C4080id.quickFilters;
                                                        RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                                                        if (recyclerView != null) {
                                                            i = C4078R.C4080id.scrollUp;
                                                            FloatingActionButton findViewById3 = requireView.findViewById(i);
                                                            if (findViewById3 != null) {
                                                                i = C4078R.C4080id.shimmerLoading;
                                                                View findViewById4 = requireView.findViewById(i);
                                                                if (findViewById4 != null) {
                                                                    ShimmerLoadingView shimmerLoadingView = (ShimmerLoadingView) findViewById4;
                                                                    C9046k1 c9046k1 = new C9046k1(shimmerLoadingView, shimmerLoadingView);
                                                                    i = C4078R.C4080id.toolBar;
                                                                    ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                                                                    if (constraintLayout != null) {
                                                                        i = C4078R.C4080id.updatesRv;
                                                                        RecyclerView recyclerView2 = (RecyclerView) requireView.findViewById(i);
                                                                        if (recyclerView2 != null) {
                                                                            return new C9033g0((ConstraintLayout) requireView, group, textView, imageView, textView2, findViewById, findViewById2, textView3, group2, imageView2, textView4, group3, recyclerView, findViewById3, c9046k1, constraintLayout, recyclerView2);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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

    /* renamed from: e.a.c.a.p.e.f$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/f$d.class */
    public static final class C9511d {
        public C9511d() {
        }

        public C9511d(f fVar) {
        }
    }

    /* renamed from: QA */
    public final C9033g0 m27489QA() {
        return (C9033g0) this.f28836j.m34468b(this, f28829m[0]);
    }

    /* renamed from: RA */
    public final InsightsSmartFeedViewModel m27488RA() {
        return (InsightsSmartFeedViewModel) this.f28835i.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: SA */
    public final void m27487SA() {
        AbstractC9689h abstractC9689h = this.f28833g;
        if (abstractC9689h == null) {
            s1.z.c.l.l("permissionHelper");
            throw null;
        } else if (!abstractC9689h.mo27296g()) {
        } else {
            m27484VA(true);
            m27485UA(true);
            C9467a c9467a = this.f28831e;
            if (c9467a == null) {
                s1.z.c.l.l("insightsSmartFeedAdapter");
                throw null;
            }
            c9467a.e(new C9519l(this));
            InsightsSmartFeedViewModel m27488RA = m27488RA();
            Objects.requireNonNull(m27488RA);
            s1.z.c.l.e(this, "lifecycleOwner");
            m27488RA.f12922s.mo26849d().m42867f(this, new C9487n(m27488RA));
            C27020r.m994b(this).m981b(new C9514h(this, null));
            d.w2(C27020r.m994b(this), (s1.w.f) null, (j0) null, new C9512g(this, null), 3, (Object) null);
            m27488RA().f12907d.m42867f(getViewLifecycleOwner(), new C9518k(this));
            InsightsSmartFeedViewModel m27488RA2 = m27488RA();
            Objects.requireNonNull(m27488RA2);
            s1.z.c.l.e(this, "lifecycleOwner");
            m27488RA2.f12922s.mo26815u().m42867f(this, new C9485l(m27488RA2, this));
            m27488RA2.f12922s.mo26872J().m42867f(this, new C9486m(m27488RA2));
        }
    }

    /* renamed from: TA */
    public final void m27486TA(boolean z) {
        Group group = m27489QA().f27476a;
        s1.z.c.l.d(group, "binding.emptyState");
        C19286f.m13683U(group, z);
        RecyclerView recyclerView = m27489QA().f27484i;
        s1.z.c.l.d(recyclerView, "binding.updatesRv");
        C19286f.m13683U(recyclerView, !z);
    }

    /* renamed from: UA */
    public final void m27485UA(boolean z) {
        ShimmerLoadingView shimmerLoadingView = m27489QA().f27483h.f27525a;
        s1.z.c.l.d(shimmerLoadingView, "binding.shimmerLoading.loadingItem");
        C19286f.m13683U(shimmerLoadingView, z);
    }

    /* renamed from: VA */
    public final void m27484VA(boolean z) {
        Group group = m27489QA().f27480e;
        s1.z.c.l.d(group, "binding.permissionGroup");
        C19286f.m13683U(group, z);
        Group group2 = m27489QA().f27479d;
        s1.z.c.l.d(group2, "binding.noPermissionGroup");
        C19286f.m13683U(group2, !z);
    }

    public void onCreate(Bundle bundle) {
        C9507f.super.onCreate(bundle);
        AbstractC25374b<Intent> registerForActivityResult = registerForActivityResult(new C25380d(), new C9516i(this));
        s1.z.c.l.d(registerForActivityResult, "registerForActivityResul…d\n            )\n        }");
        this.f28837k = registerForActivityResult;
        AbstractC25374b<String[]> registerForActivityResult2 = registerForActivityResult(new C25378b(), new C9517j(this));
        s1.z.c.l.d(registerForActivityResult2, "registerForActivityResul…d\n            )\n        }");
        this.f28838l = registerForActivityResult2;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.fragment_insights_smart_feed, viewGroup, false);
    }

    public void onResume() {
        C9507f.super.onResume();
        boolean z = true;
        if (!m27488RA().f12922s.mo26845f()) {
            C9526s.C9530d c9530d = C9526s.f28861i;
            FragmentManager childFragmentManager = getChildFragmentManager();
            s1.z.c.l.d(childFragmentManager, "childFragmentManager");
            Objects.requireNonNull(c9530d);
            s1.z.c.l.e(childFragmentManager, "fragmentManager");
            C9526s c9526s = new C9526s();
            c9526s.setCancelable(false);
            c9526s.show(childFragmentManager, C9526s.f28860h);
        }
        Group group = m27489QA().f27479d;
        s1.z.c.l.d(group, "binding.noPermissionGroup");
        if (group.getVisibility() != 0) {
            z = false;
        }
        if (z) {
            AbstractC9689h abstractC9689h = this.f28833g;
            if (abstractC9689h == null) {
                s1.z.c.l.l("permissionHelper");
                throw null;
            } else if (abstractC9689h.mo27296g()) {
                m27487SA();
            }
        }
        m27488RA().f12922s.mo26817t(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [e.a.c.a.p.d.a, androidx.recyclerview.widget.RecyclerView$g] */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9507f.super.onViewCreated(view, bundle);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        C9467a c9467a = this.f28831e;
        if (c9467a == null) {
            s1.z.c.l.l("insightsSmartFeedAdapter");
            throw null;
        }
        C9523p c9523p = new C9523p(this);
        s1.z.c.l.e(c9523p, "onShowTransactionClicked");
        c9467a.f28714d = c9523p;
        RecyclerView recyclerView = m27489QA().f27484i;
        s1.z.c.l.d(recyclerView, "binding.updatesRv");
        ?? r0 = this.f28831e;
        if (r0 == 0) {
            s1.z.c.l.l("insightsSmartFeedAdapter");
            throw null;
        }
        recyclerView.setAdapter(r0);
        RecyclerView recyclerView2 = m27489QA().f27484i;
        s1.z.c.l.d(recyclerView2, "binding.updatesRv");
        recyclerView2.setLayoutManager(linearLayoutManager);
        RecyclerView recyclerView3 = m27489QA().f27484i;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        recyclerView3.addItemDecoration(new C9489p(C10480a.m26007W(8, requireContext), C10480a.m26007W(16, requireContext), C10480a.m26007W(8, requireContext), C10480a.m26007W(16, requireContext)));
        RecyclerView recyclerView4 = m27489QA().f27484i;
        s1.z.c.l.d(recyclerView4, "binding.updatesRv");
        FloatingActionButton floatingActionButton = m27489QA().f27482g;
        s1.z.c.l.d(floatingActionButton, "binding.scrollUp");
        C10480a.m26060I2(recyclerView4, linearLayoutManager, floatingActionButton, C9524q.f28858b);
        C9144c c9144c = new C9144c(C4078R.dimen.dp8, C4078R.dimen.dp4);
        RecyclerView recyclerView5 = m27489QA().f27481f;
        C9142a c9142a = this.f28832f;
        if (c9142a == null) {
            s1.z.c.l.l("quickFilterAdapter");
            throw null;
        }
        C9521n c9521n = new C9521n(this, c9144c);
        s1.z.c.l.e(c9521n, "onSelected");
        c9142a.f27853a = c9521n;
        C9142a c9142a2 = this.f28832f;
        if (c9142a2 == null) {
            s1.z.c.l.l("quickFilterAdapter");
            throw null;
        }
        recyclerView5.setAdapter(c9142a2);
        recyclerView5.addItemDecoration(c9144c);
        recyclerView5.addOnItemTouchListener(new C9145d());
        m27489QA().f27478c.setOnClickListener(new View$OnClickListenerC9522o(this));
        m27489QA().f27477b.setOnClickListener(new View$OnClickListenerC9520m(this));
        AbstractC9689h abstractC9689h = this.f28833g;
        if (abstractC9689h == null) {
            s1.z.c.l.l("permissionHelper");
            throw null;
        }
        if (!abstractC9689h.mo27296g()) {
            m27485UA(false);
            m27486TA(false);
            m27484VA(false);
        }
        m27487SA();
        InsightsSmartFeedViewModel m27488RA = m27488RA();
        AbstractC27028u lifecycle = getLifecycle();
        s1.z.c.l.d(lifecycle, "lifecycle");
        Objects.requireNonNull(m27488RA);
        s1.z.c.l.e(lifecycle, "lifecycle");
        lifecycle.mo988a(m27488RA.f12926w);
        lifecycle.mo988a(m27488RA.f12927x);
        lifecycle.mo988a(m27488RA);
    }
}
