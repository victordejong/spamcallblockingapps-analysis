package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.AbstractC0245c;
import androidx.activity.AbstractC0246d;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.p036f.C0679a;
import androidx.core.p036f.C0680b;
import androidx.core.p037g.View$OnAttachStateChangeListenerC0738q;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0950w;
import androidx.lifecycle.C0949v;
import androidx.p026b.C0531c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.n */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n.class */
public final class LayoutInflater$Factory2C0898n extends AbstractC0897m implements LayoutInflater.Factory2 {

    /* renamed from: D */
    static final Interpolator f3775D = new DecelerateInterpolator(2.5f);

    /* renamed from: E */
    static final Interpolator f3776E = new DecelerateInterpolator(1.5f);

    /* renamed from: b */
    static boolean f3777b = false;

    /* renamed from: B */
    ArrayList<C0904f> f3779B;

    /* renamed from: F */
    private OnBackPressedDispatcher f3781F;

    /* renamed from: I */
    private C0913w f3784I;

    /* renamed from: c */
    ArrayList<AbstractC0902d> f3785c;

    /* renamed from: d */
    boolean f3786d;

    /* renamed from: h */
    ArrayList<C0865a> f3790h;

    /* renamed from: i */
    ArrayList<Fragment> f3791i;

    /* renamed from: j */
    ArrayList<C0865a> f3792j;

    /* renamed from: k */
    ArrayList<Integer> f3793k;

    /* renamed from: l */
    ArrayList<Object> f3794l;

    /* renamed from: n */
    AbstractC0896l f3796n;

    /* renamed from: o */
    AbstractC0893i f3797o;

    /* renamed from: p */
    Fragment f3798p;

    /* renamed from: q */
    Fragment f3799q;

    /* renamed from: r */
    boolean f3800r;

    /* renamed from: s */
    boolean f3801s;

    /* renamed from: t */
    boolean f3802t;

    /* renamed from: u */
    boolean f3803u;

    /* renamed from: v */
    boolean f3804v;

    /* renamed from: w */
    ArrayList<C0865a> f3805w;

    /* renamed from: x */
    ArrayList<Boolean> f3806x;

    /* renamed from: y */
    ArrayList<Fragment> f3807y;

    /* renamed from: e */
    int f3787e = 0;

    /* renamed from: f */
    final ArrayList<Fragment> f3788f = new ArrayList<>();

    /* renamed from: g */
    final HashMap<String, Fragment> f3789g = new HashMap<>();

    /* renamed from: G */
    private final AbstractC0245c f3782G = new C0905o(this);

    /* renamed from: H */
    private final CopyOnWriteArrayList<Object> f3783H = new CopyOnWriteArrayList<>();

    /* renamed from: m */
    int f3795m = 0;

    /* renamed from: z */
    Bundle f3808z = null;

    /* renamed from: A */
    SparseArray<Parcelable> f3778A = null;

