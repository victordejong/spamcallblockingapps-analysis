package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.AbstractC0035b;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.c;
import androidx.activity.result.AbstractC0041c;
import androidx.activity.result.AbstractC0042d;
import androidx.activity.result.AbstractC0045e;
import androidx.activity.result.C0046f;
import androidx.core.p005os.C0226a;
import androidx.fragment.app.AbstractC0300y;
import androidx.fragment.app.C0259f;
import androidx.fragment.app.C0302z;
import androidx.lifecycle.AbstractC0328g0;
import androidx.lifecycle.AbstractC0329h;
import androidx.lifecycle.C0326f0;
import f.m.b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.fragment.app.n */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n.class */
public abstract class AbstractC0281n {

    /* renamed from: O */
    private static boolean f1525O = false;

    /* renamed from: P */
    static boolean f1526P = true;

    /* renamed from: A */
    private AbstractC0041c<C0046f> f1527A;

    /* renamed from: B */
    private AbstractC0041c<String[]> f1528B;

    /* renamed from: D */
    private boolean f1530D;

    /* renamed from: E */
    private boolean f1531E;

    /* renamed from: F */
    private boolean f1532F;

    /* renamed from: G */
    private boolean f1533G;

    /* renamed from: H */
    private boolean f1534H;

    /* renamed from: I */
    private ArrayList<a> f1535I;

    /* renamed from: J */
    private ArrayList<Boolean> f1536J;

    /* renamed from: K */
    private ArrayList<Fragment> f1537K;

    /* renamed from: L */
    private ArrayList<r> f1538L;

    /* renamed from: M */
    private q f1539M;

    /* renamed from: b */
    private boolean f1542b;

    /* renamed from: d */
    ArrayList<a> f1544d;

    /* renamed from: e */
    private ArrayList<Fragment> f1545e;

    /* renamed from: g */
    private OnBackPressedDispatcher f1547g;

    /* renamed from: l */
    private ArrayList<AbstractC0288o> f1552l;

    /* renamed from: r */
    private k<?> f1558r;

    /* renamed from: s */
    private AbstractC0272g f1559s;

    /* renamed from: t */
    private Fragment f1560t;

    /* renamed from: u */
    Fragment f1561u;

    /* renamed from: z */
    private AbstractC0041c<Intent> f1566z;

    /* renamed from: a */
    private final ArrayList<AbstractC0289p> f1541a = new ArrayList<>();

    /* renamed from: c */
    private final C0299x f1543c = new C0299x();

    /* renamed from: f */
    private final LayoutInflater$Factory2C0278l f1546f = new LayoutInflater$Factory2C0278l(this);

    /* renamed from: h */
    private final AbstractC0035b f1548h = new c(this, false);

    /* renamed from: i */
    private final AtomicInteger f1549i = new AtomicInteger();

    /* renamed from: j */
    private final Map<String, Bundle> f1550j = Collections.synchronizedMap(new HashMap());

    /* renamed from: k */
    private final Map<String, Object> f1551k = Collections.synchronizedMap(new HashMap());

    /* renamed from: m */
    private Map<Fragment, HashSet<C0226a>> f1553m = Collections.synchronizedMap(new HashMap());

    /* renamed from: n */
    private final C0302z.AbstractC0309g f1554n = new d(this);

    /* renamed from: o */
    private final C0279m f1555o = new C0279m(this);

    /* renamed from: p */
    private final CopyOnWriteArrayList<AbstractC0292r> f1556p = new CopyOnWriteArrayList<>();

    /* renamed from: q */
    int f1557q = -1;

    /* renamed from: v */
    private C0277j f1562v = null;

    /* renamed from: w */
    private C0277j f1563w = new e(this);

    /* renamed from: x */
    private AbstractC0273g0 f1564x = null;

    /* renamed from: y */
    private AbstractC0273g0 f1565y = new f(this);

    /* renamed from: C */
    ArrayDeque<C0286n> f1529C = new ArrayDeque<>();

    /* renamed from: N */
    private Runnable f1540N = new RunnableC0282g();

    /* renamed from: androidx.fragment.app.n$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$g.class */
    class RunnableC0282g implements Runnable {
        RunnableC0282g() {
            AbstractC0281n.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0281n.this.m5676c0(true);
        }
    }

    /* renamed from: androidx.fragment.app.n$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$h.class */
    public class C0283h extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f1568a;

        /* renamed from: b */
        final /* synthetic */ View f1569b;

        /* renamed from: c */
        final /* synthetic */ Fragment f1570c;

