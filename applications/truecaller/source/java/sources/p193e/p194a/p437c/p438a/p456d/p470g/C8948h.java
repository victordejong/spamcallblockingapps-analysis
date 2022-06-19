package p193e.p194a.p437c.p438a.p456d.p470g;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.google.android.material.C2080R;
import com.google.android.material.circularreveal.cardview.CircularRevealCardView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.widget.FlowLayout;
import com.truecaller.insights.p168ui.widget.chip.FilterChipXView;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1789g0.C26222q;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p437c.p438a.p456d.p457a.C8869a;
import p193e.p194a.p437c.p438a.p477g.C9026e0;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import p193e.p194a.p437c.p438a.p521s.p522g.C9601b;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018�� D2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\bB\u0010CJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\b\u0010\tJ-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J-\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u001a2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u001d\u0010%\u001a\u00020 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001c\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001c0&8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010,\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u001d\u00106\u001a\u0002018B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0016\u0010A\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006E"}, d2 = {"Le/a/c/a/d/g/h;", "Le/m/a/g/e/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "isSelected", "SA", "(Z)V", "Landroid/widget/TextView;", "header", "Lcom/truecaller/insights/ui/widget/FlowLayout;", "", "Le/a/c/a/l/a;", "accounts", "QA", "(Landroid/widget/TextView;Lcom/truecaller/insights/ui/widget/FlowLayout;Ljava/util/List;)V", "Le/a/c/a/d/a/a;", C22021b.f61237c, "Ls1/g;", "getFinancePageViewModel", "()Le/a/c/a/d/a/a;", "financePageViewModel", "", AbstractC2405c.f7629a, "Ljava/util/List;", "tempSelectedAccounts", "d", "Z", "filterChanged", "Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;", "f", "Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;", "applyFiltersContainer", "Le/a/c/a/g/e0;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/c/a/g/e0;", "binding", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "e", "Landroid/view/View;", "applyFilters", "<init>", "()V", "j", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.d.g.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/h.class */
public final class C8948h extends e {
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f27231a;

    /* renamed from: d */
    public boolean f27234d;

    /* renamed from: e */
    public View f27235e;

    /* renamed from: f */
    public CircularRevealCardView f27236f;

