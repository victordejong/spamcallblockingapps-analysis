package p012b.p063m.p064a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
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
import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.app.BackStackState;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerState;
import androidx.fragment.app.FragmentState;
import androidx.lifecycle.Lifecycle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p012b.p013a.AbstractC0571b;
import p012b.p013a.AbstractC0572c;
import p012b.p035f.C0782b;
import p012b.p042i.p053o.C0941a;
import p012b.p042i.p053o.C0942b;
import p012b.p042i.p054p.ViewTreeObserver$OnPreDrawListenerC1000s;
import p012b.p063m.p064a.AbstractC1059g;
import p012b.p068o.AbstractC1126s;
import p012b.p068o.C1125r;
/* renamed from: b.m.a.h */
/* loaded from: classes-dex2jar.jar:b/m/a/h.class */
public final class LayoutInflater$Factory2C1062h extends AbstractC1059g implements LayoutInflater.Factory2 {

    /* renamed from: H */
    public static boolean f4442H = false;

    /* renamed from: I */
    public static final Interpolator f4443I = new DecelerateInterpolator(2.5f);

    /* renamed from: J */
    public static final Interpolator f4444J = new DecelerateInterpolator(1.5f);

    /* renamed from: A */
    public ArrayList<Boolean> f4445A;

    /* renamed from: B */
    public ArrayList<Fragment> f4446B;

    /* renamed from: E */
    public ArrayList<C1076m> f4449E;

    /* renamed from: F */
    public C1077i f4450F;

    /* renamed from: c */
    public ArrayList<AbstractC1074k> f4452c;

    /* renamed from: d */
    public boolean f4453d;

    /* renamed from: h */
    public ArrayList<C1052a> f4457h;

    /* renamed from: i */
    public ArrayList<Fragment> f4458i;

    /* renamed from: j */
    public OnBackPressedDispatcher f4459j;

    /* renamed from: l */
    public ArrayList<C1052a> f4461l;

    /* renamed from: m */
    public ArrayList<Integer> f4462m;

    /* renamed from: n */
    public ArrayList<AbstractC1059g.AbstractC1061b> f4463n;

    /* renamed from: q */
    public AbstractC1058f f4466q;

    /* renamed from: r */
    public AbstractC1055c f4467r;

    /* renamed from: s */
    public Fragment f4468s;

    /* renamed from: t */
    public Fragment f4469t;

    /* renamed from: u */
    public boolean f4470u;

    /* renamed from: v */
    public boolean f4471v;

    /* renamed from: w */
    public boolean f4472w;

    /* renamed from: x */
    public boolean f4473x;

    /* renamed from: y */
    public boolean f4474y;

    /* renamed from: z */
    public ArrayList<C1052a> f4475z;

    /* renamed from: e */
    public int f4454e = 0;

    /* renamed from: f */
    public final ArrayList<Fragment> f4455f = new ArrayList<>();

    /* renamed from: g */
    public final HashMap<String, Fragment> f4456g = new HashMap<>();

    /* renamed from: k */
    public final AbstractC0571b f4460k = new C1063a(false);

    /* renamed from: o */
    public final CopyOnWriteArrayList<C1072i> f4464o = new CopyOnWriteArrayList<>();

    /* renamed from: p */
    public int f4465p = 0;

    /* renamed from: C */
    public Bundle f4447C = null;

    /* renamed from: D */
    public SparseArray<Parcelable> f4448D = null;

    /* renamed from: G */
    public Runnable f4451G = new RunnableC1064b();

    /* renamed from: b.m.a.h$a */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$a.class */
    public class C1063a extends AbstractC0571b {
        public C1063a(boolean z) {
            super(z);
        }

        @Override // p012b.p013a.AbstractC0571b
        /* renamed from: a */
        public void mo34767a() {
            LayoutInflater$Factory2C1062h.this.m34886B();
        }
    }