        C0283h(AbstractC0281n abstractC0281n, ViewGroup viewGroup, View view, Fragment fragment) {
            this.f1568a = viewGroup;
            this.f1569b = view;
            this.f1570c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1568a.endViewTransition(this.f1569b);
            animator.removeListener(this);
            Fragment fragment = this.f1570c;
            View view = fragment.mView;
            if (view == null || !fragment.mHidden) {
                return;
            }
            view.setVisibility(8);
        }
    }

    /* renamed from: androidx.fragment.app.n$k */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$k.class */
    public interface AbstractC0284k {
        int getId();

        String getName();
    }

    /* renamed from: androidx.fragment.app.n$m */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$m.class */
    public static abstract class AbstractC0285m {
        @Deprecated
        /* renamed from: a */
        public abstract void m5610a(AbstractC0281n abstractC0281n, Fragment fragment, Bundle bundle);

        /* renamed from: b */
        public abstract void m5609b(AbstractC0281n abstractC0281n, Fragment fragment, Context context);

        /* renamed from: c */
        public abstract void m5608c(AbstractC0281n abstractC0281n, Fragment fragment, Bundle bundle);

        /* renamed from: d */
        public abstract void m5607d(AbstractC0281n abstractC0281n, Fragment fragment);

        /* renamed from: e */
        public abstract void m5606e(AbstractC0281n abstractC0281n, Fragment fragment);

        /* renamed from: f */
        public abstract void m5605f(AbstractC0281n abstractC0281n, Fragment fragment);

        /* renamed from: g */
        public abstract void m5604g(AbstractC0281n abstractC0281n, Fragment fragment, Context context);

        /* renamed from: h */
        public abstract void m5603h(AbstractC0281n abstractC0281n, Fragment fragment, Bundle bundle);

        /* renamed from: i */
        public abstract void m5602i(AbstractC0281n abstractC0281n, Fragment fragment);

        /* renamed from: j */
        public abstract void m5601j(AbstractC0281n abstractC0281n, Fragment fragment, Bundle bundle);

        /* renamed from: k */
        public abstract void m5600k(AbstractC0281n abstractC0281n, Fragment fragment);

        /* renamed from: l */
        public abstract void m5599l(AbstractC0281n abstractC0281n, Fragment fragment);

        /* renamed from: m */
        public abstract void m5598m(AbstractC0281n abstractC0281n, Fragment fragment, View view, Bundle bundle);

        /* renamed from: n */
        public abstract void m5597n(AbstractC0281n abstractC0281n, Fragment fragment);
    }

    /* renamed from: androidx.fragment.app.n$n */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$n.class */
    public static class C0286n implements Parcelable {
        public static final Parcelable.Creator<C0286n> CREATOR = new C0287a();

        /* renamed from: f */
        String f1571f;

        /* renamed from: g */
        int f1572g;

        /* renamed from: androidx.fragment.app.n$n$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$n$a.class */
        class C0287a implements Parcelable.Creator<C0286n> {
            C0287a() {
            }

            /* renamed from: a */
            public C0286n createFromParcel(Parcel parcel) {
                return new C0286n(parcel);
            }

            /* renamed from: b */
            public C0286n[] newArray(int i) {
                return new C0286n[i];
            }
        }

        C0286n(Parcel parcel) {
            this.f1571f = parcel.readString();
            this.f1572g = parcel.readInt();
        }

        C0286n(String str, int i) {
            this.f1571f = str;
            this.f1572g = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f1571f);
            parcel.writeInt(this.f1572g);
        }
    }

    /* renamed from: androidx.fragment.app.n$o */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$o.class */
    public interface AbstractC0288o {
        void onBackStackChanged();
    }

    /* renamed from: androidx.fragment.app.n$p */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$p.class */
    public interface AbstractC0289p {
        /* renamed from: a */
        boolean m5594a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: C0 */
    public static Fragment m5730C0(View view) {
        Object tag = view.getTag(b.a);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    /* renamed from: H0 */
    public static boolean m5720H0(int i) {
        return f1525O || Log.isLoggable("FragmentManager", i);
    }

    /* renamed from: I0 */
    private boolean m5718I0(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.m5638p();
    }

    /* renamed from: N */
    private void m5709N(Fragment fragment) {
        if (fragment == null || !fragment.equals(m5661h0(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    /* renamed from: P0 */
    private void m5704P0(f.e.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = (Fragment) bVar.m(i);
            if (!fragment.mAdded) {
                View requireView = fragment.requireView();
                fragment.mPostponedAlpha = requireView.getAlpha();
                requireView.setAlpha(0.0f);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: U */
    private void m5695U(int i) {
        try {
            this.f1542b = true;
            this.f1543c.m5561d(i);
            m5700R0(i, false);
            if (f1526P) {
                for (AbstractC0265f0 abstractC0265f0 : m5626t()) {
                    abstractC0265f0.m5803j();
                }
            }
            this.f1542b = false;
            m5676c0(true);
        } catch (Throwable th) {
            this.f1542b = false;
            throw th;
        }
    }

    /* renamed from: X */
    private void m5689X() {
        if (this.f1534H) {
            this.f1534H = false;
            m5627s1();
        }
    }

    /* renamed from: Z */
    private void m5685Z() {
        if (f1526P) {
            for (AbstractC0265f0 abstractC0265f0 : m5626t()) {
                abstractC0265f0.m5803j();
            }
        } else if (!this.f1553m.isEmpty()) {
            for (Fragment fragment : this.f1553m.keySet()) {
                m5641o(fragment);
                m5698S0(fragment);
            }
        }
    }

    /* renamed from: Z0 */
    private boolean m5684Z0(String str, int i, int i2) {
        m5676c0(false);
        m5679b0(true);
        Fragment fragment = this.f1561u;
        if (fragment == null || i >= 0 || str != null || !fragment.getChildFragmentManager().m5686Y0()) {
            boolean m5681a1 = m5681a1(this.f1535I, this.f1536J, str, i, i2);
            if (m5681a1) {
                this.f1542b = true;
                try {
                    m5666f1(this.f1535I, this.f1536J);
                } finally {
                    m5632r();
                }
            }
            m5621u1();
            m5689X();
            this.f1543c.m5563b();
            return m5681a1;
        }
        return true;
    }

    /* renamed from: b0 */
    private void m5679b0(boolean z) {
        if (!this.f1542b) {
            if (this.f1558r == null) {
                if (!this.f1533G) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else if (Looper.myLooper() != this.f1558r.g().getLooper()) {
                throw new IllegalStateException("Must be called from main thread of fragment host");
            } else {
                if (!z) {
                    m5635q();
                }
                if (this.f1535I == null) {
                    this.f1535I = new ArrayList<>();
                    this.f1536J = new ArrayList<>();
                }
                this.f1542b = true;
                try {
                    m5664g0(null, null);
                    return;
                } finally {
                    this.f1542b = false;
                }
            }
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    /* renamed from: b1 */
    private int m5678b1(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, f.e.b<Fragment> bVar) {
        int i3 = i2 - 1;
        int i4 = i2;
        while (true) {
            int i5 = i4;
            if (i3 >= i) {
                a aVar = arrayList.get(i3);
                boolean booleanValue = arrayList2.get(i3).booleanValue();
                int i6 = i5;
                if (aVar.H() && !aVar.F(arrayList, i3 + 1, i2)) {
                    if (this.f1538L == null) {
                        this.f1538L = new ArrayList<>();
                    }
                    r rVar = new r(aVar, booleanValue);
                    this.f1538L.add(rVar);
                    aVar.J(rVar);
                    if (booleanValue) {
                        aVar.B();
                    } else {
                        aVar.C(false);
                    }
                    i6 = i5 - 1;
                    if (i3 != i6) {
                        arrayList.remove(i3);
                        arrayList.add(i6, aVar);
                    }
                    m5674d(bVar);
                }
                i3--;
                i4 = i6;
            } else {
                return i5;
            }
        }
    }

    /* renamed from: d */
    private void m5674d(f.e.b<Fragment> bVar) {
        int i = this.f1557q;
        if (i < 1) {
            return;
        }
        int min = Math.min(i, 5);
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment.mState < min) {
                m5696T0(fragment, min);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    bVar.add(fragment);
                }
            }
        }
    }

    /* renamed from: e0 */
    private static void m5670e0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            a aVar = arrayList.get(i);
            boolean z = true;
            if (arrayList2.get(i).booleanValue()) {
                aVar.x(-1);
                if (i != i2 - 1) {
                    z = false;
                }
                aVar.C(z);
            } else {
                aVar.x(1);
                aVar.B();
            }
            i++;
        }
    }

    /* renamed from: f0 */
    private void m5667f0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).f1619p;
        ArrayList<Fragment> arrayList3 = this.f1537K;
        if (arrayList3 == null) {
            this.f1537K = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f1537K.addAll(this.f1543c.m5551n());
        Fragment m5734A0 = m5734A0();
        boolean z2 = false;
        for (int i4 = i; i4 < i2; i4++) {
            a aVar = arrayList.get(i4);
            m5734A0 = !arrayList2.get(i4).booleanValue() ? aVar.D(this.f1537K, m5734A0) : aVar.K(this.f1537K, m5734A0);
            z2 = z2 || aVar.f1610g;
        }
        this.f1537K.clear();
        if (!z && this.f1557q >= 1) {
            if (f1526P) {
                for (int i5 = i; i5 < i2; i5++) {
                    Iterator<AbstractC0300y.C0301a> it = arrayList.get(i5).f1604a.iterator();
                    while (it.hasNext()) {
                        Fragment fragment = it.next().f1622b;
                        if (fragment != null && fragment.mFragmentManager != null) {
                            this.f1543c.m5549p(m5616x(fragment));
                        }
                    }
                }
            } else {
                C0302z.m5516C(this.f1558r.f(), this.f1559s, arrayList, arrayList2, i, i2, false, this.f1554n);
            }
        }
        m5670e0(arrayList, arrayList2, i, i2);
        if (f1526P) {
            boolean booleanValue = arrayList2.get(i2 - 1).booleanValue();
            for (int i6 = i; i6 < i2; i6++) {
                a aVar2 = arrayList.get(i6);
                if (booleanValue) {
                    for (int size = aVar2.f1604a.size() - 1; size >= 0; size--) {
                        Fragment fragment2 = aVar2.f1604a.get(size).f1622b;
                        if (fragment2 != null) {
                            m5616x(fragment2).m5575m();
                        }
                    }
                } else {
                    Iterator<AbstractC0300y.C0301a> it2 = aVar2.f1604a.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment3 = it2.next().f1622b;
                        if (fragment3 != null) {
                            m5616x(fragment3).m5575m();
                        }
                    }
                }
            }
            m5700R0(this.f1557q, true);
            for (AbstractC0265f0 abstractC0265f0 : m5623u(arrayList, i, i2)) {
                abstractC0265f0.m5795r(booleanValue);
                abstractC0265f0.m5797p();
                abstractC0265f0.m5806g();
            }
        } else {
            if (z) {
                f.e.b<Fragment> bVar = new f.e.b<>();
                m5674d(bVar);
                i3 = m5678b1(arrayList, arrayList2, i, i2, bVar);
                m5704P0(bVar);
            } else {
                i3 = i2;
            }
            if (i3 == i || !z) {
                arrayList2 = arrayList2;
            } else {
                if (this.f1557q >= 1) {
                    C0302z.m5516C(this.f1558r.f(), this.f1559s, arrayList, arrayList2, i, i3, true, this.f1554n);
                }
                arrayList2 = arrayList2;
                m5700R0(this.f1557q, true);
            }
        }
        while (i < i2) {
            a aVar3 = arrayList.get(i);
            if (arrayList2.get(i).booleanValue() && aVar3.t >= 0) {
                aVar3.t = -1;
            }
            aVar3.I();
            i++;
        }
        if (z2) {
            m5660h1();
        }
    }

    /* renamed from: f1 */
    private void m5666f1(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m5664g0(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= size) {
                break;
            }
            int i4 = i2;
            int i5 = i;
            if (!arrayList.get(i2).f1619p) {
                if (i != i2) {
                    m5667f0(arrayList, arrayList2, i, i2);
                }
                int i6 = i2 + 1;
                i5 = i6;
                if (arrayList2.get(i2).booleanValue()) {
                    while (true) {
                        i5 = i6;
                        if (i6 >= size) {
                            break;
                        }
                        i5 = i6;
                        if (!arrayList2.get(i6).booleanValue()) {
                            break;
                        }
                        i5 = i6;
                        if (arrayList.get(i6).f1619p) {
                            break;
                        }
                        i6++;
                    }
                }
                m5667f0(arrayList, arrayList2, i2, i5);
                i4 = i5 - 1;
            }
            i2 = i4 + 1;
            i3 = i5;
        }
        if (i == size) {
            return;
        }
        m5667f0(arrayList, arrayList2, i, size);
    }

    /* renamed from: g0 */
    private void m5664g0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int indexOf;
        int indexOf2;
        ArrayList<r> arrayList3 = this.f1538L;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int i4 = size;
            if (i3 < i4) {
                r rVar = this.f1538L.get(i3);
                if (arrayList == null || rVar.a || (indexOf2 = arrayList.indexOf(rVar.b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf2).booleanValue()) {
                    if (!rVar.e()) {
                        size = i4;
                        i = i3;
                        if (arrayList != null) {
                            size = i4;
                            i = i3;
                            if (!rVar.b.F(arrayList, 0, arrayList.size())) {
                            }
                        }
                    }
                    this.f1538L.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    if (arrayList == null || rVar.a || (indexOf = arrayList.indexOf(rVar.b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf).booleanValue()) {
                        rVar.d();
                    } else {
                        rVar.c();
                    }
                } else {
                    this.f1538L.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    rVar.c();
                }
                i2 = i + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: h1 */
    private void m5660h1() {
        if (this.f1552l != null) {
            for (int i = 0; i < this.f1552l.size(); i++) {
                this.f1552l.get(i).onBackStackChanged();
            }
        }
    }

    /* renamed from: j1 */
    static int m5654j1(int i) {
        int i2 = 8194;
        if (i != 4097) {
            i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
        }
        return i2;
    }

    /* renamed from: l0 */
    private void m5649l0() {
        if (f1526P) {
            for (AbstractC0265f0 abstractC0265f0 : m5626t()) {
                abstractC0265f0.m5802k();
            }
        } else if (this.f1538L != null) {
            while (!this.f1538L.isEmpty()) {
                this.f1538L.remove(0).d();
            }
        }
    }

    /* renamed from: m0 */
    private boolean m5646m0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.f1541a) {
            if (this.f1541a.isEmpty()) {
                return false;
            }
            int size = this.f1541a.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                z |= this.f1541a.get(i).m5594a(arrayList, arrayList2);
            }
            this.f1541a.clear();
            this.f1558r.g().removeCallbacks(this.f1540N);
            return z;
        }
    }

    /* renamed from: o */
    private void m5641o(Fragment fragment) {
        HashSet<C0226a> hashSet = this.f1553m.get(fragment);
        if (hashSet != null) {
            Iterator<C0226a> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().m5950a();
            }
            hashSet.clear();
            m5614y(fragment);
            this.f1553m.remove(fragment);
        }
    }

    /* renamed from: p0 */
    private q m5637p0(Fragment fragment) {
        return this.f1539M.i(fragment);
    }

    /* renamed from: q */
    private void m5635q() {
        if (!m5710M0()) {
            return;
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    /* renamed from: q1 */
    private void m5633q1(Fragment fragment) {
        ViewGroup m5628s0 = m5628s0(fragment);
        if (m5628s0 == null || fragment.getNextAnim() <= 0) {
            return;
        }
        int i = b.c;
        if (m5628s0.getTag(i) == null) {
            m5628s0.setTag(i, fragment);
        }
        ((Fragment) m5628s0.getTag(i)).setNextAnim(fragment.getNextAnim());
    }

    /* renamed from: r */
    private void m5632r() {
        this.f1542b = false;
        this.f1536J.clear();
        this.f1535I.clear();
    }

    /* renamed from: s0 */
    private ViewGroup m5628s0(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId <= 0 || !this.f1559s.m5780d()) {
            return null;
        }
        View m5781c = this.f1559s.m5781c(fragment.mContainerId);
        if (!(m5781c instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) m5781c;
    }

    /* renamed from: s1 */
    private void m5627s1() {
        for (C0296v c0296v : this.f1543c.m5554k()) {
            m5692V0(c0296v);
        }
    }

    /* renamed from: t */
    private Set<AbstractC0265f0> m5626t() {
        HashSet hashSet = new HashSet();
        for (C0296v c0296v : this.f1543c.m5554k()) {
            ViewGroup viewGroup = c0296v.m5577k().mContainer;
            if (viewGroup != null) {
                hashSet.add(AbstractC0265f0.m5798o(viewGroup, m5732B0()));
            }
        }
        return hashSet;
    }

    /* renamed from: t1 */
    private void m5624t1(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C0258e0("FragmentManager"));
        k<?> kVar = this.f1558r;
        if (kVar != null) {
            try {
                kVar.h("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                m5687Y("  ", null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    /* renamed from: u */
    private Set<AbstractC0265f0> m5623u(ArrayList<a> arrayList, int i, int i2) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i < i2) {
            Iterator<AbstractC0300y.C0301a> it = arrayList.get(i).f1604a.iterator();
            while (it.hasNext()) {
                Fragment fragment = it.next().f1622b;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(AbstractC0265f0.m5799n(viewGroup, this));
                }
            }
            i++;
        }
        return hashSet;
    }

    /* renamed from: u1 */
    private void m5621u1() {
        synchronized (this.f1541a) {
            boolean z = true;
            if (!this.f1541a.isEmpty()) {
                this.f1548h.m6983f(true);
                return;
            }
            AbstractC0035b abstractC0035b = this.f1548h;
            if (m5640o0() <= 0 || !m5714K0(this.f1560t)) {
                z = false;
            }
            abstractC0035b.m6983f(z);
        }
    }

    /* renamed from: w */
    private void m5618w(Fragment fragment) {
        Animator animator;
        if (fragment.mView != null) {
            C0259f.C0263d m5814b = C0259f.m5814b(this.f1558r.f(), fragment, !fragment.mHidden);
            if (m5814b == null || (animator = m5814b.f1491b) == null) {
                if (m5814b != null) {
                    fragment.mView.startAnimation(m5814b.f1490a);
                    m5814b.f1490a.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            } else {
                animator.setTarget(fragment.mView);
                if (!fragment.mHidden) {
                    fragment.mView.setVisibility(0);
                } else if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                } else {
                    ViewGroup viewGroup = fragment.mContainer;
                    View view = fragment.mView;
                    viewGroup.startViewTransition(view);
                    m5814b.f1491b.addListener(new C0283h(this, viewGroup, view, fragment));
                }
                m5814b.f1491b.start();
            }
        }
        if (fragment.mAdded && m5718I0(fragment)) {
            this.f1530D = true;
        }
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    /* renamed from: y */
    private void m5614y(Fragment fragment) {
        fragment.performDestroyView();
        this.f1555o.m5736n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.n((Object) null);
        fragment.mInLayout = false;
    }

    /* renamed from: A */
    public void m5735A() {
        this.f1531E = false;
        this.f1532F = false;
        this.f1539M.o(false);
        m5695U(4);
    }

    /* renamed from: A0 */
    public Fragment m5734A0() {
        return this.f1561u;
    }

    /* renamed from: B */
    void m5733B() {
        this.f1531E = false;
        this.f1532F = false;
        this.f1539M.o(false);
        m5695U(0);
    }

    /* renamed from: B0 */
    public AbstractC0273g0 m5732B0() {
        AbstractC0273g0 abstractC0273g0 = this.f1564x;
        if (abstractC0273g0 != null) {
            return abstractC0273g0;
        }
        Fragment fragment = this.f1560t;
        return fragment != null ? fragment.mFragmentManager.m5732B0() : this.f1565y;
    }

    /* renamed from: C */
    public void m5731C(Configuration configuration) {
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    /* renamed from: D */
    public boolean m5729D(MenuItem menuItem) {
        if (this.f1557q < 1) {
            return false;
        }
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: D0 */
    C0326f0 m5728D0(Fragment fragment) {
        return this.f1539M.l(fragment);
    }

    /* renamed from: E */
    public void m5727E() {
        this.f1531E = false;
        this.f1532F = false;
        this.f1539M.o(false);
        m5695U(1);
    }

    /* renamed from: E0 */
    void m5726E0() {
        m5676c0(true);
        if (this.f1548h.m6986c()) {
            m5686Y0();
        } else {
            this.f1547g.m6989c();
        }
    }

    /* renamed from: F */
    public boolean m5725F(Menu menu, MenuInflater menuInflater) {
        if (this.f1557q < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null && m5716J0(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                ArrayList<Fragment> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(fragment);
                z = true;
                arrayList = arrayList2;
            }
        }
        if (this.f1545e != null) {
            for (int i = 0; i < this.f1545e.size(); i++) {
                Fragment fragment2 = this.f1545e.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f1545e = arrayList;
        return z;
    }

    /* renamed from: F0 */
    void m5724F0(Fragment fragment) {
        if (m5720H0(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
            m5633q1(fragment);
        }
    }

    /* renamed from: G */
    public void m5723G() {
        this.f1533G = true;
        m5676c0(true);
        m5685Z();
        m5695U(-1);
        this.f1558r = null;
        this.f1559s = null;
        this.f1560t = null;
        if (this.f1547g != null) {
            this.f1548h.m6985d();
            this.f1547g = null;
        }
        AbstractC0041c<Intent> abstractC0041c = this.f1566z;
        if (abstractC0041c != null) {
            abstractC0041c.m6970c();
            this.f1527A.m6970c();
            this.f1528B.m6970c();
        }
    }

    /* renamed from: G0 */
    public boolean m5722G0() {
        return this.f1533G;
    }

    /* renamed from: H */
    void m5721H() {
        m5695U(1);
    }

    /* renamed from: I */
    public void m5719I() {
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    /* renamed from: J */
    public void m5717J(boolean z) {
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    /* renamed from: J0 */
    boolean m5716J0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    /* renamed from: K */
    void m5715K(Fragment fragment) {
        Iterator<AbstractC0292r> it = this.f1556p.iterator();
        while (it.hasNext()) {
            it.next().m5591a(this, fragment);
        }
    }

    /* renamed from: K0 */
    boolean m5714K0(Fragment fragment) {
        boolean z = true;
        if (fragment == null) {
            return true;
        }
        AbstractC0281n abstractC0281n = fragment.mFragmentManager;
        if (!fragment.equals(abstractC0281n.m5734A0()) || !m5714K0(abstractC0281n.f1560t)) {
            z = false;
        }
        return z;
    }

    /* renamed from: L */
    public boolean m5713L(MenuItem menuItem) {
        if (this.f1557q < 1) {
            return false;
        }
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: L0 */
    boolean m5712L0(int i) {
        return this.f1557q >= i;
    }

    /* renamed from: M */
    public void m5711M(Menu menu) {
        if (this.f1557q < 1) {
            return;
        }
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    /* renamed from: M0 */
    public boolean m5710M0() {
        return this.f1531E || this.f1532F;
    }

    /* renamed from: N0 */
    void m5708N0(Fragment fragment, String[] strArr, int i) {
        if (this.f1528B == null) {
            this.f1558r.k(fragment, strArr, i);
            return;
        }
        this.f1529C.addLast(new C0286n(fragment.mWho, i));
        this.f1528B.m6972a(strArr);
    }

    /* renamed from: O */
    public void m5707O() {
        m5695U(5);
    }

    /* renamed from: O0 */
    void m5706O0(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (this.f1566z == null) {
            this.f1558r.n(fragment, intent, i, bundle);
            return;
        }
        this.f1529C.addLast(new C0286n(fragment.mWho, i));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        this.f1566z.m6972a(intent);
    }

    /* renamed from: P */
    public void m5705P(boolean z) {
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    /* renamed from: Q */
    public boolean m5703Q(Menu menu) {
        boolean z = false;
        if (this.f1557q < 1) {
            return false;
        }
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null && m5716J0(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: Q0 */
    void m5702Q0(Fragment fragment) {
        if (!this.f1543c.m5562c(fragment.mWho)) {
            if (!m5720H0(3)) {
                return;
            }
            Log.d("FragmentManager", "Ignoring moving " + fragment + " to state " + this.f1557q + "since it is not added to " + this);
            return;
        }
        m5698S0(fragment);
        View view = fragment.mView;
        if (view != null && fragment.mIsNewlyAdded && fragment.mContainer != null) {
            float f = fragment.mPostponedAlpha;
            if (f > 0.0f) {
                view.setAlpha(f);
            }
            fragment.mPostponedAlpha = 0.0f;
            fragment.mIsNewlyAdded = false;
            C0259f.C0263d m5814b = C0259f.m5814b(this.f1558r.f(), fragment, true);
            if (m5814b != null) {
                Animation animation = m5814b.f1490a;
                if (animation != null) {
                    fragment.mView.startAnimation(animation);
                } else {
                    m5814b.f1491b.setTarget(fragment.mView);
                    m5814b.f1491b.start();
                }
            }
        }
        if (!fragment.mHiddenChanged) {
            return;
        }
        m5618w(fragment);
    }

    /* renamed from: R */
    void m5701R() {
        m5621u1();
        m5709N(this.f1561u);
    }

    /* renamed from: R0 */
    void m5700R0(int i, boolean z) {
        k<?> kVar;
        if (this.f1558r != null || i == -1) {
            if (!z && i == this.f1557q) {
                return;
            }
            this.f1557q = i;
            if (f1526P) {
                this.f1543c.m5547r();
            } else {
                for (Fragment fragment : this.f1543c.m5551n()) {
                    m5702Q0(fragment);
                }
                for (C0296v c0296v : this.f1543c.m5554k()) {
                    Fragment m5577k = c0296v.m5577k();
                    if (!m5577k.mIsNewlyAdded) {
                        m5702Q0(m5577k);
                    }
                    if (m5577k.mRemoving && !m5577k.isInBackStack()) {
                        this.f1543c.m5548q(c0296v);
                    }
                }
            }
            m5627s1();
            if (!this.f1530D || (kVar = this.f1558r) == null || this.f1557q != 7) {
                return;
            }
            kVar.o();
            this.f1530D = false;
            return;
        }
        throw new IllegalStateException("No activity");
    }

    /* renamed from: S */
    public void m5699S() {
        this.f1531E = false;
        this.f1532F = false;
        this.f1539M.o(false);
        m5695U(7);
    }

    /* renamed from: S0 */
    public void m5698S0(Fragment fragment) {
        m5696T0(fragment, this.f1557q);
    }

    /* renamed from: T */
    public void m5697T() {
        this.f1531E = false;
        this.f1532F = false;
        this.f1539M.o(false);
        m5695U(5);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f4  */
    /* renamed from: T0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m5696T0(androidx.fragment.app.Fragment r7, int r8) {
        /*
            Method dump skipped, instructions count: 778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.AbstractC0281n.m5696T0(androidx.fragment.app.Fragment, int):void");
    }

    /* renamed from: U0 */
    public void m5694U0() {
        if (this.f1558r == null) {
            return;
        }
        this.f1531E = false;
        this.f1532F = false;
        this.f1539M.o(false);
        for (Fragment fragment : this.f1543c.m5551n()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    /* renamed from: V */
    public void m5693V() {
        this.f1532F = true;
        this.f1539M.o(true);
        m5695U(4);
    }

    /* renamed from: V0 */
    void m5692V0(C0296v c0296v) {
        Fragment m5577k = c0296v.m5577k();
        if (m5577k.mDeferStart) {
            if (this.f1542b) {
                this.f1534H = true;
                return;
            }
            m5577k.mDeferStart = false;
            if (f1526P) {
                c0296v.m5575m();
            } else {
                m5698S0(m5577k);
            }
        }
    }

    /* renamed from: W */
    void m5691W() {
        m5695U(2);
    }

    /* renamed from: W0 */
    public void m5690W0() {
        m5682a0(new q(this, (String) null, -1, 0), false);
    }

    /* renamed from: X0 */
    public void m5688X0(int i, int i2) {
        if (i >= 0) {
            m5682a0(new q(this, (String) null, i, i2), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    /* renamed from: Y */
    public void m5687Y(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f1543c.m5560e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f1545e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i = 0; i < size2; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f1545e.get(i).toString());
            }
        }
        ArrayList<a> arrayList2 = this.f1544d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = this.f1544d.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.z(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f1549i.get());
        synchronized (this.f1541a) {
            int size3 = this.f1541a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i3 = 0; i3 < size3; i3++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(this.f1541a.get(i3));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f1558r);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f1559s);
        if (this.f1560t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f1560t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f1557q);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f1531E);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1532F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f1533G);
        if (this.f1530D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f1530D);
        }
    }

    /* renamed from: Y0 */
    public boolean m5686Y0() {
        return m5684Z0(null, -1, 0);
    }

    /* renamed from: a0 */
    void m5682a0(AbstractC0289p abstractC0289p, boolean z) {
        if (!z) {
            if (this.f1558r == null) {
                if (!this.f1533G) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            m5635q();
        }
        synchronized (this.f1541a) {
            if (this.f1558r == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            this.f1541a.add(abstractC0289p);
            m5645m1();
        }
    }

    /* renamed from: a1 */
    boolean m5681a1(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<a> arrayList3 = this.f1544d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f1544d.remove(size));
            arrayList2.add(Boolean.TRUE);
            return true;
        }
        if (str != null || i >= 0) {
            int size2 = arrayList3.size() - 1;
            while (size2 >= 0) {
                a aVar = this.f1544d.get(size2);
                if ((str != null && str.equals(aVar.getName())) || (i >= 0 && i == aVar.t)) {
                    break;
                }
                size2--;
            }
            if (size2 < 0) {
                return false;
            }
            int i4 = size2;
            if ((i2 & 1) != 0) {
                while (true) {
                    int i5 = size2 - 1;
                    i4 = i5;
                    if (i5 < 0) {
                        break;
                    }
                    a aVar2 = this.f1544d.get(i5);
                    if (str != null) {
                        size2 = i5;
                        if (str.equals(aVar2.getName())) {
                            continue;
                        }
                    }
                    i4 = i5;
                    if (i < 0) {
                        break;
                    }
                    i4 = i5;
                    if (i != aVar2.t) {
                        break;
                    }
                    size2 = i5;
                }
            }
            i3 = i4;
        } else {
            i3 = -1;
        }
        if (i3 == this.f1544d.size() - 1) {
            return false;
        }
        for (int size3 = this.f1544d.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f1544d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c0 */
    public boolean m5676c0(boolean z) {
        m5679b0(z);
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (!m5646m0(this.f1535I, this.f1536J)) {
                m5621u1();
                m5689X();
                this.f1543c.m5563b();
                return z3;
            }
            this.f1542b = true;
            try {
                m5666f1(this.f1535I, this.f1536J);
                m5632r();
                z2 = true;
            } catch (Throwable th) {
                m5632r();
                throw th;
            }
        }
    }

    /* renamed from: c1 */
    public void m5675c1(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager == this) {
            bundle.putString(str, fragment.mWho);
            return;
        }
        m5624t1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        throw null;
    }

    /* renamed from: d0 */
    void m5673d0(AbstractC0289p abstractC0289p, boolean z) {
        if (!z || (this.f1558r != null && !this.f1533G)) {
            m5679b0(z);
            if (abstractC0289p.m5594a(this.f1535I, this.f1536J)) {
                this.f1542b = true;
                try {
                    m5666f1(this.f1535I, this.f1536J);
                } finally {
                    m5632r();
                }
            }
            m5621u1();
            m5689X();
            this.f1543c.m5563b();
        }
    }

    /* renamed from: d1 */
    void m5672d1(Fragment fragment, C0226a c0226a) {
        HashSet<C0226a> hashSet = this.f1553m.get(fragment);
        if (hashSet == null || !hashSet.remove(c0226a) || !hashSet.isEmpty()) {
            return;
        }
        this.f1553m.remove(fragment);
        if (fragment.mState >= 5) {
            return;
        }
        m5614y(fragment);
        m5698S0(fragment);
    }

    /* renamed from: e */
    void m5671e(a aVar) {
        if (this.f1544d == null) {
            this.f1544d = new ArrayList<>();
        }
        this.f1544d.add(aVar);
    }

    /* renamed from: e1 */
    void m5669e1(Fragment fragment) {
        if (m5720H0(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (!fragment.mDetached || (!isInBackStack)) {
            this.f1543c.m5546s(fragment);
            if (m5718I0(fragment)) {
                this.f1530D = true;
            }
            fragment.mRemoving = true;
            m5633q1(fragment);
        }
    }

    /* renamed from: f */
    void m5668f(Fragment fragment, C0226a c0226a) {
        if (this.f1553m.get(fragment) == null) {
            this.f1553m.put(fragment, new HashSet<>());
        }
        this.f1553m.get(fragment).add(c0226a);
    }

    /* renamed from: g */
    public void m5665g(Fragment fragment) {
        if (m5720H0(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        C0296v m5616x = m5616x(fragment);
        fragment.mFragmentManager = this;
        this.f1543c.m5549p(m5616x);
        if (!fragment.mDetached) {
            this.f1543c.m5564a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (!m5718I0(fragment)) {
                return;
            }
            this.f1530D = true;
        }
    }

    /* renamed from: g1 */
    void m5663g1(Fragment fragment) {
        this.f1539M.n(fragment);
    }

    /* renamed from: h */
    public void m5662h(AbstractC0292r abstractC0292r) {
        this.f1556p.add(abstractC0292r);
    }

    /* renamed from: h0 */
    public Fragment m5661h0(String str) {
        return this.f1543c.m5559f(str);
    }

    /* renamed from: i */
    public void m5659i(AbstractC0288o abstractC0288o) {
        if (this.f1552l == null) {
            this.f1552l = new ArrayList<>();
        }
        this.f1552l.add(abstractC0288o);
    }

    /* renamed from: i0 */
    public Fragment m5658i0(int i) {
        return this.f1543c.m5558g(i);
    }

    /* renamed from: i1 */
    public void m5657i1(Parcelable parcelable) {
        C0296v c0296v;
        if (parcelable == null) {
            return;
        }
        C0290p c0290p = (C0290p) parcelable;
        if (c0290p.f1573f == null) {
            return;
        }
        this.f1543c.m5545t();
        Iterator<C0294u> it = c0290p.f1573f.iterator();
        while (it.hasNext()) {
            C0294u next = it.next();
            if (next != null) {
                Fragment h = this.f1539M.h(next.f1582g);
                if (h != null) {
                    if (m5720H0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + h);
                    }
                    c0296v = new C0296v(this.f1555o, this.f1543c, h, next);
                } else {
                    c0296v = new C0296v(this.f1555o, this.f1543c, this.f1558r.f().getClassLoader(), m5625t0(), next);
                }
                Fragment m5577k = c0296v.m5577k();
                m5577k.mFragmentManager = this;
                if (m5720H0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + m5577k.mWho + "): " + m5577k);
                }
                c0296v.m5573o(this.f1558r.f().getClassLoader());
                this.f1543c.m5549p(c0296v);
                c0296v.m5567u(this.f1557q);
            }
        }
        for (Fragment fragment : this.f1539M.k()) {
            if (!this.f1543c.m5562c(fragment.mWho)) {
                if (m5720H0(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + c0290p.f1573f);
                }
                this.f1539M.n(fragment);
                fragment.mFragmentManager = this;
                C0296v c0296v2 = new C0296v(this.f1555o, this.f1543c, fragment);
                c0296v2.m5567u(1);
                c0296v2.m5575m();
                fragment.mRemoving = true;
                c0296v2.m5575m();
            }
        }
        this.f1543c.m5544u(c0290p.f1574g);
        if (c0290p.f1575h != null) {
            this.f1544d = new ArrayList<>(c0290p.f1575h.length);
            int i = 0;
            while (true) {
                C0250b[] c0250bArr = c0290p.f1575h;
                if (i >= c0250bArr.length) {
                    break;
                }
                a m5852a = c0250bArr[i].m5852a(this);
                if (m5720H0(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + m5852a.t + "): " + m5852a);
                    PrintWriter printWriter = new PrintWriter(new C0258e0("FragmentManager"));
                    m5852a.A("  ", printWriter, false);
                    printWriter.close();
                }
                this.f1544d.add(m5852a);
                i++;
            }
        } else {
            this.f1544d = null;
        }
        this.f1549i.set(c0290p.f1576i);
        String str = c0290p.f1577j;
        if (str != null) {
            Fragment m5661h0 = m5661h0(str);
            this.f1561u = m5661h0;
            m5709N(m5661h0);
        }
        ArrayList<String> arrayList = c0290p.f1578k;
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                this.f1550j.put(arrayList.get(i2), c0290p.f1579l.get(i2));
            }
        }
        this.f1529C = new ArrayDeque<>(c0290p.f1580m);
    }

    /* renamed from: j */
    void m5656j(Fragment fragment) {
        this.f1539M.f(fragment);
    }

    /* renamed from: j0 */
    public Fragment m5655j0(String str) {
        return this.f1543c.m5557h(str);
    }

    /* renamed from: k */
    int m5653k() {
        return this.f1549i.getAndIncrement();
    }

    /* renamed from: k0 */
    Fragment m5652k0(String str) {
        return this.f1543c.m5556i(str);
    }

    /* renamed from: k1 */
    public Parcelable m5651k1() {
        m5649l0();
        m5685Z();
        m5676c0(true);
        this.f1531E = true;
        this.f1539M.o(true);
        ArrayList<C0294u> m5543v = this.f1543c.m5543v();
        if (m5543v.isEmpty()) {
            if (!m5720H0(2)) {
                return null;
            }
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
        ArrayList<String> m5542w = this.f1543c.m5542w();
        ArrayList<a> arrayList = this.f1544d;
        C0250b[] c0250bArr = null;
        if (arrayList != null) {
            int size = arrayList.size();
            c0250bArr = null;
            if (size > 0) {
                C0250b[] c0250bArr2 = new C0250b[size];
                int i = 0;
                while (true) {
                    c0250bArr = c0250bArr2;
                    if (i >= size) {
                        break;
                    }
                    c0250bArr2[i] = new C0250b(this.f1544d.get(i));
                    if (m5720H0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.f1544d.get(i));
                    }
                    i++;
                }
            }
        }
        C0290p c0290p = new C0290p();
        c0290p.f1573f = m5543v;
        c0290p.f1574g = m5542w;
        c0290p.f1575h = c0250bArr;
        c0290p.f1576i = this.f1549i.get();
        Fragment fragment = this.f1561u;
        if (fragment != null) {
            c0290p.f1577j = fragment.mWho;
        }
        c0290p.f1578k.addAll(this.f1550j.keySet());
        c0290p.f1579l.addAll(this.f1550j.values());
        c0290p.f1580m = new ArrayList<>(this.f1529C);
        return c0290p;
    }

    /* renamed from: l */
    public void m5650l(k<?> kVar, AbstractC0272g abstractC0272g, Fragment fragment) {
        String str;
        if (this.f1558r == null) {
            this.f1558r = kVar;
            this.f1559s = abstractC0272g;
            this.f1560t = fragment;
            if (fragment != null) {
                m5662h(new i(this, fragment));
            } else if (kVar instanceof AbstractC0292r) {
                m5662h((AbstractC0292r) kVar);
            }
            if (this.f1560t != null) {
                m5621u1();
            }
            if (kVar instanceof c) {
                Fragment fragment2 = (c) kVar;
                OnBackPressedDispatcher onBackPressedDispatcher = fragment2.getOnBackPressedDispatcher();
                this.f1547g = onBackPressedDispatcher;
                if (fragment != null) {
                    fragment2 = fragment;
                }
                onBackPressedDispatcher.m6991a(fragment2, this.f1548h);
            }
            if (fragment != null) {
                this.f1539M = fragment.mFragmentManager.m5637p0(fragment);
            } else if (kVar instanceof AbstractC0328g0) {
                this.f1539M = q.j(((AbstractC0328g0) kVar).getViewModelStore());
            } else {
                this.f1539M = new q(false);
            }
            this.f1539M.o(m5710M0());
            this.f1543c.m5541x(this.f1539M);
            AbstractC0045e abstractC0045e = this.f1558r;
            if (!(abstractC0045e instanceof AbstractC0045e)) {
                return;
            }
            AbstractC0042d activityResultRegistry = abstractC0045e.getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.mWho + ":";
            } else {
                str = "";
            }
            String str2 = "FragmentManager:" + str;
            this.f1566z = activityResultRegistry.m6961i(str2 + "StartActivityForResult", new androidx.activity.result.g.c(), new j(this));
            this.f1527A = activityResultRegistry.m6961i(str2 + "StartIntentSenderForResult", new l(), new a(this));
            this.f1528B = activityResultRegistry.m6961i(str2 + "RequestPermissions", new androidx.activity.result.g.b(), new b(this));
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* renamed from: l1 */
    public Fragment$g m5648l1(Fragment fragment) {
        C0296v m5552m = this.f1543c.m5552m(fragment.mWho);
        if (m5552m == null || !m5552m.m5577k().equals(fragment)) {
            m5624t1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
            throw null;
        }
        return m5552m.m5570r();
    }

    /* renamed from: m */
    void m5647m(Fragment fragment) {
        if (m5720H0(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f1543c.m5564a(fragment);
            if (m5720H0(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (!m5718I0(fragment)) {
                return;
            }
            this.f1530D = true;
        }
    }

    /* renamed from: m1 */
    void m5645m1() {
        synchronized (this.f1541a) {
            ArrayList<r> arrayList = this.f1538L;
            boolean z = false;
            boolean z2 = arrayList != null && !arrayList.isEmpty();
            if (this.f1541a.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.f1558r.g().removeCallbacks(this.f1540N);
                this.f1558r.g().post(this.f1540N);
                m5621u1();
            }
        }
    }

    /* renamed from: n */
    public AbstractC0300y m5644n() {
        return new a(this);
    }

    /* renamed from: n0 */
    public AbstractC0284k m5643n0(int i) {
        return this.f1544d.get(i);
    }

    /* renamed from: n1 */
    void m5642n1(Fragment fragment, boolean z) {
        ViewGroup m5628s0 = m5628s0(fragment);
        if (m5628s0 == null || !(m5628s0 instanceof C0274h)) {
            return;
        }
        ((C0274h) m5628s0).setDrawDisappearingViewsLast(!z);
    }

    /* renamed from: o0 */
    public int m5640o0() {
        ArrayList<a> arrayList = this.f1544d;
        return arrayList != null ? arrayList.size() : 0;
    }

    /* renamed from: o1 */
    void m5639o1(Fragment fragment, AbstractC0329h.EnumC0332c enumC0332c) {
        if (fragment.equals(m5661h0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = enumC0332c;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: p */
    boolean m5638p() {
        boolean z = false;
        for (Fragment fragment : this.f1543c.m5553l()) {
            boolean z2 = z;
            if (fragment != null) {
                z2 = m5718I0(fragment);
            }
            z = z2;
            if (z2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: p1 */
    void m5636p1(Fragment fragment) {
        if (fragment == null || (fragment.equals(m5661h0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.f1561u;
            this.f1561u = fragment;
            m5709N(fragment2);
            m5709N(this.f1561u);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: q0 */
    public AbstractC0272g m5634q0() {
        return this.f1559s;
    }

    /* renamed from: r0 */
    public Fragment m5631r0(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment m5661h0 = m5661h0(string);
        if (m5661h0 != null) {
            return m5661h0;
        }
        m5624t1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        throw null;
    }

    /* renamed from: r1 */
    void m5630r1(Fragment fragment) {
        if (m5720H0(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    /* renamed from: s */
    public final void m5629s(String str) {
        this.f1550j.remove(str);
    }

    /* renamed from: t0 */
    public C0277j m5625t0() {
        C0277j c0277j = this.f1562v;
        if (c0277j != null) {
            return c0277j;
        }
        Fragment fragment = this.f1560t;
        return fragment != null ? fragment.mFragmentManager.m5625t0() : this.f1563w;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f1560t;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f1560t)));
            sb.append("}");
        } else {
            k<?> kVar = this.f1558r;
            if (kVar != null) {
                sb.append(kVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f1558r)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u0 */
    public C0299x m5622u0() {
        return this.f1543c;
    }

    /* renamed from: v */
    void m5620v(a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.C(z3);
        } else {
            aVar.B();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.f1557q >= 1) {
            C0302z.m5516C(this.f1558r.f(), this.f1559s, arrayList, arrayList2, 0, 1, true, this.f1554n);
        }
        if (z3) {
            m5700R0(this.f1557q, true);
        }
        for (Fragment fragment : this.f1543c.m5553l()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && aVar.E(fragment.mContainerId)) {
                float f = fragment.mPostponedAlpha;
                if (f > 0.0f) {
                    fragment.mView.setAlpha(f);
                }
                if (z3) {
                    fragment.mPostponedAlpha = 0.0f;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    /* renamed from: v0 */
    public List<Fragment> m5619v0() {
        return this.f1543c.m5551n();
    }

    /* renamed from: w0 */
    public k<?> m5617w0() {
        return this.f1558r;
    }

    /* renamed from: x */
    public C0296v m5616x(Fragment fragment) {
        C0296v m5552m = this.f1543c.m5552m(fragment.mWho);
        if (m5552m != null) {
            return m5552m;
        }
        C0296v c0296v = new C0296v(this.f1555o, this.f1543c, fragment);
        c0296v.m5573o(this.f1558r.f().getClassLoader());
        c0296v.m5567u(this.f1557q);
        return c0296v;
    }

    /* renamed from: x0 */
    public LayoutInflater.Factory2 m5615x0() {
        return this.f1546f;
    }

    /* renamed from: y0 */
    public C0279m m5613y0() {
        return this.f1555o;
    }

    /* renamed from: z */
    void m5612z(Fragment fragment) {
        if (m5720H0(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (!fragment.mAdded) {
                return;
            }
            if (m5720H0(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            this.f1543c.m5546s(fragment);
            if (m5718I0(fragment)) {
                this.f1530D = true;
            }
            m5633q1(fragment);
        }
    }

    /* renamed from: z0 */
    public Fragment m5611z0() {
        return this.f1560t;
    }
}
