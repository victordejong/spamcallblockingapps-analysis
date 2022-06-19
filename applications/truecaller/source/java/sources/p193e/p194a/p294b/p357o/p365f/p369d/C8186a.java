package p193e.p194a.p294b.p357o.p365f.p369d;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.actions.SearchIntents;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p355m.C8075j0;
import p193e.p194a.p294b.p355m.C8076j1;
import p193e.p194a.p294b.p357o.p358a.AbstractC8117a;
import p193e.p194a.p294b.p357o.p360c.p362b.C8143a;
import p193e.p194a.p294b.p357o.p364e.AbstractC8147a;
import p193e.p194a.p294b.p357o.p364e.AbstractC8148b;
import p193e.p194a.p294b.p357o.p364e.C8151d;
import p193e.p194a.p294b.p357o.p365f.p368c.AbstractC8174c;
import p193e.p194a.p294b.p357o.p365f.p368c.C8172a;
import p193e.p194a.p294b.p357o.p365f.p368c.C8175d;
import p193e.p194a.p294b.p357o.p365f.p368c.C8179g;
import p193e.p194a.p294b.p357o.p365f.p368c.C8182h;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� m2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001nB\u0007¢\u0006\u0004\bl\u0010\u0019J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u0017\u0010!\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0014H\u0016¢\u0006\u0004\b!\u0010\u0017J\u0017\u0010#\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0014H\u0016¢\u0006\u0004\b#\u0010\u0017J\u001f\u0010'\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020$2\u0006\u0010\u0006\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u000eH\u0016¢\u0006\u0004\b)\u0010\u0019J\u0017\u0010,\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u000eH\u0016¢\u0006\u0004\b.\u0010\u0019J\u000f\u0010/\u001a\u00020\u000eH\u0016¢\u0006\u0004\b/\u0010\u0019J\u000f\u00100\u001a\u00020\u000eH\u0016¢\u0006\u0004\b0\u0010\u0019J\u000f\u00101\u001a\u00020\u000eH\u0016¢\u0006\u0004\b1\u0010\u0019J\u0017\u00102\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0014H\u0016¢\u0006\u0004\b2\u0010\u0017J\u0017\u00103\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0014H\u0016¢\u0006\u0004\b3\u0010\u0017J\u0011\u00104\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u000eH\u0016¢\u0006\u0004\b6\u0010\u0019J\u001d\u0010:\u001a\u00020\u000e2\f\u00109\u001a\b\u0012\u0004\u0012\u00020807H\u0016¢\u0006\u0004\b:\u0010;J\u0017\u0010>\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\u000eH\u0016¢\u0006\u0004\b@\u0010\u0019J\u000f\u0010A\u001a\u00020\u000eH\u0016¢\u0006\u0004\bA\u0010\u0019J\u000f\u0010B\u001a\u00020\u000eH\u0016¢\u0006\u0004\bB\u0010\u0019J\u000f\u0010C\u001a\u00020\u000eH\u0016¢\u0006\u0004\bC\u0010\u0019J\u0017\u0010F\u001a\u00020\u000e2\u0006\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bF\u0010GJ\u0017\u0010J\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bJ\u0010KJ\u0019\u0010M\u001a\u00020\u001b2\b\u0010L\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\bM\u0010NJ\u0019\u0010O\u001a\u00020\u001b2\b\u0010 \u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\bO\u0010NJ\u000f\u0010P\u001a\u00020\u000eH\u0016¢\u0006\u0004\bP\u0010\u0019J\u000f\u0010Q\u001a\u00020\u000eH\u0016¢\u0006\u0004\bQ\u0010\u0019R\u0016\u0010U\u001a\u00020R8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bS\u0010TR\u0018\u0010Y\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\"\u0010a\u001a\u00020Z8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u001d\u0010g\u001a\u00020b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bc\u0010d\u001a\u0004\be\u0010fR\u0016\u0010k\u001a\u00020h8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bi\u0010j¨\u0006o"}, d2 = {"Le/a/b/o/f/d/a;", "Landroidx/fragment/app/Fragment;", "Le/a/b/o/e/b;", "Le/a/b/o/f/c/c;", "Landroidx/appcompat/widget/SearchView$l;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "title", "o", "(Ljava/lang/String;)V", "onResume", "()V", "v", "", "visbility", "B", "(Z)V", "H", "text", "y", "searchHint", "K", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "y4", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "Br", "gv", "Y1", "s3", "v8", "s2", "ss", "()Ljava/lang/String;", "g4", "Ljava/util/ArrayList;", "Le/a/b/o/f/c/a;", "indexedList", "X2", "(Ljava/util/ArrayList;)V", "", "stateId", "Yz", "(J)V", "w3", "O2", "G1", "e6", "Le/a/b/o/c/b/a;", "district", "ws", "(Le/a/b/o/c/b/a;)V", "", "listSize", "F", "(I)V", SearchIntents.EXTRA_QUERY, "onQueryTextSubmit", "(Ljava/lang/String;)Z", "onQueryTextChange", "onDestroyView", "onDetach", "Landroidx/appcompat/widget/SearchView;", "j", "Landroidx/appcompat/widget/SearchView;", "mSearchView", "Le/a/b/o/f/c/g;", "h", "Le/a/b/o/f/c/g;", "adapter", "Le/a/b/o/e/a;", "e", "Le/a/b/o/e/a;", "getPresenter", "()Le/a/b/o/e/a;", "setPresenter", "(Le/a/b/o/e/a;)V", "presenter", "Le/a/b/m/j0;", "k", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/b/m/j0;", "binding", "Le/a/b/o/a/a;", "i", "Le/a/b/o/a/a;", "govServicesFragmentListener", "<init>", "m", C22021b.f61237c, "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.o.f.d.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/a.class */
public final class C8186a extends AbstractC8198e implements AbstractC8148b, AbstractC8174c, SearchView.AbstractC0071l {

