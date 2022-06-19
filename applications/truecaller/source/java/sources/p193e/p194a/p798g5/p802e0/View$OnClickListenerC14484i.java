package p193e.p194a.p798g5.p802e0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.FlowLayout;
import com.truecaller.common.tag.TagView;
import com.truecaller.tagger.C4604R;
import com.truecaller.tagger.tagPicker.TaggerViewModel;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.d.y.n;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p798g5.p801d0.C14471b;
import p193e.p194a.p798g5.p802e0.p803u.C14512g;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\be\u0010fJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ/\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J-\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010 \u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u001c2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u001cH\u0016¢\u0006\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010+\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u001c\u00100\u001a\b\u0012\u0004\u0012\u00020-0,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00103\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00105\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010'R\u001d\u0010;\u001a\u0002068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010'R\"\u0010E\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001d\u0010O\u001a\u00020J8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bM\u0010NR\u0016\u0010S\u001a\u00020P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010'R\"\u0010]\u001a\u00020V8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\u0018\u0010_\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u00102R\u001d\u0010d\u001a\u00020`8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\ba\u00108\u001a\u0004\bb\u0010c¨\u0006g"}, d2 = {"Le/a/g5/e0/i;", "Landroidx/fragment/app/Fragment;", "Landroid/view/View$OnClickListener;", "Le/a/b0/p/c;", "availableTag", "Lcom/truecaller/common/tag/TagView;", "SA", "(Le/a/b0/p/c;)Lcom/truecaller/common/tag/TagView;", "tagView", "", "fromSearchList", "Ls1/s;", "UA", "(Lcom/truecaller/common/tag/TagView;Z)V", "Landroid/view/ViewGroup;", "tagsContainer", "", "tags", "initialCall", "QA", "(Landroid/view/ViewGroup;Ljava/util/List;Z)Lcom/truecaller/common/tag/TagView;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "Landroid/animation/Animator$AnimatorListener;", "q", "Landroid/animation/Animator$AnimatorListener;", "showRootTagsListener", "l", "Z", "clickLocked", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "g", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "bottomSheetBehavior", "i", "Lcom/truecaller/common/tag/TagView;", "selectedParentTagView", "p", "hideRootTagsListener", "Lcom/truecaller/tagger/tagPicker/TaggerViewModel;", "n", "Ls1/g;", "TA", "()Lcom/truecaller/tagger/tagPicker/TaggerViewModel;", "tagViewModel", "s", "showChildTagsListener", "Le/a/g5/p;", "e", "Le/a/g5/p;", "getTagDisplayUtil", "()Le/a/g5/p;", "setTagDisplayUtil", "(Le/a/g5/p;)V", "tagDisplayUtil", "Le/a/g5/e0/u/g;", "h", "Le/a/g5/e0/u/g;", "tagSearchAdapter", "Le/a/g5/d0/b;", "o", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/g5/d0/b;", "binding", "", "k", "F", "animationTranslation", "r", "hideChildTagsListener", "Le/a/q2/a;", "f", "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "j", "selectedChildTagView", "Le/f/a/i;", "m", "getGlideRequestManager", "()Le/f/a/i;", "glideRequestManager", "<init>", "()V", "tagger_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.g5.e0.i */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/i.class */
public final class View$OnClickListenerC14484i extends AbstractC14478c implements View.OnClickListener {

    /* renamed from: t */
    public static final /* synthetic */ l[] f41709t = {C22128a.m8621g0(View$OnClickListenerC14484i.class, "binding", "getBinding()Lcom/truecaller/tagger/databinding/FragmentNewTagPickerBinding;", 0)};
    @Inject

    /* renamed from: e */
    public AbstractC14537p f41710e;
    @Inject

    /* renamed from: f */
    public AbstractC19462a f41711f;

    /* renamed from: g */
    public BottomSheetBehavior<ConstraintLayout> f41712g;

    /* renamed from: h */
    public C14512g f41713h;

    /* renamed from: i */
    public TagView f41714i;

    /* renamed from: j */
    public TagView f41715j;

    /* renamed from: k */
    public float f41716k;

    /* renamed from: l */
    public boolean f41717l;

    /* renamed from: m */
    public final g f41718m = C25225a.m3978P1(new C14488d());

    /* renamed from: n */
    public final g f41719n = MediaSessionCompat.m43278P(this, d0.a(TaggerViewModel.class), new C14485a(this), new C14486b(this));

    /* renamed from: o */
    public final ViewBindingProperty f41720o = new C19350a(new C14487c());

    /* renamed from: p */
    public final Animator.AnimatorListener f41721p = new C14490f();

    /* renamed from: q */
    public final Animator.AnimatorListener f41722q = new C14492h();

    /* renamed from: r */
    public final Animator.AnimatorListener f41723r = new C14489e();

    /* renamed from: s */
    public final Animator.AnimatorListener f41724s = new C14491g();

    /* renamed from: e.a.g5.e0.i$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/i$a.class */
    public static final class C14485a extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f41725b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14485a(Fragment fragment) {
            super(0);
            this.f41725b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f41725b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.g5.e0.i$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/i$b.class */
    public static final class C14486b extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f41726b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14486b(Fragment fragment) {
            super(0);
            this.f41726b = fragment;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = this.f41726b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: e.a.g5.e0.i$c */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/i$c.class */
    public static final class C14487c extends m implements s1.z.b.l<View$OnClickListenerC14484i, C14471b> {
        public C14487c() {
            super(1);
        }

        /* renamed from: d */
        public Object m20050d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            CoordinatorLayout requireView = fragment.requireView();
            int i = C4604R.C4606id.categoryList;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
            if (recyclerView != null) {
                i = C4604R.C4606id.clBottomSheet;
                ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                if (constraintLayout != null) {
                    i = C4604R.C4606id.clHeader;
                    ConstraintLayout constraintLayout2 = (ConstraintLayout) requireView.findViewById(i);
                    if (constraintLayout2 != null) {
                        CoordinatorLayout coordinatorLayout = requireView;
                        i = C4604R.C4606id.ivCloseButton;
                        ImageView imageView = (ImageView) requireView.findViewById(i);
                        if (imageView != null) {
                            i = C4604R.C4606id.llHeaderOne;
                            LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                            if (linearLayout != null) {
                                i = C4604R.C4606id.llHeaderTwo;
                                LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(i);
                                if (linearLayout2 != null) {
                                    i = C4604R.C4606id.nestedScrollView;
                                    NestedScrollView findViewById = requireView.findViewById(i);
                                    if (findViewById != null) {
                                        i = C4604R.C4606id.noResult;
                                        TextView textView = (TextView) requireView.findViewById(i);
                                        if (textView != null) {
                                            i = C4604R.C4606id.noResultIcon;
                                            ImageView imageView2 = (ImageView) requireView.findViewById(i);
                                            if (imageView2 != null) {
                                                i = C4604R.C4606id.searchView;
                                                SearchView searchView = (SearchView) requireView.findViewById(i);
                                                if (searchView != null) {
                                                    i = C4604R.C4606id.tagContainerLevel1;
                                                    FlowLayout flowLayout = (FlowLayout) requireView.findViewById(i);
                                                    if (flowLayout != null) {
                                                        i = C4604R.C4606id.tagContainerLevel2;
                                                        FlowLayout flowLayout2 = (FlowLayout) requireView.findViewById(i);
                                                        if (flowLayout2 != null) {
                                                            i = C4604R.C4606id.tagLevel2TitleText;
                                                            TextView textView2 = (TextView) requireView.findViewById(i);
                                                            if (textView2 != null) {
                                                                i = C4604R.C4606id.tagSelectedRoot;
                                                                TagView tagView = (TagView) requireView.findViewById(i);
                                                                if (tagView != null) {
                                                                    i = C4604R.C4606id.titleFirstLine;
                                                                    TextView textView3 = (TextView) requireView.findViewById(i);
                                                                    if (textView3 != null) {
                                                                        i = C4604R.C4606id.titleSecondLine;
                                                                        TextView textView4 = (TextView) requireView.findViewById(i);
                                                                        if (textView4 != null) {
                                                                            return new C14471b(coordinatorLayout, recyclerView, constraintLayout, constraintLayout2, coordinatorLayout, imageView, linearLayout, linearLayout2, findViewById, textView, imageView2, searchView, flowLayout, flowLayout2, textView2, tagView, textView3, textView4);
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

    /* renamed from: e.a.g5.e0.i$d */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/i$d.class */
    public static final class C14488d extends m implements a<C21853e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14488d() {
            super(0);
            View$OnClickListenerC14484i.this = r4;
        }

        public Object invoke() {
            return C17891a1.C17902k.m15655N1(View$OnClickListenerC14484i.this.requireActivity());
        }
    }

    /* renamed from: e.a.g5.e0.i$e */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/i$e.class */
    public static final class C14489e extends AnimatorListenerAdapter {
        public C14489e() {
            View$OnClickListenerC14484i.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            s1.z.c.l.e(animator, "animation");
            View$OnClickListenerC14484i view$OnClickListenerC14484i = View$OnClickListenerC14484i.this;
            l[] lVarArr = View$OnClickListenerC14484i.f41709t;
            C14471b m20054RA = view$OnClickListenerC14484i.m20054RA();
            FlowLayout flowLayout = m20054RA.f41677k;
            flowLayout.setVisibility(8);
            flowLayout.setTranslationY(0.0f);
            flowLayout.setAlpha(1.0f);
            LinearLayout linearLayout = m20054RA.f41672f;
            s1.z.c.l.d(linearLayout, "llHeaderTwo");
            linearLayout.setVisibility(8);
            View$OnClickListenerC14484i.this.f41715j = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            s1.z.c.l.e(animator, "animation");
            View$OnClickListenerC14484i.this.f41717l = true;
        }
    }

    /* renamed from: e.a.g5.e0.i$f */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/i$f.class */
    public static final class C14490f extends AnimatorListenerAdapter {
        public C14490f() {
            View$OnClickListenerC14484i.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            s1.z.c.l.e(animator, "animation");
            View$OnClickListenerC14484i view$OnClickListenerC14484i = View$OnClickListenerC14484i.this;
            l[] lVarArr = View$OnClickListenerC14484i.f41709t;
            C14471b m20054RA = view$OnClickListenerC14484i.m20054RA();
            LinearLayout linearLayout = m20054RA.f41671e;
            s1.z.c.l.d(linearLayout, "llHeaderOne");
            linearLayout.setVisibility(4);
            FlowLayout flowLayout = m20054RA.f41676j;
            flowLayout.setVisibility(4);
            flowLayout.setTranslationY(0.0f);
            flowLayout.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            s1.z.c.l.e(animator, "animation");
            View$OnClickListenerC14484i.this.f41717l = true;
        }
    }

    /* renamed from: e.a.g5.e0.i$g */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/i$g.class */
    public static final class C14491g extends AnimatorListenerAdapter {
        public C14491g() {
            View$OnClickListenerC14484i.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            s1.z.c.l.e(animator, "animation");
            View$OnClickListenerC14484i.this.f41717l = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            s1.z.c.l.e(animator, "animation");
            View$OnClickListenerC14484i view$OnClickListenerC14484i = View$OnClickListenerC14484i.this;
            l[] lVarArr = View$OnClickListenerC14484i.f41709t;
            C14471b m20054RA = view$OnClickListenerC14484i.m20054RA();
            FlowLayout flowLayout = m20054RA.f41677k;
            s1.z.c.l.d(flowLayout, "tagContainerLevel2");
            flowLayout.setVisibility(0);
            LinearLayout linearLayout = m20054RA.f41672f;
            s1.z.c.l.d(linearLayout, "llHeaderTwo");
            linearLayout.setVisibility(0);
        }
    }

    /* renamed from: e.a.g5.e0.i$h */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/i$h.class */
    public static final class C14492h extends AnimatorListenerAdapter {
        public C14492h() {
            View$OnClickListenerC14484i.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            s1.z.c.l.e(animator, "animation");
            View$OnClickListenerC14484i view$OnClickListenerC14484i = View$OnClickListenerC14484i.this;
            view$OnClickListenerC14484i.f41717l = false;
            TagView tagView = view$OnClickListenerC14484i.f41714i;
            if (tagView != null) {
                tagView.m35716h(false, true);
                View$OnClickListenerC14484i.this.f41714i = null;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            s1.z.c.l.e(animator, "animation");
            View$OnClickListenerC14484i view$OnClickListenerC14484i = View$OnClickListenerC14484i.this;
            l[] lVarArr = View$OnClickListenerC14484i.f41709t;
            C14471b m20054RA = view$OnClickListenerC14484i.m20054RA();
            SearchView searchView = m20054RA.f41675i;
            s1.z.c.l.d(searchView, "searchView");
            if (TextUtils.isEmpty(searchView.getQuery())) {
                FlowLayout flowLayout = m20054RA.f41676j;
                s1.z.c.l.d(flowLayout, "tagContainerLevel1");
                flowLayout.setVisibility(0);
            }
            LinearLayout linearLayout = m20054RA.f41671e;
            s1.z.c.l.d(linearLayout, "llHeaderOne");
            linearLayout.setVisibility(0);
        }
    }

    /* renamed from: QA */
    public final TagView m20055QA(ViewGroup viewGroup, List<C8551c> list, boolean z) {
        viewGroup.removeAllViews();
        int dimensionPixelSize = getResources().getDimensionPixelSize(C4604R.dimen.space);
        Iterator<C8551c> it = list.iterator();
        TagView tagView = null;
        while (true) {
            TagView tagView2 = tagView;
            if (it.hasNext()) {
                C8551c next = it.next();
                TagView m20053SA = m20053SA(next);
                C14479d m42869d = m20052TA().f15288c.m42869d();
                C8551c c8551c = m42869d != null ? m42869d.f41702b : null;
                TagView tagView3 = tagView2;
                if (z) {
                    tagView3 = tagView2;
                    if (c8551c != null) {
                        long j = next.f26350a;
                        if (j != c8551c.f26350a) {
                            tagView3 = tagView2;
                            if (j != c8551c.f26352c) {
                            }
                        }
                        m20053SA.m35716h(true, false);
                        tagView3 = m20053SA;
                    }
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
                marginLayoutParams.setMarginEnd(dimensionPixelSize);
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                viewGroup.addView(m20053SA, marginLayoutParams);
                tagView = tagView3;
            } else {
                return tagView2;
            }
        }
    }

    /* renamed from: RA */
    public final C14471b m20054RA() {
        return (C14471b) this.f41720o.m34468b(this, f41709t[0]);
    }

    /* renamed from: SA */
    public final TagView m20053SA(C8551c c8551c) {
        TagView tagView = new TagView(getContext(), false, c8551c.f26352c == 0);
        AbstractC14537p abstractC14537p = this.f41710e;
        if (abstractC14537p == null) {
            s1.z.c.l.l("tagDisplayUtil");
            throw null;
        }
        tagView.setTag(abstractC14537p.mo20026a(c8551c));
        tagView.setTextSize(0, getResources().getDimension(C4604R.dimen.tagTextSize));
        tagView.setOnClickListener(this);
        return tagView;
    }

    /* renamed from: TA */
    public final TaggerViewModel m20052TA() {
        return (TaggerViewModel) this.f41719n.getValue();
    }

    /* renamed from: UA */
    public final void m20051UA(TagView tagView, boolean z) {
        C8551c availableTag;
        TagView tagView2;
        C8551c availableTag2;
        TagView tagView3;
        C8551c availableTag3;
        if (!this.f41717l && (availableTag = tagView.getAvailableTag()) != null) {
            TagView tagView4 = null;
            if (availableTag.f26352c != 0) {
                boolean z2 = z || (tagView2 = this.f41715j) == null || tagView2 == null || (availableTag2 = tagView2.getAvailableTag()) == null || availableTag2.f26350a != availableTag.f26350a;
                if (z2) {
                    TagView tagView5 = this.f41715j;
                    if (tagView5 != null) {
                        tagView5.m35716h(false, true);
                    }
                    tagView4 = tagView;
                }
                this.f41715j = tagView4;
                this.f41717l = z2;
                tagView.m35716h(z2, true);
                if (!this.f41717l) {
                    return;
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.35f);
                s1.z.c.l.d(ofFloat, "animation");
                ofFloat.setDuration(200);
                ofFloat.addListener(new C14497n(this));
                ofFloat.start();
                return;
            }
            boolean z3 = z || (tagView3 = this.f41714i) == null || tagView3 == null || (availableTag3 = tagView3.getAvailableTag()) == null || availableTag3.f26350a != availableTag.f26350a;
            if (z) {
                m20052TA().m34619e(availableTag, null);
                return;
            }
            if (!z3) {
                TagView tagView6 = this.f41714i;
                if (tagView6 != null) {
                    tagView6.m35716h(false, true);
                }
                this.f41714i = null;
            } else {
                TagView tagView7 = this.f41714i;
                if (tagView7 != null) {
                    tagView7.m35716h(false, true);
                }
                long tagId = tagView.getTagId();
                this.f41714i = tagView;
                tagView.m35716h(true, true);
                m20054RA().f41678l.setText(C4604R.string.TagsChooserChildTitle);
                TaggerViewModel.m34621c(m20052TA(), tagId, null, false, 2);
            }
            StringBuilder m8728C = C22128a.m8728C("Root = ");
            m8728C.append(m20054RA());
            m8728C.append(".tagSelectedRoot, Parent = ");
            m8728C.append(this.f41714i);
            m8728C.append(", Child = ");
            m8728C.append(this.f41715j);
            m8728C.toString();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        s1.z.c.l.e(view, "v");
        if (view.getId() == C4604R.C4606id.tagSelectedRoot) {
            C14471b m20054RA = m20054RA();
            ViewPropertyAnimator alpha = m20054RA.f41677k.animate().translationYBy(-this.f41716k).alpha(0.0f);
            long j = 200;
            alpha.setDuration(j).setListener(this.f41723r).start();
            FlowLayout flowLayout = m20054RA.f41676j;
            flowLayout.setTranslationY(this.f41716k);
            flowLayout.setAlpha(0.0f);
            m20054RA.f41676j.animate().translationY(0.0f).alpha(1.0f).setDuration(j).setStartDelay(j).setListener(this.f41722q).start();
        } else if (view.getId() != C4604R.C4606id.ivCloseButton && view.getId() != C4604R.C4606id.clRoot) {
            if (!(view instanceof TagView)) {
                return;
            }
            m20051UA((TagView) view, false);
        } else {
            TaggerViewModel m20052TA = m20052TA();
            TagView tagView = this.f41714i;
            C8551c c8551c = null;
            C8551c availableTag = tagView != null ? tagView.getAvailableTag() : null;
            TagView tagView2 = this.f41715j;
            if (tagView2 != null) {
                c8551c = tagView2.getAvailableTag();
            }
            m20052TA.m34619e(availableTag, c8551c);
        }
    }

    public void onCreate(Bundle bundle) {
        View$OnClickListenerC14484i.super.onCreate(bundle);
        C19597a m8580q1 = C22128a.m8580q1("tagPicker", "viewId", "tagPicker", null, null);
        AbstractC19462a abstractC19462a = this.f41711f;
        if (abstractC19462a != null) {
            n.B0(m8580q1, abstractC19462a);
        } else {
            s1.z.c.l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C4604R.layout.fragment_new_tag_picker, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        this.f41716k = getResources().getDimensionPixelSize(C4604R.dimen.tag_animation_translation);
        TaggerViewModel.m34621c(m20052TA(), 0L, null, true, 3);
        C14471b m20054RA = m20054RA();
        BottomSheetBehavior<ConstraintLayout> H = BottomSheetBehavior.H(m20054RA.f41668b);
        s1.z.c.l.d(H, "BottomSheetBehavior.from(clBottomSheet)");
        this.f41712g = H;
        m20052TA().f15288c.m42867f(getViewLifecycleOwner(), new C14498o(this));
        C14471b m20054RA2 = m20054RA();
        RecyclerView recyclerView = m20054RA2.f41667a;
        s1.z.c.l.d(recyclerView, "categoryList");
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        this.f41713h = null;
        RecyclerView recyclerView2 = m20054RA2.f41667a;
        s1.z.c.l.d(recyclerView2, "categoryList");
        recyclerView2.setAdapter(null);
        RecyclerView recyclerView3 = m20054RA2.f41667a;
        s1.z.c.l.d(recyclerView3, "categoryList");
        recyclerView3.setNestedScrollingEnabled(false);
        C14471b m20054RA3 = m20054RA();
        SearchView searchView = m20054RA3.f41675i;
        s1.z.c.l.d(searchView, "searchView");
        C19286f.m13679Y(searchView, false, 0L, 2);
        SearchView searchView2 = m20054RA3.f41675i;
        s1.z.c.l.d(searchView2, "searchView");
        C17422k.m16101Q(searchView2, new C14495l(m20054RA3, this));
        m20054RA3.f41675i.setOnQueryTextFocusChangeListener(new View$OnFocusChangeListenerC14496m(m20054RA3, this));
        m20052TA().f15290e.m42867f(getViewLifecycleOwner(), new C14500q(this));
        m20054RA.f41679m.m35716h(true, false);
        m20054RA.f41669c.setOnClickListener(this);
        m20054RA.f41679m.setOnClickListener(this);
        m20054RA.f41670d.setOnClickListener(this);
        View$OnClickListenerC14484i.super.onViewCreated(view, bundle);
    }
}