    /* renamed from: b.m.a.h$b */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$b.class */
    public class RunnableC1064b implements Runnable {
        public RunnableC1064b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LayoutInflater$Factory2C1062h.this.m34772w();
        }
    }

    /* renamed from: b.m.a.h$c  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$c.class */
    public class animationAnimation$AnimationListenerC1065c implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f4478a;

        /* renamed from: b */
        public final /* synthetic */ Fragment f4479b;

        /* renamed from: b.m.a.h$c$a */
        /* loaded from: classes-dex2jar.jar:b/m/a/h$c$a.class */
        public class RunnableC1066a implements Runnable {
            public RunnableC1066a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (animationAnimation$AnimationListenerC1065c.this.f4479b.m38375k() != null) {
                    animationAnimation$AnimationListenerC1065c.this.f4479b.m38405b((View) null);
                    animationAnimation$AnimationListenerC1065c cVar = animationAnimation$AnimationListenerC1065c.this;
                    LayoutInflater$Factory2C1062h hVar = LayoutInflater$Factory2C1062h.this;
                    Fragment fragment = cVar.f4479b;
                    hVar.m34863a(fragment, fragment.m38455G(), 0, 0, false);
                }
            }
        }

        public animationAnimation$AnimationListenerC1065c(ViewGroup viewGroup, Fragment fragment) {
            this.f4478a = viewGroup;
            this.f4479b = fragment;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f4478a.post(new RunnableC1066a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: b.m.a.h$d */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$d.class */
    public class C1067d extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f4482a;

        /* renamed from: b */
        public final /* synthetic */ View f4483b;

        /* renamed from: c */
        public final /* synthetic */ Fragment f4484c;

        public C1067d(ViewGroup viewGroup, View view, Fragment fragment) {
            this.f4482a = viewGroup;
            this.f4483b = view;
            this.f4484c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4482a.endViewTransition(this.f4483b);
            Animator l = this.f4484c.m38371l();
            this.f4484c.m38432a((Animator) null);
            if (l != null && this.f4482a.indexOfChild(this.f4483b) < 0) {
                LayoutInflater$Factory2C1062h hVar = LayoutInflater$Factory2C1062h.this;
                Fragment fragment = this.f4484c;
                hVar.m34863a(fragment, fragment.m38455G(), 0, 0, false);
            }
        }
    }

    /* renamed from: b.m.a.h$e */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$e.class */
    public class C1068e extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f4486a;

        /* renamed from: b */
        public final /* synthetic */ View f4487b;

        /* renamed from: c */
        public final /* synthetic */ Fragment f4488c;

        public C1068e(LayoutInflater$Factory2C1062h hVar, ViewGroup viewGroup, View view, Fragment fragment) {
            this.f4486a = viewGroup;
            this.f4487b = view;
            this.f4488c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4486a.endViewTransition(this.f4487b);
            animator.removeListener(this);
            Fragment fragment = this.f4488c;
            View view = fragment.f1266G;
            if (view != null && fragment.f1306y) {
                view.setVisibility(8);
            }
        }
    }

    /* renamed from: b.m.a.h$f */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$f.class */
    public class C1069f extends C1057e {
        public C1069f() {
        }

        @Override // p012b.p063m.p064a.C1057e
        /* renamed from: a */
        public Fragment mo34766a(ClassLoader classLoader, String str) {
            AbstractC1058f fVar = LayoutInflater$Factory2C1062h.this.f4466q;
            return fVar.m34948a(fVar.m34910g(), str, (Bundle) null);
        }
    }

    /* renamed from: b.m.a.h$g */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$g.class */
    public static class C1070g {

        /* renamed from: a */
        public final Animation f4490a;

        /* renamed from: b */
        public final Animator f4491b;

        public C1070g(Animator animator) {
            this.f4490a = null;
            this.f4491b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }

        public C1070g(Animation animation) {
            this.f4490a = animation;
            this.f4491b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }
    }

    /* renamed from: b.m.a.h$h */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$h.class */
    public static class RunnableC1071h extends AnimationSet implements Runnable {

        /* renamed from: a */
        public final ViewGroup f4492a;

        /* renamed from: b */
        public final View f4493b;

        /* renamed from: c */
        public boolean f4494c;

        /* renamed from: d */
        public boolean f4495d;

        /* renamed from: e */
        public boolean f4496e = true;

        public RunnableC1071h(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f4492a = viewGroup;
            this.f4493b = view;
            addAnimation(animation);
            this.f4492a.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f4496e = true;
            if (this.f4494c) {
                return !this.f4495d;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.f4494c = true;
            ViewTreeObserver$OnPreDrawListenerC1000s.m35257a(this.f4492a, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f4496e = true;
            if (this.f4494c) {
                return !this.f4495d;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.f4494c = true;
            ViewTreeObserver$OnPreDrawListenerC1000s.m35257a(this.f4492a, this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4494c || !this.f4496e) {
                this.f4492a.endViewTransition(this.f4493b);
                this.f4495d = true;
                return;
            }
            this.f4496e = false;
            this.f4492a.post(this);
        }
    }

    /* renamed from: b.m.a.h$i */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$i.class */
    public static final class C1072i {

        /* renamed from: a */
        public final AbstractC1059g.AbstractC1060a f4497a;

        /* renamed from: b */
        public final boolean f4498b;
    }

    /* renamed from: b.m.a.h$j */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$j.class */
    public static class C1073j {

        /* renamed from: a */
        public static final int[] f4499a = {16842755, 16842960, 16842961};
    }

    /* renamed from: b.m.a.h$k */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$k.class */
    public interface AbstractC1074k {
        /* renamed from: a */
        boolean mo34765a(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: b.m.a.h$l */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$l.class */
    public class C1075l implements AbstractC1074k {

        /* renamed from: a */
        public final String f4500a;

        /* renamed from: b */
        public final int f4501b;

        /* renamed from: c */
        public final int f4502c;

        public C1075l(String str, int i, int i2) {
            this.f4500a = str;
            this.f4501b = i;
            this.f4502c = i2;
        }

        @Override // p012b.p063m.p064a.LayoutInflater$Factory2C1062h.AbstractC1074k
        /* renamed from: a */
        public boolean mo34765a(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = LayoutInflater$Factory2C1062h.this.f4469t;
            if (fragment == null || this.f4501b >= 0 || this.f4500a != null || !fragment.m38365n().mo34809f()) {
                return LayoutInflater$Factory2C1062h.this.m34843a(arrayList, arrayList2, this.f4500a, this.f4501b, this.f4502c);
            }
            return false;
        }
    }

    /* renamed from: b.m.a.h$m */
    /* loaded from: classes-dex2jar.jar:b/m/a/h$m.class */
    public static class C1076m implements Fragment.AbstractC0225e {

        /* renamed from: a */
        public final boolean f4504a;

        /* renamed from: b */
        public final C1052a f4505b;

        /* renamed from: c */
        public int f4506c;

        public C1076m(C1052a aVar, boolean z) {
            this.f4504a = z;
            this.f4505b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0225e
        /* renamed from: a */
        public void mo34764a() {
            this.f4506c++;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0225e
        /* renamed from: b */
        public void mo34763b() {
            int i = this.f4506c - 1;
            this.f4506c = i;
            if (i == 0) {
                this.f4505b.f4418r.m34881G();
            }
        }

        /* renamed from: c */
        public void m34762c() {
            C1052a aVar = this.f4505b;
            aVar.f4418r.m34853a(aVar, this.f4504a, false, false);
        }

        /* renamed from: d */
        public void m34761d() {
            boolean z = this.f4506c > 0;
            LayoutInflater$Factory2C1062h hVar = this.f4505b.f4418r;
            int size = hVar.f4455f.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = hVar.f4455f.get(i);
                fragment.m38416a((Fragment.AbstractC0225e) null);
                if (z && fragment.m38441U()) {
                    fragment.m38346w0();
                }
            }
            C1052a aVar = this.f4505b;
            aVar.f4418r.m34853a(aVar, this.f4504a, !z, true);
        }

        /* renamed from: e */
        public boolean m34760e() {
            return this.f4506c == 0;
        }
    }

    /* renamed from: a */
    public static C1070g m34877a(float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(f4444J);
        alphaAnimation.setDuration(220L);
        return new C1070g(alphaAnimation);
    }

    /* renamed from: a */
    public static C1070g m34876a(float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(f4443I);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(f4444J);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new C1070g(animationSet);
    }

    /* renamed from: b */
    public static int m34839b(int i, boolean z) {
        return i != 4097 ? i != 4099 ? i != 8194 ? -1 : z ? 3 : 4 : z ? 5 : 6 : z ? 1 : 2;
    }

    /* renamed from: b */
    public static void m34827b(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            C1052a aVar = arrayList.get(i);
            boolean z = true;
            if (arrayList2.get(i).booleanValue()) {
                aVar.m34970a(-1);
                if (i != i2 - 1) {
                    z = false;
                }
                aVar.m34960b(z);
            } else {
                aVar.m34970a(1);
                aVar.m34959e();
            }
            i++;
        }
    }

    /* renamed from: e */
    public static int m34812e(int i) {
        int i2 = 8194;
        if (i != 4097) {
            i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
        }
        return i2;
    }

    /* renamed from: A */
    public Fragment m34887A() {
        return this.f4469t;
    }

    /* renamed from: B */
    public void m34886B() {
        m34772w();
        if (this.f4460k.m36904b()) {
            mo34809f();
        } else {
            this.f4459j.m39225a();
        }
    }

    /* renamed from: C */
    public boolean m34885C() {
        return this.f4471v || this.f4472w;
    }

    /* renamed from: D */
    public void m34884D() {
        this.f4471v = false;
        this.f4472w = false;
        int size = this.f4455f.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = this.f4455f.get(i);
            if (fragment != null) {
                fragment.m38436Z();
            }
        }
    }

    /* renamed from: E */
    public void m34883E() {
        if (this.f4463n != null) {
            for (int i = 0; i < this.f4463n.size(); i++) {
                this.f4463n.get(i).m34888a();
            }
        }
    }

    /* renamed from: F */
    public Parcelable m34882F() {
        ArrayList<String> arrayList;
        m34770x();
        m34774v();
        m34772w();
        this.f4471v = true;
        if (this.f4456g.isEmpty()) {
            return null;
        }
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(this.f4456g.size());
        int i = 0;
        boolean z = false;
        for (Fragment fragment : this.f4456g.values()) {
            if (fragment != null) {
                if (fragment.f1299r == this) {
                    FragmentState fragmentState = new FragmentState(fragment);
                    arrayList2.add(fragmentState);
                    if (fragment.f1282a <= 0 || fragmentState.f1360m != null) {
                        fragmentState.f1360m = fragment.f1283b;
                    } else {
                        fragmentState.f1360m = m34777t(fragment);
                        String str = fragment.f1289h;
                        if (str != null) {
                            Fragment fragment2 = this.f4456g.get(str);
                            if (fragment2 != null) {
                                if (fragmentState.f1360m == null) {
                                    fragmentState.f1360m = new Bundle();
                                }
                                m34869a(fragmentState.f1360m, "android:target_state", fragment2);
                                int i2 = fragment.f1290i;
                                if (i2 != 0) {
                                    fragmentState.f1360m.putInt("android:target_req_state", i2);
                                }
                            } else {
                                m34850a(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.f1289h));
                                throw null;
                            }
                        }
                    }
                    if (f4442H) {
                        Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.f1360m);
                    }
                    z = true;
                } else {
                    m34850a(new IllegalStateException("Failure saving state: active " + fragment + " was removed from the FragmentManager"));
                    throw null;
                }
            }
        }
        if (z) {
            int size = this.f4455f.size();
            if (size > 0) {
                ArrayList<String> arrayList3 = new ArrayList<>(size);
                Iterator<Fragment> it = this.f4455f.iterator();
                while (true) {
                    arrayList = arrayList3;
                    if (!it.hasNext()) {
                        break;
                    }
                    Fragment next = it.next();
                    arrayList3.add(next.f1286e);
                    if (next.f1299r != this) {
                        m34850a(new IllegalStateException("Failure saving state: active " + next + " was removed from the FragmentManager"));
                        throw null;
                    } else if (f4442H) {
                        Log.v("FragmentManager", "saveAllState: adding fragment (" + next.f1286e + "): " + next);
                    }
                }
            } else {
                arrayList = null;
            }
            ArrayList<C1052a> arrayList4 = this.f4457h;
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
                        backStackStateArr2[i] = new BackStackState(this.f4457h.get(i));
                        if (f4442H) {
                            Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.f4457h.get(i));
                        }
                        i++;
                    }
                }
            }
            FragmentManagerState fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.f1343a = arrayList2;
            fragmentManagerState.f1344b = arrayList;
            fragmentManagerState.f1345c = backStackStateArr;
            Fragment fragment3 = this.f4469t;
            if (fragment3 != null) {
                fragmentManagerState.f1346d = fragment3.f1286e;
            }
            fragmentManagerState.f1347e = this.f4454e;
            return fragmentManagerState;
        } else if (!f4442H) {
            return null;
        } else {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
    }

    /* renamed from: G */
    public void m34881G() {
        synchronized (this) {
            boolean z = this.f4449E != null && !this.f4449E.isEmpty();
            boolean z2 = false;
            if (this.f4452c != null) {
                z2 = false;
                if (this.f4452c.size() == 1) {
                    z2 = true;
                }
            }
            if (z || z2) {
                this.f4466q.m34909h().removeCallbacks(this.f4451G);
                this.f4466q.m34909h().post(this.f4451G);
                m34879I();
            }
        }
    }

    /* renamed from: H */
    public void m34880H() {
        for (Fragment fragment : this.f4456g.values()) {
            if (fragment != null) {
                m34783q(fragment);
            }
        }
    }

    /* renamed from: I */
    public final void m34879I() {
        ArrayList<AbstractC1074k> arrayList = this.f4452c;
        boolean z = true;
        if (arrayList == null || arrayList.isEmpty()) {
            AbstractC0571b bVar = this.f4460k;
            if (m34769y() <= 0 || !m34793l(this.f4468s)) {
                z = false;
            }
            bVar.m36905a(z);
            return;
        }
        this.f4460k.m36905a(true);
    }

    /* renamed from: a */
    public final int m34844a(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, C0782b<Fragment> bVar) {
        int i3 = i2;
        for (int i4 = i2 - 1; i4 >= i; i4--) {
            C1052a aVar = arrayList.get(i4);
            boolean booleanValue = arrayList2.get(i4).booleanValue();
            i3 = i3;
            if (aVar.m34957g() && !aVar.m34966a(arrayList, i4 + 1, i2)) {
                if (this.f4449E == null) {
                    this.f4449E = new ArrayList<>();
                }
                C1076m mVar = new C1076m(aVar, booleanValue);
                this.f4449E.add(mVar);
                aVar.m34969a(mVar);
                if (booleanValue) {
                    aVar.m34959e();
                } else {
                    aVar.m34960b(false);
                }
                i3--;
                if (i4 != i3) {
                    arrayList.remove(i4);
                    arrayList.add(i3, aVar);
                }
                m34855a(bVar);
            }
        }
        return i3;
    }

    /* renamed from: a */
    public Fragment m34870a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragment = this.f4456g.get(string);
        if (fragment != null) {
            return fragment;
        }
        m34850a(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        throw null;
    }

    @Override // p012b.p063m.p064a.AbstractC1059g
    /* renamed from: a */
    public Fragment mo34849a(String str) {
        if (str != null) {
            for (int size = this.f4455f.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f4455f.get(size);
                if (fragment != null && str.equals(fragment.f1305x)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (Fragment fragment2 : this.f4456g.values()) {
            if (fragment2 != null && str.equals(fragment2.f1305x)) {
                return fragment2;
            }
        }
        return null;
    }

    /* renamed from: a */
    public C1070g m34862a(Fragment fragment, int i, boolean z, int i2) {
        int b;
        int w = fragment.m38347w();
        fragment.m38435a(0);
        ViewGroup viewGroup = fragment.f1265F;
        if (viewGroup != null && viewGroup.getLayoutTransition() != null) {
            return null;
        }
        Animation a = fragment.m38433a(i, z, w);
        if (a != null) {
            return new C1070g(a);
        }
        Animator b2 = fragment.m38410b(i, z, w);
        if (b2 != null) {
            return new C1070g(b2);
        }
        if (w != 0) {
            boolean equals = "anim".equals(this.f4466q.m34910g().getResources().getResourceTypeName(w));
            boolean z2 = false;
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(this.f4466q.m34910g(), w);
                    if (loadAnimation != null) {
                        return new C1070g(loadAnimation);
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
                    Animator loadAnimator = AnimatorInflater.loadAnimator(this.f4466q.m34910g(), w);
                    if (loadAnimator != null) {
                        return new C1070g(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.f4466q.m34910g(), w);
                        if (loadAnimation2 != null) {
                            return new C1070g(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        if (i == 0 || (b = m34839b(i, z)) < 0) {
            return null;
        }
        switch (b) {
            case 1:
                return m34876a(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return m34876a(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return m34876a(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return m34876a(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return m34877a(0.0f, 1.0f);
            case 6:
                return m34877a(1.0f, 0.0f);
            default:
                int i3 = i2;
                if (i2 == 0) {
                    i3 = i2;
                    if (this.f4466q.mo34905l()) {
                        i3 = this.f4466q.mo34906k();
                    }
                }
                if (i3 == 0) {
                }
                return null;
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1059g
    /* renamed from: a */
    public AbstractC1079j mo34878a() {
        return new C1052a(this);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final void m34875a(int i) {
        try {
            this.f4453d = true;
            m34872a(i, false);
            this.f4453d = false;
            m34772w();
        } catch (Throwable th) {
            this.f4453d = false;
            throw th;
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1059g
    /* renamed from: a */
    public void mo34874a(int i, int i2) {
        if (i >= 0) {
            m34851a((AbstractC1074k) new C1075l(null, i, i2), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    /* renamed from: a */
    public void m34873a(int i, C1052a aVar) {
        synchronized (this) {
            try {
                if (this.f4461l == null) {
                    this.f4461l = new ArrayList<>();
                }
                int size = this.f4461l.size();
                if (i < size) {
                    if (f4442H) {
                        Log.v("FragmentManager", "Setting back stack index " + i + " to " + aVar);
                    }
                    this.f4461l.set(i, aVar);
                } else {
                    for (int i2 = size; i2 < i; i2++) {
                        this.f4461l.add(null);
                        if (this.f4462m == null) {
                            this.f4462m = new ArrayList<>();
                        }
                        if (f4442H) {
                            Log.v("FragmentManager", "Adding available back stack index " + i2);
                        }
                        this.f4462m.add(Integer.valueOf(i2));
                    }
                    if (f4442H) {
                        Log.v("FragmentManager", "Adding back stack index " + i + " with " + aVar);
                    }
                    this.f4461l.add(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m34872a(int i, boolean z) {
        AbstractC1058f fVar;
        if (this.f4466q == null && i != 0) {
            throw new IllegalStateException("No activity");
        } else if (z || i != this.f4465p) {
            this.f4465p = i;
            int size = this.f4455f.size();
            for (int i2 = 0; i2 < size; i2++) {
                m34787o(this.f4455f.get(i2));
            }
            for (Fragment fragment : this.f4456g.values()) {
                if (fragment != null && (fragment.f1293l || fragment.f1307z)) {
                    if (!fragment.f1271L) {
                        m34787o(fragment);
                    }
                }
            }
            m34880H();
            if (this.f4470u && (fVar = this.f4466q) != null && this.f4465p == 4) {
                fVar.mo34904m();
                this.f4470u = false;
            }
        }
    }

    /* renamed from: a */
    public void m34871a(Configuration configuration) {
        for (int i = 0; i < this.f4455f.size(); i++) {
            Fragment fragment = this.f4455f.get(i);
            if (fragment != null) {
                fragment.m38424a(configuration);
            }
        }
    }

    /* renamed from: a */
    public void m34869a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.f1299r == this) {
            bundle.putString(str, fragment.f1286e);
            return;
        }
        m34850a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        throw null;
    }

    /* renamed from: a */
    public void m34868a(Parcelable parcelable) {
        FragmentState fragmentState;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.f1343a != null) {
                for (Fragment fragment : this.f4450F.m34756c()) {
                    if (f4442H) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
                    }
                    Iterator<FragmentState> it = fragmentManagerState.f1343a.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            fragmentState = null;
                            break;
                        }
                        fragmentState = it.next();
                        if (fragmentState.f1349b.equals(fragment.f1286e)) {
                            break;
                        }
                    }
                    if (fragmentState == null) {
                        if (f4442H) {
                            Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.f1343a);
                        }
                        m34863a(fragment, 1, 0, 0, false);
                        fragment.f1293l = true;
                        m34863a(fragment, 0, 0, 0, false);
                    } else {
                        fragmentState.f1361n = fragment;
                        fragment.f1284c = null;
                        fragment.f1298q = 0;
                        fragment.f1295n = false;
                        fragment.f1292k = false;
                        Fragment fragment2 = fragment.f1288g;
                        fragment.f1289h = fragment2 != null ? fragment2.f1286e : null;
                        fragment.f1288g = null;
                        Bundle bundle = fragmentState.f1360m;
                        if (bundle != null) {
                            bundle.setClassLoader(this.f4466q.m34910g().getClassLoader());
                            fragment.f1284c = fragmentState.f1360m.getSparseParcelableArray("android:view_state");
                            fragment.f1283b = fragmentState.f1360m;
                        }
                    }
                }
                this.f4456g.clear();
                Iterator<FragmentState> it2 = fragmentManagerState.f1343a.iterator();
                while (it2.hasNext()) {
                    FragmentState next = it2.next();
                    if (next != null) {
                        Fragment a = next.m38330a(this.f4466q.m34910g().getClassLoader(), mo34825c());
                        a.f1299r = this;
                        if (f4442H) {
                            Log.v("FragmentManager", "restoreSaveState: active (" + a.f1286e + "): " + a);
                        }
                        this.f4456g.put(a.f1286e, a);
                        next.f1361n = null;
                    }
                }
                this.f4455f.clear();
                ArrayList<String> arrayList = fragmentManagerState.f1344b;
                if (arrayList != null) {
                    Iterator<String> it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        String next2 = it3.next();
                        Fragment fragment3 = this.f4456g.get(next2);
                        if (fragment3 != null) {
                            fragment3.f1292k = true;
                            if (f4442H) {
                                Log.v("FragmentManager", "restoreSaveState: added (" + next2 + "): " + fragment3);
                            }
                            if (!this.f4455f.contains(fragment3)) {
                                synchronized (this.f4455f) {
                                    this.f4455f.add(fragment3);
                                }
                            } else {
                                throw new IllegalStateException("Already added " + fragment3);
                            }
                        } else {
                            m34850a(new IllegalStateException("No instantiated fragment for (" + next2 + ")"));
                            throw null;
                        }
                    }
                }
                if (fragmentManagerState.f1345c != null) {
                    this.f4457h = new ArrayList<>(fragmentManagerState.f1345c.length);
                    int i = 0;
                    while (true) {
                        BackStackState[] backStackStateArr = fragmentManagerState.f1345c;
                        if (i >= backStackStateArr.length) {
                            break;
                        }
                        C1052a a2 = backStackStateArr[i].m38462a(this);
                        if (f4442H) {
                            Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + a2.f4420t + "): " + a2);
                            PrintWriter printWriter = new PrintWriter(new C0942b("FragmentManager"));
                            a2.m34967a("  ", printWriter, false);
                            printWriter.close();
                        }
                        this.f4457h.add(a2);
                        int i2 = a2.f4420t;
                        if (i2 >= 0) {
                            m34873a(i2, a2);
                        }
                        i++;
                    }
                } else {
                    this.f4457h = null;
                }
                String str = fragmentManagerState.f1346d;
                if (str != null) {
                    Fragment fragment4 = this.f4456g.get(str);
                    this.f4469t = fragment4;
                    m34811e(fragment4);
                }
                this.f4454e = fragmentManagerState.f1347e;
            }
        }
    }

    /* renamed from: a */
    public void m34867a(Menu menu) {
        if (this.f4465p >= 1) {
            for (int i = 0; i < this.f4455f.size(); i++) {
                Fragment fragment = this.f4455f.get(i);
                if (fragment != null) {
                    fragment.m38401c(menu);
                }
            }
        }
    }

    /* renamed from: a */
    public void m34864a(Fragment fragment) {
        if (m34885C()) {
            if (f4442H) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else if (this.f4450F.m34759a(fragment) && f4442H) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x0569  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x05ac  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34863a(androidx.fragment.app.Fragment r8, int r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 2407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p063m.p064a.LayoutInflater$Factory2C1062h.m34863a(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    /* renamed from: a */
    public void m34861a(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34861a(fragment, context, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34901a(this, fragment, context);
            }
        }
    }

    /* renamed from: a */
    public void m34860a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34860a(fragment, bundle, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34900a(this, fragment, bundle);
            }
        }
    }

    /* renamed from: a */
    public void m34859a(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34859a(fragment, view, bundle, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34899a(this, fragment, view, bundle);
            }
        }
    }

    /* renamed from: a */
    public void m34858a(Fragment fragment, Lifecycle.State state) {
        if (this.f4456g.get(fragment.f1286e) == fragment && (fragment.f1300s == null || fragment.m38353t() == this)) {
            fragment.f1276Q = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: a */
    public final void m34857a(Fragment fragment, C1070g gVar, int i) {
        View view = fragment.f1266G;
        ViewGroup viewGroup = fragment.f1265F;
        viewGroup.startViewTransition(view);
        fragment.m38411b(i);
        if (gVar.f4490a != null) {
            RunnableC1071h hVar = new RunnableC1071h(gVar.f4490a, viewGroup, view);
            fragment.m38405b(fragment.f1266G);
            hVar.setAnimationListener(new animationAnimation$AnimationListenerC1065c(viewGroup, fragment));
            fragment.f1266G.startAnimation(hVar);
            return;
        }
        Animator animator = gVar.f4491b;
        fragment.m38432a(animator);
        animator.addListener(new C1067d(viewGroup, view, fragment));
        animator.setTarget(fragment.f1266G);
        animator.start();
    }

    /* renamed from: a */
    public void m34856a(Fragment fragment, boolean z) {
        if (f4442H) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        m34791m(fragment);
        if (fragment.f1307z) {
            return;
        }
        if (!this.f4455f.contains(fragment)) {
            synchronized (this.f4455f) {
                this.f4455f.add(fragment);
            }
            fragment.f1292k = true;
            fragment.f1293l = false;
            if (fragment.f1266G == null) {
                fragment.f1272M = false;
            }
            if (m34795k(fragment)) {
                this.f4470u = true;
            }
            if (z) {
                m34785p(fragment);
                return;
            }
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    /* renamed from: a */
    public final void m34855a(C0782b<Fragment> bVar) {
        int i = this.f4465p;
        if (i >= 1) {
            int min = Math.min(i, 3);
            int size = this.f4455f.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = this.f4455f.get(i2);
                if (fragment.f1282a < min) {
                    m34863a(fragment, min, fragment.m38347w(), fragment.m38345x(), false);
                    if (fragment.f1266G != null && !fragment.f1306y && fragment.f1271L) {
                        bVar.add(fragment);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m34854a(C1052a aVar) {
        if (this.f4457h == null) {
            this.f4457h = new ArrayList<>();
        }
        this.f4457h.add(aVar);
    }

    /* renamed from: a */
    public void m34853a(C1052a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.m34960b(z3);
        } else {
            aVar.m34959e();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            C1081k.m34729a(this, (ArrayList<C1052a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z3) {
            m34872a(this.f4465p, true);
        }
        for (Fragment fragment : this.f4456g.values()) {
            if (fragment != null && fragment.f1266G != null && fragment.f1271L && aVar.m34963b(fragment.f1304w)) {
                float f = fragment.f1273N;
                if (f > 0.0f) {
                    fragment.f1266G.setAlpha(f);
                }
                if (z3) {
                    fragment.f1273N = 0.0f;
                } else {
                    fragment.f1273N = -1.0f;
                    fragment.f1271L = false;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m34852a(AbstractC1058f fVar, AbstractC1055c cVar, Fragment fragment) {
        if (this.f4466q == null) {
            this.f4466q = fVar;
            this.f4467r = cVar;
            this.f4468s = fragment;
            if (fragment != null) {
                m34879I();
            }
            if (fVar instanceof AbstractC0572c) {
                AbstractC0572c cVar2 = (AbstractC0572c) fVar;
                this.f4459j = cVar2.mo36901b();
                Fragment fragment2 = cVar2;
                if (fragment != null) {
                    fragment2 = fragment;
                }
                this.f4459j.m39223a(fragment2, this.f4460k);
            }
            if (fragment != null) {
                this.f4450F = fragment.f1299r.m34802h(fragment);
            } else if (fVar instanceof AbstractC1126s) {
                this.f4450F = C1077i.m34758a(((AbstractC1126s) fVar).mo34622d());
            } else {
                this.f4450F = new C1077i(false);
            }
        } else {
            throw new IllegalStateException("Already attached");
        }
    }

    /* renamed from: a */
    public void m34851a(AbstractC1074k kVar, boolean z) {
        if (!z) {
            m34800i();
        }
        synchronized (this) {
            if (!this.f4473x && this.f4466q != null) {
                if (this.f4452c == null) {
                    this.f4452c = new ArrayList<>();
                }
                this.f4452c.add(kVar);
                m34881G();
                return;
            }
            if (!z) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    /* renamed from: a */
    public final void m34850a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C0942b("FragmentManager"));
        AbstractC1058f fVar = this.f4466q;
        if (fVar != null) {
            try {
                fVar.mo34914a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                mo34847a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    @Override // p012b.p063m.p064a.AbstractC1059g
    /* renamed from: a */
    public void mo34847a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        String str2 = str + "    ";
        if (!this.f4456g.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment fragment : this.f4456g.values()) {
                printWriter.print(str);
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.mo17443a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size5 = this.f4455f.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size5; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f4455f.get(i).toString());
            }
        }
        ArrayList<Fragment> arrayList = this.f4458i;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size4; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f4458i.get(i2).toString());
            }
        }
        ArrayList<C1052a> arrayList2 = this.f4457h;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size3; i3++) {
                C1052a aVar = this.f4457h.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.m34968a(str2, printWriter);
            }
        }
        synchronized (this) {
            try {
                if (this.f4461l != null && (size2 = this.f4461l.size()) > 0) {
                    printWriter.print(str);
                    printWriter.println("Back Stack Indices:");
                    for (int i4 = 0; i4 < size2; i4++) {
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i4);
                        printWriter.print(": ");
                        printWriter.println((C1052a) this.f4461l.get(i4));
                    }
                }
                if (this.f4462m != null && this.f4462m.size() > 0) {
                    printWriter.print(str);
                    printWriter.print("mAvailBackStackIndices: ");
                    printWriter.println(Arrays.toString(this.f4462m.toArray()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList<AbstractC1074k> arrayList3 = this.f4452c;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i5 = 0; i5 < size; i5++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println((AbstractC1074k) this.f4452c.get(i5));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f4466q);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f4467r);
        if (this.f4468s != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f4468s);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f4465p);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f4471v);
        printWriter.print(" mStopped=");
        printWriter.print(this.f4472w);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f4473x);
        if (this.f4470u) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f4470u);
        }
    }

    /* renamed from: a */
    public final void m34846a(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int indexOf;
        int indexOf2;
        ArrayList<C1076m> arrayList3 = this.f4449E;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            C1076m mVar = this.f4449E.get(i2);
            if (arrayList == null || mVar.f4504a || (indexOf2 = arrayList.indexOf(mVar.f4505b)) == -1 || !arrayList2.get(indexOf2).booleanValue()) {
                if (!mVar.m34760e()) {
                    size = size;
                    i = i2;
                    if (arrayList != null) {
                        size = size;
                        i = i2;
                        if (!mVar.f4505b.m34966a(arrayList, 0, arrayList.size())) {
                        }
                    }
                }
                this.f4449E.remove(i2);
                i = i2 - 1;
                size--;
                if (arrayList == null || mVar.f4504a || (indexOf = arrayList.indexOf(mVar.f4505b)) == -1 || !arrayList2.get(indexOf).booleanValue()) {
                    mVar.m34761d();
                } else {
                    mVar.m34762c();
                }
            } else {
                this.f4449E.remove(i2);
                i = i2 - 1;
                size--;
                mVar.m34762c();
            }
            i2 = i + 1;
        }
    }

    /* renamed from: a */
    public final void m34845a(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        int i4;
        boolean z = arrayList.get(i).f4529p;
        ArrayList<Fragment> arrayList3 = this.f4446B;
        if (arrayList3 == null) {
            this.f4446B = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f4446B.addAll(this.f4455f);
        Fragment A = m34887A();
        boolean z2 = false;
        for (int i5 = i; i5 < i2; i5++) {
            C1052a aVar = arrayList.get(i5);
            A = !arrayList2.get(i5).booleanValue() ? aVar.m34965a(this.f4446B, A) : aVar.m34961b(this.f4446B, A);
            z2 = z2 || aVar.f4521h;
        }
        this.f4446B.clear();
        if (!z) {
            C1081k.m34729a(this, arrayList, arrayList2, i, i2, false);
        }
        m34827b(arrayList, arrayList2, i, i2);
        if (z) {
            C0782b<Fragment> bVar = new C0782b<>();
            m34855a(bVar);
            i3 = m34844a(arrayList, arrayList2, i, i2, bVar);
            m34832b(bVar);
        } else {
            i3 = i2;
        }
        int i6 = i;
        if (i3 != i) {
            i6 = i;
            if (z) {
                C1081k.m34729a(this, arrayList, arrayList2, i, i3, true);
                m34872a(this.f4465p, true);
                i6 = i;
            }
        }
        while (i6 < i2) {
            C1052a aVar2 = arrayList.get(i6);
            if (arrayList2.get(i6).booleanValue() && (i4 = aVar2.f4420t) >= 0) {
                m34824c(i4);
                aVar2.f4420t = -1;
            }
            aVar2.m34956h();
            i6++;
        }
        if (z2) {
            m34883E();
        }
    }

    /* renamed from: a */
    public void m34842a(boolean z) {
        int size = this.f4455f.size();
        while (true) {
            int i = size - 1;
            if (i >= 0) {
                Fragment fragment = this.f4455f.get(i);
                size = i;
                if (fragment != null) {
                    fragment.m38394e(z);
                    size = i;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public boolean m34866a(Menu menu, MenuInflater menuInflater) {
        if (this.f4465p < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (int i = 0; i < this.f4455f.size(); i++) {
            Fragment fragment = this.f4455f.get(i);
            arrayList = arrayList;
            z = z;
            if (fragment != null) {
                arrayList = arrayList;
                z = z;
                if (fragment.m38407b(menu, menuInflater)) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                    z = true;
                }
            }
        }
        if (this.f4458i != null) {
            for (int i2 = 0; i2 < this.f4458i.size(); i2++) {
                Fragment fragment2 = this.f4458i.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.m38402b0();
                }
            }
        }
        this.f4458i = arrayList;
        return z;
    }

    /* renamed from: a */
    public boolean m34865a(MenuItem menuItem) {
        if (this.f4465p < 1) {
            return false;
        }
        for (int i = 0; i < this.f4455f.size(); i++) {
            Fragment fragment = this.f4455f.get(i);
            if (fragment != null && fragment.m38400c(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m34848a(String str, int i, int i2) {
        m34772w();
        m34819c(true);
        Fragment fragment = this.f4469t;
        if (fragment != null && i < 0 && str == null && fragment.m38365n().mo34809f()) {
            return true;
        }
        boolean a = m34843a(this.f4475z, this.f4445A, str, i, i2);
        if (a) {
            this.f4453d = true;
            try {
                m34820c(this.f4475z, this.f4445A);
            } finally {
                m34798j();
            }
        }
        m34879I();
        m34776u();
        m34806g();
        return a;
    }

    /* renamed from: a */
    public boolean m34843a(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<C1052a> arrayList3 = this.f4457h;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f4457h.remove(size));
            arrayList2.add(true);
            return true;
        }
        if (str != null || i >= 0) {
            int size2 = this.f4457h.size() - 1;
            while (size2 >= 0) {
                C1052a aVar = this.f4457h.get(size2);
                if ((str != null && str.equals(aVar.m34958f())) || (i >= 0 && i == aVar.f4420t)) {
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
                    C1052a aVar2 = this.f4457h.get(i4);
                    if (str != null) {
                        size2 = i4;
                        if (str.equals(aVar2.m34958f())) {
                            continue;
                        }
                    }
                    i3 = i4;
                    if (i < 0) {
                        break;
                    }
                    i3 = i4;
                    if (i != aVar2.f4420t) {
                        break;
                    }
                    size2 = i4;
                }
            }
        } else {
            i3 = -1;
        }
        if (i3 == this.f4457h.size() - 1) {
            return false;
        }
        for (int size3 = this.f4457h.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f4457h.remove(size3));
            arrayList2.add(true);
        }
        return true;
    }

    /* renamed from: b */
    public int m34831b(C1052a aVar) {
        synchronized (this) {
            if (this.f4462m != null && this.f4462m.size() > 0) {
                int intValue = this.f4462m.remove(this.f4462m.size() - 1).intValue();
                if (f4442H) {
                    Log.v("FragmentManager", "Adding back stack index " + intValue + " with " + aVar);
                }
                this.f4461l.set(intValue, aVar);
                return intValue;
            }
            if (this.f4461l == null) {
                this.f4461l = new ArrayList<>();
            }
            int size = this.f4461l.size();
            if (f4442H) {
                Log.v("FragmentManager", "Setting back stack index " + size + " to " + aVar);
            }
            this.f4461l.add(aVar);
            return size;
        }
    }

    /* renamed from: b */
    public Fragment m34840b(int i) {
        for (int size = this.f4455f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f4455f.get(size);
            if (fragment != null && fragment.f1303v == i) {
                return fragment;
            }
        }
        for (Fragment fragment2 : this.f4456g.values()) {
            if (fragment2 != null && fragment2.f1303v == i) {
                return fragment2;
            }
        }
        return null;
    }

    /* renamed from: b */
    public Fragment m34829b(String str) {
        Fragment a;
        for (Fragment fragment : this.f4456g.values()) {
            if (!(fragment == null || (a = fragment.m38414a(str)) == null)) {
                return a;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void m34836b(Fragment fragment) {
        if (f4442H) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.f1307z) {
            fragment.f1307z = false;
            if (fragment.f1292k) {
                return;
            }
            if (!this.f4455f.contains(fragment)) {
                if (f4442H) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                synchronized (this.f4455f) {
                    this.f4455f.add(fragment);
                }
                fragment.f1292k = true;
                if (m34795k(fragment)) {
                    this.f4470u = true;
                    return;
                }
                return;
            }
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
    }

    /* renamed from: b */
    public void m34835b(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34835b(fragment, context, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34897b(this, fragment, context);
            }
        }
    }

    /* renamed from: b */
    public void m34834b(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34834b(fragment, bundle, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34896b(this, fragment, bundle);
            }
        }
    }

    /* renamed from: b */
    public void m34833b(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34833b(fragment, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34902a(this, fragment);
            }
        }
    }

    /* renamed from: b */
    public final void m34832b(C0782b<Fragment> bVar) {
        int size = bVar.size();
        for (int i = 0; i < size; i++) {
            Fragment m = bVar.m36063m(i);
            if (!m.f1292k) {
                View v0 = m.m38348v0();
                m.f1273N = v0.getAlpha();
                v0.setAlpha(0.0f);
            }
        }
    }

    /* renamed from: b */
    public void m34830b(AbstractC1074k kVar, boolean z) {
        if (!z || (this.f4466q != null && !this.f4473x)) {
            m34819c(z);
            if (kVar.mo34765a(this.f4475z, this.f4445A)) {
                this.f4453d = true;
                try {
                    m34820c(this.f4475z, this.f4445A);
                } finally {
                    m34798j();
                }
            }
            m34879I();
            m34776u();
            m34806g();
        }
    }

    /* renamed from: b */
    public void m34826b(boolean z) {
        int size = this.f4455f.size();
        while (true) {
            int i = size - 1;
            if (i >= 0) {
                Fragment fragment = this.f4455f.get(i);
                size = i;
                if (fragment != null) {
                    fragment.m38390f(z);
                    size = i;
                }
            } else {
                return;
            }
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1059g
    /* renamed from: b */
    public boolean mo34841b() {
        boolean w = m34772w();
        m34770x();
        return w;
    }

    /* renamed from: b */
    public boolean m34838b(Menu menu) {
        if (this.f4465p < 1) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.f4455f.size(); i++) {
            Fragment fragment = this.f4455f.get(i);
            z = z;
            if (fragment != null) {
                z = z;
                if (fragment.m38397d(menu)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m34837b(MenuItem menuItem) {
        if (this.f4465p < 1) {
            return false;
        }
        for (int i = 0; i < this.f4455f.size(); i++) {
            Fragment fragment = this.f4455f.get(i);
            if (fragment != null && fragment.m38396d(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m34828b(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            try {
                if (!(this.f4452c == null || this.f4452c.size() == 0)) {
                    int size = this.f4452c.size();
                    boolean z = false;
                    for (int i = 0; i < size; i++) {
                        z |= this.f4452c.get(i).mo34765a(arrayList, arrayList2);
                    }
                    this.f4452c.clear();
                    this.f4466q.m34909h().removeCallbacks(this.f4451G);
                    return z;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1059g
    /* renamed from: c */
    public C1057e mo34825c() {
        if (super.mo34825c() == AbstractC1059g.f4440b) {
            Fragment fragment = this.f4468s;
            if (fragment != null) {
                return fragment.f1299r.mo34825c();
            }
            m34903a(new C1069f());
        }
        return super.mo34825c();
    }

    /* renamed from: c */
    public void m34824c(int i) {
        synchronized (this) {
            this.f4461l.set(i, null);
            if (this.f4462m == null) {
                this.f4462m = new ArrayList<>();
            }
            if (f4442H) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.f4462m.add(Integer.valueOf(i));
        }
    }

    /* renamed from: c */
    public void m34823c(Fragment fragment) {
        Animator animator;
        if (fragment.f1266G != null) {
            C1070g a = m34862a(fragment, fragment.m38345x(), !fragment.f1306y, fragment.m38344y());
            if (a == null || (animator = a.f4491b) == null) {
                if (a != null) {
                    fragment.f1266G.startAnimation(a.f4490a);
                    a.f4490a.start();
                }
                fragment.f1266G.setVisibility((!fragment.f1306y || fragment.m38444R()) ? 0 : 8);
                if (fragment.m38444R()) {
                    fragment.m38384h(false);
                }
            } else {
                animator.setTarget(fragment.f1266G);
                if (!fragment.f1306y) {
                    fragment.f1266G.setVisibility(0);
                } else if (fragment.m38444R()) {
                    fragment.m38384h(false);
                } else {
                    ViewGroup viewGroup = fragment.f1265F;
                    View view = fragment.f1266G;
                    viewGroup.startViewTransition(view);
                    a.f4491b.addListener(new C1068e(this, viewGroup, view, fragment));
                }
                a.f4491b.start();
            }
        }
        if (fragment.f1292k && m34795k(fragment)) {
            this.f4470u = true;
        }
        fragment.f1272M = false;
        fragment.m38413a(fragment.f1306y);
    }

    /* renamed from: c */
    public void m34822c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34822c(fragment, bundle, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34894c(this, fragment, bundle);
            }
        }
    }

    /* renamed from: c */
    public void m34821c(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34821c(fragment, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34898b(this, fragment);
            }
        }
    }

    /* renamed from: c */
    public final void m34820c(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList != null && !arrayList.isEmpty()) {
            if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
                throw new IllegalStateException("Internal error with the back stack records");
            }
            m34846a(arrayList, arrayList2);
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i < size) {
                int i3 = i;
                i2 = i2;
                if (!arrayList.get(i).f4529p) {
                    if (i2 != i) {
                        m34845a(arrayList, arrayList2, i2, i);
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
                            if (arrayList.get(i4).f4529p) {
                                break;
                            }
                            i4++;
                        }
                    }
                    m34845a(arrayList, arrayList2, i, i2);
                    i3 = i2 - 1;
                }
                i = i3 + 1;
            }
            if (i2 != size) {
                m34845a(arrayList, arrayList2, i2, size);
            }
        }
    }

    /* renamed from: c */
    public final void m34819c(boolean z) {
        if (this.f4453d) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        } else if (this.f4466q == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        } else if (Looper.myLooper() == this.f4466q.m34909h().getLooper()) {
            if (!z) {
                m34800i();
            }
            if (this.f4475z == null) {
                this.f4475z = new ArrayList<>();
                this.f4445A = new ArrayList<>();
            }
            this.f4453d = true;
            try {
                m34846a((ArrayList<C1052a>) null, (ArrayList<Boolean>) null);
            } finally {
                this.f4453d = false;
            }
        } else {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1059g
    /* renamed from: d */
    public List<Fragment> mo34818d() {
        List<Fragment> list;
        if (this.f4455f.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f4455f) {
            list = (List) this.f4455f.clone();
        }
        return list;
    }

    /* renamed from: d */
    public void m34816d(Fragment fragment) {
        if (f4442H) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.f1307z) {
            fragment.f1307z = true;
            if (fragment.f1292k) {
                if (f4442H) {
                    Log.v("FragmentManager", "remove from detach: " + fragment);
                }
                synchronized (this.f4455f) {
                    this.f4455f.remove(fragment);
                }
                if (m34795k(fragment)) {
                    this.f4470u = true;
                }
                fragment.f1292k = false;
            }
        }
    }

    /* renamed from: d */
    public void m34815d(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34815d(fragment, bundle, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34892d(this, fragment, bundle);
            }
        }
    }

    /* renamed from: d */
    public void m34814d(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34814d(fragment, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34895c(this, fragment);
            }
        }
    }

    /* renamed from: d */
    public boolean m34817d(int i) {
        return this.f4465p >= i;
    }

    /* renamed from: e */
    public final void m34811e(Fragment fragment) {
        if (fragment != null && this.f4456g.get(fragment.f1286e) == fragment) {
            fragment.m38362o0();
        }
    }

    /* renamed from: e */
    public void m34810e(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34810e(fragment, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34893d(this, fragment);
            }
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1059g
    /* renamed from: e */
    public boolean mo34813e() {
        return this.f4473x;
    }

    /* renamed from: f */
    public void m34808f(Fragment fragment) {
        if (fragment.f1294m && !fragment.f1297p) {
            fragment.m38409b(fragment.m38382i(fragment.f1283b), (ViewGroup) null, fragment.f1283b);
            View view = fragment.f1266G;
            if (view != null) {
                fragment.f1267H = view;
                view.setSaveFromParentEnabled(false);
                if (fragment.f1306y) {
                    fragment.f1266G.setVisibility(8);
                }
                fragment.m38417a(fragment.f1266G, fragment.f1283b);
                m34859a(fragment, fragment.f1266G, fragment.f1283b, false);
                return;
            }
            fragment.f1267H = null;
        }
    }

    /* renamed from: f */
    public void m34807f(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34807f(fragment, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34891e(this, fragment);
            }
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1059g
    /* renamed from: f */
    public boolean mo34809f() {
        m34800i();
        return m34848a((String) null, -1, 0);
    }

    /* renamed from: g */
    public final Fragment m34805g(Fragment fragment) {
        ViewGroup viewGroup = fragment.f1265F;
        View view = fragment.f1266G;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.f4455f.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
            Fragment fragment2 = this.f4455f.get(indexOf);
            if (fragment2.f1265F == viewGroup && fragment2.f1266G != null) {
                return fragment2;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final void m34806g() {
        this.f4456g.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: g */
    public void m34804g(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34804g(fragment, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34890f(this, fragment);
            }
        }
    }

    /* renamed from: h */
    public C1077i m34802h(Fragment fragment) {
        return this.f4450F.m34755c(fragment);
    }

    /* renamed from: h */
    public void m34801h(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f4468s;
        if (fragment2 != null) {
            AbstractC1059g t = fragment2.m38353t();
            if (t instanceof LayoutInflater$Factory2C1062h) {
                ((LayoutInflater$Factory2C1062h) t).m34801h(fragment, true);
            }
        }
        Iterator<C1072i> it = this.f4464o.iterator();
        while (it.hasNext()) {
            C1072i next = it.next();
            if (!z || next.f4498b) {
                next.f4497a.m34889g(this, fragment);
            }
        }
    }

    /* renamed from: h */
    public boolean m34803h() {
        boolean z = false;
        for (Fragment fragment : this.f4456g.values()) {
            if (fragment != null) {
                z = m34795k(fragment);
            }
            z = z;
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public C1125r m34799i(Fragment fragment) {
        return this.f4450F.m34753d(fragment);
    }

    /* renamed from: i */
    public final void m34800i() {
        if (m34885C()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    /* renamed from: j */
    public final void m34798j() {
        this.f4453d = false;
        this.f4445A.clear();
        this.f4475z.clear();
    }

    /* renamed from: j */
    public void m34797j(Fragment fragment) {
        if (f4442H) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.f1306y) {
            fragment.f1306y = true;
            fragment.f1272M = true ^ fragment.f1272M;
        }
    }

    /* renamed from: k */
    public void m34796k() {
        this.f4471v = false;
        this.f4472w = false;
        m34875a(2);
    }

    /* renamed from: k */
    public final boolean m34795k(Fragment fragment) {
        return (fragment.f1262C && fragment.f1263D) || fragment.f1301t.m34803h();
    }

    /* renamed from: l */
    public void m34794l() {
        this.f4471v = false;
        this.f4472w = false;
        m34875a(1);
    }

    /* renamed from: l */
    public boolean m34793l(Fragment fragment) {
        boolean z = true;
        if (fragment == null) {
            return true;
        }
        LayoutInflater$Factory2C1062h hVar = fragment.f1299r;
        if (fragment != hVar.m34887A() || !m34793l(hVar.f4468s)) {
            z = false;
        }
        return z;
    }

    /* renamed from: m */
    public void m34792m() {
        this.f4473x = true;
        m34772w();
        m34875a(0);
        this.f4466q = null;
        this.f4467r = null;
        this.f4468s = null;
        if (this.f4459j != null) {
            this.f4460k.m36902c();
            this.f4459j = null;
        }
    }

    /* renamed from: m */
    public void m34791m(Fragment fragment) {
        if (this.f4456g.get(fragment.f1286e) == null) {
            this.f4456g.put(fragment.f1286e, fragment);
            if (fragment.f1261B) {
                if (fragment.f1260A) {
                    m34864a(fragment);
                } else {
                    m34779s(fragment);
                }
                fragment.f1261B = false;
            }
            if (f4442H) {
                Log.v("FragmentManager", "Added fragment to active set " + fragment);
            }
        }
    }

    /* renamed from: n */
    public void m34790n() {
        m34875a(1);
    }

    /* renamed from: n */
    public void m34789n(Fragment fragment) {
        if (this.f4456g.get(fragment.f1286e) != null) {
            if (f4442H) {
                Log.v("FragmentManager", "Removed fragment from active set " + fragment);
            }
            for (Fragment fragment2 : this.f4456g.values()) {
                if (fragment2 != null && fragment.f1286e.equals(fragment2.f1289h)) {
                    fragment2.f1288g = fragment;
                    fragment2.f1289h = null;
                }
            }
            this.f4456g.put(fragment.f1286e, null);
            m34779s(fragment);
            String str = fragment.f1289h;
            if (str != null) {
                fragment.f1288g = this.f4456g.get(str);
            }
            fragment.m38448N();
        }
    }

    /* renamed from: o */
    public void m34788o() {
        for (int i = 0; i < this.f4455f.size(); i++) {
            Fragment fragment = this.f4455f.get(i);
            if (fragment != null) {
                fragment.m38366m0();
            }
        }
    }

    /* renamed from: o */
    public void m34787o(Fragment fragment) {
        if (fragment != null) {
            if (this.f4456g.containsKey(fragment.f1286e)) {
                int i = this.f4465p;
                int i2 = i;
                if (fragment.f1293l) {
                    i2 = fragment.m38443S() ? Math.min(i, 1) : Math.min(i, 0);
                }
                m34863a(fragment, i2, fragment.m38345x(), fragment.m38344y(), false);
                if (fragment.f1266G != null) {
                    Fragment g = m34805g(fragment);
                    if (g != null) {
                        View view = g.f1266G;
                        ViewGroup viewGroup = fragment.f1265F;
                        int indexOfChild = viewGroup.indexOfChild(view);
                        int indexOfChild2 = viewGroup.indexOfChild(fragment.f1266G);
                        if (indexOfChild2 < indexOfChild) {
                            viewGroup.removeViewAt(indexOfChild2);
                            viewGroup.addView(fragment.f1266G, indexOfChild);
                        }
                    }
                    if (fragment.f1271L && fragment.f1265F != null) {
                        float f = fragment.f1273N;
                        if (f > 0.0f) {
                            fragment.f1266G.setAlpha(f);
                        }
                        fragment.f1273N = 0.0f;
                        fragment.f1271L = false;
                        C1070g a = m34862a(fragment, fragment.m38345x(), true, fragment.m38344y());
                        if (a != null) {
                            Animation animation = a.f4490a;
                            if (animation != null) {
                                fragment.f1266G.startAnimation(animation);
                            } else {
                                a.f4491b.setTarget(fragment.f1266G);
                                a.f4491b.start();
                            }
                        }
                    }
                }
                if (fragment.f1272M) {
                    m34823c(fragment);
                }
            } else if (f4442H) {
                Log.v("FragmentManager", "Ignoring moving " + fragment + " to state " + this.f4465p + "since it is not added to " + this);
            }
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment = null;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1073j.f4499a);
        int i = 0;
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (str2 == null || !C1057e.m34922b(context.getClassLoader(), str2)) {
            return null;
        }
        if (view != null) {
            i = view.getId();
        }
        if (i == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment = m34840b(resourceId);
        }
        Fragment fragment2 = fragment;
        if (fragment == null) {
            fragment2 = fragment;
            if (string != null) {
                fragment2 = mo34849a(string);
            }
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (i != -1) {
                fragment3 = m34840b(i);
            }
        }
        if (f4442H) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragment3);
        }
        if (fragment3 == null) {
            fragment3 = mo34825c().mo34766a(context.getClassLoader(), str2);
            fragment3.f1294m = true;
            fragment3.f1303v = resourceId != 0 ? resourceId : i;
            fragment3.f1304w = i;
            fragment3.f1305x = string;
            fragment3.f1295n = true;
            fragment3.f1299r = this;
            AbstractC1058f fVar = this.f4466q;
            fragment3.f1300s = fVar;
            fragment3.m38429a(fVar.m34910g(), attributeSet, fragment3.f1283b);
            m34856a(fragment3, true);
        } else if (!fragment3.f1295n) {
            fragment3.f1295n = true;
            AbstractC1058f fVar2 = this.f4466q;
            fragment3.f1300s = fVar2;
            fragment3.m38429a(fVar2.m34910g(), attributeSet, fragment3.f1283b);
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i) + " with another fragment for " + str2);
        }
        if (this.f4465p >= 1 || !fragment3.f1294m) {
            m34785p(fragment3);
        } else {
            m34863a(fragment3, 1, 0, 0, false);
        }
        View view2 = fragment3.f1266G;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragment3.f1266G.getTag() == null) {
                fragment3.f1266G.setTag(string);
            }
            return fragment3.f1266G;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: p */
    public void m34786p() {
        m34875a(3);
    }

    /* renamed from: p */
    public void m34785p(Fragment fragment) {
        m34863a(fragment, this.f4465p, 0, 0, false);
    }

    /* renamed from: q */
    public void m34784q() {
        m34879I();
        m34811e(this.f4469t);
    }

    /* renamed from: q */
    public void m34783q(Fragment fragment) {
        if (!fragment.f1268I) {
            return;
        }
        if (this.f4453d) {
            this.f4474y = true;
            return;
        }
        fragment.f1268I = false;
        m34863a(fragment, this.f4465p, 0, 0, false);
    }

    /* renamed from: r */
    public void m34782r() {
        this.f4471v = false;
        this.f4472w = false;
        m34875a(4);
    }

    /* renamed from: r */
    public void m34781r(Fragment fragment) {
        if (f4442H) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.f1298q);
        }
        boolean S = fragment.m38443S();
        if (!fragment.f1307z || (!S)) {
            synchronized (this.f4455f) {
                this.f4455f.remove(fragment);
            }
            if (m34795k(fragment)) {
                this.f4470u = true;
            }
            fragment.f1292k = false;
            fragment.f1293l = true;
        }
    }

    /* renamed from: s */
    public void m34780s() {
        this.f4471v = false;
        this.f4472w = false;
        m34875a(3);
    }

    /* renamed from: s */
    public void m34779s(Fragment fragment) {
        if (m34885C()) {
            if (f4442H) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else if (this.f4450F.m34752e(fragment) && f4442H) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    /* renamed from: t */
    public Bundle m34777t(Fragment fragment) {
        if (this.f4447C == null) {
            this.f4447C = new Bundle();
        }
        fragment.m38378j(this.f4447C);
        m34815d(fragment, this.f4447C, false);
        Bundle bundle = null;
        if (!this.f4447C.isEmpty()) {
            bundle = this.f4447C;
            this.f4447C = null;
        }
        if (fragment.f1266G != null) {
            m34775u(fragment);
        }
        Bundle bundle2 = bundle;
        if (fragment.f1284c != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putSparseParcelableArray("android:view_state", fragment.f1284c);
        }
        Bundle bundle3 = bundle2;
        if (!fragment.f1269J) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putBoolean("android:user_visible_hint", fragment.f1269J);
        }
        return bundle3;
    }

    /* renamed from: t */
    public void m34778t() {
        this.f4472w = true;
        m34875a(2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f4468s;
        if (fragment != null) {
            C0941a.m35451a(fragment, sb);
        } else {
            C0941a.m35451a(this.f4466q, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u */
    public void m34776u() {
        if (this.f4474y) {
            this.f4474y = false;
            m34880H();
        }
    }

    /* renamed from: u */
    public void m34775u(Fragment fragment) {
        if (fragment.f1267H != null) {
            SparseArray<Parcelable> sparseArray = this.f4448D;
            if (sparseArray == null) {
                this.f4448D = new SparseArray<>();
            } else {
                sparseArray.clear();
            }
            fragment.f1267H.saveHierarchyState(this.f4448D);
            if (this.f4448D.size() > 0) {
                fragment.f1284c = this.f4448D;
                this.f4448D = null;
            }
        }
    }

    /* renamed from: v */
    public final void m34774v() {
        for (Fragment fragment : this.f4456g.values()) {
            if (fragment != null) {
                if (fragment.m38375k() != null) {
                    int G = fragment.m38455G();
                    View k = fragment.m38375k();
                    Animation animation = k.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        k.clearAnimation();
                    }
                    fragment.m38405b((View) null);
                    m34863a(fragment, G, 0, 0, false);
                } else if (fragment.m38371l() != null) {
                    fragment.m38371l().end();
                }
            }
        }
    }

    /* renamed from: v */
    public void m34773v(Fragment fragment) {
        if (fragment == null || (this.f4456g.get(fragment.f1286e) == fragment && (fragment.f1300s == null || fragment.m38353t() == this))) {
            Fragment fragment2 = this.f4469t;
            this.f4469t = fragment;
            m34811e(fragment2);
            m34811e(this.f4469t);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: w */
    public void m34771w(Fragment fragment) {
        if (f4442H) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.f1306y) {
            fragment.f1306y = false;
            fragment.f1272M = !fragment.f1272M;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: w */
    public boolean m34772w() {
        m34819c(true);
        boolean z = false;
        while (m34828b(this.f4475z, this.f4445A)) {
            this.f4453d = true;
            try {
                m34820c(this.f4475z, this.f4445A);
                m34798j();
                z = true;
            } catch (Throwable th) {
                m34798j();
                throw th;
            }
        }
        m34879I();
        m34776u();
        m34806g();
        return z;
    }

    /* renamed from: x */
    public final void m34770x() {
        if (this.f4449E != null) {
            while (!this.f4449E.isEmpty()) {
                this.f4449E.remove(0).m34761d();
            }
        }
    }

    /* renamed from: y */
    public int m34769y() {
        ArrayList<C1052a> arrayList = this.f4457h;
        return arrayList != null ? arrayList.size() : 0;
    }

    /* renamed from: z */
    public LayoutInflater.Factory2 m34768z() {
        return this;
    }
}