    /* renamed from: h */
    public static final /* synthetic */ l[] f27228h = {C22128a.m8621g0(C8948h.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentFinanceFilterSheetBinding;", 0)};

    /* renamed from: j */
    public static final C8950b f27230j = new C8950b(null);

    /* renamed from: i */
    public static final String f27229i = C8948h.class.getSimpleName();

    /* renamed from: b */
    public final g f27232b = C25225a.m3978P1(new C8951c());

    /* renamed from: c */
    public final List<C9234a> f27233c = new ArrayList();

    /* renamed from: g */
    public final ViewBindingProperty f27237g = new C19350a(new C8949a());

    /* renamed from: e.a.c.a.d.g.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/h$a.class */
    public static final class C8949a extends m implements s1.z.b.l<C8948h, C9026e0> {
        public C8949a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27921d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = C4078R.C4080id.accounts;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C4078R.C4080id.accountsContainer;
                FlowLayout flowLayout = (FlowLayout) requireView.findViewById(i);
                if (flowLayout != null) {
                    i = C4078R.C4080id.clear;
                    Button button = (Button) requireView.findViewById(i);
                    if (button != null) {
                        i = C4078R.C4080id.close;
                        ImageView imageView = (ImageView) requireView.findViewById(i);
                        if (imageView != null) {
                            i = C4078R.C4080id.filterDesc;
                            TextView textView2 = (TextView) requireView.findViewById(i);
                            if (textView2 != null) {
                                i = C4078R.C4080id.filterHeader;
                                TextView textView3 = (TextView) requireView.findViewById(i);
                                if (textView3 != null) {
                                    i = C4078R.C4080id.otherAccounts;
                                    TextView textView4 = (TextView) requireView.findViewById(i);
                                    if (textView4 != null) {
                                        i = C4078R.C4080id.otherAccountsContainer;
                                        FlowLayout flowLayout2 = (FlowLayout) requireView.findViewById(i);
                                        if (flowLayout2 != null) {
                                            i = C4078R.C4080id.walletContainer;
                                            FlowLayout flowLayout3 = (FlowLayout) requireView.findViewById(i);
                                            if (flowLayout3 != null) {
                                                i = C4078R.C4080id.wallets;
                                                TextView textView5 = (TextView) requireView.findViewById(i);
                                                if (textView5 != null) {
                                                    return new C9026e0(requireView, textView, flowLayout, button, imageView, textView2, textView3, textView4, flowLayout2, flowLayout3, textView5);
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

    /* renamed from: e.a.c.a.d.g.h$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/h$b.class */
    public static final class C8950b {
        public C8950b(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.d.g.h$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/h$c.class */
    public static final class C8951c extends m implements a<C8869a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8951c() {
            super(0);
            C8948h.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [n3.v.c1, e.a.c.a.d.g.h] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = C8948h.this;
            C26986a1.AbstractC26987b abstractC26987b = r0.f27231a;
            if (abstractC26987b == null) {
                s1.z.c.l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C8869a.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C8869a.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, C8869a.class) : abstractC26987b.create(C8869a.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            s1.z.c.l.d(abstractC27040y0, "ViewModelProvider(this, …ageViewModel::class.java)");
            return (C8869a) abstractC27040y0;
        }
    }

    /* renamed from: e.a.c.a.d.g.h$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/h$d.class */
    public static final class DialogInterface$OnShowListenerC8952d implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public final /* synthetic */ d f27239a;

        /* renamed from: b */
        public final /* synthetic */ C8948h f27240b;

        public DialogInterface$OnShowListenerC8952d(d dVar, C8948h c8948h) {
            this.f27239a = dVar;
            this.f27240b = c8948h;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            C8948h c8948h = this.f27240b;
            d dVar = this.f27239a;
            l[] lVarArr = C8948h.f27228h;
            Objects.requireNonNull(c8948h);
            FrameLayout frameLayout = (FrameLayout) dVar.findViewById(C2080R.C2082id.container);
            if (frameLayout != null) {
                s1.z.c.l.d(frameLayout, "findViewById<FrameLayout…R.id.container) ?: return");
                CircularRevealCardView circularRevealCardView = c8948h.f27236f;
                if (circularRevealCardView == null) {
                    s1.z.c.l.l("applyFiltersContainer");
                    throw null;
                }
                frameLayout.addView(circularRevealCardView);
                View view = c8948h.f27235e;
                if (view == null) {
                    s1.z.c.l.l("applyFilters");
                    throw null;
                }
                view.setOnClickListener(new View$OnClickListenerC8954j(c8948h));
                View view2 = c8948h.f27236f;
                if (view2 == null) {
                    s1.z.c.l.l("applyFiltersContainer");
                    throw null;
                }
                n3.g0.l lVar = new n3.g0.l(80);
                lVar.mo2518C(400L);
                lVar.mo2504c(view2);
                C26222q.m2523a(frameLayout, lVar);
                C19286f.m13684T(view2);
            }
        }
    }

    /* renamed from: OA */
    public static final C8869a m27926OA(C8948h c8948h) {
        return (C8869a) c8948h.f27232b.getValue();
    }

    /* renamed from: PA */
    public static final void m27925PA(C8948h c8948h, List list) {
        C9026e0 m27923RA = c8948h.m27923RA();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(C9234a.m27783a((C9234a) it.next(), null, null, null, null, false, null, false, Constants.ERR_WATERMARKR_INFO));
        }
        c8948h.f27233c.clear();
        List<C9234a> list2 = c8948h.f27233c;
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            if (((C9234a) next).f28031e) {
                arrayList2.add(next);
            }
        }
        list2.addAll(arrayList2);
        if (!c8948h.f27233c.isEmpty()) {
            c8948h.m27922SA(true);
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            Object next2 = it3.next();
            if (((C9234a) next2).f28033g) {
                arrayList6.add(next2);
            } else {
                arrayList7.add(next2);
            }
        }
        Iterator it4 = arrayList6.iterator();
        while (it4.hasNext()) {
            C9234a c9234a = (C9234a) it4.next();
            int ordinal = c9234a.f28030d.ordinal();
            if (ordinal == 0 || ordinal == 1 || ordinal == 2) {
                arrayList3.add(c9234a);
            } else if (ordinal == 3) {
                arrayList4.add(c9234a);
            } else if (ordinal == 4) {
                arrayList5.add(c9234a);
            }
        }
        arrayList5.addAll(arrayList7);
        TextView textView = m27923RA.f27452a;
        s1.z.c.l.d(textView, "accounts");
        FlowLayout flowLayout = m27923RA.f27453b;
        s1.z.c.l.d(flowLayout, "accountsContainer");
        c8948h.m27924QA(textView, flowLayout, arrayList3);
        TextView textView2 = m27923RA.f27459h;
        s1.z.c.l.d(textView2, "wallets");
        FlowLayout flowLayout2 = m27923RA.f27458g;
        s1.z.c.l.d(flowLayout2, "walletContainer");
        c8948h.m27924QA(textView2, flowLayout2, arrayList4);
        TextView textView3 = m27923RA.f27456e;
        s1.z.c.l.d(textView3, "otherAccounts");
        FlowLayout flowLayout3 = m27923RA.f27457f;
        s1.z.c.l.d(flowLayout3, "otherAccountsContainer");
        c8948h.m27924QA(textView3, flowLayout3, arrayList5);
    }

    /* renamed from: QA */
    public final void m27924QA(TextView textView, FlowLayout flowLayout, List<C9234a> list) {
        if (list.isEmpty()) {
            C19286f.m13689O(textView);
            C19286f.m13689O(flowLayout);
            return;
        }
        C19286f.m13684T(textView);
        C19286f.m13684T(flowLayout);
        flowLayout.removeAllViews();
        int dimensionPixelSize = getResources().getDimensionPixelSize(C4078R.dimen.dp8);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C4078R.dimen.dp40);
        for (C9234a c9234a : list) {
            Context requireContext = requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            FilterChipXView filterChipXView = new FilterChipXView(requireContext, null, 0, 6);
            Context requireContext2 = requireContext();
            s1.z.c.l.d(requireContext2, "requireContext()");
            C8243a c8243a = new C8243a(new C19235i0(requireContext2));
            C8243a.m28739ok(c8243a, new AvatarXConfig(c9234a.f28027a, (String) i.B(c9234a.f28029c), null, null, false, false, true, false, false, false, false, false, false, false, null, false, 65468), false, 2, null);
            C9601b c9601b = new C9601b();
            String str = c9234a.f28028b;
            C8953i c8953i = new C8953i(this, c9234a, c8243a, filterChipXView);
            s1.z.c.l.e(str, "title");
            s1.z.c.l.e("", "description");
            s1.z.c.l.e(c8953i, "clickAction");
            s1.z.c.l.e(str, "<set-?>");
            c9601b.f29025b = str;
            s1.z.c.l.e("", "<set-?>");
            c9601b.f29026c = c8243a;
            s1.z.c.l.e(c8953i, "<set-?>");
            c9601b.f29027d = c8953i;
            filterChipXView.setSelected(c9234a.f28031e);
            filterChipXView.setPresenter(c9601b);
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, dimensionPixelSize2);
            marginLayoutParams.setMarginEnd(dimensionPixelSize);
            marginLayoutParams.bottomMargin = dimensionPixelSize;
            flowLayout.addView(filterChipXView, marginLayoutParams);
        }
    }

    /* renamed from: RA */
    public final C9026e0 m27923RA() {
        return (C9026e0) this.f27237g.m34468b(this, f27228h[0]);
    }

    /* renamed from: SA */
    public final void m27922SA(boolean z) {
        View view = this.f27235e;
        if (view == null) {
            s1.z.c.l.l("applyFilters");
            throw null;
        }
        view.setSelected(z);
        Button button = m27923RA().f27454c;
        s1.z.c.l.d(button, "binding.clear");
        button.setSelected(z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r5 != null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            p193e.p194a.p437c.p438a.p456d.p470g.C8948h.super.onCreate(r1)
            r0 = r4
            n3.r.a.l r0 = r0.getActivity()
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p456d.p457a.AbstractC8872b
            if (r0 != 0) goto L15
            r0 = 0
            r5 = r0
        L15:
            r0 = r5
            e.a.c.a.d.a.b r0 = (p193e.p194a.p437c.p438a.p456d.p457a.AbstractC8872b) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L2c
            r0 = r5
            e.a.c.a.d.c.b r0 = r0.mo27987H1()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L2c
            goto L64
        L2c:
            e.a.c.a.d.c.a$b r0 = p193e.p194a.p437c.p438a.p456d.p460c.C8882a.m27982a()
            r5 = r0
            r0 = r5
            java.lang.Class<e.a.c.l.a.a> r1 = p193e.p194a.p437c.p572l.p573a.AbstractC10451a.class
            java.lang.String r2 = "EntryPointAccessors.from…htsComponent::class.java)"
            java.lang.Object r1 = p193e.p1432d.p1439c.p1440a.C22128a.m8726C1(r1, r2)
            e.a.c.l.a.a r1 = (p193e.p194a.p437c.p572l.p573a.AbstractC10451a) r1
            r0.f27074b = r1
            r0 = r5
            java.lang.Class<e.a.c.h.k.a> r1 = p193e.p194a.p437c.p548h.p549k.AbstractC10261a.class
            java.lang.String r2 = "EntryPointAccessors.from…onsComponent::class.java)"
            java.lang.Object r1 = p193e.p1432d.p1439c.p1440a.C22128a.m8726C1(r1, r2)
            e.a.c.h.k.a r1 = (p193e.p194a.p437c.p548h.p549k.AbstractC10261a) r1
            r0.f27075c = r1
            r0 = r5
            r1 = r4
            e.a.b0.c r1 = p193e.p194a.p1066n.C18334g0.m15207r(r1)
            r0.f27076d = r1
            r0 = r5
            e.a.c.a.d.c.b r0 = r0.m27981a()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "DaggerFinancePageCompone…h())\n            .build()"
            s1.z.c.l.d(r0, r1)
        L64:
            r0 = r4
            r1 = r5
            e.a.c.a.d.c.a r1 = (p193e.p194a.p437c.p438a.p456d.p460c.C8882a) r1
            javax.inject.Provider<n3.v.a1$b> r1 = r1.f27072q
            java.lang.Object r1 = r1.get()
            n3.v.a1$b r1 = (p1727n3.p1868v.C26986a1.AbstractC26987b) r1
            r0.f27231a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p456d.p470g.C8948h.onCreate(android.os.Bundle):void");
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d dVar = new d(requireContext(), getTheme());
        Window window = dVar.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
        }
        dVar.setOnShowListener(new DialogInterface$OnShowListenerC8952d(dVar, this));
        return dVar;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        CircularRevealCardView inflate = getLayoutInflater().inflate(C4078R.layout.layout_apply_filters_filter, (ViewGroup) null);
        Objects.requireNonNull(inflate, "null cannot be cast to non-null type com.google.android.material.circularreveal.cardview.CircularRevealCardView");
        CircularRevealCardView circularRevealCardView = inflate;
        this.f27236f = circularRevealCardView;
        View findViewById = circularRevealCardView.findViewById(C4078R.C4080id.applyFilters);
        s1.z.c.l.d(findViewById, "applyFiltersContainer.fi…utton>(R.id.applyFilters)");
        this.f27235e = findViewById;
        CircularRevealCardView circularRevealCardView2 = this.f27236f;
        if (circularRevealCardView2 == null) {
            s1.z.c.l.l("applyFiltersContainer");
            throw null;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        circularRevealCardView2.setLayoutParams(layoutParams);
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.fragment_finance_filter_sheet, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8948h.super.onViewCreated(view, bundle);
        ((C8869a) this.f27232b.getValue()).f27027e.m42867f(this, new C8955k(this));
        m27923RA().f27455d.setOnClickListener(new s0(0, this));
        m27923RA().f27454c.setOnClickListener(new s0(1, this));
    }
}