    /* renamed from: l */
    public static final /* synthetic */ l[] f25314l = {C22128a.m8621g0(C8186a.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/FragmentDistrictListBinding;", 0)};

    /* renamed from: m */
    public static final C8188b f25315m = new C8188b(null);
    @Inject

    /* renamed from: e */
    public AbstractC8147a f25316e;
    @Inject

    /* renamed from: f */
    public C8182h f25317f;
    @Inject

    /* renamed from: g */
    public C8175d f25318g;

    /* renamed from: h */
    public C8179g f25319h;

    /* renamed from: i */
    public AbstractC8117a f25320i;

    /* renamed from: j */
    public SearchView f25321j;

    /* renamed from: k */
    public final ViewBindingProperty f25322k = new C19350a(new C8187a());

    /* renamed from: e.a.b.o.f.d.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/a$a.class */
    public static final class C8187a extends m implements s1.z.b.l<C8186a, C8075j0> {
        public C8187a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28808d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.ivFwd;
            AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(i);
            if (appCompatImageView != null) {
                i = C3478R.C3480id.ivGovIcon;
                FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                if (frameLayout != null) {
                    i = C3478R.C3480id.rvDistrictList;
                    RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                    if (recyclerView != null) {
                        i = C3478R.C3480id.toolbar;
                        Toolbar toolbar = (Toolbar) requireView.findViewById(i);
                        if (toolbar != null) {
                            i = C3478R.C3480id.tvContactsCount;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) requireView.findViewById(i);
                            if (appCompatTextView != null) {
                                i = C3478R.C3480id.tvGeneralServices;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) requireView.findViewById(i);
                                if (appCompatTextView2 != null) {
                                    i = C3478R.C3480id.tvHeader;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) requireView.findViewById(i);
                                    if (appCompatTextView3 != null) {
                                        i = C3478R.C3480id.viewDistrictList;
                                        Group group = (Group) requireView.findViewById(i);
                                        if (group != null) {
                                            i = C3478R.C3480id.viewEmptySearch;
                                            View findViewById = requireView.findViewById(i);
                                            if (findViewById != null) {
                                                C8076j1 m28915a = C8076j1.m28915a(findViewById);
                                                i = C3478R.C3480id.viewGeneralServices;
                                                ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                                                if (constraintLayout != null) {
                                                    i = C3478R.C3480id.viewLoading;
                                                    LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                                                    if (linearLayout != null) {
                                                        return new C8075j0((LinearLayout) requireView, appCompatImageView, frameLayout, recyclerView, toolbar, appCompatTextView, appCompatTextView2, appCompatTextView3, group, m28915a, constraintLayout, linearLayout);
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

    /* renamed from: e.a.b.o.f.d.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/a$b.class */
    public static final class C8188b {
        public C8188b(f fVar) {
        }
    }

    /* renamed from: e.a.b.o.f.d.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/a$c.class */
    public static final class View$OnClickListenerC8189c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ long f25324b;

        public View$OnClickListenerC8189c(long j) {
            C8186a.this = r5;
            this.f25324b = j;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC8117a abstractC8117a = C8186a.this.f25320i;
            if (abstractC8117a != null) {
                abstractC8117a.mo28907x(this.f25324b);
            } else {
                s1.z.c.l.l("govServicesFragmentListener");
                throw null;
            }
        }
    }

    /* renamed from: e.a.b.o.f.d.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/a$d.class */
    public static final class View$OnClickListenerC8190d implements View.OnClickListener {
        public View$OnClickListenerC8190d() {
            C8186a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC8147a abstractC8147a = C8186a.this.f25316e;
            if (abstractC8147a == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC8148b abstractC8148b = (AbstractC8148b) ((C8151d) abstractC8147a).f57683a;
            if (abstractC8148b == null) {
                return;
            }
            abstractC8148b.mo28814v();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: B */
    public void mo28832B(boolean z) {
        C8076j1 c8076j1 = m28825QA().f24953g;
        s1.z.c.l.d(c8076j1, "binding.viewEmptySearch");
        LinearLayout linearLayout = c8076j1.f24956a;
        s1.z.c.l.d(linearLayout, "binding.viewEmptySearch.root");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: Br */
    public void mo28831Br() {
        ConstraintLayout constraintLayout = m28825QA().f24954h;
        s1.z.c.l.d(constraintLayout, "binding.viewGeneralServices");
        C19286f.m13684T(constraintLayout);
    }

    @Override // p193e.p194a.p294b.p357o.p365f.p368c.AbstractC8174c
    /* renamed from: F */
    public void mo28830F(int i) {
        AbstractC8147a abstractC8147a = this.f25316e;
        if (abstractC8147a == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Integer valueOf = Integer.valueOf(i);
        C8151d c8151d = (C8151d) abstractC8147a;
        AbstractC8148b abstractC8148b = (AbstractC8148b) c8151d.f57683a;
        if (abstractC8148b == null) {
            return;
        }
        if (valueOf != null && valueOf.intValue() == 0) {
            abstractC8148b.mo28832B(true);
            abstractC8148b.mo28828H(false);
            abstractC8148b.mo28816s3();
        } else {
            abstractC8148b.mo28823Y1();
            abstractC8148b.mo28832B(false);
            abstractC8148b.mo28828H(true);
        }
        C20592g c20592g = c8151d.f25254o;
        if (!c20592g.f57883a4.m10941a(c20592g, C20592g.f57695p6[264]).isEnabled() || c8151d.f25246g <= 0) {
            return;
        }
        int i2 = c8151d.f25245f;
        if (valueOf != null && i2 == valueOf.intValue()) {
            abstractC8148b.mo28831Br();
        } else {
            abstractC8148b.mo28819gv();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: G1 */
    public void mo28829G1() {
        RecyclerView recyclerView = m28825QA().f24948b;
        s1.z.c.l.d(recyclerView, "binding.rvDistrictList");
        C19286f.m13684T(recyclerView);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: H */
    public void mo28828H(boolean z) {
        Group group = m28825QA().f24952f;
        s1.z.c.l.d(group, "binding.viewDistrictList");
        C19286f.m13683U(group, z);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: K */
    public void mo28827K(String str) {
        s1.z.c.l.e(str, "searchHint");
        SearchView searchView = this.f25321j;
        if (searchView == null) {
            s1.z.c.l.l("mSearchView");
            throw null;
        }
        searchView.setMaxWidth(Integer.MAX_VALUE);
        searchView.findViewById(C0032R.C0034id.search_plate).setBackgroundColor(0);
        EditText editText = (EditText) searchView.findViewById(C0032R.C0034id.search_src_text);
        editText.setHintTextColor(C19291g.m13612L(requireActivity(), C3478R.attr.tcx_textTertiary));
        s1.z.c.l.d(editText, "editText");
        editText.setHint(str);
        SearchView searchView2 = this.f25321j;
        if (searchView2 != null) {
            searchView2.setOnQueryTextListener(this);
        } else {
            s1.z.c.l.l("mSearchView");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: O2 */
    public void mo28826O2() {
        LinearLayout linearLayout = m28825QA().f24955i;
        s1.z.c.l.d(linearLayout, "binding.viewLoading");
        C19286f.m13689O(linearLayout);
    }

    /* renamed from: QA */
    public final C8075j0 m28825QA() {
        return (C8075j0) this.f25322k.m34468b(this, f25314l[0]);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: X2 */
    public void mo28824X2(ArrayList<C8172a> arrayList) {
        s1.z.c.l.e(arrayList, "indexedList");
        C8179g c8179g = this.f25319h;
        if (c8179g != null) {
            s1.z.c.l.e(arrayList, "list");
            c8179g.f25303a = arrayList;
            c8179g.f25304b = arrayList;
            c8179g.notifyDataSetChanged();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: Y1 */
    public void mo28823Y1() {
        AppCompatTextView appCompatTextView = m28825QA().f24951e;
        s1.z.c.l.d(appCompatTextView, "binding.tvHeader");
        C19286f.m13684T(appCompatTextView);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: Yz */
    public void mo28822Yz(long j) {
        m28825QA().f24954h.setOnClickListener(new View$OnClickListenerC8189c(j));
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: e6 */
    public void mo28821e6() {
        RecyclerView recyclerView = m28825QA().f24948b;
        s1.z.c.l.d(recyclerView, "binding.rvDistrictList");
        C19286f.m13689O(recyclerView);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: g4 */
    public void mo28820g4() {
        RecyclerView recyclerView = m28825QA().f24948b;
        s1.z.c.l.d(recyclerView, "binding.rvDistrictList");
        recyclerView.setLayoutManager(new LinearLayoutManager(requireActivity()));
        C8182h c8182h = this.f25317f;
        if (c8182h == null) {
            s1.z.c.l.l("districtPresenter");
            throw null;
        }
        C8175d c8175d = this.f25318g;
        if (c8175d == null) {
            s1.z.c.l.l("districtIndexPresenter");
            throw null;
        }
        this.f25319h = new C8179g(c8182h, c8175d, this);
        RecyclerView recyclerView2 = m28825QA().f24948b;
        s1.z.c.l.d(recyclerView2, "binding.rvDistrictList");
        recyclerView2.setAdapter(this.f25319h);
        RecyclerView recyclerView3 = m28825QA().f24948b;
        s1.z.c.l.d(recyclerView3, "binding.rvDistrictList");
        recyclerView3.setNestedScrollingEnabled(false);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: gv */
    public void mo28819gv() {
        ConstraintLayout constraintLayout = m28825QA().f24954h;
        s1.z.c.l.d(constraintLayout, "binding.viewGeneralServices");
        C19286f.m13689O(constraintLayout);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: o */
    public void mo28818o(String str) {
        s1.z.c.l.e(str, "title");
        h activity = getActivity();
        if (activity != null) {
            activity.setSupportActionBar(m28825QA().f24949c);
            AbstractC25393a supportActionBar = activity.getSupportActionBar();
            if (supportActionBar != null) {
                s1.z.c.l.d(supportActionBar, "this");
                supportActionBar.mo3542y(str);
                supportActionBar.mo3553n(true);
                supportActionBar.mo3552o(true);
            }
        }
        Toolbar toolbar = m28825QA().f24949c;
        if (toolbar != null) {
            toolbar.setNavigationOnClickListener(new View$OnClickListenerC8190d());
        }
    }

    @Override // p193e.p194a.p294b.p357o.p365f.p369d.AbstractC8198e
    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        super.onAttach(context);
        if (context instanceof AbstractC8117a) {
            this.f25320i = (AbstractC8117a) context;
            return;
        }
        throw new RuntimeException(context + " must implement GovServicesFragmentListener");
    }

    public void onCreate(Bundle bundle) {
        C8186a.super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuInflater menuInflater2;
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        AbstractC8147a abstractC8147a = this.f25316e;
        if (abstractC8147a == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        if (((C8151d) abstractC8147a).f25245f > 0) {
            n3.r.a.l activity = getActivity();
            if (activity != null && (menuInflater2 = activity.getMenuInflater()) != null) {
                menuInflater2.inflate(C3478R.C3482menu.menu_search, menu);
            }
            MenuItem findItem = menu.findItem(C3478R.C3480id.actionSearch);
            s1.z.c.l.d(findItem, "mSearch");
            findItem.setVisible(true);
            View actionView = findItem.getActionView();
            Objects.requireNonNull(actionView, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView");
            this.f25321j = (SearchView) actionView;
            AbstractC8147a abstractC8147a2 = this.f25316e;
            if (abstractC8147a2 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            C8151d c8151d = (C8151d) abstractC8147a2;
            AbstractC8148b abstractC8148b = (AbstractC8148b) c8151d.f57683a;
            if (abstractC8148b != null) {
                String mo13768b = c8151d.f25250k.mo13768b(C3478R.string.biz_govt_search, new Object[0]);
                s1.z.c.l.d(mo13768b, "resourceProvider.getStri…R.string.biz_govt_search)");
                abstractC8148b.mo28827K(mo13768b);
            }
        }
        C8186a.super.onCreateOptionsMenu(menu, menuInflater);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3478R.layout.fragment_district_list, viewGroup, false);
    }

    public void onDestroyView() {
        C8186a.super.onDestroyView();
        AbstractC8147a abstractC8147a = this.f25316e;
        if (abstractC8147a != null) {
            ((C8151d) abstractC8147a).f57683a = null;
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onDetach() {
        C8186a.super.onDetach();
        AbstractC8147a abstractC8147a = this.f25316e;
        if (abstractC8147a != null) {
            ((AbstractC20574a) abstractC8147a).mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextChange(String str) {
        AbstractC8148b abstractC8148b;
        AbstractC8147a abstractC8147a = this.f25316e;
        if (abstractC8147a == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C8151d c8151d = (C8151d) abstractC8147a;
        if (str == null || (abstractC8148b = (AbstractC8148b) c8151d.f57683a) == null) {
            return true;
        }
        abstractC8148b.mo28810y(str);
        return true;
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextSubmit(String str) {
        AbstractC8148b abstractC8148b;
        AbstractC8147a abstractC8147a = this.f25316e;
        if (abstractC8147a == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C8151d c8151d = (C8151d) abstractC8147a;
        if (str == null || (abstractC8148b = (AbstractC8148b) c8151d.f57683a) == null) {
            return true;
        }
        abstractC8148b.mo28810y(str);
        return true;
    }

    public void onResume() {
        C8186a.super.onResume();
        AbstractC8147a abstractC8147a = this.f25316e;
        if (abstractC8147a == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C8151d c8151d = (C8151d) abstractC8147a;
        AbstractC8148b abstractC8148b = (AbstractC8148b) c8151d.f57683a;
        if (abstractC8148b == null) {
            return;
        }
        String mo13768b = c8151d.f25250k.mo13768b(C3478R.string.biz_govt_services_title, new Object[0]);
        s1.z.c.l.d(mo13768b, "resourceProvider.getStri….biz_govt_services_title)");
        abstractC8148b.mo28818o(mo13768b);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8186a.super.onViewCreated(view, bundle);
        AbstractC8147a abstractC8147a = this.f25316e;
        if (abstractC8147a != null) {
            ((C8151d) abstractC8147a).mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: s2 */
    public void mo28817s2(String str) {
        s1.z.c.l.e(str, "text");
        AppCompatTextView appCompatTextView = m28825QA().f24951e;
        s1.z.c.l.d(appCompatTextView, "binding.tvHeader");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: s3 */
    public void mo28816s3() {
        AppCompatTextView appCompatTextView = m28825QA().f24951e;
        s1.z.c.l.d(appCompatTextView, "binding.tvHeader");
        C19286f.m13689O(appCompatTextView);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: ss */
    public String mo28815ss() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("state_name") : null;
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: v */
    public void mo28814v() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: v8 */
    public void mo28813v8(String str) {
        s1.z.c.l.e(str, "text");
        AppCompatTextView appCompatTextView = m28825QA().f24950d;
        s1.z.c.l.d(appCompatTextView, "binding.tvContactsCount");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: w3 */
    public void mo28812w3() {
        LinearLayout linearLayout = m28825QA().f24955i;
        s1.z.c.l.d(linearLayout, "binding.viewLoading");
        C19286f.m13684T(linearLayout);
    }

    @Override // p193e.p194a.p294b.p357o.p365f.p368c.AbstractC8174c
    /* renamed from: ws */
    public void mo28811ws(C8143a c8143a) {
        s1.z.c.l.e(c8143a, "district");
        AbstractC8117a abstractC8117a = this.f25320i;
        if (abstractC8117a != null) {
            abstractC8117a.mo28908w4(c8143a);
        } else {
            s1.z.c.l.l("govServicesFragmentListener");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: y */
    public void mo28810y(String str) {
        s1.z.c.l.e(str, "text");
        C8179g c8179g = this.f25319h;
        if (c8179g != null) {
            new C8179g.C8180a().filter(str);
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8148b
    /* renamed from: y4 */
    public void mo28809y4() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }
}
