package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p005os.C0226a;
import f.h.l.t;
import f.m.b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.f0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f0.class */
public abstract class AbstractC0265f0 {

    /* renamed from: a */
    private final ViewGroup f1497a;

    /* renamed from: b */
    final ArrayList<C0269e> f1498b = new ArrayList<>();

    /* renamed from: c */
    final ArrayList<C0269e> f1499c = new ArrayList<>();

    /* renamed from: d */
    boolean f1500d = false;

    /* renamed from: e */
    boolean f1501e = false;

    /* renamed from: androidx.fragment.app.f0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f0$a.class */
    public class RunnableC0266a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ d f1502f;

        RunnableC0266a(d dVar) {
            AbstractC0265f0.this = r4;
            this.f1502f = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AbstractC0265f0.this.f1498b.contains(this.f1502f)) {
                this.f1502f.m5790e().applyState(this.f1502f.m5789f().mView);
            }
        }
    }

    /* renamed from: androidx.fragment.app.f0$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f0$b.class */
    public class RunnableC0267b implements Runnable {

        /* renamed from: f */
        final /* synthetic */ d f1504f;

        RunnableC0267b(d dVar) {
            AbstractC0265f0.this = r4;
            this.f1504f = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0265f0.this.f1498b.remove(this.f1504f);
            AbstractC0265f0.this.f1499c.remove(this.f1504f);
        }
    }

    /* renamed from: androidx.fragment.app.f0$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f0$c.class */
    public static /* synthetic */ class C0268c {

        /* renamed from: a */
        static final /* synthetic */ int[] f1506a;

        /* renamed from: b */
        static final /* synthetic */ int[] f1507b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0060 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0064 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0068 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006c -> B:35:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0070 -> B:31:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0074 -> B:27:0x0054). Please submit an issue!!! */
        static {
            int[] iArr = new int[C0269e.EnumC0270b.values().length];
            f1507b = iArr;
            try {
                iArr[C0269e.EnumC0270b.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1507b[C0269e.EnumC0270b.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1507b[C0269e.EnumC0270b.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[C0269e.EnumC0271c.values().length];
            f1506a = iArr2;
            try {
                iArr2[C0269e.EnumC0271c.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1506a[C0269e.EnumC0271c.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1506a[C0269e.EnumC0271c.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1506a[C0269e.EnumC0271c.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: androidx.fragment.app.f0$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f0$e.class */
    public static class C0269e {

        /* renamed from: a */
        private EnumC0271c f1508a;

        /* renamed from: b */
        private EnumC0270b f1509b;

        /* renamed from: c */
        private final Fragment f1510c;

        /* renamed from: d */
        private final List<Runnable> f1511d = new ArrayList();

        /* renamed from: e */
        private final HashSet<C0226a> f1512e = new HashSet<>();

        /* renamed from: f */
        private boolean f1513f = false;

        /* renamed from: g */
        private boolean f1514g = false;

        /* renamed from: androidx.fragment.app.f0$e$b */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f0$e$b.class */
        public enum EnumC0270b {
            NONE,
            ADDING,
            REMOVING
        }

        /* renamed from: androidx.fragment.app.f0$e$c */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f0$e$c.class */
        public enum EnumC0271c {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            public static EnumC0271c from(int i) {
                if (i != 0) {
                    if (i == 4) {
                        return INVISIBLE;
                    }
                    if (i == 8) {
                        return GONE;
                    }
                    throw new IllegalArgumentException("Unknown visibility " + i);
                }
                return VISIBLE;
            }

            public static EnumC0271c from(View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            public void applyState(View view) {
                int i = C0268c.f1506a[ordinal()];
                if (i == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup == null) {
                        return;
                    }
                    if (AbstractC0281n.m5720H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                    }
                    viewGroup.removeView(view);
                } else if (i == 2) {
                    if (AbstractC0281n.m5720H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                } else if (i == 3) {
                    if (AbstractC0281n.m5720H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                } else if (i != 4) {
                } else {
                    if (AbstractC0281n.m5720H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                    }
                    view.setVisibility(4);
                }
            }
        }

        C0269e(EnumC0271c enumC0271c, EnumC0270b enumC0270b, Fragment fragment, C0226a c0226a) {
            this.f1508a = enumC0271c;
            this.f1509b = enumC0270b;
            this.f1510c = fragment;
            c0226a.m5948c(new a(this));
        }

        /* renamed from: a */
        final void m5794a(Runnable runnable) {
            this.f1511d.add(runnable);
        }

        /* renamed from: b */
        final void m5793b() {
            if (m5787h()) {
                return;
            }
            this.f1513f = true;
            if (this.f1512e.isEmpty()) {
                m5792c();
                return;
            }
            Iterator it = new ArrayList(this.f1512e).iterator();
            while (it.hasNext()) {
                ((C0226a) it.next()).m5950a();
            }
        }

        /* renamed from: c */
        public void m5792c() {
            if (this.f1514g) {
                return;
            }
            if (AbstractC0281n.m5720H0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f1514g = true;
            for (Runnable runnable : this.f1511d) {
                runnable.run();
            }
        }

        /* renamed from: d */
        public final void m5791d(C0226a c0226a) {
            if (!this.f1512e.remove(c0226a) || !this.f1512e.isEmpty()) {
                return;
            }
            m5792c();
        }

        /* renamed from: e */
        public EnumC0271c m5790e() {
            return this.f1508a;
        }

        /* renamed from: f */
        public final Fragment m5789f() {
            return this.f1510c;
        }

        /* renamed from: g */
        EnumC0270b m5788g() {
            return this.f1509b;
        }

        /* renamed from: h */
        final boolean m5787h() {
            return this.f1513f;
        }

        /* renamed from: i */
        final boolean m5786i() {
            return this.f1514g;
        }

        /* renamed from: j */
        public final void m5785j(C0226a c0226a) {
            m5783l();
            this.f1512e.add(c0226a);
        }

        /* renamed from: k */
        final void m5784k(EnumC0271c enumC0271c, EnumC0270b enumC0270b) {
            int i = C0268c.f1507b[enumC0270b.ordinal()];
            if (i == 1) {
                if (this.f1508a != EnumC0271c.REMOVED) {
                    return;
                }
                if (AbstractC0281n.m5720H0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f1510c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f1509b + " to ADDING.");
                }
                this.f1508a = EnumC0271c.VISIBLE;
                this.f1509b = EnumC0270b.ADDING;
            } else if (i == 2) {
                if (AbstractC0281n.m5720H0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f1510c + " mFinalState = " + this.f1508a + " -> REMOVED. mLifecycleImpact  = " + this.f1509b + " to REMOVING.");
                }
                this.f1508a = EnumC0271c.REMOVED;
                this.f1509b = EnumC0270b.REMOVING;
            } else if (i != 3 || this.f1508a == EnumC0271c.REMOVED) {
            } else {
                if (AbstractC0281n.m5720H0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f1510c + " mFinalState = " + this.f1508a + " -> " + enumC0271c + ". ");
                }
                this.f1508a = enumC0271c;
            }
        }

        /* renamed from: l */
        void m5783l() {
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f1508a + "} {mLifecycleImpact = " + this.f1509b + "} {mFragment = " + this.f1510c + "}";
        }
    }

    AbstractC0265f0(ViewGroup viewGroup) {
        this.f1497a = viewGroup;
    }

    /* renamed from: a */
    private void m5812a(C0269e.EnumC0271c enumC0271c, C0269e.EnumC0270b enumC0270b, C0296v c0296v) {
        synchronized (this.f1498b) {
            C0226a c0226a = new C0226a();
            C0269e m5805h = m5805h(c0296v.m5577k());
            if (m5805h != null) {
                m5805h.m5784k(enumC0271c, enumC0270b);
                return;
            }
            C0269e dVar = new d(enumC0271c, enumC0270b, c0296v, c0226a);
            this.f1498b.add(dVar);
            dVar.m5794a(new RunnableC0266a(dVar));
            dVar.m5794a(new RunnableC0267b(dVar));
        }
    }

    /* renamed from: h */
    private C0269e m5805h(Fragment fragment) {
        Iterator<C0269e> it = this.f1498b.iterator();
        while (it.hasNext()) {
            C0269e next = it.next();
            if (next.m5789f().equals(fragment) && !next.m5787h()) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: i */
    private C0269e m5804i(Fragment fragment) {
        Iterator<C0269e> it = this.f1499c.iterator();
        while (it.hasNext()) {
            C0269e next = it.next();
            if (next.m5789f().equals(fragment) && !next.m5787h()) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: n */
    public static AbstractC0265f0 m5799n(ViewGroup viewGroup, AbstractC0281n abstractC0281n) {
        return m5798o(viewGroup, abstractC0281n.m5732B0());
    }

    /* renamed from: o */
    public static AbstractC0265f0 m5798o(ViewGroup viewGroup, AbstractC0273g0 abstractC0273g0) {
        int i = b.b;
        Object tag = viewGroup.getTag(i);
        if (tag instanceof AbstractC0265f0) {
            return (AbstractC0265f0) tag;
        }
        AbstractC0265f0 m5779a = abstractC0273g0.m5779a(viewGroup);
        viewGroup.setTag(i, m5779a);
        return m5779a;
    }

    /* renamed from: q */
    private void m5796q() {
        Iterator<C0269e> it = this.f1498b.iterator();
        while (it.hasNext()) {
            C0269e next = it.next();
            if (next.m5788g() == C0269e.EnumC0270b.ADDING) {
                next.m5784k(C0269e.EnumC0271c.from(next.m5789f().requireView().getVisibility()), C0269e.EnumC0270b.NONE);
            }
        }
    }

    /* renamed from: b */
    public void m5811b(C0269e.EnumC0271c enumC0271c, C0296v c0296v) {
        if (AbstractC0281n.m5720H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + c0296v.m5577k());
        }
        m5812a(enumC0271c, C0269e.EnumC0270b.ADDING, c0296v);
    }

    /* renamed from: c */
    public void m5810c(C0296v c0296v) {
        if (AbstractC0281n.m5720H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + c0296v.m5577k());
        }
        m5812a(C0269e.EnumC0271c.GONE, C0269e.EnumC0270b.NONE, c0296v);
    }

    /* renamed from: d */
    public void m5809d(C0296v c0296v) {
        if (AbstractC0281n.m5720H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + c0296v.m5577k());
        }
        m5812a(C0269e.EnumC0271c.REMOVED, C0269e.EnumC0270b.REMOVING, c0296v);
    }

    /* renamed from: e */
    public void m5808e(C0296v c0296v) {
        if (AbstractC0281n.m5720H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + c0296v.m5577k());
        }
        m5812a(C0269e.EnumC0271c.VISIBLE, C0269e.EnumC0270b.NONE, c0296v);
    }

    /* renamed from: f */
    abstract void m5807f(List<C0269e> list, boolean z);

    /* renamed from: g */
    public void m5806g() {
        if (this.f1501e) {
            return;
        }
        if (!t.P(this.f1497a)) {
            m5803j();
            this.f1500d = false;
            return;
        }
        synchronized (this.f1498b) {
            if (!this.f1498b.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f1499c);
                this.f1499c.clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C0269e c0269e = (C0269e) it.next();
                    if (AbstractC0281n.m5720H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + c0269e);
                    }
                    c0269e.m5793b();
                    if (!c0269e.m5786i()) {
                        this.f1499c.add(c0269e);
                    }
                }
                m5796q();
                ArrayList arrayList2 = new ArrayList(this.f1498b);
                this.f1498b.clear();
                this.f1499c.addAll(arrayList2);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((C0269e) it2.next()).m5783l();
                }
                m5807f(arrayList2, this.f1500d);
                this.f1500d = false;
            }
        }
    }

    /* renamed from: j */
    public void m5803j() {
        String str;
        String str2;
        boolean P = t.P(this.f1497a);
        synchronized (this.f1498b) {
            m5796q();
            Iterator<C0269e> it = this.f1498b.iterator();
            while (it.hasNext()) {
                it.next().m5783l();
            }
            Iterator it2 = new ArrayList(this.f1499c).iterator();
            while (it2.hasNext()) {
                C0269e c0269e = (C0269e) it2.next();
                if (AbstractC0281n.m5720H0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    if (P) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.f1497a + " is not attached to window. ";
                    }
                    sb.append(str2);
                    sb.append("Cancelling running operation ");
                    sb.append(c0269e);
                    Log.v("FragmentManager", sb.toString());
                }
                c0269e.m5793b();
            }
            Iterator it3 = new ArrayList(this.f1498b).iterator();
            while (it3.hasNext()) {
                C0269e c0269e2 = (C0269e) it3.next();
                if (AbstractC0281n.m5720H0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    if (P) {
                        str = "";
                    } else {
                        str = "Container " + this.f1497a + " is not attached to window. ";
                    }
                    sb2.append(str);
                    sb2.append("Cancelling pending operation ");
                    sb2.append(c0269e2);
                    Log.v("FragmentManager", sb2.toString());
                }
                c0269e2.m5793b();
            }
        }
    }

    /* renamed from: k */
    public void m5802k() {
        if (this.f1501e) {
            this.f1501e = false;
            m5806g();
        }
    }

    /* renamed from: l */
    public C0269e.EnumC0270b m5801l(C0296v c0296v) {
        C0269e m5805h = m5805h(c0296v.m5577k());
        if (m5805h != null) {
            return m5805h.m5788g();
        }
        C0269e m5804i = m5804i(c0296v.m5577k());
        if (m5804i == null) {
            return null;
        }
        return m5804i.m5788g();
    }

    /* renamed from: m */
    public ViewGroup m5800m() {
        return this.f1497a;
    }

    /* renamed from: p */
    public void m5797p() {
        synchronized (this.f1498b) {
            m5796q();
            this.f1501e = false;
            int size = this.f1498b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                C0269e c0269e = this.f1498b.get(size);
                C0269e.EnumC0271c from = C0269e.EnumC0271c.from(c0269e.m5789f().mView);
                C0269e.EnumC0271c m5790e = c0269e.m5790e();
                C0269e.EnumC0271c enumC0271c = C0269e.EnumC0271c.VISIBLE;
                if (m5790e == enumC0271c && from != enumC0271c) {
                    this.f1501e = c0269e.m5789f().isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    /* renamed from: r */
    public void m5795r(boolean z) {
        this.f1500d = z;
    }
}