    /* renamed from: C */
    Runnable f3780C = new RunnableC0906p(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.fragment.app.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$a.class */
    public static final class C0899a {

        /* renamed from: a */
        public final Animation f3809a;

        /* renamed from: b */
        public final Animator f3810b;

        C0899a(Animator animator) {
            this.f3809a = null;
            this.f3810b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }

        C0899a(Animation animation) {
            this.f3809a = animation;
            this.f3810b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.fragment.app.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$b.class */
    public static final class RunnableC0900b extends AnimationSet implements Runnable {

        /* renamed from: a */
        private final ViewGroup f3811a;

        /* renamed from: b */
        private final View f3812b;

        /* renamed from: c */
        private boolean f3813c;

        /* renamed from: d */
        private boolean f3814d;

        /* renamed from: e */
        private boolean f3815e = true;

        RunnableC0900b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f3811a = viewGroup;
            this.f3812b = view;
            addAnimation(animation);
            this.f3811a.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation) {
            this.f3815e = true;
            if (this.f3813c) {
                return !this.f3814d;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.f3813c = true;
            View$OnAttachStateChangeListenerC0738q.m8377a(this.f3811a, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation, float f) {
            this.f3815e = true;
            if (this.f3813c) {
                return !this.f3814d;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.f3813c = true;
            View$OnAttachStateChangeListenerC0738q.m8377a(this.f3811a, this);
            return true;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f3813c || !this.f3815e) {
                this.f3811a.endViewTransition(this.f3812b);
                this.f3814d = true;
                return;
            }
            this.f3815e = false;
            this.f3811a.post(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.n$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$c.class */
    public static final class C0901c {

        /* renamed from: a */
        public static final int[] f3816a = {16842755, 16842960, 16842961};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.n$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$d.class */
    public interface AbstractC0902d {
        /* renamed from: a */
        boolean mo7625a(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: androidx.fragment.app.n$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$e.class */
    private final class C0903e implements AbstractC0902d {

        /* renamed from: a */
        final String f3817a = null;

        /* renamed from: b */
        final int f3818b;

        /* renamed from: c */
        final int f3819c;

        C0903e(int i, int i2) {
            this.f3818b = i;
            this.f3819c = i2;
        }

        @Override // androidx.fragment.app.LayoutInflater$Factory2C0898n.AbstractC0902d
        /* renamed from: a */
        public final boolean mo7625a(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2) {
            if (LayoutInflater$Factory2C0898n.this.f3799q == null || this.f3818b >= 0 || this.f3817a != null || !LayoutInflater$Factory2C0898n.this.f3799q.getChildFragmentManager().mo7673d()) {
                return LayoutInflater$Factory2C0898n.this.m7694a(arrayList, arrayList2, this.f3817a, this.f3818b, this.f3819c);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.n$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$f.class */
    public static final class C0904f implements Fragment.AbstractC0862c {

        /* renamed from: a */
        final boolean f3821a;

        /* renamed from: b */
        final C0865a f3822b;

        /* renamed from: c */
        private int f3823c;

        C0904f(C0865a aVar, boolean z) {
            this.f3821a = z;
            this.f3822b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0862c
        /* renamed from: a */
        public final void mo7624a() {
            this.f3823c--;
            if (this.f3823c == 0) {
                this.f3822b.f3658a.m7659j();
            }
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0862c
        /* renamed from: b */
        public final void mo7623b() {
            this.f3823c++;
        }

        /* renamed from: c */
        public final boolean m7622c() {
            return this.f3823c == 0;
        }

        /* renamed from: d */
        public final void m7621d() {
            boolean z = this.f3823c > 0;
            LayoutInflater$Factory2C0898n nVar = this.f3822b.f3658a;
            int size = nVar.f3788f.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = nVar.f3788f.get(i);
                fragment.m7899a((Fragment.AbstractC0862c) null);
                if (z && fragment.m7866v()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            this.f3822b.f3658a.m7703a(this.f3822b, this.f3821a, !z, true);
        }

        /* renamed from: e */
        public final void m7620e() {
            this.f3822b.f3658a.m7703a(this.f3822b, this.f3821a, false, false);
        }
    }

    /* renamed from: A */
    private void m7737A() {
        if (m7661i()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    /* renamed from: A */
    private void m7736A(Fragment fragment) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7736A(fragment);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: B */
    private void m7735B() {
        this.f3786d = false;
        this.f3806x.clear();
        this.f3805w.clear();
    }

    /* renamed from: B */
    private void m7734B(Fragment fragment) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7734B(fragment);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: C */
    private void m7733C() {
        if (this.f3779B != null) {
            while (!this.f3779B.isEmpty()) {
                this.f3779B.remove(0).m7621d();
            }
        }
    }

    /* renamed from: C */
    private static boolean m7732C(Fragment fragment) {
        return (fragment.f3557L && fragment.f3558M) || fragment.f3548C.m7728G();
    }

    /* renamed from: D */
    private void m7731D() {
        if (this.f3804v) {
            this.f3804v = false;
            m7627z();
        }
    }

    /* renamed from: E */
    private void m7730E() {
        if (this.f3794l != null) {
            for (int i = 0; i < this.f3794l.size(); i++) {
                this.f3794l.get(i);
            }
        }
    }

    /* renamed from: F */
    private void m7729F() {
        this.f3789g.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: G */
    private boolean m7728G() {
        boolean z = false;
        for (Fragment fragment : this.f3789g.values()) {
            if (fragment != null) {
                z = m7732C(fragment);
            }
            z = z;
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private int m7695a(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, C0531c<Fragment> cVar) {
        int i3 = i2;
        for (int i4 = i2 - 1; i4 >= i; i4--) {
            C0865a aVar = arrayList.get(i4);
            boolean booleanValue = arrayList2.get(i4).booleanValue();
            i3 = i3;
            if (aVar.m7834g() && !aVar.m7842a(arrayList, i4 + 1, i2)) {
                if (this.f3779B == null) {
                    this.f3779B = new ArrayList<>();
                }
                C0904f fVar = new C0904f(aVar, booleanValue);
                this.f3779B.add(fVar);
                aVar.m7845a(fVar);
                if (booleanValue) {
                    aVar.m7835f();
                } else {
                    aVar.m7840a(false);
                }
                i3--;
                if (i4 != i3) {
                    arrayList.remove(i4);
                    arrayList.add(i3, aVar);
                }
                m7688b(cVar);
            }
        }
        return i3;
    }

    /* renamed from: a */
    private static C0899a m7726a(float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(f3776E);
        alphaAnimation.setDuration(220L);
        return new C0899a(alphaAnimation);
    }

    /* renamed from: a */
    private static C0899a m7725a(float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(f3775D);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(f3776E);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new C0899a(animationSet);
    }

    /* renamed from: a */
    private C0899a m7711a(Fragment fragment, int i, boolean z, int i2) {
        int n = fragment.m7874n();
        fragment.m7909a(0);
        if (fragment.f3559N != null && fragment.f3559N.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z, n);
        if (onCreateAnimation != null) {
            return new C0899a(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(i, z, n);
        if (onCreateAnimator != null) {
            return new C0899a(onCreateAnimator);
        }
        char c = 1;
        if (n != 0) {
            boolean equals = "anim".equals(this.f3796n.m7740i().getResources().getResourceTypeName(n));
            boolean z2 = false;
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(this.f3796n.m7740i(), n);
                    if (loadAnimation != null) {
                        return new C0899a(loadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException e2) {
                    z2 = false;
                }
            }
            if (!z2) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(this.f3796n.m7740i(), n);
                    if (loadAnimator != null) {
                        return new C0899a(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.f3796n.m7740i(), n);
                        if (loadAnimation2 != null) {
                            return new C0899a(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        if (i == 0) {
            return null;
        }
        c = 65535;
        if (i != 4097) {
            if (i == 4099) {
                c = z ? (char) 5 : (char) 6;
            } else if (i == 8194) {
                c = z ? (char) 3 : (char) 4;
            }
        } else if (!z) {
            c = 2;
        }
        if (c < 0) {
            return null;
        }
        switch (c) {
            case 1:
                return m7725a(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return m7725a(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return m7725a(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return m7725a(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return m7726a(0.0f, 1.0f);
            case 6:
                return m7726a(1.0f, 0.0f);
            default:
                if (i2 != 0 || !this.f3796n.mo7744e()) {
                    return null;
                }
                this.f3796n.mo7743f();
                return null;
        }
    }

    /* renamed from: a */
    private void m7723a(int i, C0865a aVar) {
        synchronized (this) {
            if (this.f3792j == null) {
                this.f3792j = new ArrayList<>();
            }
            int size = this.f3792j.size();
            if (i < size) {
                if (f3777b) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + aVar);
                }
                this.f3792j.set(i, aVar);
            } else {
                for (int i2 = size; i2 < i; i2++) {
                    this.f3792j.add(null);
                    if (this.f3793k == null) {
                        this.f3793k = new ArrayList<>();
                    }
                    if (f3777b) {
                        Log.v("FragmentManager", "Adding available back stack index ".concat(String.valueOf(i2)));
                    }
                    this.f3793k.add(Integer.valueOf(i2));
                }
                if (f3777b) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + aVar);
                }
                this.f3792j.add(aVar);
            }
        }
    }

    /* renamed from: a */
    private static void m7714a(C0531c<Fragment> cVar) {
        int size = cVar.size();
        for (int i = 0; i < size; i++) {
            Fragment a = cVar.m8952a(i);
            if (!a.f3588t) {
                View requireView = a.requireView();
                a.f3568W = requireView.getAlpha();
                requireView.setAlpha(0.0f);
            }
        }
    }

    /* renamed from: a */
    private void m7710a(Fragment fragment, Context context) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7710a(fragment, context);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: a */
    private void m7709a(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7709a(fragment, bundle);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: a */
    private void m7708a(Fragment fragment, View view, Bundle bundle) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7708a(fragment, view, bundle);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: a */
    private void m7707a(Fragment fragment, C0899a aVar, int i) {
        View view = fragment.f3560O;
        ViewGroup viewGroup = fragment.f3559N;
        viewGroup.startViewTransition(view);
        fragment.m7895b(i);
        if (aVar.f3809a != null) {
            RunnableC0900b bVar = new RunnableC0900b(aVar.f3809a, viewGroup, view);
            fragment.m7900a(fragment.f3560O);
            bVar.setAnimationListener(new animationAnimation$AnimationListenerC0907q(this, viewGroup, fragment));
            fragment.f3560O.startAnimation(bVar);
            return;
        }
        Animator animator = aVar.f3810b;
        fragment.m7907a(aVar.f3810b);
        animator.addListener(new C0909s(this, viewGroup, view, fragment));
        animator.setTarget(fragment.f3560O);
        animator.start();
    }

    /* renamed from: a */
    private void m7700a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C0680b("FragmentManager"));
        AbstractC0896l lVar = this.f3796n;
        try {
            if (lVar != null) {
                lVar.mo7748a("  ", printWriter, new String[0]);
            } else {
                mo7698a("  ", (FileDescriptor) null, printWriter, new String[0]);
            }
        } catch (Exception e) {
            Log.e("FragmentManager", "Failed dumping state", e);
        }
        throw runtimeException;
    }

    /* renamed from: a */
    private void m7697a(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int indexOf;
        int indexOf2;
        ArrayList<C0904f> arrayList3 = this.f3779B;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            C0904f fVar = this.f3779B.get(i2);
            if (arrayList == null || fVar.f3821a || (indexOf2 = arrayList.indexOf(fVar.f3822b)) == -1 || !arrayList2.get(indexOf2).booleanValue()) {
                if (!fVar.m7622c()) {
                    i = i2;
                    size = size;
                    if (arrayList != null) {
                        i = i2;
                        size = size;
                        if (!fVar.f3822b.m7842a(arrayList, 0, arrayList.size())) {
                        }
                    }
                    i2 = i + 1;
                }
                this.f3779B.remove(i2);
                i = i2 - 1;
                size--;
                if (arrayList == null || fVar.f3821a || (indexOf = arrayList.indexOf(fVar.f3822b)) == -1 || !arrayList2.get(indexOf).booleanValue()) {
                    fVar.m7621d();
                    i2 = i + 1;
                }
            } else {
                this.f3779B.remove(i2);
                i = i2 - 1;
                size--;
            }
            fVar.m7620e();
            i2 = i + 1;
        }
    }

    /* renamed from: a */
    private void m7696a(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).f3677t;
        ArrayList<Fragment> arrayList3 = this.f3807y;
        if (arrayList3 == null) {
            this.f3807y = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f3807y.addAll(this.f3788f);
        Fragment fragment = this.f3799q;
        boolean z2 = false;
        for (int i4 = i; i4 < i2; i4++) {
            C0865a aVar = arrayList.get(i4);
            fragment = !arrayList2.get(i4).booleanValue() ? aVar.m7841a(this.f3807y, fragment) : aVar.m7837b(this.f3807y, fragment);
            z2 = z2 || aVar.f3668k;
        }
        this.f3807y.clear();
        if (!z) {
            C0869ac.m7801a(this, arrayList, arrayList2, i, i2, false);
        }
        m7681b(arrayList, arrayList2, i, i2);
        if (z) {
            C0531c<Fragment> cVar = new C0531c<>();
            m7688b(cVar);
            i3 = m7695a(arrayList, arrayList2, i, i2, cVar);
            m7714a(cVar);
        } else {
            i3 = i2;
        }
        int i5 = i;
        if (i3 != i) {
            i5 = i;
            if (z) {
                C0869ac.m7801a(this, arrayList, arrayList2, i, i3, true);
                m7722a(this.f3795m, true);
                i5 = i;
            }
        }
        while (i5 < i2) {
            C0865a aVar2 = arrayList.get(i5);
            if (arrayList2.get(i5).booleanValue() && aVar2.f3660c >= 0) {
                int i6 = aVar2.f3660c;
                synchronized (this) {
                    this.f3792j.set(i6, null);
                    if (this.f3793k == null) {
                        this.f3793k = new ArrayList<>();
                    }
                    if (f3777b) {
                        Log.v("FragmentManager", "Freeing back stack index ".concat(String.valueOf(i6)));
                    }
                    this.f3793k.add(Integer.valueOf(i6));
                }
                aVar2.f3660c = -1;
            }
            aVar2.m7847a();
            i5++;
        }
        if (z2) {
            m7730E();
        }
    }

    /* renamed from: b */
    public static int m7691b(int i) {
        int i2 = 8194;
        if (i != 4097) {
            i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
        }
        return i2;
    }

    /* renamed from: b */
    private void m7688b(C0531c<Fragment> cVar) {
        int i = this.f3795m;
        if (i > 0) {
            int min = Math.min(i, 3);
            int size = this.f3788f.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = this.f3788f.get(i2);
                if (fragment.f3579k < min) {
                    m7712a(fragment, min, fragment.m7874n(), fragment.m7873o(), false);
                    if (fragment.f3560O != null && !fragment.f3553H && fragment.f3566U) {
                        cVar.add(fragment);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    private void m7686b(Fragment fragment, Context context) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7686b(fragment, context);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: b */
    private void m7685b(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7685b(fragment, bundle);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: b */
    private void m7682b(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList != null && !arrayList.isEmpty()) {
            if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
                throw new IllegalStateException("Internal error with the back stack records");
            }
            m7697a(arrayList, arrayList2);
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i < size) {
                int i3 = i;
                i2 = i2;
                if (!arrayList.get(i).f3677t) {
                    if (i2 != i) {
                        m7696a(arrayList, arrayList2, i2, i);
                    }
                    int i4 = i + 1;
                    i2 = i4;
                    if (arrayList2.get(i).booleanValue()) {
                        while (true) {
                            i2 = i4;
                            if (i4 >= size) {
                                break;
                            }
                            i2 = i4;
                            if (!arrayList2.get(i4).booleanValue()) {
                                break;
                            }
                            i2 = i4;
                            if (arrayList.get(i4).f3677t) {
                                break;
                            }
                            i4++;
                        }
                    }
                    m7696a(arrayList, arrayList2, i, i2);
                    i3 = i2 - 1;
                }
                i = i3 + 1;
            }
            if (i2 != size) {
                m7696a(arrayList, arrayList2, i2, size);
            }
        }
    }

    /* renamed from: b */
    private static void m7681b(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            C0865a aVar = arrayList.get(i);
            boolean z = true;
            if (arrayList2.get(i).booleanValue()) {
                aVar.m7846a(-1);
                if (i != i2 - 1) {
                    z = false;
                }
                aVar.m7840a(z);
            } else {
                aVar.m7846a(1);
                aVar.m7835f();
            }
            i++;
        }
    }

    /* renamed from: c */
    private Fragment m7678c(int i) {
        for (int size = this.f3788f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f3788f.get(size);
            if (fragment != null && fragment.f3550E == i) {
                return fragment;
            }
        }
        for (Fragment fragment2 : this.f3789g.values()) {
            if (fragment2 != null && fragment2.f3550E == i) {
                return fragment2;
            }
        }
        return null;
    }

    /* renamed from: c */
    private void m7676c(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7676c(fragment, bundle);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: c */
    private void m7674c(boolean z) {
        if (this.f3786d) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        } else if (this.f3796n == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        } else if (Looper.myLooper() == this.f3796n.m7739j().getLooper()) {
            if (!z) {
                m7737A();
            }
            if (this.f3805w == null) {
                this.f3805w = new ArrayList<>();
                this.f3806x = new ArrayList<>();
            }
            this.f3786d = true;
            try {
                m7697a((ArrayList<C0865a>) null, (ArrayList<Boolean>) null);
            } finally {
                this.f3786d = false;
            }
        } else {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
    }

    /* renamed from: c */
    private boolean m7675c(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            if (!(this.f3785c == null || this.f3785c.size() == 0)) {
                int size = this.f3785c.size();
                boolean z = false;
                for (int i = 0; i < size; i++) {
                    z |= this.f3785c.get(i).mo7625a(arrayList, arrayList2);
                }
                this.f3785c.clear();
                this.f3796n.m7739j().removeCallbacks(this.f3780C);
                return z;
            }
            return false;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    private void m7672d(int i) {
        try {
            this.f3786d = true;
            m7722a(i, false);
            this.f3786d = false;
            m7657k();
        } catch (Throwable th) {
            this.f3786d = false;
            throw th;
        }
    }

    /* renamed from: d */
    private void m7670d(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7670d(fragment, bundle);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: j */
    public static void m7658j(Fragment fragment) {
        if (f3777b) {
            Log.v("FragmentManager", "hide: ".concat(String.valueOf(fragment)));
        }
        if (!fragment.f3553H) {
            fragment.f3553H = true;
            fragment.f3567V = true ^ fragment.f3567V;
        }
    }

    /* renamed from: k */
    public static void m7656k(Fragment fragment) {
        if (f3777b) {
            Log.v("FragmentManager", "show: ".concat(String.valueOf(fragment)));
        }
        if (fragment.f3553H) {
            fragment.f3553H = false;
            fragment.f3567V = !fragment.f3567V;
        }
    }

    /* renamed from: o */
    private void m7648o(Fragment fragment) {
        m7712a(fragment, this.f3795m, 0, 0, false);
    }

    /* renamed from: p */
    private void m7646p(Fragment fragment) {
        if (fragment.f3590v && !fragment.f3593y) {
            fragment.m7904a(fragment.m7894b(fragment.f3580l), null, fragment.f3580l);
            if (fragment.f3560O != null) {
                fragment.f3561P = fragment.f3560O;
                fragment.f3560O.setSaveFromParentEnabled(false);
                if (fragment.f3553H) {
                    fragment.f3560O.setVisibility(8);
                }
                fragment.onViewCreated(fragment.f3560O, fragment.f3580l);
                m7708a(fragment, fragment.f3560O, fragment.f3580l);
                return;
            }
            fragment.f3561P = null;
        }
    }

    /* renamed from: q */
    private void m7644q(Fragment fragment) {
        if (this.f3789g.get(fragment.f3583o) != null) {
            if (f3777b) {
                Log.v("FragmentManager", "Removed fragment from active set ".concat(String.valueOf(fragment)));
            }
            for (Fragment fragment2 : this.f3789g.values()) {
                if (fragment2 != null && fragment.f3583o.equals(fragment2.f3586r)) {
                    fragment2.f3585q = fragment;
                    fragment2.f3586r = null;
                }
            }
            this.f3789g.put(fragment.f3583o, null);
            m7668e(fragment);
            if (fragment.f3586r != null) {
                fragment.f3585q = this.f3789g.get(fragment.f3586r);
            }
            fragment.m7896b();
        }
    }

    /* renamed from: r */
    private Fragment m7642r(Fragment fragment) {
        ViewGroup viewGroup = fragment.f3559N;
        View view = fragment.f3560O;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.f3788f.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
            Fragment fragment2 = this.f3788f.get(indexOf);
            if (fragment2.f3559N == viewGroup && fragment2.f3560O != null) {
                return fragment2;
            }
        }
        return null;
    }

    /* renamed from: s */
    private void m7640s(Fragment fragment) {
        if (fragment.f3561P != null) {
            SparseArray<Parcelable> sparseArray = this.f3778A;
            if (sparseArray == null) {
                this.f3778A = new SparseArray<>();
            } else {
                sparseArray.clear();
            }
            fragment.f3561P.saveHierarchyState(this.f3778A);
            if (this.f3778A.size() > 0) {
                fragment.f3581m = this.f3778A;
                this.f3778A = null;
            }
        }
    }

    /* renamed from: t */
    private Bundle m7638t(Fragment fragment) {
        Bundle bundle;
        if (this.f3808z == null) {
            this.f3808z = new Bundle();
        }
        fragment.m7882f(this.f3808z);
        m7670d(fragment, this.f3808z);
        if (!this.f3808z.isEmpty()) {
            bundle = this.f3808z;
            this.f3808z = null;
        } else {
            bundle = null;
        }
        if (fragment.f3560O != null) {
            m7640s(fragment);
        }
        Bundle bundle2 = bundle;
        if (fragment.f3581m != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putSparseParcelableArray("android:view_state", fragment.f3581m);
        }
        Bundle bundle3 = bundle2;
        if (!fragment.f3563R) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putBoolean("android:user_visible_hint", fragment.f3563R);
        }
        return bundle3;
    }

    /* renamed from: u */
    private void m7636u(Fragment fragment) {
        if (fragment != null && this.f3789g.get(fragment.f3583o) == fragment) {
            fragment.m7881g();
        }
    }

    /* renamed from: v */
    private void m7634v(Fragment fragment) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7634v(fragment);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: w */
    private void m7632w(Fragment fragment) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7632w(fragment);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: x */
    private void m7631x() {
        ArrayList<AbstractC0902d> arrayList = this.f3785c;
        boolean z = true;
        if (arrayList == null || arrayList.isEmpty()) {
            AbstractC0245c cVar = this.f3782G;
            if (mo7669e() <= 0 || !m7687b(this.f3798p)) {
                z = false;
            }
            cVar.m9955a(z);
            return;
        }
        this.f3782G.m9955a(true);
    }

    /* renamed from: x */
    private void m7630x(Fragment fragment) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7630x(fragment);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: y */
    private void m7628y(Fragment fragment) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7628y(fragment);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: y */
    private boolean m7629y() {
        m7657k();
        m7674c(true);
        Fragment fragment = this.f3799q;
        if (fragment != null && fragment.getChildFragmentManager().mo7673d()) {
            return true;
        }
        boolean a = m7694a(this.f3805w, this.f3806x, (String) null, -1, 0);
        if (a) {
            this.f3786d = true;
            try {
                m7682b(this.f3805w, this.f3806x);
            } finally {
                m7735B();
            }
        }
        m7631x();
        m7731D();
        m7729F();
        return a;
    }

    /* renamed from: z */
    private void m7627z() {
        for (Fragment fragment : this.f3789g.values()) {
            if (fragment != null) {
                m7666f(fragment);
            }
        }
    }

    /* renamed from: z */
    private void m7626z(Fragment fragment) {
        Fragment fragment2 = this.f3798p;
        if (fragment2 != null) {
            AbstractC0897m fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0898n) {
                ((LayoutInflater$Factory2C0898n) fragmentManager).m7626z(fragment);
            }
        }
        Iterator<Object> it = this.f3783H.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: a */
    public final int m7704a(C0865a aVar) {
        synchronized (this) {
            if (this.f3793k != null && this.f3793k.size() > 0) {
                int intValue = this.f3793k.remove(this.f3793k.size() - 1).intValue();
                if (f3777b) {
                    Log.v("FragmentManager", "Adding back stack index " + intValue + " with " + aVar);
                }
                this.f3792j.set(intValue, aVar);
                return intValue;
            }
            if (this.f3792j == null) {
                this.f3792j = new ArrayList<>();
            }
            int size = this.f3792j.size();
            if (f3777b) {
                Log.v("FragmentManager", "Setting back stack index " + size + " to " + aVar);
            }
            this.f3792j.add(aVar);
            return size;
        }
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: a */
    public final Fragment.SavedState mo7713a(Fragment fragment) {
        Bundle t;
        if (fragment.f3546A != this) {
            m7700a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.f3579k <= 0 || (t = m7638t(fragment)) == null) {
            return null;
        }
        return new Fragment.SavedState(t);
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: a */
    public final Fragment mo7720a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragment = this.f3789g.get(string);
        if (fragment == null) {
            m7700a(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return fragment;
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: a */
    public final Fragment mo7699a(String str) {
        if (str != null) {
            for (int size = this.f3788f.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f3788f.get(size);
                if (fragment != null && str.equals(fragment.f3552G)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (Fragment fragment2 : this.f3789g.values()) {
            if (fragment2 != null && str.equals(fragment2.f3552G)) {
                return fragment2;
            }
        }
        return null;
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: a */
    public final AbstractC0867ab mo7727a() {
        return new C0865a(this);
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: a */
    public final void mo7724a(int i) {
        if (i >= 0) {
            m7701a((AbstractC0902d) new C0903e(i, 1), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: ".concat(String.valueOf(i)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7722a(int i, boolean z) {
        AbstractC0896l lVar;
        if (this.f3796n == null && i != 0) {
            throw new IllegalStateException("No activity");
        } else if (z || i != this.f3795m) {
            this.f3795m = i;
            int size = this.f3788f.size();
            for (int i2 = 0; i2 < size; i2++) {
                m7664g(this.f3788f.get(i2));
            }
            for (Fragment fragment : this.f3789g.values()) {
                if (fragment != null && (fragment.f3589u || fragment.f3554I)) {
                    if (!fragment.f3566U) {
                        m7664g(fragment);
                    }
                }
            }
            m7627z();
            if (this.f3800r && (lVar = this.f3796n) != null && this.f3795m == 4) {
                lVar.mo7745d();
                this.f3800r = false;
            }
        }
    }

    /* renamed from: a */
    public final void m7721a(Configuration configuration) {
        for (int i = 0; i < this.f3788f.size(); i++) {
            Fragment fragment = this.f3788f.get(i);
            if (fragment != null) {
                fragment.m7906a(configuration);
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: a */
    public final void mo7719a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.f3546A != this) {
            m7700a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.f3583o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7718a(Parcelable parcelable) {
        Fragment fragment;
        Bundle bundle;
        FragmentState fragmentState;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.f3627a != null) {
                for (Fragment fragment2 : this.f3784I.m7613c()) {
                    if (f3777b) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained ".concat(String.valueOf(fragment2)));
                    }
                    Iterator<FragmentState> it = fragmentManagerState.f3627a.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            fragmentState = null;
                            break;
                        }
                        fragmentState = it.next();
                        if (fragmentState.f3633b.equals(fragment2.f3583o)) {
                            break;
                        }
                    }
                    if (fragmentState == null) {
                        if (f3777b) {
                            Log.v("FragmentManager", "Discarding retained Fragment " + fragment2 + " that was not found in the set of active Fragments " + fragmentManagerState.f3627a);
                        }
                        m7712a(fragment2, 1, 0, 0, false);
                        fragment2.f3589u = true;
                        m7712a(fragment2, 0, 0, 0, false);
                    } else {
                        fragmentState.f3645n = fragment2;
                        fragment2.f3581m = null;
                        fragment2.f3594z = 0;
                        fragment2.f3591w = false;
                        fragment2.f3588t = false;
                        fragment2.f3586r = fragment2.f3585q != null ? fragment2.f3585q.f3583o : null;
                        fragment2.f3585q = null;
                        if (fragmentState.f3644m != null) {
                            fragmentState.f3644m.setClassLoader(this.f3796n.m7740i().getClassLoader());
                            fragment2.f3581m = fragmentState.f3644m.getSparseParcelableArray("android:view_state");
                            fragment2.f3580l = fragmentState.f3644m;
                        }
                    }
                }
                this.f3789g.clear();
                Iterator<FragmentState> it2 = fragmentManagerState.f3627a.iterator();
                while (it2.hasNext()) {
                    FragmentState next = it2.next();
                    if (next != null) {
                        ClassLoader classLoader = this.f3796n.m7740i().getClassLoader();
                        C0895k g = mo7665g();
                        if (next.f3645n == null) {
                            if (next.f3641j != null) {
                                next.f3641j.setClassLoader(classLoader);
                            }
                            next.f3645n = g.mo7618c(classLoader, next.f3632a);
                            next.f3645n.setArguments(next.f3641j);
                            if (next.f3644m != null) {
                                next.f3644m.setClassLoader(classLoader);
                                fragment = next.f3645n;
                                bundle = next.f3644m;
                            } else {
                                fragment = next.f3645n;
                                bundle = new Bundle();
                            }
                            fragment.f3580l = bundle;
                            next.f3645n.f3583o = next.f3633b;
                            next.f3645n.f3590v = next.f3634c;
                            next.f3645n.f3592x = true;
                            next.f3645n.f3550E = next.f3635d;
                            next.f3645n.f3551F = next.f3636e;
                            next.f3645n.f3552G = next.f3637f;
                            next.f3645n.f3555J = next.f3638g;
                            next.f3645n.f3589u = next.f3639h;
                            next.f3645n.f3554I = next.f3640i;
                            next.f3645n.f3553H = next.f3642k;
                            next.f3645n.f3571Z = AbstractC0927f.EnumC0929b.values()[next.f3643l];
                            if (f3777b) {
                                Log.v("FragmentManager", "Instantiated fragment " + next.f3645n);
                            }
                        }
                        Fragment fragment3 = next.f3645n;
                        fragment3.f3546A = this;
                        if (f3777b) {
                            Log.v("FragmentManager", "restoreSaveState: active (" + fragment3.f3583o + "): " + fragment3);
                        }
                        this.f3789g.put(fragment3.f3583o, fragment3);
                        next.f3645n = null;
                    }
                }
                this.f3788f.clear();
                if (fragmentManagerState.f3628b != null) {
                    Iterator<String> it3 = fragmentManagerState.f3628b.iterator();
                    while (it3.hasNext()) {
                        String next2 = it3.next();
                        Fragment fragment4 = this.f3789g.get(next2);
                        if (fragment4 == null) {
                            m7700a(new IllegalStateException("No instantiated fragment for (" + next2 + ")"));
                        }
                        fragment4.f3588t = true;
                        if (f3777b) {
                            Log.v("FragmentManager", "restoreSaveState: added (" + next2 + "): " + fragment4);
                        }
                        if (!this.f3788f.contains(fragment4)) {
                            synchronized (this.f3788f) {
                                this.f3788f.add(fragment4);
                            }
                        } else {
                            throw new IllegalStateException("Already added ".concat(String.valueOf(fragment4)));
                        }
                    }
                }
                if (fragmentManagerState.f3629c != null) {
                    this.f3790h = new ArrayList<>(fragmentManagerState.f3629c.length);
                    for (int i = 0; i < fragmentManagerState.f3629c.length; i++) {
                        C0865a a = fragmentManagerState.f3629c[i].m7911a(this);
                        if (f3777b) {
                            Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + a.f3660c + "): " + a);
                            PrintWriter printWriter = new PrintWriter(new C0680b("FragmentManager"));
                            a.m7843a("  ", printWriter, false);
                            printWriter.close();
                        }
                        this.f3790h.add(a);
                        if (a.f3660c >= 0) {
                            m7723a(a.f3660c, a);
                        }
                    }
                } else {
                    this.f3790h = null;
                }
                if (fragmentManagerState.f3630d != null) {
                    this.f3799q = this.f3789g.get(fragmentManagerState.f3630d);
                    m7636u(this.f3799q);
                }
                this.f3787e = fragmentManagerState.f3631e;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:150:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0522  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7712a(androidx.fragment.app.Fragment r8, int r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 2163
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0898n.m7712a(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    /* renamed from: a */
    public final void m7706a(Fragment fragment, AbstractC0927f.EnumC0929b bVar) {
        if (this.f3789g.get(fragment.f3583o) == fragment && (fragment.f3547B == null || fragment.getFragmentManager() == this)) {
            fragment.f3571Z = bVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: a */
    public final void m7705a(Fragment fragment, boolean z) {
        if (f3777b) {
            Log.v("FragmentManager", "add: ".concat(String.valueOf(fragment)));
        }
        m7662h(fragment);
        if (fragment.f3554I) {
            return;
        }
        if (!this.f3788f.contains(fragment)) {
            synchronized (this.f3788f) {
                this.f3788f.add(fragment);
            }
            fragment.f3588t = true;
            fragment.f3589u = false;
            if (fragment.f3560O == null) {
                fragment.f3567V = false;
            }
            if (m7732C(fragment)) {
                this.f3800r = true;
            }
            if (z) {
                m7648o(fragment);
                return;
            }
            return;
        }
        throw new IllegalStateException("Fragment already added: ".concat(String.valueOf(fragment)));
    }

    /* renamed from: a */
    final void m7703a(C0865a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.m7840a(z3);
        } else {
            aVar.m7835f();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            C0869ac.m7801a(this, (ArrayList<C0865a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z3) {
            m7722a(this.f3795m, true);
        }
        for (Fragment fragment : this.f3789g.values()) {
            if (fragment != null && fragment.f3560O != null && fragment.f3566U && aVar.m7839b(fragment.f3551F)) {
                if (fragment.f3568W > 0.0f) {
                    fragment.f3560O.setAlpha(fragment.f3568W);
                }
                if (z3) {
                    fragment.f3568W = 0.0f;
                } else {
                    fragment.f3568W = -1.0f;
                    fragment.f3566U = false;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m7702a(AbstractC0896l lVar, AbstractC0893i iVar, Fragment fragment) {
        if (this.f3796n == null) {
            this.f3796n = lVar;
            this.f3797o = iVar;
            this.f3798p = fragment;
            if (this.f3798p != null) {
                m7631x();
            }
            if (lVar instanceof AbstractC0246d) {
                AbstractC0246d dVar = (AbstractC0246d) lVar;
                this.f3781F = dVar.mo7850a_();
                Fragment fragment2 = dVar;
                if (fragment != null) {
                    fragment2 = fragment;
                }
                this.f3781F.m9959a(fragment2, this.f3782G);
            }
            this.f3784I = fragment != null ? fragment.f3546A.f3784I.m7611d(fragment) : lVar instanceof AbstractC0950w ? C0913w.m7616a(((AbstractC0950w) lVar).getViewModelStore()) : new C0913w(false);
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* renamed from: a */
    public final void m7701a(AbstractC0902d dVar, boolean z) {
        if (!z) {
            m7737A();
        }
        synchronized (this) {
            if (!this.f3803u && this.f3796n != null) {
                if (this.f3785c == null) {
                    this.f3785c = new ArrayList<>();
                }
                this.f3785c.add(dVar);
                m7659j();
                return;
            }
            if (!z) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: a */
    public final void mo7698a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        String str2 = str + "    ";
        if (!this.f3789g.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment fragment : this.f3789g.values()) {
                printWriter.print(str);
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size5 = this.f3788f.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size5; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f3788f.get(i).toString());
            }
        }
        ArrayList<Fragment> arrayList = this.f3791i;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size4; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f3791i.get(i2).toString());
            }
        }
        ArrayList<C0865a> arrayList2 = this.f3790h;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size3; i3++) {
                C0865a aVar = this.f3790h.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.m7844a(str2, printWriter);
            }
        }
        synchronized (this) {
            if (this.f3792j != null && (size2 = this.f3792j.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i4 = 0; i4 < size2; i4++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println((C0865a) this.f3792j.get(i4));
                }
            }
            if (this.f3793k != null && this.f3793k.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.f3793k.toArray()));
            }
        }
        ArrayList<AbstractC0902d> arrayList3 = this.f3785c;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i5 = 0; i5 < size; i5++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println((AbstractC0902d) this.f3785c.get(i5));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f3796n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f3797o);
        if (this.f3798p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f3798p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f3795m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f3801s);
        printWriter.print(" mStopped=");
        printWriter.print(this.f3802t);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f3803u);
        if (this.f3800r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f3800r);
        }
    }

    /* renamed from: a */
    public final void m7693a(boolean z) {
        for (int size = this.f3788f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f3788f.get(size);
            if (fragment != null) {
                fragment.m7897a(z);
            }
        }
    }

    /* renamed from: a */
    public final boolean m7717a(Menu menu) {
        if (this.f3795m <= 0) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.f3788f.size(); i++) {
            Fragment fragment = this.f3788f.get(i);
            z = z;
            if (fragment != null) {
                z = z;
                if (fragment.m7903a(menu)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m7716a(Menu menu, MenuInflater menuInflater) {
        if (this.f3795m <= 0) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (int i = 0; i < this.f3788f.size(); i++) {
            Fragment fragment = this.f3788f.get(i);
            arrayList = arrayList;
            z = z;
            if (fragment != null) {
                arrayList = arrayList;
                z = z;
                if (fragment.m7902a(menu, menuInflater)) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                    z = true;
                }
            }
        }
        if (this.f3791i != null) {
            for (int i2 = 0; i2 < this.f3791i.size(); i2++) {
                Fragment fragment2 = this.f3791i.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f3791i = arrayList;
        return z;
    }

    /* renamed from: a */
    public final boolean m7715a(MenuItem menuItem) {
        if (this.f3795m <= 0) {
            return false;
        }
        for (int i = 0; i < this.f3788f.size(); i++) {
            Fragment fragment = this.f3788f.get(i);
            if (fragment != null && fragment.m7901a(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    final boolean m7694a(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<C0865a> arrayList3 = this.f3790h;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f3790h.remove(size));
            arrayList2.add(Boolean.TRUE);
            return true;
        }
        if (str != null || i >= 0) {
            int size2 = this.f3790h.size() - 1;
            while (size2 >= 0) {
                C0865a aVar = this.f3790h.get(size2);
                if ((str != null && str.equals(aVar.f3670m)) || (i >= 0 && i == aVar.f3660c)) {
                    break;
                }
                size2--;
            }
            if (size2 < 0) {
                return false;
            }
            i3 = size2;
            if ((i2 & 1) != 0) {
                while (true) {
                    int i4 = size2 - 1;
                    i3 = i4;
                    if (i4 < 0) {
                        break;
                    }
                    C0865a aVar2 = this.f3790h.get(i4);
                    if (str != null) {
                        size2 = i4;
                        if (str.equals(aVar2.f3670m)) {
                            continue;
                        }
                    }
                    i3 = i4;
                    if (i < 0) {
                        break;
                    }
                    i3 = i4;
                    if (i != aVar2.f3660c) {
                        break;
                    }
                    size2 = i4;
                }
            }
        } else {
            i3 = -1;
        }
        if (i3 == this.f3790h.size() - 1) {
            return false;
        }
        for (int size3 = this.f3790h.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f3790h.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* renamed from: b */
    public final Fragment m7683b(String str) {
        Fragment a;
        for (Fragment fragment : this.f3789g.values()) {
            if (!(fragment == null || (a = fragment.m7898a(str)) == null)) {
                return a;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final void m7690b(Menu menu) {
        if (this.f3795m > 0) {
            for (int i = 0; i < this.f3788f.size(); i++) {
                Fragment fragment = this.f3788f.get(i);
                if (fragment != null) {
                    fragment.m7893b(menu);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m7684b(AbstractC0902d dVar, boolean z) {
        if (!z || (this.f3796n != null && !this.f3803u)) {
            m7674c(z);
            if (dVar.mo7625a(this.f3805w, this.f3806x)) {
                this.f3786d = true;
                try {
                    m7682b(this.f3805w, this.f3806x);
                } finally {
                    m7735B();
                }
            }
            m7631x();
            m7731D();
            m7729F();
        }
    }

    /* renamed from: b */
    public final void m7680b(boolean z) {
        for (int size = this.f3788f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f3788f.get(size);
            if (fragment != null) {
                fragment.m7891b(z);
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: b */
    public final boolean mo7692b() {
        boolean k = m7657k();
        m7733C();
        return k;
    }

    /* renamed from: b */
    public final boolean m7689b(MenuItem menuItem) {
        if (this.f3795m <= 0) {
            return false;
        }
        for (int i = 0; i < this.f3788f.size(); i++) {
            Fragment fragment = this.f3788f.get(i);
            if (fragment != null && fragment.m7892b(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m7687b(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        LayoutInflater$Factory2C0898n nVar = fragment.f3546A;
        return fragment == nVar.f3799q && m7687b(nVar.f3798p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final C0949v m7677c(Fragment fragment) {
        return this.f3784I.m7610e(fragment);
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: c */
    public final void mo7679c() {
        m7701a((AbstractC0902d) new C0903e(-1, 0), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m7671d(Fragment fragment) {
        if (m7661i()) {
            if (f3777b) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else if (this.f3784I.m7617a(fragment) && f3777b) {
            Log.v("FragmentManager", "Updating retained Fragments: Added ".concat(String.valueOf(fragment)));
        }
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: d */
    public final boolean mo7673d() {
        m7737A();
        return m7629y();
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: e */
    public final int mo7669e() {
        ArrayList<C0865a> arrayList = this.f3790h;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m7668e(Fragment fragment) {
        if (m7661i()) {
            if (f3777b) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else if (this.f3784I.m7612c(fragment) && f3777b) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed ".concat(String.valueOf(fragment)));
        }
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: f */
    public final List<Fragment> mo7667f() {
        List<Fragment> list;
        if (this.f3788f.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f3788f) {
            list = (List) this.f3788f.clone();
        }
        return list;
    }

    /* renamed from: f */
    public final void m7666f(Fragment fragment) {
        if (!fragment.f3562Q) {
            return;
        }
        if (this.f3786d) {
            this.f3804v = true;
            return;
        }
        fragment.f3562Q = false;
        m7712a(fragment, this.f3795m, 0, 0, false);
    }

    @Override // androidx.fragment.app.AbstractC0897m
    /* renamed from: g */
    public final C0895k mo7665g() {
        LayoutInflater$Factory2C0898n nVar = this;
        while (true) {
            if (super.mo7665g() == f3773a) {
                Fragment fragment = nVar.f3798p;
                if (fragment == null) {
                    nVar.m7738a(new C0911u(nVar));
                    break;
                }
                nVar = fragment.f3546A;
            } else {
                break;
            }
        }
        return super.mo7665g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m7664g(Fragment fragment) {
        if (fragment != null) {
            if (this.f3789g.containsKey(fragment.f3583o)) {
                int i = this.f3795m;
                int i2 = i;
                if (fragment.f3589u) {
                    i2 = fragment.m7910a() ? Math.min(i, 1) : Math.min(i, 0);
                }
                m7712a(fragment, i2, fragment.m7873o(), fragment.m7872p(), false);
                if (fragment.f3560O != null) {
                    Fragment r = m7642r(fragment);
                    if (r != null) {
                        View view = r.f3560O;
                        ViewGroup viewGroup = fragment.f3559N;
                        int indexOfChild = viewGroup.indexOfChild(view);
                        int indexOfChild2 = viewGroup.indexOfChild(fragment.f3560O);
                        if (indexOfChild2 < indexOfChild) {
                            viewGroup.removeViewAt(indexOfChild2);
                            viewGroup.addView(fragment.f3560O, indexOfChild);
                        }
                    }
                    if (fragment.f3566U && fragment.f3559N != null) {
                        if (fragment.f3568W > 0.0f) {
                            fragment.f3560O.setAlpha(fragment.f3568W);
                        }
                        fragment.f3568W = 0.0f;
                        fragment.f3566U = false;
                        C0899a a = m7711a(fragment, fragment.m7873o(), true, fragment.m7872p());
                        if (a != null) {
                            if (a.f3809a != null) {
                                fragment.f3560O.startAnimation(a.f3809a);
                            } else {
                                a.f3810b.setTarget(fragment.f3560O);
                                a.f3810b.start();
                            }
                        }
                    }
                }
                if (fragment.f3567V) {
                    if (fragment.f3560O != null) {
                        C0899a a2 = m7711a(fragment, fragment.m7873o(), !fragment.f3553H, fragment.m7872p());
                        if (a2 == null || a2.f3810b == null) {
                            if (a2 != null) {
                                fragment.f3560O.startAnimation(a2.f3809a);
                                a2.f3809a.start();
                            }
                            fragment.f3560O.setVisibility((!fragment.f3553H || fragment.m7865w()) ? 0 : 8);
                            if (fragment.m7865w()) {
                                fragment.m7888c(false);
                            }
                        } else {
                            a2.f3810b.setTarget(fragment.f3560O);
                            if (!fragment.f3553H) {
                                fragment.f3560O.setVisibility(0);
                            } else if (fragment.m7865w()) {
                                fragment.m7888c(false);
                            } else {
                                ViewGroup viewGroup2 = fragment.f3559N;
                                View view2 = fragment.f3560O;
                                viewGroup2.startViewTransition(view2);
                                a2.f3810b.addListener(new C0910t(this, viewGroup2, view2, fragment));
                            }
                            a2.f3810b.start();
                        }
                    }
                    if (fragment.f3588t && m7732C(fragment)) {
                        this.f3800r = true;
                    }
                    fragment.f3567V = false;
                    fragment.onHiddenChanged(fragment.f3553H);
                }
            } else if (f3777b) {
                Log.v("FragmentManager", "Ignoring moving " + fragment + " to state " + this.f3795m + "since it is not added to " + this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m7663h() {
        m7657k();
        if (this.f3782G.m9957a()) {
            mo7673d();
        } else {
            this.f3781F.m9960a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m7662h(Fragment fragment) {
        if (this.f3789g.get(fragment.f3583o) == null) {
            this.f3789g.put(fragment.f3583o, fragment);
            if (fragment.f3556K) {
                if (fragment.f3555J) {
                    m7671d(fragment);
                } else {
                    m7668e(fragment);
                }
                fragment.f3556K = false;
            }
            if (f3777b) {
                Log.v("FragmentManager", "Added fragment to active set ".concat(String.valueOf(fragment)));
            }
        }
    }

    /* renamed from: i */
    public final void m7660i(Fragment fragment) {
        if (f3777b) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.f3594z);
        }
        boolean a = fragment.m7910a();
        if (!fragment.f3554I || (!a)) {
            synchronized (this.f3788f) {
                this.f3788f.remove(fragment);
            }
            if (m7732C(fragment)) {
                this.f3800r = true;
            }
            fragment.f3588t = false;
            fragment.f3589u = true;
        }
    }

    /* renamed from: i */
    public final boolean m7661i() {
        return this.f3801s || this.f3802t;
    }

    /* renamed from: j */
    final void m7659j() {
        synchronized (this) {
            boolean z = this.f3779B != null && !this.f3779B.isEmpty();
            boolean z2 = false;
            if (this.f3785c != null) {
                z2 = false;
                if (this.f3785c.size() == 1) {
                    z2 = true;
                }
            }
            if (z || z2) {
                this.f3796n.m7739j().removeCallbacks(this.f3780C);
                this.f3796n.m7739j().post(this.f3780C);
                m7631x();
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k */
    public final boolean m7657k() {
        m7674c(true);
        boolean z = false;
        while (m7675c(this.f3805w, this.f3806x)) {
            this.f3786d = true;
            try {
                m7682b(this.f3805w, this.f3806x);
                m7735B();
                z = true;
            } catch (Throwable th) {
                m7735B();
                throw th;
            }
        }
        m7631x();
        m7731D();
        m7729F();
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public final Parcelable m7655l() {
        ArrayList<String> arrayList;
        m7733C();
        for (Fragment fragment : this.f3789g.values()) {
            if (fragment != null) {
                if (fragment.m7869s() != null) {
                    int u = fragment.m7867u();
                    View s = fragment.m7869s();
                    Animation animation = s.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        s.clearAnimation();
                    }
                    fragment.m7900a((View) null);
                    m7712a(fragment, u, 0, 0, false);
                } else if (fragment.m7868t() != null) {
                    fragment.m7868t().end();
                }
            }
        }
        m7657k();
        this.f3801s = true;
        if (this.f3789g.isEmpty()) {
            return null;
        }
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(this.f3789g.size());
        int i = 0;
        boolean z = false;
        for (Fragment fragment2 : this.f3789g.values()) {
            if (fragment2 != null) {
                if (fragment2.f3546A != this) {
                    m7700a(new IllegalStateException("Failure saving state: active " + fragment2 + " was removed from the FragmentManager"));
                }
                FragmentState fragmentState = new FragmentState(fragment2);
                arrayList2.add(fragmentState);
                if (fragment2.f3579k <= 0 || fragmentState.f3644m != null) {
                    fragmentState.f3644m = fragment2.f3580l;
                } else {
                    fragmentState.f3644m = m7638t(fragment2);
                    if (fragment2.f3586r != null) {
                        Fragment fragment3 = this.f3789g.get(fragment2.f3586r);
                        if (fragment3 == null) {
                            m7700a(new IllegalStateException("Failure saving state: " + fragment2 + " has target not in fragment manager: " + fragment2.f3586r));
                        }
                        if (fragmentState.f3644m == null) {
                            fragmentState.f3644m = new Bundle();
                        }
                        mo7719a(fragmentState.f3644m, "android:target_state", fragment3);
                        if (fragment2.f3587s != 0) {
                            fragmentState.f3644m.putInt("android:target_req_state", fragment2.f3587s);
                        }
                    }
                }
                if (f3777b) {
                    Log.v("FragmentManager", "Saved state of " + fragment2 + ": " + fragmentState.f3644m);
                }
                z = true;
            }
        }
        if (z) {
            int size = this.f3788f.size();
            if (size > 0) {
                ArrayList<String> arrayList3 = new ArrayList<>(size);
                Iterator<Fragment> it = this.f3788f.iterator();
                while (true) {
                    arrayList = arrayList3;
                    if (!it.hasNext()) {
                        break;
                    }
                    Fragment next = it.next();
                    arrayList3.add(next.f3583o);
                    if (next.f3546A != this) {
                        m7700a(new IllegalStateException("Failure saving state: active " + next + " was removed from the FragmentManager"));
                    }
                    if (f3777b) {
                        Log.v("FragmentManager", "saveAllState: adding fragment (" + next.f3583o + "): " + next);
                    }
                }
            } else {
                arrayList = null;
            }
            ArrayList<C0865a> arrayList4 = this.f3790h;
            BackStackState[] backStackStateArr = null;
            if (arrayList4 != null) {
                int size2 = arrayList4.size();
                backStackStateArr = null;
                if (size2 > 0) {
                    BackStackState[] backStackStateArr2 = new BackStackState[size2];
                    while (true) {
                        backStackStateArr = backStackStateArr2;
                        if (i >= size2) {
                            break;
                        }
                        backStackStateArr2[i] = new BackStackState(this.f3790h.get(i));
                        if (f3777b) {
                            Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.f3790h.get(i));
                        }
                        i++;
                    }
                }
            }
            FragmentManagerState fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.f3627a = arrayList2;
            fragmentManagerState.f3628b = arrayList;
            fragmentManagerState.f3629c = backStackStateArr;
            Fragment fragment4 = this.f3799q;
            if (fragment4 != null) {
                fragmentManagerState.f3630d = fragment4.f3583o;
            }
            fragmentManagerState.f3631e = this.f3787e;
            return fragmentManagerState;
        } else if (!f3777b) {
            return null;
        } else {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
    }

    /* renamed from: l */
    public final void m7654l(Fragment fragment) {
        if (f3777b) {
            Log.v("FragmentManager", "detach: ".concat(String.valueOf(fragment)));
        }
        if (!fragment.f3554I) {
            fragment.f3554I = true;
            if (fragment.f3588t) {
                if (f3777b) {
                    Log.v("FragmentManager", "remove from detach: ".concat(String.valueOf(fragment)));
                }
                synchronized (this.f3788f) {
                    this.f3788f.remove(fragment);
                }
                if (m7732C(fragment)) {
                    this.f3800r = true;
                }
                fragment.f3588t = false;
            }
        }
    }

    /* renamed from: m */
    public final void m7653m() {
        this.f3801s = false;
        this.f3802t = false;
        int size = this.f3788f.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = this.f3788f.get(i);
            if (fragment != null) {
                fragment.f3548C.m7653m();
            }
        }
    }

    /* renamed from: m */
    public final void m7652m(Fragment fragment) {
        if (f3777b) {
            Log.v("FragmentManager", "attach: ".concat(String.valueOf(fragment)));
        }
        if (fragment.f3554I) {
            fragment.f3554I = false;
            if (fragment.f3588t) {
                return;
            }
            if (!this.f3788f.contains(fragment)) {
                if (f3777b) {
                    Log.v("FragmentManager", "add from attach: ".concat(String.valueOf(fragment)));
                }
                synchronized (this.f3788f) {
                    this.f3788f.add(fragment);
                }
                fragment.f3588t = true;
                if (m7732C(fragment)) {
                    this.f3800r = true;
                    return;
                }
                return;
            }
            throw new IllegalStateException("Fragment already added: ".concat(String.valueOf(fragment)));
        }
    }

    /* renamed from: n */
    public final void m7651n() {
        this.f3801s = false;
        this.f3802t = false;
        m7672d(1);
    }

    /* renamed from: n */
    public final void m7650n(Fragment fragment) {
        if (fragment == null || (this.f3789g.get(fragment.f3583o) == fragment && (fragment.f3547B == null || fragment.getFragmentManager() == this))) {
            Fragment fragment2 = this.f3799q;
            this.f3799q = fragment;
            m7636u(fragment2);
            m7636u(this.f3799q);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: o */
    public final void m7649o() {
        this.f3801s = false;
        this.f3802t = false;
        m7672d(2);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment = null;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0901c.f3816a);
        int i = 0;
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (str2 == null || !C0895k.m7757a(context.getClassLoader(), str2)) {
            return null;
        }
        if (view != null) {
            i = view.getId();
        }
        if (i == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment = m7678c(resourceId);
        }
        Fragment fragment2 = fragment;
        if (fragment == null) {
            fragment2 = fragment;
            if (string != null) {
                fragment2 = mo7699a(string);
            }
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (i != -1) {
                fragment3 = m7678c(i);
            }
        }
        if (f3777b) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragment3);
        }
        if (fragment3 == null) {
            fragment3 = mo7665g().mo7618c(context.getClassLoader(), str2);
            fragment3.f3590v = true;
            fragment3.f3550E = resourceId != 0 ? resourceId : i;
            fragment3.f3551F = i;
            fragment3.f3552G = string;
            fragment3.f3591w = true;
            fragment3.f3546A = this;
            AbstractC0896l lVar = this.f3796n;
            fragment3.f3547B = lVar;
            fragment3.onInflate(lVar.m7740i(), attributeSet, fragment3.f3580l);
            m7705a(fragment3, true);
        } else if (!fragment3.f3591w) {
            fragment3.f3591w = true;
            AbstractC0896l lVar2 = this.f3796n;
            fragment3.f3547B = lVar2;
            fragment3.onInflate(lVar2.m7740i(), attributeSet, fragment3.f3580l);
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i) + " with another fragment for " + str2);
        }
        if (this.f3795m > 0 || !fragment3.f3590v) {
            m7648o(fragment3);
        } else {
            m7712a(fragment3, 1, 0, 0, false);
        }
        if (fragment3.f3560O != null) {
            if (resourceId != 0) {
                fragment3.f3560O.setId(resourceId);
            }
            if (fragment3.f3560O.getTag() == null) {
                fragment3.f3560O.setTag(string);
            }
            return fragment3.f3560O;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: p */
    public final void m7647p() {
        this.f3801s = false;
        this.f3802t = false;
        m7672d(3);
    }

    /* renamed from: q */
    public final void m7645q() {
        this.f3801s = false;
        this.f3802t = false;
        m7672d(4);
    }

    /* renamed from: r */
    public final void m7643r() {
        m7672d(3);
    }

    /* renamed from: s */
    public final void m7641s() {
        this.f3802t = true;
        m7672d(2);
    }

    /* renamed from: t */
    public final void m7639t() {
        m7672d(1);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f3798p;
        if (fragment != null) {
            C0679a.m8556a(fragment, sb);
        } else {
            C0679a.m8556a(this.f3796n, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u */
    public final void m7637u() {
        this.f3803u = true;
        m7657k();
        m7672d(0);
        this.f3796n = null;
        this.f3797o = null;
        this.f3798p = null;
        if (this.f3781F != null) {
            this.f3782G.m9954b();
            this.f3781F = null;
        }
    }

    /* renamed from: v */
    public final void m7635v() {
        for (int i = 0; i < this.f3788f.size(); i++) {
            Fragment fragment = this.f3788f.get(i);
            if (fragment != null) {
                fragment.m7880h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public final void m7633w() {
        m7631x();
        m7636u(this.f3799q);
    }
}
