package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.p032c.C0626c;
import androidx.core.p037g.AbstractC0730i;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.C0728g;
import androidx.core.p037g.C0732k;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0692b;
import androidx.core.p037g.p038a.C0696d;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.C1048a;
import androidx.recyclerview.widget.C1105aq;
import androidx.recyclerview.widget.C1108ar;
import androidx.recyclerview.widget.RunnableC1139s;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.common.api.Api;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements AbstractC0730i {

    /* renamed from: K */
    static final Interpolator f4480K;

    /* renamed from: L */
    private static final int[] f4481L = {16843830};

    /* renamed from: M */
    private static final int[] f4482M = {16842987};

    /* renamed from: N */
    private static final boolean f4483N;

    /* renamed from: O */
    private static final boolean f4484O;

    /* renamed from: P */
    private static final Class<?>[] f4485P;

    /* renamed from: a */
    static final boolean f4486a;

    /* renamed from: b */
    static final boolean f4487b;

    /* renamed from: c */
    static final boolean f4488c;

    /* renamed from: d */
    static final boolean f4489d;

    /* renamed from: A */
    RunnableC1139s f4490A;

    /* renamed from: B */
    RunnableC1139s.C1140a f4491B;

    /* renamed from: C */
    final C1079q f4492C;

    /* renamed from: D */
    boolean f4493D;

    /* renamed from: E */
    boolean f4494E;

    /* renamed from: F */
    boolean f4495F;

    /* renamed from: G */
    C1098ak f4496G;

    /* renamed from: H */
    final int[] f4497H;

    /* renamed from: I */
    final int[] f4498I;

    /* renamed from: J */
    final List<AbstractC1082t> f4499J;

    /* renamed from: Q */
    private final C1075o f4500Q;

    /* renamed from: R */
    private SavedState f4501R;

    /* renamed from: S */
    private final Rect f4502S;

    /* renamed from: T */
    private final ArrayList<AbstractC1070k> f4503T;

    /* renamed from: U */
    private AbstractC1070k f4504U;

    /* renamed from: V */
    private int f4505V;

    /* renamed from: W */
    private boolean f4506W;

    /* renamed from: aA */
    private AbstractC1061f.AbstractC1062a f4507aA;

    /* renamed from: aB */
    private AbstractC1059d f4508aB;

    /* renamed from: aC */
    private final int[] f4509aC;

    /* renamed from: aD */
    private C0732k f4510aD;

    /* renamed from: aE */
    private final int[] f4511aE;

    /* renamed from: aF */
    private final int[] f4512aF;

    /* renamed from: aG */
    private Runnable f4513aG;

    /* renamed from: aH */
    private final C1108ar.AbstractC1110b f4514aH;

    /* renamed from: aa */
    private int f4515aa;

    /* renamed from: ab */
    private final AccessibilityManager f4516ab;

    /* renamed from: ac */
    private List<Object> f4517ac;

    /* renamed from: ad */
    private int f4518ad;

    /* renamed from: ae */
    private int f4519ae;

    /* renamed from: af */
    private C1060e f4520af;

    /* renamed from: ag */
    private EdgeEffect f4521ag;

    /* renamed from: ah */
    private EdgeEffect f4522ah;

    /* renamed from: ai */
    private EdgeEffect f4523ai;

    /* renamed from: aj */
    private EdgeEffect f4524aj;

    /* renamed from: ak */
    private int f4525ak;

    /* renamed from: al */
    private int f4526al;

    /* renamed from: am */
    private VelocityTracker f4527am;

    /* renamed from: an */
    private int f4528an;

    /* renamed from: ao */
    private int f4529ao;

    /* renamed from: ap */
    private int f4530ap;

    /* renamed from: aq */
    private int f4531aq;

    /* renamed from: ar */
    private int f4532ar;

    /* renamed from: as */
    private AbstractC1069j f4533as;

    /* renamed from: at */
    private final int f4534at;

    /* renamed from: au */
    private final int f4535au;

    /* renamed from: av */
    private float f4536av;

    /* renamed from: aw */
    private float f4537aw;

    /* renamed from: ax */
    private boolean f4538ax;

    /* renamed from: ay */
    private AbstractC1071l f4539ay;

    /* renamed from: az */
    private List<AbstractC1071l> f4540az;

    /* renamed from: e */
    final C1074n f4541e;

    /* renamed from: f */
    C1085a f4542f;

    /* renamed from: g */
    C1113d f4543g;

    /* renamed from: h */
    final C1108ar f4544h;

    /* renamed from: i */
    boolean f4545i;

    /* renamed from: j */
    final Runnable f4546j;

    /* renamed from: k */
    final Rect f4547k;

    /* renamed from: l */
    final RectF f4548l;

    /* renamed from: m */
    AbstractC1056a f4549m;

    /* renamed from: n */
    AbstractC1066i f4550n;

    /* renamed from: o */
    final ArrayList<AbstractC1065h> f4551o;

    /* renamed from: p */
    boolean f4552p;

    /* renamed from: q */
    boolean f4553q;

    /* renamed from: r */
    boolean f4554r;

    /* renamed from: s */
    boolean f4555s;

    /* renamed from: t */
    boolean f4556t;

    /* renamed from: u */
    boolean f4557u;

    /* renamed from: v */
    boolean f4558v;

    /* renamed from: w */
    boolean f4559w;

    /* renamed from: x */
    boolean f4560x;

    /* renamed from: y */
    AbstractC1061f f4561y;

    /* renamed from: z */
    final RunnableC1081s f4562z;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: c */
        AbstractC1082t f4563c;

        /* renamed from: d */
        final Rect f4564d = new Rect();

        /* renamed from: e */
        boolean f4565e = true;

        /* renamed from: f */
        boolean f4566f = false;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1097aj();

        /* renamed from: a */
        Parcelable f4567a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4567a = parcel.readParcelable(classLoader == null ? AbstractC1066i.class.getClassLoader() : classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f4567a, 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
    public static abstract class AbstractC1056a<VH extends AbstractC1082t> {

        /* renamed from: a */
        private final C1057b f4568a = new C1057b();

        /* renamed from: b */
        private boolean f4569b = false;

        /* renamed from: a */
        public abstract VH mo986a(ViewGroup viewGroup, int i);

        /* renamed from: a */
        public final void m7184a(int i, int i2) {
            this.f4568a.m7167c(i, i2);
        }

        /* renamed from: a */
        public final void m7183a(int i, int i2, Object obj) {
            this.f4568a.m7170a(i, i2, obj);
        }

        /* renamed from: a */
        public final void m7182a(int i, Object obj) {
            this.f4568a.m7170a(i, 1, obj);
        }

        /* renamed from: a */
        public final void m7181a(AbstractC1058c cVar) {
            this.f4568a.registerObserver(cVar);
        }

        /* renamed from: a */
        public void mo984a(VH vh) {
        }

        /* renamed from: a */
        public abstract void mo983a(VH vh, int i);

        /* renamed from: a */
        public final void m7180a(boolean z) {
            if (!this.f4568a.m7172a()) {
                this.f4569b = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        /* renamed from: b */
        public long mo981b(int i) {
            return -1L;
        }

        /* renamed from: b */
        public final VH m7178b(ViewGroup viewGroup, int i) {
            try {
                C0626c.m8687a("RV CreateView");
                VH a = mo986a(viewGroup, i);
                if (a.f4658a.getParent() == null) {
                    a.f4663f = i;
                    C0626c.m8688a();
                    return a;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } catch (Throwable th) {
                C0626c.m8688a();
                throw th;
            }
        }

        /* renamed from: b */
        public final void m7179b(int i, int i2) {
            this.f4568a.m7171a(i, i2);
        }

        /* renamed from: b */
        public final void m7177b(AbstractC1058c cVar) {
            this.f4568a.unregisterObserver(cVar);
        }

        /* renamed from: b */
        public final void m7176b(VH vh, int i) {
            vh.f4660c = i;
            if (this.f4569b) {
                vh.f4662e = mo981b(i);
            }
            vh.m7028a(1, 519);
            C0626c.m8687a("RV OnBindView");
            vh.m7003s();
            mo983a((AbstractC1056a<VH>) vh, i);
            vh.m7004r();
            ViewGroup.LayoutParams layoutParams = vh.f4658a.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                ((LayoutParams) layoutParams).f4565e = true;
            }
            C0626c.m8688a();
        }

        /* renamed from: c */
        public abstract int mo979c();

        /* renamed from: c */
        public int mo978c(int i) {
            return 0;
        }

        /* renamed from: c */
        public final void m7175c(int i, int i2) {
            this.f4568a.m7168b(i, i2);
        }

        /* renamed from: d */
        public final boolean m7174d() {
            return this.f4569b;
        }

        /* renamed from: e */
        public final void m7173e() {
            this.f4568a.m7169b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
    public static final class C1057b extends Observable<AbstractC1058c> {
        C1057b() {
        }

        /* renamed from: a */
        public final void m7171a(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC1058c) this.mObservers.get(size)).mo7054a(i, i2);
            }
        }

        /* renamed from: a */
        public final void m7170a(int i, int i2, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC1058c) this.mObservers.get(size)).mo7053a(i, i2, obj);
            }
        }

        /* renamed from: a */
        public final boolean m7172a() {
            return !this.mObservers.isEmpty();
        }

        /* renamed from: b */
        public final void m7169b() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC1058c) this.mObservers.get(size)).mo7055a();
            }
        }

        /* renamed from: b */
        public final void m7168b(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC1058c) this.mObservers.get(size)).mo7051b(i, i2);
            }
        }

        /* renamed from: c */
        public final void m7167c(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC1058c) this.mObservers.get(size)).mo7050c(i, i2);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c.class */
    public static abstract class AbstractC1058c {
        /* renamed from: a */
        public void mo7055a() {
        }

        /* renamed from: a */
        public void mo7054a(int i, int i2) {
        }

        /* renamed from: a */
        public void mo7053a(int i, int i2, Object obj) {
        }

        /* renamed from: b */
        public void mo7051b(int i, int i2) {
        }

        /* renamed from: c */
        public void mo7050c(int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$d.class */
    public interface AbstractC1059d {
        /* renamed from: a */
        int m7166a();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$e.class */
    public static final class C1060e {
        /* renamed from: a */
        protected static EdgeEffect m7165a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
    public static abstract class AbstractC1061f {

        /* renamed from: a */
        private AbstractC1062a f4570a = null;

        /* renamed from: b */
        private ArrayList<Object> f4571b = new ArrayList<>();

        /* renamed from: c */
        private long f4572c = 120;

        /* renamed from: d */
        private long f4573d = 120;

        /* renamed from: e */
        private long f4574e = 250;

        /* renamed from: f */
        private long f4575f = 250;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$a.class */
        public interface AbstractC1062a {
            /* renamed from: a */
            void mo7154a(AbstractC1082t tVar);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$b.class */
        public static final class C1063b {

            /* renamed from: a */
            public int f4576a;

            /* renamed from: b */
            public int f4577b;

            /* renamed from: c */
            public int f4578c;

            /* renamed from: d */
            public int f4579d;

            /* renamed from: a */
            public final C1063b m7155a(AbstractC1082t tVar) {
                View view = tVar.f4658a;
                this.f4576a = view.getLeft();
                this.f4577b = view.getTop();
                this.f4578c = view.getRight();
                this.f4579d = view.getBottom();
                return this;
            }
        }

        /* renamed from: d */
        public static C1063b m7163d(AbstractC1082t tVar) {
            return new C1063b().m7155a(tVar);
        }

        /* renamed from: e */
        static int m7161e(AbstractC1082t tVar) {
            int i = tVar.f4667j & 14;
            if (tVar.m7009m()) {
                return 4;
            }
            int i2 = i;
            if ((i & 4) == 0) {
                int i3 = tVar.f4661d;
                int g = tVar.m7015g();
                i2 = i;
                if (i3 != -1) {
                    i2 = i;
                    if (g != -1) {
                        i2 = i;
                        if (i3 != g) {
                            i2 = i | 2048;
                        }
                    }
                }
            }
            return i2;
        }

        /* renamed from: a */
        public abstract void mo6772a();

        /* renamed from: a */
        final void m7164a(AbstractC1062a aVar) {
            this.f4570a = aVar;
        }

        /* renamed from: a */
        public abstract boolean mo6848a(AbstractC1082t tVar, C1063b bVar, C1063b bVar2);

        /* renamed from: a */
        public abstract boolean mo6847a(AbstractC1082t tVar, AbstractC1082t tVar2, C1063b bVar, C1063b bVar2);

        /* renamed from: a */
        public boolean mo6768a(AbstractC1082t tVar, List<Object> list) {
            return mo6844g(tVar);
        }

        /* renamed from: b */
        public abstract boolean mo6763b();

        /* renamed from: b */
        public abstract boolean mo6846b(AbstractC1082t tVar, C1063b bVar, C1063b bVar2);

        /* renamed from: c */
        public abstract void mo6760c(AbstractC1082t tVar);

        /* renamed from: c */
        public abstract boolean mo6845c(AbstractC1082t tVar, C1063b bVar, C1063b bVar2);

        /* renamed from: d */
        public abstract void mo6759d();

        /* renamed from: e */
        public final long m7162e() {
            return this.f4574e;
        }

        /* renamed from: f */
        public final long m7160f() {
            return this.f4572c;
        }

        /* renamed from: f */
        public final void m7159f(AbstractC1082t tVar) {
            AbstractC1062a aVar = this.f4570a;
            if (aVar != null) {
                aVar.mo7154a(tVar);
            }
        }

        /* renamed from: g */
        public final long m7158g() {
            return this.f4573d;
        }

        /* renamed from: g */
        public boolean mo6844g(AbstractC1082t tVar) {
            return true;
        }

        /* renamed from: h */
        public final long m7157h() {
            return this.f4575f;
        }

        /* renamed from: i */
        public final void m7156i() {
            int size = this.f4571b.size();
            for (int i = 0; i < size; i++) {
                this.f4571b.get(i);
            }
            this.f4571b.clear();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
    private final class C1064g implements AbstractC1061f.AbstractC1062a {
        C1064g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1061f.AbstractC1062a
        /* renamed from: a */
        public final void mo7154a(AbstractC1082t tVar) {
            boolean z = true;
            tVar.m7019c(true);
            if (tVar.f4665h != null && tVar.f4666i == null) {
                tVar.f4665h = null;
            }
            tVar.f4666i = null;
            if ((tVar.f4667j & 16) == 0) {
                z = false;
            }
            if (!z && !RecyclerView.this.m7257a(tVar.f4658a) && tVar.m7005q()) {
                RecyclerView.this.removeDetachedView(tVar.f4658a, false);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$h */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
    public static abstract class AbstractC1065h {
        /* renamed from: a */
        public void mo6740a(Canvas canvas, RecyclerView recyclerView) {
        }

        /* renamed from: a */
        public void mo7153a(Rect rect, View view, RecyclerView recyclerView) {
            view.getLayoutParams();
            rect.set(0, 0, 0, 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$i */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i.class */
    public static abstract class AbstractC1066i {

        /* renamed from: e */
        private int f4585e;

        /* renamed from: f */
        private int f4586f;

        /* renamed from: g */
        private int f4587g;

        /* renamed from: h */
        private int f4588h;

        /* renamed from: p */
        C1113d f4589p;

        /* renamed from: q */
        RecyclerView f4590q;

        /* renamed from: t */
        AbstractC1076p f4593t;

        /* renamed from: x */
        int f4597x;

        /* renamed from: y */
        boolean f4598y;

        /* renamed from: a */
        private final C1105aq.AbstractC1107b f4581a = new C1095ah(this);

        /* renamed from: b */
        private final C1105aq.AbstractC1107b f4582b = new C1096ai(this);

        /* renamed from: r */
        C1105aq f4591r = new C1105aq(this.f4581a);

        /* renamed from: s */
        C1105aq f4592s = new C1105aq(this.f4582b);

        /* renamed from: u */
        boolean f4594u = false;

        /* renamed from: v */
        boolean f4595v = false;

        /* renamed from: w */
        boolean f4596w = false;

        /* renamed from: c */
        private boolean f4583c = true;

        /* renamed from: d */
        private boolean f4584d = true;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$i$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$a.class */
        public interface AbstractC1067a {
            /* renamed from: a */
            void mo6727a(int i, int i2);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$i$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$b.class */
        public static final class C1068b {

            /* renamed from: a */
            public int f4599a;

            /* renamed from: b */
            public int f4600b;

            /* renamed from: c */
            public boolean f4601c;

            /* renamed from: d */
            public boolean f4602d;
        }

        /* renamed from: a */
        public static int m7151a(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode == Integer.MIN_VALUE) {
                return Math.min(size, Math.max(i2, i3));
            }
            if (mode != 1073741824) {
                size = Math.max(i2, i3);
            }
            return size;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
            if (r5 == 1073741824) goto L_0x003e;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m7150a(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                r0 = 0
                r9 = r0
                r0 = 0
                r1 = r4
                r2 = r6
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r4 = r0
                r0 = r8
                if (r0 == 0) goto L_0x002f
                r0 = r7
                if (r0 < 0) goto L_0x0017
                goto L_0x0033
            L_0x0017:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x006a
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L_0x003e
                r0 = r5
                if (r0 == 0) goto L_0x006a
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 == r1) goto L_0x003e
                goto L_0x006a
            L_0x002f:
                r0 = r7
                if (r0 < 0) goto L_0x0039
            L_0x0033:
                r0 = 1073741824(0x40000000, float:2.0)
                r4 = r0
                goto L_0x006f
            L_0x0039:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x0045
            L_0x003e:
                r0 = r4
                r7 = r0
                r0 = r5
                r4 = r0
                goto L_0x006f
            L_0x0045:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L_0x006a
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L_0x0062
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 != r1) goto L_0x005a
                goto L_0x0062
            L_0x005a:
                r0 = r4
                r7 = r0
                r0 = r9
                r4 = r0
                goto L_0x006f
            L_0x0062:
                r0 = r4
                r7 = r0
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r0
                goto L_0x006f
            L_0x006a:
                r0 = 0
                r7 = r0
                r0 = r9
                r4 = r0
            L_0x006f:
                r0 = r7
                r1 = r4
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC1066i.m7150a(int, int, int, int, boolean):int");
        }

        /* renamed from: a */
        public static C1068b m7147a(Context context, AttributeSet attributeSet, int i, int i2) {
            C1068b bVar = new C1068b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1048a.C1050b.f4417h, i, i2);
            bVar.f4599a = obtainStyledAttributes.getInt(C1048a.C1050b.f4418i, 1);
            bVar.f4600b = obtainStyledAttributes.getInt(C1048a.C1050b.f4427r, 1);
            bVar.f4601c = obtainStyledAttributes.getBoolean(C1048a.C1050b.f4426q, false);
            bVar.f4602d = obtainStyledAttributes.getBoolean(C1048a.C1050b.f4428s, false);
            obtainStyledAttributes.recycle();
            return bVar;
        }

        /* renamed from: a */
        private void m7145a(View view, int i) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            AbstractC1082t d = RecyclerView.m7217d(view);
            if (d.m7006p()) {
                this.f4590q.f4544h.m6820e(d);
            } else {
                this.f4590q.f4544h.m6819f(d);
            }
            this.f4589p.m6806a(view, i, layoutParams, d.m7006p());
        }

        /* renamed from: a */
        public static void m7144a(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f4564d;
            view.layout(i + rect.left + layoutParams.leftMargin, i2 + rect.top + layoutParams.topMargin, (i3 - rect.right) - layoutParams.rightMargin, (i4 - rect.bottom) - layoutParams.bottomMargin);
        }

        /* renamed from: a */
        private void m7142a(View view, int i, boolean z) {
            AbstractC1082t d = RecyclerView.m7217d(view);
            if (z || d.m7006p()) {
                this.f4590q.f4544h.m6820e(d);
            } else {
                this.f4590q.f4544h.m6819f(d);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (d.m7012j() || d.m7014h()) {
                if (d.m7014h()) {
                    d.m7013i();
                } else {
                    d.m7011k();
                }
                this.f4589p.m6806a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f4590q) {
                int c = this.f4589p.m6799c(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.f4589p.m6804b();
                }
                if (c == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f4590q.indexOfChild(view) + this.f4590q.m7268a());
                } else if (c != i2) {
                    this.f4590q.f4550n.m7112i(c, i2);
                }
            } else {
                this.f4589p.m6805a(view, i, false);
                layoutParams.f4565e = true;
                AbstractC1076p pVar = this.f4593t;
                if (pVar != null && pVar.m7045c()) {
                    this.f4593t.m7047a(view);
                }
            }
            if (layoutParams.f4566f) {
                d.f4658a.invalidate();
                layoutParams.f4566f = false;
            }
        }

        /* renamed from: b */
        private void m7134b(int i) {
            if (m7122e(i) != null) {
                this.f4589p.m6808a(i);
            }
        }

        /* renamed from: b */
        private static boolean m7133b(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        /* renamed from: d */
        private void m7124d(int i) {
            m7122e(i);
            this.f4589p.m6798d(i);
        }

        /* renamed from: e */
        public static int m7120e(View view) {
            return ((LayoutParams) view.getLayoutParams()).f4563c.m7016f();
        }

        /* renamed from: g */
        public static int m7116g(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f4564d;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        /* renamed from: h */
        public static int m7114h(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f4564d;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        /* renamed from: i */
        public static int m7111i(View view) {
            return view.getLeft() - ((LayoutParams) view.getLayoutParams()).f4564d.left;
        }

        /* renamed from: i */
        private void m7112i(int i, int i2) {
            View e = m7122e(i);
            if (e != null) {
                m7124d(i);
                m7145a(e, i2);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f4590q.toString());
        }

        /* renamed from: j */
        public static int m7109j(View view) {
            return view.getTop() - ((LayoutParams) view.getLayoutParams()).f4564d.top;
        }

        /* renamed from: k */
        public static int m7107k(View view) {
            return view.getRight() + ((LayoutParams) view.getLayoutParams()).f4564d.right;
        }

        /* renamed from: l */
        public static int m7105l(View view) {
            return view.getBottom() + ((LayoutParams) view.getLayoutParams()).f4564d.bottom;
        }

        /* renamed from: a */
        public int mo6990a(int i, C1074n nVar, C1079q qVar) {
            return 0;
        }

        /* renamed from: a */
        public int mo6977a(C1074n nVar, C1079q qVar) {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView == null || recyclerView.f4549m == null || !mo6937g()) {
                return 1;
            }
            return this.f4590q.f4549m.mo979c();
        }

        /* renamed from: a */
        public View mo7152a(int i) {
            int o = m7102o();
            for (int i2 = 0; i2 < o; i2++) {
                View e = m7122e(i2);
                AbstractC1082t d = RecyclerView.m7217d(e);
                if (d != null && d.m7016f() == i && !d.m7017e() && (this.f4590q.f4492C.f4639g || !d.m7006p())) {
                    return e;
                }
            }
            return null;
        }

        /* renamed from: a */
        public View mo6984a(View view, int i, C1074n nVar, C1079q qVar) {
            return null;
        }

        /* renamed from: a */
        public LayoutParams mo6988a(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        /* renamed from: a */
        public LayoutParams mo6981a(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        /* renamed from: a */
        public void mo6993a() {
        }

        /* renamed from: a */
        public void mo6992a(int i, int i2) {
        }

        /* renamed from: a */
        public void mo6991a(int i, int i2, C1079q qVar, AbstractC1067a aVar) {
        }

        /* renamed from: a */
        public void mo7149a(int i, AbstractC1067a aVar) {
        }

        /* renamed from: a */
        public final void m7148a(int i, C1074n nVar) {
            View e = m7122e(i);
            m7134b(i);
            nVar.m7077a(e);
        }

        /* renamed from: a */
        public void mo6987a(Rect rect, int i, int i2) {
            int width = rect.width();
            int t = m7097t();
            int v = m7095v();
            int height = rect.height();
            int u = m7096u();
            m7115h(m7151a(i, width + t + v, C0741t.m8319l(this.f4590q)), m7151a(i2, height + u + m7094w(), C0741t.m8318m(this.f4590q)));
        }

        /* renamed from: a */
        public void mo6986a(Parcelable parcelable) {
        }

        /* renamed from: a */
        public final void m7146a(View view) {
            m7142a(view, -1, true);
        }

        /* renamed from: a */
        public final void m7141a(View view, Rect rect) {
            Matrix matrix;
            Rect rect2 = ((LayoutParams) view.getLayoutParams()).f4564d;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (!(this.f4590q == null || (matrix = view.getMatrix()) == null || matrix.isIdentity())) {
                RectF rectF = this.f4590q.f4548l;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m7140a(View view, C0696d dVar) {
            AbstractC1082t d = RecyclerView.m7217d(view);
            if (d != null && !d.m7006p() && !this.f4589p.m6797d(d.f4658a)) {
                mo6976a(this.f4590q.f4541e, this.f4590q.f4492C, view, dVar);
            }
        }

        /* renamed from: a */
        public final void m7139a(View view, C1074n nVar) {
            this.f4589p.m6802b(view);
            nVar.m7077a(view);
        }

        /* renamed from: a */
        public void mo6980a(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null && accessibilityEvent != null) {
                boolean z = true;
                if (!recyclerView.canScrollVertically(1)) {
                    z = true;
                    if (!this.f4590q.canScrollVertically(-1)) {
                        z = true;
                        if (!this.f4590q.canScrollHorizontally(-1)) {
                            z = this.f4590q.canScrollHorizontally(1);
                        }
                    }
                }
                accessibilityEvent.setScrollable(z);
                if (this.f4590q.f4549m != null) {
                    accessibilityEvent.setItemCount(this.f4590q.f4549m.mo979c());
                }
            }
        }

        /* renamed from: a */
        public final void m7138a(C1074n nVar) {
            for (int o = m7102o() - 1; o >= 0; o--) {
                View e = m7122e(o);
                AbstractC1082t d = RecyclerView.m7217d(e);
                if (!d.m7017e()) {
                    if (!d.m7009m() || d.m7006p() || this.f4590q.f4549m.m7174d()) {
                        m7124d(o);
                        nVar.m7066c(e);
                        this.f4590q.f4544h.m6819f(d);
                    } else {
                        m7134b(o);
                        nVar.m7075a(d);
                    }
                }
            }
        }

        /* renamed from: a */
        public void mo6976a(C1074n nVar, C1079q qVar, View view, C0696d dVar) {
            int i = 0;
            int e = mo6937g() ? m7120e(view) : 0;
            if (mo6940f()) {
                i = m7120e(view);
            }
            dVar.m8513b(C0696d.C0699c.m8460a(e, 1, i, 1, false, false));
        }

        /* renamed from: a */
        public void mo6972a(C1079q qVar) {
        }

        /* renamed from: a */
        final void m7137a(RecyclerView recyclerView) {
            int i;
            if (recyclerView == null) {
                this.f4590q = null;
                this.f4589p = null;
                i = 0;
                this.f4587g = 0;
            } else {
                this.f4590q = recyclerView;
                this.f4589p = recyclerView.f4543g;
                this.f4587g = recyclerView.getWidth();
                i = recyclerView.getHeight();
            }
            this.f4588h = i;
            this.f4585e = 1073741824;
            this.f4586f = 1073741824;
        }

        /* renamed from: a */
        public void mo6971a(RecyclerView recyclerView, C1074n nVar) {
        }

        /* renamed from: a */
        public void mo6967a(String str) {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null) {
                recyclerView.m7238a(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final boolean m7143a(View view, int i, int i2, LayoutParams layoutParams) {
            return !this.f4583c || !m7133b(view.getMeasuredWidth(), i, layoutParams.width) || !m7133b(view.getMeasuredHeight(), i2, layoutParams.height);
        }

        /* renamed from: a */
        public boolean mo6979a(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x0189 A[ORIG_RETURN, RETURN] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m7136a(androidx.recyclerview.widget.RecyclerView r6, android.view.View r7, android.graphics.Rect r8, boolean r9, boolean r10) {
            /*
                Method dump skipped, instructions count: 421
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC1066i.m7136a(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        /* renamed from: a */
        public final boolean m7135a(Runnable runnable) {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        /* renamed from: b */
        public int mo6961b(int i, C1074n nVar, C1079q qVar) {
            return 0;
        }

        /* renamed from: b */
        public int mo6958b(C1074n nVar, C1079q qVar) {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView == null || recyclerView.f4549m == null || !mo6940f()) {
                return 1;
            }
            return this.f4590q.f4549m.mo979c();
        }

        /* renamed from: b */
        public int mo6956b(C1079q qVar) {
            return 0;
        }

        /* renamed from: b */
        public abstract LayoutParams mo6965b();

        /* renamed from: b */
        public void mo6963b(int i, int i2) {
        }

        /* renamed from: b */
        public final void m7132b(View view) {
            m7142a(view, 0, true);
        }

        /* renamed from: b */
        public final void m7130b(View view, Rect rect) {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.m7207g(view));
            }
        }

        /* renamed from: b */
        final void m7129b(C1074n nVar) {
            int size = nVar.f4609a.size();
            for (int i = size - 1; i >= 0; i--) {
                View view = nVar.f4609a.get(i).f4658a;
                AbstractC1082t d = RecyclerView.m7217d(view);
                if (!d.m7017e()) {
                    d.m7019c(false);
                    if (d.m7005q()) {
                        this.f4590q.removeDetachedView(view, false);
                    }
                    if (this.f4590q.f4561y != null) {
                        this.f4590q.f4561y.mo6760c(d);
                    }
                    d.m7019c(true);
                    nVar.m7070b(view);
                }
            }
            nVar.f4609a.clear();
            if (nVar.f4610b != null) {
                nVar.f4610b.clear();
            }
            if (size > 0) {
                this.f4590q.invalidate();
            }
        }

        /* renamed from: b */
        final void m7128b(RecyclerView recyclerView) {
            m7121e(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        /* renamed from: b */
        final void m7127b(RecyclerView recyclerView, C1074n nVar) {
            this.f4595v = false;
            mo6971a(recyclerView, nVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final boolean m7131b(View view, int i, int i2, LayoutParams layoutParams) {
            return view.isLayoutRequested() || !this.f4583c || !m7133b(view.getWidth(), i, layoutParams.width) || !m7133b(view.getHeight(), i2, layoutParams.height);
        }

        /* renamed from: c */
        public int mo6948c(C1079q qVar) {
            return 0;
        }

        /* renamed from: c */
        public void mo6953c(int i) {
        }

        /* renamed from: c */
        public void mo6952c(int i, int i2) {
        }

        /* renamed from: c */
        public final void m7126c(View view) {
            m7142a(view, -1, false);
        }

        /* renamed from: c */
        public final void m7125c(C1074n nVar) {
            for (int o = m7102o() - 1; o >= 0; o--) {
                if (!RecyclerView.m7217d(m7122e(o)).m7017e()) {
                    m7148a(o, nVar);
                }
            }
        }

        /* renamed from: c */
        public void mo6949c(C1074n nVar, C1079q qVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        /* renamed from: c */
        public boolean mo6954c() {
            return false;
        }

        /* renamed from: d */
        public int mo6943d(C1079q qVar) {
            return 0;
        }

        /* renamed from: d */
        public void mo6944d(int i, int i2) {
        }

        /* renamed from: d */
        public final void m7123d(View view) {
            m7142a(view, 0, false);
        }

        /* renamed from: d */
        public boolean mo6946d() {
            return this.f4596w;
        }

        /* renamed from: e */
        public int mo6941e(C1079q qVar) {
            return 0;
        }

        /* renamed from: e */
        public Parcelable mo6942e() {
            return null;
        }

        /* renamed from: e */
        public final View m7122e(int i) {
            C1113d dVar = this.f4589p;
            if (dVar != null) {
                return dVar.m6803b(i);
            }
            return null;
        }

        /* renamed from: e */
        final void m7121e(int i, int i2) {
            this.f4587g = View.MeasureSpec.getSize(i);
            this.f4585e = View.MeasureSpec.getMode(i);
            if (this.f4585e == 0 && !RecyclerView.f4487b) {
                this.f4587g = 0;
            }
            this.f4588h = View.MeasureSpec.getSize(i2);
            this.f4586f = View.MeasureSpec.getMode(i2);
            if (this.f4586f == 0 && !RecyclerView.f4487b) {
                this.f4588h = 0;
            }
        }

        /* renamed from: f */
        public int mo6938f(C1079q qVar) {
            return 0;
        }

        /* renamed from: f */
        public final View m7118f(View view) {
            View c;
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView == null || (c = recyclerView.m7223c(view)) == null || this.f4589p.m6797d(c)) {
                return null;
            }
            return c;
        }

        /* renamed from: f */
        public void mo6939f(int i) {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null) {
                int b = recyclerView.f4543g.m6804b();
                for (int i2 = 0; i2 < b; i2++) {
                    recyclerView.f4543g.m6803b(i2).offsetLeftAndRight(i);
                }
            }
        }

        /* renamed from: f */
        final void m7119f(int i, int i2) {
            int o = m7102o();
            if (o == 0) {
                this.f4590q.m7218d(i, i2);
                return;
            }
            int i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            for (int i7 = 0; i7 < o; i7++) {
                View e = m7122e(i7);
                Rect rect = this.f4590q.f4547k;
                RecyclerView.m7256a(e, rect);
                i3 = i3;
                if (rect.left < i3) {
                    i3 = rect.left;
                }
                i4 = i4;
                if (rect.right > i4) {
                    i4 = rect.right;
                }
                i6 = i6;
                if (rect.top < i6) {
                    i6 = rect.top;
                }
                i5 = i5;
                if (rect.bottom > i5) {
                    i5 = rect.bottom;
                }
            }
            this.f4590q.f4547k.set(i3, i6, i4, i5);
            mo6987a(this.f4590q.f4547k, i, i2);
        }

        /* renamed from: f */
        public boolean mo6940f() {
            return false;
        }

        /* renamed from: g */
        public int mo6935g(C1079q qVar) {
            return 0;
        }

        /* renamed from: g */
        public void mo6936g(int i) {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null) {
                int b = recyclerView.f4543g.m6804b();
                for (int i2 = 0; i2 < b; i2++) {
                    recyclerView.f4543g.m6803b(i2).offsetTopAndBottom(i);
                }
            }
        }

        /* renamed from: g */
        public final void m7117g(int i, int i2) {
            this.f4590q.m7218d(i, i2);
        }

        /* renamed from: g */
        public boolean mo6937g() {
            return false;
        }

        /* renamed from: h */
        public void mo6933h(int i) {
        }

        /* renamed from: h */
        public final void m7115h(int i, int i2) {
            this.f4590q.setMeasuredDimension(i, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00ab  */
        /* renamed from: i */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m7113i(int r5) {
            /*
                Method dump skipped, instructions count: 188
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC1066i.m7113i(int):boolean");
        }

        /* renamed from: j */
        boolean mo7110j() {
            return false;
        }

        /* renamed from: k */
        public final void m7108k() {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        /* renamed from: l */
        public final boolean m7106l() {
            return this.f4584d;
        }

        /* renamed from: m */
        public final boolean m7104m() {
            RecyclerView recyclerView = this.f4590q;
            return recyclerView != null && recyclerView.f4545i;
        }

        /* renamed from: n */
        public final boolean m7103n() {
            AbstractC1076p pVar = this.f4593t;
            return pVar != null && pVar.m7045c();
        }

        /* renamed from: o */
        public final int m7102o() {
            C1113d dVar = this.f4589p;
            if (dVar != null) {
                return dVar.m6804b();
            }
            return 0;
        }

        /* renamed from: p */
        public final int m7101p() {
            return this.f4585e;
        }

        /* renamed from: q */
        public final int m7100q() {
            return this.f4586f;
        }

        /* renamed from: r */
        public final int m7099r() {
            return this.f4587g;
        }

        /* renamed from: s */
        public final int m7098s() {
            return this.f4588h;
        }

        /* renamed from: t */
        public final int m7097t() {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        /* renamed from: u */
        public final int m7096u() {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        /* renamed from: v */
        public final int m7095v() {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        /* renamed from: w */
        public final int m7094w() {
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        /* renamed from: x */
        public final View m7093x() {
            View focusedChild;
            RecyclerView recyclerView = this.f4590q;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f4589p.m6797d(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        /* renamed from: y */
        final void m7092y() {
            AbstractC1076p pVar = this.f4593t;
            if (pVar != null) {
                pVar.m7049a();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$j */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j.class */
    public static abstract class AbstractC1069j {
        /* renamed from: a */
        public abstract boolean m7091a();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
    public interface AbstractC1070k {
        /* renamed from: a */
        boolean mo6739a(MotionEvent motionEvent);

        /* renamed from: b */
        void mo6735b(MotionEvent motionEvent);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
    public static abstract class AbstractC1071l {
        /* renamed from: a */
        public void mo6732a(RecyclerView recyclerView) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$m */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
    public static final class C1072m {

        /* renamed from: a */
        SparseArray<C1073a> f4603a = new SparseArray<>();

        /* renamed from: b */
        private int f4604b = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.recyclerview.widget.RecyclerView$m$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m$a.class */
        public static final class C1073a {

            /* renamed from: a */
            final ArrayList<AbstractC1082t> f4605a = new ArrayList<>();

            /* renamed from: b */
            int f4606b = 5;

            /* renamed from: c */
            long f4607c = 0;

            /* renamed from: d */
            long f4608d = 0;

            C1073a() {
            }
        }

        /* renamed from: a */
        private static long m7087a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        /* renamed from: b */
        private C1073a m7084b(int i) {
            C1073a aVar = this.f4603a.get(i);
            C1073a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = new C1073a();
                this.f4603a.put(i, aVar2);
            }
            return aVar2;
        }

        /* renamed from: a */
        public final AbstractC1082t m7090a(int i) {
            C1073a aVar = this.f4603a.get(i);
            if (aVar == null || aVar.f4605a.isEmpty()) {
                return null;
            }
            ArrayList<AbstractC1082t> arrayList = aVar.f4605a;
            return arrayList.remove(arrayList.size() - 1);
        }

        /* renamed from: a */
        final void m7089a(int i, long j) {
            C1073a b = m7084b(i);
            b.f4607c = m7087a(b.f4607c, j);
        }

        /* renamed from: a */
        final void m7086a(AbstractC1056a aVar, AbstractC1056a aVar2) {
            if (aVar != null) {
                this.f4604b--;
            }
            if (this.f4604b == 0) {
                for (int i = 0; i < this.f4603a.size(); i++) {
                    this.f4603a.valueAt(i).f4605a.clear();
                }
            }
            if (aVar2 != null) {
                this.f4604b++;
            }
        }

        /* renamed from: a */
        public final void m7085a(AbstractC1082t tVar) {
            int i = tVar.f4663f;
            ArrayList<AbstractC1082t> arrayList = m7084b(i).f4605a;
            if (this.f4603a.get(i).f4606b > arrayList.size()) {
                tVar.m7002t();
                arrayList.add(tVar);
            }
        }

        /* renamed from: a */
        final boolean m7088a(int i, long j, long j2) {
            long j3 = m7084b(i).f4607c;
            return j3 == 0 || j + j3 < j2;
        }

        /* renamed from: b */
        final void m7083b(int i, long j) {
            C1073a b = m7084b(i);
            b.f4608d = m7087a(b.f4608d, j);
        }

        /* renamed from: b */
        final boolean m7082b(int i, long j, long j2) {
            long j3 = m7084b(i).f4608d;
            return j3 == 0 || j + j3 < j2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
    public final class C1074n {

        /* renamed from: e */
        C1072m f4613e;

        /* renamed from: i */
        private AbstractC1080r f4617i;

        /* renamed from: a */
        final ArrayList<AbstractC1082t> f4609a = new ArrayList<>();

        /* renamed from: b */
        ArrayList<AbstractC1082t> f4610b = null;

        /* renamed from: c */
        final ArrayList<AbstractC1082t> f4611c = new ArrayList<>();

        /* renamed from: g */
        private final List<AbstractC1082t> f4615g = Collections.unmodifiableList(this.f4609a);

        /* renamed from: h */
        private int f4616h = 2;

        /* renamed from: d */
        int f4612d = 2;

        public C1074n() {
        }

        /* renamed from: a */
        private AbstractC1082t m7078a(long j, int i) {
            for (int size = this.f4609a.size() - 1; size >= 0; size--) {
                AbstractC1082t tVar = this.f4609a.get(size);
                if (tVar.f4662e == j && !tVar.m7012j()) {
                    if (i == tVar.f4663f) {
                        tVar.m7020c(32);
                        if (tVar.m7006p() && !RecyclerView.this.f4492C.f4639g) {
                            tVar.m7028a(2, 14);
                        }
                        return tVar;
                    }
                    this.f4609a.remove(size);
                    RecyclerView.this.removeDetachedView(tVar.f4658a, false);
                    m7070b(tVar.f4658a);
                }
            }
            for (int size2 = this.f4611c.size() - 1; size2 >= 0; size2--) {
                AbstractC1082t tVar2 = this.f4611c.get(size2);
                if (tVar2.f4662e == j) {
                    if (i == tVar2.f4663f) {
                        this.f4611c.remove(size2);
                        return tVar2;
                    } else {
                        m7067c(size2);
                        return null;
                    }
                }
            }
            return null;
        }

        /* renamed from: a */
        private void m7076a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m7076a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                    return;
                }
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }

        /* renamed from: a */
        private boolean m7074a(AbstractC1082t tVar, int i, int i2, long j) {
            tVar.f4673p = RecyclerView.this;
            int i3 = tVar.f4663f;
            long l = RecyclerView.m7199l();
            if (j != Long.MAX_VALUE && !this.f4613e.m7082b(i3, l, j)) {
                return false;
            }
            RecyclerView.this.f4549m.m7176b((AbstractC1056a) tVar, i);
            this.f4613e.m7083b(tVar.f4663f, RecyclerView.m7199l() - l);
            if (RecyclerView.this.m7211f()) {
                View view = tVar.f4658a;
                if (C0741t.m8327f(view) == 0) {
                    C0741t.m8358a(view, 1);
                }
                if (!C0741t.m8333c(view)) {
                    tVar.m7020c(16384);
                    C0741t.m8348a(view, RecyclerView.this.f4496G.mo6852b());
                }
            }
            if (!RecyclerView.this.f4492C.f4639g) {
                return true;
            }
            tVar.f4664g = i2;
            return true;
        }

        /* renamed from: c */
        private boolean m7065c(AbstractC1082t tVar) {
            if (tVar.m7006p()) {
                return RecyclerView.this.f4492C.f4639g;
            }
            if (tVar.f4660c < 0 || tVar.f4660c >= RecyclerView.this.f4549m.mo979c()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + tVar + RecyclerView.this.m7268a());
            } else if (RecyclerView.this.f4492C.f4639g || RecyclerView.this.f4549m.mo978c(tVar.f4660c) == tVar.f4663f) {
                return !RecyclerView.this.f4549m.m7174d() || tVar.f4662e == RecyclerView.this.f4549m.mo981b(tVar.f4660c);
            } else {
                return false;
            }
        }

        /* renamed from: d */
        private AbstractC1082t m7063d(int i) {
            int size;
            int a;
            ArrayList<AbstractC1082t> arrayList = this.f4610b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1082t tVar = this.f4610b.get(i2);
                if (!tVar.m7012j() && tVar.m7016f() == i) {
                    tVar.m7020c(32);
                    return tVar;
                }
            }
            if (!RecyclerView.this.f4549m.m7174d() || (a = RecyclerView.this.f4542f.m6879a(i, 0)) <= 0 || a >= RecyclerView.this.f4549m.mo979c()) {
                return null;
            }
            long b = RecyclerView.this.f4549m.mo981b(a);
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC1082t tVar2 = this.f4610b.get(i3);
                if (!tVar2.m7012j() && tVar2.f4662e == b) {
                    tVar2.m7020c(32);
                    return tVar2;
                }
            }
            return null;
        }

        /* renamed from: d */
        private void m7062d(AbstractC1082t tVar) {
            if (tVar.f4658a instanceof ViewGroup) {
                m7076a((ViewGroup) tVar.f4658a, false);
            }
        }

        /* renamed from: e */
        private AbstractC1082t m7060e(int i) {
            View view;
            int size = this.f4609a.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1082t tVar = this.f4609a.get(i2);
                if (!tVar.m7012j() && tVar.m7016f() == i && !tVar.m7009m() && (RecyclerView.this.f4492C.f4639g || !tVar.m7006p())) {
                    tVar.m7020c(32);
                    return tVar;
                }
            }
            C1113d dVar = RecyclerView.this.f4543g;
            int size2 = dVar.f4776c.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size2) {
                    view = null;
                    break;
                }
                view = dVar.f4776c.get(i3);
                AbstractC1082t b = dVar.f4774a.mo6776b(view);
                if (!(b.m7016f() != i || b.m7009m() || b.m7006p())) {
                    break;
                }
                i3++;
            }
            if (view != null) {
                AbstractC1082t d = RecyclerView.m7217d(view);
                RecyclerView.this.f4543g.m6794f(view);
                int c = RecyclerView.this.f4543g.m6799c(view);
                if (c != -1) {
                    RecyclerView.this.f4543g.m6798d(c);
                    m7066c(view);
                    d.m7020c(8224);
                    return d;
                }
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + d + RecyclerView.this.m7268a());
            }
            int size3 = this.f4611c.size();
            for (int i4 = 0; i4 < size3; i4++) {
                AbstractC1082t tVar2 = this.f4611c.get(i4);
                if (!tVar2.m7009m() && tVar2.m7016f() == i) {
                    this.f4611c.remove(i4);
                    return tVar2;
                }
            }
            return null;
        }

        /* renamed from: e */
        private void m7059e(AbstractC1082t tVar) {
            if (RecyclerView.this.f4549m != null) {
                RecyclerView.this.f4549m.mo984a((AbstractC1056a) tVar);
            }
            if (RecyclerView.this.f4492C != null) {
                RecyclerView.this.f4544h.m6818g(tVar);
            }
        }

        /* renamed from: h */
        private void m7056h() {
            for (int size = this.f4611c.size() - 1; size >= 0; size--) {
                m7067c(size);
            }
            this.f4611c.clear();
            if (RecyclerView.f4489d) {
                RecyclerView.this.f4491B.m6729a();
            }
        }

        /* renamed from: a */
        public final int m7080a(int i) {
            if (i >= 0 && i < RecyclerView.this.f4492C.m7040a()) {
                return !RecyclerView.this.f4492C.f4639g ? i : RecyclerView.this.f4542f.m6874b(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.f4492C.m7040a() + RecyclerView.this.m7268a());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Removed duplicated region for block: B:100:0x039e  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x03cb  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0300  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0381  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.recyclerview.widget.RecyclerView.AbstractC1082t m7079a(int r8, long r9) {
            /*
                Method dump skipped, instructions count: 1082
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C1074n.m7079a(int, long):androidx.recyclerview.widget.RecyclerView$t");
        }

        /* renamed from: a */
        public final void m7081a() {
            this.f4609a.clear();
            m7056h();
        }

        /* renamed from: a */
        public final void m7077a(View view) {
            AbstractC1082t d = RecyclerView.m7217d(view);
            if (d.m7005q()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (d.m7014h()) {
                d.m7013i();
            } else if (d.m7012j()) {
                d.m7011k();
            }
            m7075a(d);
        }

        /* renamed from: a */
        final void m7075a(AbstractC1082t tVar) {
            boolean z;
            boolean z2;
            boolean z3 = false;
            boolean z4 = false;
            if (tVar.m7014h() || tVar.f4658a.getParent() != null) {
                StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(tVar.m7014h());
                sb.append(" isAttached:");
                if (tVar.f4658a.getParent() != null) {
                    z3 = true;
                }
                sb.append(z3);
                sb.append(RecyclerView.this.m7268a());
                throw new IllegalArgumentException(sb.toString());
            } else if (tVar.m7005q()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + tVar + RecyclerView.this.m7268a());
            } else if (!tVar.m7017e()) {
                boolean v = tVar.m7000v();
                if (tVar.m7001u()) {
                    if (this.f4612d <= 0 || tVar.m7023b(526)) {
                        z2 = false;
                    } else {
                        int size = this.f4611c.size();
                        int i = size;
                        if (size >= this.f4612d) {
                            i = size;
                            if (size > 0) {
                                m7067c(0);
                                i = size - 1;
                            }
                        }
                        int i2 = i;
                        if (RecyclerView.f4489d) {
                            i2 = i;
                            if (i > 0) {
                                i2 = i;
                                if (!RecyclerView.this.f4491B.m6728a(tVar.f4660c)) {
                                    while (true) {
                                        i--;
                                        if (i < 0) {
                                            break;
                                        }
                                        if (!RecyclerView.this.f4491B.m6728a(this.f4611c.get(i).f4660c)) {
                                            break;
                                        }
                                    }
                                    i2 = i + 1;
                                }
                            }
                        }
                        this.f4611c.add(i2, tVar);
                        z2 = true;
                    }
                    z = z2;
                    if (!z2) {
                        m7073a(tVar, true);
                        z4 = true;
                        z = z2;
                    }
                } else {
                    z = false;
                }
                RecyclerView.this.f4544h.m6818g(tVar);
                if (!z && !z4 && v) {
                    tVar.f4673p = null;
                }
            } else {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.m7268a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m7073a(AbstractC1082t tVar, boolean z) {
            RecyclerView.m7229b(tVar);
            if (tVar.m7023b(16384)) {
                tVar.m7028a(0, 16384);
                C0741t.m8348a(tVar.f4658a, (C0689a) null);
            }
            if (z) {
                m7059e(tVar);
            }
            tVar.f4673p = null;
            m7064d().m7085a(tVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final View m7071b(int i) {
            return m7079a(i, Long.MAX_VALUE).f4658a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final void m7072b() {
            this.f4612d = this.f4616h + (RecyclerView.this.f4550n != null ? RecyclerView.this.f4550n.f4597x : 0);
            for (int size = this.f4611c.size() - 1; size >= 0 && this.f4611c.size() > this.f4612d; size--) {
                m7067c(size);
            }
        }

        /* renamed from: b */
        final void m7070b(View view) {
            AbstractC1082t d = RecyclerView.m7217d(view);
            d.f4670m = null;
            d.f4671n = false;
            d.m7011k();
            m7075a(d);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final void m7069b(AbstractC1082t tVar) {
            (tVar.f4671n ? this.f4610b : this.f4609a).remove(tVar);
            tVar.f4670m = null;
            tVar.f4671n = false;
            tVar.m7011k();
        }

        /* renamed from: c */
        public final List<AbstractC1082t> m7068c() {
            return this.f4615g;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public final void m7067c(int i) {
            m7073a(this.f4611c.get(i), true);
            this.f4611c.remove(i);
        }

        /* renamed from: c */
        final void m7066c(View view) {
            ArrayList<AbstractC1082t> arrayList;
            AbstractC1082t d = RecyclerView.m7217d(view);
            if (!d.m7023b(12) && d.m6999w() && !RecyclerView.this.m7248a(d)) {
                if (this.f4610b == null) {
                    this.f4610b = new ArrayList<>();
                }
                d.m7026a(this, true);
                arrayList = this.f4610b;
            } else if (!d.m7009m() || d.m7006p() || RecyclerView.this.f4549m.m7174d()) {
                d.m7026a(this, false);
                arrayList = this.f4609a;
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.m7268a());
            }
            arrayList.add(d);
        }

        /* renamed from: d */
        final C1072m m7064d() {
            if (this.f4613e == null) {
                this.f4613e = new C1072m();
            }
            return this.f4613e;
        }

        /* renamed from: e */
        final void m7061e() {
            int size = this.f4611c.size();
            for (int i = 0; i < size; i++) {
                AbstractC1082t tVar = this.f4611c.get(i);
                if (tVar != null) {
                    tVar.m7020c(6);
                    tVar.m7024a((Object) null);
                }
            }
            if (RecyclerView.this.f4549m == null || !RecyclerView.this.f4549m.m7174d()) {
                m7056h();
            }
        }

        /* renamed from: f */
        final void m7058f() {
            int size = this.f4611c.size();
            for (int i = 0; i < size; i++) {
                this.f4611c.get(i).m7021c();
            }
            int size2 = this.f4609a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f4609a.get(i2).m7021c();
            }
            ArrayList<AbstractC1082t> arrayList = this.f4610b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f4610b.get(i3).m7021c();
                }
            }
        }

        /* renamed from: g */
        final void m7057g() {
            int size = this.f4611c.size();
            for (int i = 0; i < size; i++) {
                LayoutParams layoutParams = (LayoutParams) this.f4611c.get(i).f4658a.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f4565e = true;
                }
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
    private final class C1075o extends AbstractC1058c {
        C1075o() {
        }

        /* renamed from: b */
        private void m7052b() {
            if (!RecyclerView.f4488c || !RecyclerView.this.f4553q || !RecyclerView.this.f4552p) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.f4558v = true;
                recyclerView.requestLayout();
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            C0741t.m8344a(recyclerView2, recyclerView2.f4546j);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1058c
        /* renamed from: a */
        public final void mo7055a() {
            RecyclerView.this.m7238a((String) null);
            RecyclerView.this.f4492C.f4638f = true;
            RecyclerView.this.m7227b(true);
            if (!RecyclerView.this.f4542f.m6867d()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1058c
        /* renamed from: a */
        public final void mo7054a(int i, int i2) {
            RecyclerView.this.m7238a((String) null);
            if (RecyclerView.this.f4542f.m6873b(i, i2)) {
                m7052b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1058c
        /* renamed from: a */
        public final void mo7053a(int i, int i2, Object obj) {
            RecyclerView.this.m7238a((String) null);
            if (RecyclerView.this.f4542f.m6878a(i, i2, obj)) {
                m7052b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1058c
        /* renamed from: b */
        public final void mo7051b(int i, int i2) {
            RecyclerView.this.m7238a((String) null);
            if (RecyclerView.this.f4542f.m6869c(i, i2)) {
                m7052b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1058c
        /* renamed from: c */
        public final void mo7050c(int i, int i2) {
            RecyclerView.this.m7238a((String) null);
            if (RecyclerView.this.f4542f.m6865d(i, i2)) {
                m7052b();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$p */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
    public static abstract class AbstractC1076p {

        /* renamed from: a */
        private int f4619a;

        /* renamed from: b */
        private RecyclerView f4620b;

        /* renamed from: c */
        private AbstractC1066i f4621c;

        /* renamed from: d */
        private boolean f4622d;

        /* renamed from: e */
        private boolean f4623e;

        /* renamed from: f */
        private View f4624f;

        /* renamed from: g */
        private final C1077a f4625g;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$p$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p$a.class */
        public static final class C1077a {

            /* renamed from: a */
            private int f4626a;

            /* renamed from: b */
            private int f4627b;

            /* renamed from: c */
            private int f4628c;

            /* renamed from: d */
            private int f4629d;

            /* renamed from: e */
            private Interpolator f4630e;

            /* renamed from: f */
            private boolean f4631f;

            /* renamed from: g */
            private int f4632g;

            /* renamed from: a */
            final void m7041a(RecyclerView recyclerView) {
                int i = this.f4629d;
                if (i >= 0) {
                    this.f4629d = -1;
                    recyclerView.m7225c(i);
                    this.f4631f = false;
                } else if (!this.f4631f) {
                    this.f4632g = 0;
                } else if (this.f4630e == null || this.f4628c > 0) {
                    int i2 = this.f4628c;
                    if (i2 > 0) {
                        if (this.f4630e == null) {
                            RunnableC1081s sVar = recyclerView.f4562z;
                            if (i2 == Integer.MIN_VALUE) {
                                sVar.m7031b(this.f4626a, this.f4627b);
                            } else {
                                sVar.m7034a(this.f4626a, this.f4627b, this.f4628c);
                            }
                        } else {
                            recyclerView.f4562z.m7033a(this.f4626a, this.f4627b, this.f4628c, this.f4630e);
                        }
                        this.f4632g++;
                        if (this.f4632g > 10) {
                            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                        }
                        this.f4631f = false;
                        return;
                    }
                    throw new IllegalStateException("Scroll duration must be a positive number");
                } else {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
            }

            /* renamed from: a */
            final boolean m7042a() {
                return this.f4629d >= 0;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$p$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p$b.class */
        public interface AbstractC1078b {
            /* renamed from: b */
            PointF mo6964b(int i);
        }

        /* renamed from: a */
        protected final void m7049a() {
            if (this.f4623e) {
                this.f4623e = false;
                this.f4620b.f4492C.f4633a = -1;
                this.f4624f = null;
                this.f4619a = -1;
                this.f4622d = false;
                AbstractC1066i iVar = this.f4621c;
                if (iVar.f4593t == this) {
                    iVar.f4593t = null;
                }
                this.f4621c = null;
                this.f4620b = null;
            }
        }

        /* renamed from: a */
        public final void m7048a(int i) {
            this.f4619a = i;
        }

        /* renamed from: a */
        protected final void m7047a(View view) {
            if (RecyclerView.m7209f(view) == this.f4619a) {
                this.f4624f = view;
            }
        }

        /* renamed from: b */
        public final boolean m7046b() {
            return this.f4622d;
        }

        /* renamed from: c */
        public final boolean m7045c() {
            return this.f4623e;
        }

        /* renamed from: d */
        public final int m7044d() {
            return this.f4619a;
        }

        /* renamed from: e */
        final void m7043e() {
            AbstractC1066i iVar;
            PointF pointF;
            RecyclerView recyclerView = this.f4620b;
            if (!this.f4623e || this.f4619a == -1 || recyclerView == null) {
                m7049a();
            }
            if (this.f4622d && this.f4624f == null && (iVar = this.f4621c) != null) {
                int i = this.f4619a;
                if (iVar instanceof AbstractC1078b) {
                    pointF = ((AbstractC1078b) iVar).mo6964b(i);
                } else {
                    Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + AbstractC1078b.class.getCanonicalName());
                    pointF = null;
                }
                if (!(pointF == null || (pointF.x == 0.0f && pointF.y == 0.0f))) {
                    recyclerView.m7261a((int) Math.signum(pointF.x), (int) Math.signum(pointF.y), (int[]) null);
                }
            }
            this.f4622d = false;
            View view = this.f4624f;
            if (view != null) {
                if (RecyclerView.m7209f(view) == this.f4619a) {
                    this.f4625g.m7041a(recyclerView);
                    m7049a();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f4624f = null;
                }
            }
            if (this.f4623e) {
                boolean a = this.f4625g.m7042a();
                this.f4625g.m7041a(recyclerView);
                if (!a) {
                    return;
                }
                if (this.f4623e) {
                    this.f4622d = true;
                    recyclerView.f4562z.m7037a();
                    return;
                }
                m7049a();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$q */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$q.class */
    public static final class C1079q {

        /* renamed from: a */
        int f4633a = -1;

        /* renamed from: b */
        int f4634b = 0;

        /* renamed from: c */
        int f4635c = 0;

        /* renamed from: d */
        int f4636d = 1;

        /* renamed from: e */
        int f4637e = 0;

        /* renamed from: f */
        boolean f4638f = false;

        /* renamed from: g */
        boolean f4639g = false;

        /* renamed from: h */
        boolean f4640h = false;

        /* renamed from: i */
        boolean f4641i = false;

        /* renamed from: j */
        boolean f4642j = false;

        /* renamed from: k */
        boolean f4643k = false;

        /* renamed from: l */
        int f4644l;

        /* renamed from: m */
        long f4645m;

        /* renamed from: n */
        int f4646n;

        /* renamed from: o */
        int f4647o;

        /* renamed from: p */
        int f4648p;

        /* renamed from: q */
        private SparseArray<Object> f4649q;

        /* renamed from: a */
        public final int m7040a() {
            return this.f4639g ? this.f4634b - this.f4635c : this.f4637e;
        }

        /* renamed from: a */
        final void m7039a(int i) {
            if ((this.f4636d & i) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f4636d));
            }
        }

        public final String toString() {
            return "State{mTargetPosition=" + this.f4633a + ", mData=" + this.f4649q + ", mItemCount=" + this.f4637e + ", mIsMeasuring=" + this.f4641i + ", mPreviousLayoutItemCount=" + this.f4634b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f4635c + ", mStructureChanged=" + this.f4638f + ", mInPreLayout=" + this.f4639g + ", mRunSimpleAnimations=" + this.f4642j + ", mRunPredictiveAnimations=" + this.f4643k + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$r */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r.class */
    public static abstract class AbstractC1080r {
        /* renamed from: a */
        public abstract View m7038a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$s */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
    public final class RunnableC1081s implements Runnable {

        /* renamed from: a */
        OverScroller f4650a;

        /* renamed from: d */
        private int f4653d;

        /* renamed from: e */
        private int f4654e;

        /* renamed from: b */
        Interpolator f4651b = RecyclerView.f4480K;

        /* renamed from: f */
        private boolean f4655f = false;

        /* renamed from: g */
        private boolean f4656g = false;

        RunnableC1081s() {
            this.f4650a = new OverScroller(RecyclerView.this.getContext(), RecyclerView.f4480K);
        }

        /* renamed from: a */
        private static float m7036a(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        /* renamed from: d */
        private int m7029d(int i, int i2) {
            int abs;
            int abs2;
            int i3;
            boolean z = Math.abs(i) > Math.abs(i2);
            int sqrt = (int) Math.sqrt(0.0d);
            int sqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            float f = sqrt2;
            float f2 = width;
            float f3 = width / 2;
            float a = m7036a(Math.min(1.0f, (f * 1.0f) / f2));
            if (sqrt > 0) {
                i3 = Math.round(Math.abs((f3 + (a * f3)) / sqrt) * 1000.0f) * 4;
            } else {
                i3 = (int) ((((z ? abs : abs2) / f2) + 1.0f) * 300.0f);
            }
            return Math.min(i3, 2000);
        }

        /* renamed from: a */
        final void m7037a() {
            if (this.f4655f) {
                this.f4656g = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            C0741t.m8344a(RecyclerView.this, this);
        }

        /* renamed from: a */
        public final void m7035a(int i, int i2) {
            RecyclerView.this.m7234b(2);
            this.f4654e = 0;
            this.f4653d = 0;
            this.f4650a.fling(0, 0, i, i2, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
            m7037a();
        }

        /* renamed from: a */
        public final void m7034a(int i, int i2, int i3) {
            m7033a(i, i2, i3, RecyclerView.f4480K);
        }

        /* renamed from: a */
        public final void m7033a(int i, int i2, int i3, Interpolator interpolator) {
            if (this.f4651b != interpolator) {
                this.f4651b = interpolator;
                this.f4650a = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.m7234b(2);
            this.f4654e = 0;
            this.f4653d = 0;
            this.f4650a.startScroll(0, 0, i, i2, i3);
            if (Build.VERSION.SDK_INT < 23) {
                this.f4650a.computeScrollOffset();
            }
            m7037a();
        }

        /* renamed from: b */
        public final void m7032b() {
            RecyclerView.this.removeCallbacks(this);
            this.f4650a.abortAnimation();
        }

        /* renamed from: b */
        public final void m7031b(int i, int i2) {
            m7034a(i, i2, m7029d(i, i2));
        }

        /* renamed from: c */
        public final void m7030c(int i, int i2) {
            m7033a(i, i2, m7029d(i, i2), RecyclerView.f4480K);
        }

        /* JADX WARN: Code restructure failed: missing block: B:54:0x0202, code lost:
            if (r23 > 0) goto L_0x020b;
         */
        /* JADX WARN: Removed duplicated region for block: B:50:0x01f3  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0216  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0226  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 856
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.RunnableC1081s.run():void");
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$t */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
    public static abstract class AbstractC1082t {

        /* renamed from: q */
        private static final List<Object> f4657q = Collections.emptyList();

        /* renamed from: a */
        public final View f4658a;

        /* renamed from: b */
        WeakReference<RecyclerView> f4659b;

        /* renamed from: j */
        int f4667j;

        /* renamed from: p */
        RecyclerView f4673p;

        /* renamed from: c */
        int f4660c = -1;

        /* renamed from: d */
        int f4661d = -1;

        /* renamed from: e */
        long f4662e = -1;

        /* renamed from: f */
        int f4663f = -1;

        /* renamed from: g */
        int f4664g = -1;

        /* renamed from: h */
        AbstractC1082t f4665h = null;

        /* renamed from: i */
        AbstractC1082t f4666i = null;

        /* renamed from: k */
        List<Object> f4668k = null;

        /* renamed from: l */
        List<Object> f4669l = null;

        /* renamed from: r */
        private int f4674r = 0;

        /* renamed from: m */
        C1074n f4670m = null;

        /* renamed from: n */
        boolean f4671n = false;

        /* renamed from: s */
        private int f4675s = 0;

        /* renamed from: o */
        int f4672o = -1;

        public AbstractC1082t(View view) {
            if (view != null) {
                this.f4658a = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        /* renamed from: a */
        final void m7028a(int i, int i2) {
            this.f4667j = (i & i2) | (this.f4667j & (i2 ^ (-1)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m7027a(int i, boolean z) {
            if (this.f4661d == -1) {
                this.f4661d = this.f4660c;
            }
            if (this.f4664g == -1) {
                this.f4664g = this.f4660c;
            }
            if (z) {
                this.f4664g += i;
            }
            this.f4660c += i;
            if (this.f4658a.getLayoutParams() != null) {
                ((LayoutParams) this.f4658a.getLayoutParams()).f4565e = true;
            }
        }

        /* renamed from: a */
        final void m7026a(C1074n nVar, boolean z) {
            this.f4670m = nVar;
            this.f4671n = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m7025a(RecyclerView recyclerView) {
            int i = this.f4672o;
            if (i == -1) {
                i = C0741t.m8327f(this.f4658a);
            }
            this.f4675s = i;
            recyclerView.m7247a(this, 4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m7024a(Object obj) {
            if (obj == null) {
                m7020c(1024);
            } else if ((1024 & this.f4667j) == 0) {
                if (this.f4668k == null) {
                    this.f4668k = new ArrayList();
                    this.f4669l = Collections.unmodifiableList(this.f4668k);
                }
                this.f4668k.add(obj);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final void m7022b(RecyclerView recyclerView) {
            recyclerView.m7247a(this, this.f4675s);
            this.f4675s = 0;
        }

        /* renamed from: b */
        final boolean m7023b(int i) {
            return (this.f4667j & i) != 0;
        }

        /* renamed from: c */
        final void m7021c() {
            this.f4661d = -1;
            this.f4664g = -1;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public final void m7020c(int i) {
            this.f4667j = i | this.f4667j;
        }

        /* renamed from: c */
        public final void m7019c(boolean z) {
            int i = this.f4674r;
            this.f4674r = z ? i - 1 : i + 1;
            int i2 = this.f4674r;
            if (i2 < 0) {
                this.f4674r = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ".concat(String.valueOf(this)));
            } else if (!z && i2 == 1) {
                this.f4667j |= 16;
            } else if (z && this.f4674r == 0) {
                this.f4667j &= -17;
            }
        }

        /* renamed from: d */
        final void m7018d() {
            if (this.f4661d == -1) {
                this.f4661d = this.f4660c;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: e */
        public final boolean m7017e() {
            return (this.f4667j & 128) != 0;
        }

        /* renamed from: f */
        public final int m7016f() {
            int i = this.f4664g;
            return i == -1 ? this.f4660c : i;
        }

        /* renamed from: g */
        public final int m7015g() {
            RecyclerView recyclerView = this.f4673p;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.m7222c(this);
        }

        /* renamed from: h */
        final boolean m7014h() {
            return this.f4670m != null;
        }

        /* renamed from: i */
        final void m7013i() {
            this.f4670m.m7069b(this);
        }

        /* renamed from: j */
        final boolean m7012j() {
            return (this.f4667j & 32) != 0;
        }

        /* renamed from: k */
        final void m7011k() {
            this.f4667j &= -33;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: l */
        public final void m7010l() {
            this.f4667j &= -257;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: m */
        public final boolean m7009m() {
            return (this.f4667j & 4) != 0;
        }

        /* renamed from: n */
        final boolean m7008n() {
            return (this.f4667j & 2) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: o */
        public final boolean m7007o() {
            return (this.f4667j & 1) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: p */
        public final boolean m7006p() {
            return (this.f4667j & 8) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: q */
        public final boolean m7005q() {
            return (this.f4667j & 256) != 0;
        }

        /* renamed from: r */
        final void m7004r() {
            List<Object> list = this.f4668k;
            if (list != null) {
                list.clear();
            }
            this.f4667j &= -1025;
        }

        /* renamed from: s */
        final List<Object> m7003s() {
            if ((this.f4667j & 1024) != 0) {
                return f4657q;
            }
            List<Object> list = this.f4668k;
            return (list == null || list.size() == 0) ? f4657q : this.f4669l;
        }

        /* renamed from: t */
        final void m7002t() {
            this.f4667j = 0;
            this.f4660c = -1;
            this.f4661d = -1;
            this.f4662e = -1L;
            this.f4664g = -1;
            this.f4674r = 0;
            this.f4665h = null;
            this.f4666i = null;
            m7004r();
            this.f4675s = 0;
            this.f4672o = -1;
            RecyclerView.m7229b(this);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.f4660c + " id=" + this.f4662e + ", oldPos=" + this.f4661d + ", pLpos:" + this.f4664g);
            if (m7014h()) {
                sb.append(" scrap ");
                sb.append(this.f4671n ? "[changeScrap]" : "[attachedScrap]");
            }
            if (m7009m()) {
                sb.append(" invalid");
            }
            if (!m7007o()) {
                sb.append(" unbound");
            }
            if (m7008n()) {
                sb.append(" update");
            }
            if (m7006p()) {
                sb.append(" removed");
            }
            if (m7017e()) {
                sb.append(" ignored");
            }
            if (m7005q()) {
                sb.append(" tmpDetached");
            }
            if (!m7001u()) {
                sb.append(" not recyclable(" + this.f4674r + ")");
            }
            if ((this.f4667j & AdRequest.MAX_CONTENT_URL_LENGTH) != 0 || m7009m()) {
                sb.append(" undefined adapter position");
            }
            if (this.f4658a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        /* renamed from: u */
        public final boolean m7001u() {
            return (this.f4667j & 16) == 0 && !C0741t.m8331d(this.f4658a);
        }

        /* renamed from: v */
        final boolean m7000v() {
            return (this.f4667j & 16) == 0 && C0741t.m8331d(this.f4658a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: w */
        public final boolean m6999w() {
            return (this.f4667j & 2) != 0;
        }
    }

    static {
        f4486a = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        f4487b = Build.VERSION.SDK_INT >= 23;
        f4488c = Build.VERSION.SDK_INT >= 16;
        f4489d = Build.VERSION.SDK_INT >= 21;
        f4483N = Build.VERSION.SDK_INT <= 15;
        f4484O = Build.VERSION.SDK_INT <= 15;
        f4485P = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        f4480K = new animationInterpolatorC1091ad();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:(1:44)(2:46|(13:48|96|50|(1:52)(1:53)|54|55|56|92|57|58|90|59|64)(1:49))|96|50|(0)(0)|54|55|56|92|57|58|90|59|64) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x03d9, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x03de, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x03e0, code lost:
        r18 = r0.getConstructor(new java.lang.Class[0]);
        r21 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0405, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0406, code lost:
        r13.initCause(r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0446, code lost:
        throw new java.lang.IllegalStateException(r14.getPositionDescription() + ": Error creating LayoutManager " + r16, r13);
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x038c A[Catch: ClassCastException -> 0x0447, IllegalAccessException -> 0x0479, InstantiationException -> 0x04ae, InvocationTargetException -> 0x04e0, ClassNotFoundException -> 0x0515, TRY_LEAVE, TryCatch #5 {ClassCastException -> 0x0447, ClassNotFoundException -> 0x0515, IllegalAccessException -> 0x0479, InstantiationException -> 0x04ae, InvocationTargetException -> 0x04e0, blocks: (B:50:0x0385, B:52:0x038c, B:53:0x0398, B:55:0x03a0, B:57:0x03ae, B:59:0x03c6, B:62:0x03e0, B:64:0x03ee, B:66:0x0406, B:67:0x0446), top: B:96:0x0385 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0398 A[Catch: ClassCastException -> 0x0447, IllegalAccessException -> 0x0479, InstantiationException -> 0x04ae, InvocationTargetException -> 0x04e0, ClassNotFoundException -> 0x0515, TRY_ENTER, TryCatch #5 {ClassCastException -> 0x0447, ClassNotFoundException -> 0x0515, IllegalAccessException -> 0x0479, InstantiationException -> 0x04ae, InvocationTargetException -> 0x04e0, blocks: (B:50:0x0385, B:52:0x038c, B:53:0x0398, B:55:0x03a0, B:57:0x03ae, B:59:0x03c6, B:62:0x03e0, B:64:0x03ee, B:66:0x0406, B:67:0x0446), top: B:96:0x0385 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0569  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RecyclerView(android.content.Context r13, android.util.AttributeSet r14, int r15) {
        /*
            Method dump skipped, instructions count: 1408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: A */
    private boolean m7282A() {
        return this.f4561y != null && this.f4550n.mo6954c();
    }

    /* renamed from: B */
    private void m7281B() {
        if (this.f4559w) {
            this.f4542f.m6881a();
            if (this.f4560x) {
                this.f4550n.mo6993a();
            }
        }
        if (m7282A()) {
            this.f4542f.m6875b();
        } else {
            this.f4542f.m6864e();
        }
        boolean z = this.f4493D || this.f4494E;
        this.f4492C.f4642j = this.f4555s && this.f4561y != null && (this.f4559w || z || this.f4550n.f4594u) && (!this.f4559w || this.f4549m.m7174d());
        C1079q qVar = this.f4492C;
        boolean z2 = false;
        if (qVar.f4642j) {
            z2 = false;
            if (z) {
                z2 = false;
                if (!this.f4559w) {
                    z2 = false;
                    if (m7282A()) {
                        z2 = true;
                    }
                }
            }
        }
        qVar.f4643k = z2;
    }

    /* renamed from: C */
    private void m7280C() {
        String str;
        if (this.f4549m == null) {
            str = "No adapter attached; skipping layout";
        } else if (this.f4550n == null) {
            str = "No layout manager attached; skipping layout";
        } else {
            C1079q qVar = this.f4492C;
            qVar.f4641i = false;
            if (qVar.f4636d == 1) {
                m7276G();
            } else if (!this.f4542f.m6862f() && this.f4550n.m7099r() == getWidth() && this.f4550n.m7098s() == getHeight()) {
                this.f4550n.m7128b(this);
                m7274I();
                return;
            }
            this.f4550n.m7128b(this);
            m7275H();
            m7274I();
            return;
        }
        Log.e("RecyclerView", str);
    }

    /* renamed from: D */
    private void m7279D() {
        AbstractC1082t tVar;
        int id;
        View focusedChild;
        View focusedChild2 = (!this.f4538ax || !hasFocus() || this.f4549m == null) ? null : getFocusedChild();
        if (focusedChild2 == null) {
            tVar = null;
        } else {
            View c = m7223c(focusedChild2);
            tVar = c == null ? null : m7232b(c);
        }
        if (tVar == null) {
            m7278E();
            return;
        }
        this.f4492C.f4645m = this.f4549m.m7174d() ? tVar.f4662e : -1L;
        this.f4492C.f4644l = this.f4559w ? -1 : tVar.m7006p() ? tVar.f4661d : tVar.m7015g();
        C1079q qVar = this.f4492C;
        View view = tVar.f4658a;
        loop0: while (true) {
            id = view.getId();
            while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                focusedChild = ((ViewGroup) view).getFocusedChild();
                view = focusedChild;
                if (focusedChild.getId() != -1) {
                    break;
                }
            }
            view = focusedChild;
        }
        qVar.f4646n = id;
    }

    /* renamed from: E */
    private void m7278E() {
        C1079q qVar = this.f4492C;
        qVar.f4645m = -1L;
        qVar.f4644l = -1;
        qVar.f4646n = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01e1  */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m7277F() {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m7277F():void");
    }

    /* renamed from: G */
    private void m7276G() {
        this.f4492C.m7039a(1);
        m7249a(this.f4492C);
        this.f4492C.f4641i = false;
        m7197n();
        this.f4544h.m6832a();
        m7215e();
        m7281B();
        m7279D();
        C1079q qVar = this.f4492C;
        qVar.f4640h = qVar.f4642j && this.f4494E;
        this.f4494E = false;
        this.f4493D = false;
        C1079q qVar2 = this.f4492C;
        qVar2.f4639g = qVar2.f4643k;
        this.f4492C.f4637e = this.f4549m.mo979c();
        m7236a(this.f4509aC);
        if (this.f4492C.f4642j) {
            int b = this.f4543g.m6804b();
            for (int i = 0; i < b; i++) {
                AbstractC1082t d = m7217d(this.f4543g.m6803b(i));
                if (!d.m7017e() && (!d.m7009m() || this.f4549m.m7174d())) {
                    AbstractC1061f.m7161e(d);
                    d.m7003s();
                    this.f4544h.m6827a(d, new AbstractC1061f.C1063b().m7155a(d));
                    if (this.f4492C.f4640h && d.m6999w() && !d.m7006p() && !d.m7017e() && !d.m7009m()) {
                        this.f4544h.m6830a(m7212e(d), d);
                    }
                }
            }
        }
        if (this.f4492C.f4643k) {
            m7273J();
            boolean z = this.f4492C.f4638f;
            C1079q qVar3 = this.f4492C;
            qVar3.f4638f = false;
            this.f4550n.mo6949c(this.f4541e, qVar3);
            this.f4492C.f4638f = z;
            for (int i2 = 0; i2 < this.f4543g.m6804b(); i2++) {
                AbstractC1082t d2 = m7217d(this.f4543g.m6803b(i2));
                if (!d2.m7017e() && !this.f4544h.m6821d(d2)) {
                    AbstractC1061f.m7161e(d2);
                    boolean b2 = d2.m7023b(8192);
                    d2.m7003s();
                    AbstractC1061f.C1063b a = new AbstractC1061f.C1063b().m7155a(d2);
                    if (b2) {
                        m7246a(d2, a);
                    } else {
                        this.f4544h.m6824b(d2, a);
                    }
                }
            }
        }
        m7272K();
        m7237a(true);
        m7221c(false);
        this.f4492C.f4636d = 2;
    }

    /* renamed from: H */
    private void m7275H() {
        m7197n();
        m7215e();
        this.f4492C.m7039a(6);
        this.f4542f.m6864e();
        this.f4492C.f4637e = this.f4549m.mo979c();
        C1079q qVar = this.f4492C;
        qVar.f4635c = 0;
        qVar.f4639g = false;
        this.f4550n.mo6949c(this.f4541e, qVar);
        C1079q qVar2 = this.f4492C;
        qVar2.f4638f = false;
        this.f4501R = null;
        qVar2.f4642j = qVar2.f4642j && this.f4561y != null;
        this.f4492C.f4636d = 4;
        m7237a(true);
        m7221c(false);
    }

    /* renamed from: I */
    private void m7274I() {
        this.f4492C.m7039a(4);
        m7197n();
        m7215e();
        C1079q qVar = this.f4492C;
        qVar.f4636d = 1;
        if (qVar.f4642j) {
            for (int b = this.f4543g.m6804b() - 1; b >= 0; b--) {
                AbstractC1082t d = m7217d(this.f4543g.m6803b(b));
                if (!d.m7017e()) {
                    long e = m7212e(d);
                    AbstractC1061f.C1063b a = new AbstractC1061f.C1063b().m7155a(d);
                    AbstractC1082t a2 = this.f4544h.m6831a(e);
                    if (a2 != null && !a2.m7017e()) {
                        boolean a3 = this.f4544h.m6829a(a2);
                        boolean a4 = this.f4544h.m6829a(d);
                        if (!a3 || a2 != d) {
                            AbstractC1061f.C1063b b2 = this.f4544h.m6825b(a2);
                            this.f4544h.m6822c(d, a);
                            AbstractC1061f.C1063b c = this.f4544h.m6823c(d);
                            if (b2 == null) {
                                m7259a(e, d, a2);
                            } else {
                                m7244a(a2, d, b2, c, a3, a4);
                            }
                        }
                    }
                    this.f4544h.m6822c(d, a);
                }
            }
            this.f4544h.m6826a(this.f4514aH);
        }
        this.f4550n.m7129b(this.f4541e);
        C1079q qVar2 = this.f4492C;
        qVar2.f4634b = qVar2.f4637e;
        this.f4559w = false;
        this.f4560x = false;
        C1079q qVar3 = this.f4492C;
        qVar3.f4642j = false;
        qVar3.f4643k = false;
        this.f4550n.f4594u = false;
        if (this.f4541e.f4610b != null) {
            this.f4541e.f4610b.clear();
        }
        if (this.f4550n.f4598y) {
            AbstractC1066i iVar = this.f4550n;
            iVar.f4597x = 0;
            iVar.f4598y = false;
            this.f4541e.m7072b();
        }
        this.f4550n.mo6972a(this.f4492C);
        m7237a(true);
        m7221c(false);
        this.f4544h.m6832a();
        int[] iArr = this.f4509aC;
        if (m7214e(iArr[0], iArr[1])) {
            m7202j();
        }
        m7277F();
        m7278E();
    }

    /* renamed from: J */
    private void m7273J() {
        int c = this.f4543g.m6801c();
        for (int i = 0; i < c; i++) {
            AbstractC1082t d = m7217d(this.f4543g.m6800c(i));
            if (!d.m7017e()) {
                d.m7018d();
            }
        }
    }

    /* renamed from: K */
    private void m7272K() {
        int c = this.f4543g.m6801c();
        for (int i = 0; i < c; i++) {
            AbstractC1082t d = m7217d(this.f4543g.m6800c(i));
            if (!d.m7017e()) {
                d.m7021c();
            }
        }
        this.f4541e.m7058f();
    }

    /* renamed from: L */
    private void m7271L() {
        int c = this.f4543g.m6801c();
        for (int i = 0; i < c; i++) {
            AbstractC1082t d = m7217d(this.f4543g.m6800c(i));
            if (d != null && !d.m7017e()) {
                d.m7020c(6);
            }
        }
        m7206h();
        this.f4541e.m7061e();
    }

    /* renamed from: M */
    private void m7270M() {
        int i;
        for (int size = this.f4499J.size() - 1; size >= 0; size--) {
            AbstractC1082t tVar = this.f4499J.get(size);
            if (tVar.f4658a.getParent() == this && !tVar.m7017e() && (i = tVar.f4672o) != -1) {
                C0741t.m8358a(tVar.f4658a, i);
                tVar.f4672o = -1;
            }
        }
        this.f4499J.clear();
    }

    /* renamed from: N */
    private C0732k m7269N() {
        if (this.f4510aD == null) {
            this.f4510aD = new C0732k(this);
        }
        return this.f4510aD;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0091  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m7267a(float r7, float r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m7267a(float, float, float, float):void");
    }

    /* renamed from: a */
    private void m7259a(long j, AbstractC1082t tVar, AbstractC1082t tVar2) {
        int b = this.f4543g.m6804b();
        for (int i = 0; i < b; i++) {
            AbstractC1082t d = m7217d(this.f4543g.m6803b(i));
            if (d != tVar && m7212e(d) == j) {
                AbstractC1056a aVar = this.f4549m;
                if (aVar == null || !aVar.m7174d()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + d + " \n View Holder 2:" + tVar + m7268a());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + d + " \n View Holder 2:" + tVar + m7268a());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + tVar2 + " cannot be found but it is necessary for " + tVar + m7268a());
    }

    /* renamed from: a */
    private void m7258a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f4526al) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f4526al = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f4530ap = x;
            this.f4528an = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f4531aq = y;
            this.f4529ao = y;
        }
    }

    /* renamed from: a */
    static void m7256a(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f4564d;
        rect.set((view.getLeft() - rect2.left) - layoutParams.leftMargin, (view.getTop() - rect2.top) - layoutParams.topMargin, view.getRight() + rect2.right + layoutParams.rightMargin, view.getBottom() + rect2.bottom + layoutParams.bottomMargin);
    }

    /* renamed from: a */
    private void m7255a(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f4547k.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f4565e) {
                Rect rect = layoutParams2.f4564d;
                this.f4547k.left -= rect.left;
                this.f4547k.right += rect.right;
                this.f4547k.top -= rect.top;
                this.f4547k.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f4547k);
            offsetRectIntoDescendantCoords(view, this.f4547k);
        }
        this.f4550n.m7136a(this, view, this.f4547k, !this.f4555s, view2 == null);
    }

    /* renamed from: a */
    private void m7249a(C1079q qVar) {
        if (this.f4525ak == 2) {
            OverScroller overScroller = this.f4562z.f4650a;
            qVar.f4647o = overScroller.getFinalX() - overScroller.getCurrX();
            qVar.f4648p = overScroller.getFinalY() - overScroller.getCurrY();
            return;
        }
        qVar.f4647o = 0;
        qVar.f4648p = 0;
    }

    /* renamed from: a */
    private void m7244a(AbstractC1082t tVar, AbstractC1082t tVar2, AbstractC1061f.C1063b bVar, AbstractC1061f.C1063b bVar2, boolean z, boolean z2) {
        tVar.m7019c(false);
        if (z) {
            m7216d(tVar);
        }
        if (tVar != tVar2) {
            if (z2) {
                m7216d(tVar2);
            }
            tVar.f4665h = tVar2;
            m7216d(tVar);
            this.f4541e.m7069b(tVar);
            tVar2.m7019c(false);
            tVar2.f4666i = tVar;
        }
        if (this.f4561y.mo6847a(tVar, tVar2, bVar, bVar2)) {
            m7208g();
        }
    }

    /* renamed from: a */
    private void m7236a(int[] iArr) {
        int b = this.f4543g.m6804b();
        if (b == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MIN_VALUE;
        int i2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (int i3 = 0; i3 < b; i3++) {
            AbstractC1082t d = m7217d(this.f4543g.m6803b(i3));
            i2 = i2;
            i = i;
            if (!d.m7017e()) {
                int f = d.m7016f();
                int i4 = i2;
                if (f < i2) {
                    i4 = f;
                }
                i2 = i4;
                i = i;
                if (f > i) {
                    i = f;
                    i2 = i4;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i;
    }

    /* renamed from: a */
    private boolean m7263a(int i, int i2, MotionEvent motionEvent) {
        int i3;
        int i4;
        int i5;
        int i6;
        m7220d();
        if (this.f4549m != null) {
            m7261a(i, i2, this.f4498I);
            int[] iArr = this.f4498I;
            int i7 = iArr[0];
            int i8 = iArr[1];
            i5 = i8;
            i4 = i7;
            i6 = i - i7;
            i3 = i2 - i8;
        } else {
            i4 = 0;
            i5 = 0;
            i3 = 0;
            i6 = 0;
        }
        if (!this.f4551o.isEmpty()) {
            invalidate();
        }
        if (m7264a(i4, i5, i6, i3, this.f4511aE, 0)) {
            int i9 = this.f4530ap;
            int[] iArr2 = this.f4511aE;
            this.f4530ap = i9 - iArr2[0];
            this.f4531aq -= iArr2[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation(iArr2[0], iArr2[1]);
            }
            int[] iArr3 = this.f4512aF;
            int i10 = iArr3[0];
            int[] iArr4 = this.f4511aE;
            iArr3[0] = i10 + iArr4[0];
            iArr3[1] = iArr3[1] + iArr4[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !C0728g.m8403a(motionEvent)) {
                m7267a(motionEvent.getX(), i6, motionEvent.getY(), i3);
            }
            m7233b(i, i2);
        }
        if (!(i4 == 0 && i5 == 0)) {
            m7202j();
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i4 == 0 && i5 == 0) ? false : true;
    }

    /* renamed from: b */
    static void m7229b(AbstractC1082t tVar) {
        if (tVar.f4659b != null) {
            RecyclerView recyclerView = tVar.f4659b.get();
            while (recyclerView != null) {
                if (recyclerView != tVar.f4658a) {
                    ViewParent parent = recyclerView.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            tVar.f4659b = null;
        }
    }

    /* renamed from: c */
    private void m7221c(boolean z) {
        if (this.f4505V <= 0) {
            this.f4505V = 1;
        }
        if (!z && !this.f4557u) {
            this.f4556t = false;
        }
        if (this.f4505V == 1) {
            if (z && this.f4556t && !this.f4557u && this.f4550n != null && this.f4549m != null) {
                m7280C();
            }
            if (!this.f4557u) {
                this.f4556t = false;
            }
        }
        this.f4505V--;
    }

    /* renamed from: d */
    private AbstractC1082t m7219d(int i) {
        AbstractC1082t tVar = null;
        if (this.f4559w) {
            return null;
        }
        int c = this.f4543g.m6801c();
        for (int i2 = 0; i2 < c; i2++) {
            AbstractC1082t d = m7217d(this.f4543g.m6800c(i2));
            tVar = tVar;
            if (d != null) {
                tVar = tVar;
                if (!d.m7006p()) {
                    tVar = tVar;
                    if (m7222c(d) != i) {
                        continue;
                    } else if (!this.f4543g.m6797d(d.f4658a)) {
                        return d;
                    } else {
                        tVar = d;
                    }
                } else {
                    continue;
                }
            }
        }
        return tVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static AbstractC1082t m7217d(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f4563c;
    }

    /* renamed from: d */
    private void m7216d(AbstractC1082t tVar) {
        View view = tVar.f4658a;
        boolean z = view.getParent() == this;
        this.f4541e.m7069b(m7232b(view));
        boolean q = tVar.m7005q();
        C1113d dVar = this.f4543g;
        if (q) {
            dVar.m6806a(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            dVar.m6807a(view);
        } else {
            dVar.m6795e(view);
        }
    }

    /* renamed from: e */
    public static int m7213e(View view) {
        AbstractC1082t d = m7217d(view);
        if (d != null) {
            return d.m7015g();
        }
        return -1;
    }

    /* renamed from: e */
    private long m7212e(AbstractC1082t tVar) {
        return this.f4549m.m7174d() ? tVar.f4662e : tVar.f4660c;
    }

    /* renamed from: e */
    private boolean m7214e(int i, int i2) {
        m7236a(this.f4509aC);
        int[] iArr = this.f4509aC;
        return (iArr[0] == i && iArr[1] == i2) ? false : true;
    }

    /* renamed from: f */
    public static int m7209f(View view) {
        AbstractC1082t d = m7217d(view);
        if (d != null) {
            return d.m7016f();
        }
        return -1;
    }

    /* renamed from: f */
    private boolean m7210f(int i, int i2) {
        return m7269N().m8398a(i, i2);
    }

    /* renamed from: h */
    static RecyclerView m7205h(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView h = m7205h(viewGroup.getChildAt(i));
            if (h != null) {
                return h;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static long m7199l() {
        if (f4489d) {
            return System.nanoTime();
        }
        return 0L;
    }

    /* renamed from: n */
    private void m7197n() {
        this.f4505V++;
        if (this.f4505V == 1 && !this.f4557u) {
            this.f4556t = false;
        }
    }

    /* renamed from: o */
    private void m7196o() {
        m7234b(0);
        m7195p();
    }

    /* renamed from: p */
    private void m7195p() {
        this.f4562z.m7032b();
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null) {
            iVar.m7092y();
        }
    }

    /* renamed from: q */
    private void m7194q() {
        boolean z;
        EdgeEffect edgeEffect = this.f4521ag;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.f4521ag.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f4522ah;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 = z | this.f4522ah.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f4523ai;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z3 = z2 | this.f4523ai.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f4524aj;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z4 = z3 | this.f4524aj.isFinished();
        }
        if (z4) {
            C0741t.m8329e(this);
        }
    }

    /* renamed from: r */
    private void m7193r() {
        if (this.f4521ag == null) {
            this.f4521ag = C1060e.m7165a(this);
            if (this.f4545i) {
                this.f4521ag.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.f4521ag.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* renamed from: s */
    private void m7192s() {
        if (this.f4523ai == null) {
            this.f4523ai = C1060e.m7165a(this);
            if (this.f4545i) {
                this.f4523ai.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.f4523ai.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* renamed from: t */
    private void m7191t() {
        if (this.f4522ah == null) {
            this.f4522ah = C1060e.m7165a(this);
            if (this.f4545i) {
                this.f4522ah.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.f4522ah.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    /* renamed from: u */
    private void m7190u() {
        if (this.f4524aj == null) {
            this.f4524aj = C1060e.m7165a(this);
            if (this.f4545i) {
                this.f4524aj.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.f4524aj.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    /* renamed from: v */
    private void m7189v() {
        this.f4524aj = null;
        this.f4522ah = null;
        this.f4523ai = null;
        this.f4521ag = null;
    }

    /* renamed from: w */
    private void m7188w() {
        VelocityTracker velocityTracker = this.f4527am;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        mo7266a(0);
        m7194q();
    }

    /* renamed from: x */
    private void m7187x() {
        m7188w();
        m7234b(0);
    }

    /* renamed from: y */
    private void m7186y() {
        int i = this.f4515aa;
        this.f4515aa = 0;
        if (i != 0 && m7211f()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            C0692b.m8539a(obtain, i);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    /* renamed from: z */
    private boolean m7185z() {
        return this.f4518ad > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m7268a() {
        return " " + super.toString() + ", adapter:" + this.f4549m + ", layout:" + this.f4550n + ", context:" + getContext();
    }

    @Override // androidx.core.p037g.AbstractC0730i
    /* renamed from: a */
    public final void mo7266a(int i) {
        m7269N().m8386c(i);
    }

    /* renamed from: a */
    public final void m7265a(int i, int i2) {
        AbstractC1066i iVar = this.f4550n;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.f4557u) {
            if (!iVar.mo6940f()) {
                i = 0;
            }
            if (!this.f4550n.mo6937g()) {
                i2 = 0;
            }
            if (i != 0 || i2 != 0) {
                this.f4562z.m7030c(i, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7262a(int i, int i2, boolean z) {
        int i3 = i + i2;
        int c = this.f4543g.m6801c();
        for (int i4 = 0; i4 < c; i4++) {
            AbstractC1082t d = m7217d(this.f4543g.m6800c(i4));
            if (d != null && !d.m7017e()) {
                if (d.f4660c >= i3) {
                    d.m7027a(-i2, z);
                } else if (d.f4660c >= i) {
                    d.m7020c(8);
                    d.m7027a(-i2, z);
                    d.f4660c = i - 1;
                }
                this.f4492C.f4638f = true;
            }
        }
        C1074n nVar = this.f4541e;
        for (int size = nVar.f4611c.size() - 1; size >= 0; size--) {
            AbstractC1082t tVar = nVar.f4611c.get(size);
            if (tVar != null) {
                if (tVar.f4660c >= i3) {
                    tVar.m7027a(-i2, z);
                } else if (tVar.f4660c >= i) {
                    tVar.m7020c(8);
                    nVar.m7067c(size);
                }
            }
        }
        requestLayout();
    }

    /* renamed from: a */
    final void m7261a(int i, int i2, int[] iArr) {
        m7197n();
        m7215e();
        C0626c.m8687a("RV Scroll");
        m7249a(this.f4492C);
        int a = i != 0 ? this.f4550n.mo6990a(i, this.f4541e, this.f4492C) : 0;
        int b = i2 != 0 ? this.f4550n.mo6961b(i2, this.f4541e, this.f4492C) : 0;
        C0626c.m8688a();
        int b2 = this.f4543g.m6804b();
        for (int i3 = 0; i3 < b2; i3++) {
            View b3 = this.f4543g.m6803b(i3);
            AbstractC1082t b4 = m7232b(b3);
            if (!(b4 == null || b4.f4666i == null)) {
                View view = b4.f4666i.f4658a;
                int left = b3.getLeft();
                int top = b3.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        m7237a(true);
        m7221c(false);
        if (iArr != null) {
            iArr[0] = a;
            iArr[1] = b;
        }
    }

    /* renamed from: a */
    public final void m7254a(AbstractC1056a aVar) {
        if (this.f4557u) {
            m7238a("Do not setLayoutFrozen in layout or scroll");
            this.f4557u = false;
            if (!(!this.f4556t || this.f4550n == null || this.f4549m == null)) {
                requestLayout();
            }
            this.f4556t = false;
        }
        AbstractC1056a aVar2 = this.f4549m;
        if (aVar2 != null) {
            aVar2.m7177b(this.f4500Q);
        }
        m7235b();
        this.f4542f.m6881a();
        AbstractC1056a aVar3 = this.f4549m;
        this.f4549m = aVar;
        if (aVar != null) {
            aVar.m7181a(this.f4500Q);
        }
        C1074n nVar = this.f4541e;
        AbstractC1056a aVar4 = this.f4549m;
        nVar.m7081a();
        nVar.m7064d().m7086a(aVar3, aVar4);
        this.f4492C.f4638f = true;
        m7227b(false);
        requestLayout();
    }

    /* renamed from: a */
    public final void m7253a(AbstractC1065h hVar) {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null) {
            iVar.mo6967a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f4551o.isEmpty()) {
            setWillNotDraw(false);
        }
        this.f4551o.add(hVar);
        m7206h();
        requestLayout();
    }

    /* renamed from: a */
    public final void m7252a(AbstractC1066i iVar) {
        if (iVar != this.f4550n) {
            m7196o();
            if (this.f4550n != null) {
                AbstractC1061f fVar = this.f4561y;
                if (fVar != null) {
                    fVar.mo6759d();
                }
                this.f4550n.m7125c(this.f4541e);
                this.f4550n.m7129b(this.f4541e);
                this.f4541e.m7081a();
                if (this.f4552p) {
                    this.f4550n.m7127b(this, this.f4541e);
                }
                this.f4550n.m7137a((RecyclerView) null);
                this.f4550n = null;
            } else {
                this.f4541e.m7081a();
            }
            this.f4543g.m6809a();
            this.f4550n = iVar;
            if (iVar != null) {
                if (iVar.f4590q == null) {
                    this.f4550n.m7137a(this);
                    if (this.f4552p) {
                        this.f4550n.f4595v = true;
                    }
                } else {
                    throw new IllegalArgumentException("LayoutManager " + iVar + " is already attached to a RecyclerView:" + iVar.f4590q.m7268a());
                }
            }
            this.f4541e.m7072b();
            requestLayout();
        }
    }

    /* renamed from: a */
    public final void m7251a(AbstractC1070k kVar) {
        this.f4503T.add(kVar);
    }

    /* renamed from: a */
    public final void m7250a(AbstractC1071l lVar) {
        if (this.f4540az == null) {
            this.f4540az = new ArrayList();
        }
        this.f4540az.add(lVar);
    }

    /* renamed from: a */
    final void m7246a(AbstractC1082t tVar, AbstractC1061f.C1063b bVar) {
        tVar.m7028a(0, 8192);
        if (this.f4492C.f4640h && tVar.m6999w() && !tVar.m7006p() && !tVar.m7017e()) {
            this.f4544h.m6830a(m7212e(tVar), tVar);
        }
        this.f4544h.m6827a(tVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7245a(AbstractC1082t tVar, AbstractC1061f.C1063b bVar, AbstractC1061f.C1063b bVar2) {
        tVar.m7019c(false);
        if (this.f4561y.mo6846b(tVar, bVar, bVar2)) {
            m7208g();
        }
    }

    /* renamed from: a */
    public final void m7239a(C1098ak akVar) {
        this.f4496G = akVar;
        C0741t.m8348a(this, this.f4496G);
    }

    /* renamed from: a */
    final void m7238a(String str) {
        if (m7185z()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + m7268a());
            }
            throw new IllegalStateException(str);
        } else if (this.f4519ae > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(m7268a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7237a(boolean z) {
        this.f4518ad--;
        if (this.f4518ad <= 0) {
            this.f4518ad = 0;
            if (z) {
                m7186y();
                m7270M();
            }
        }
    }

    /* renamed from: a */
    public final boolean m7264a(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return m7269N().m8396a(i, i2, i3, i4, iArr, i5);
    }

    /* renamed from: a */
    public final boolean m7260a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return m7269N().m8392a(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: a */
    final boolean m7257a(View view) {
        m7197n();
        boolean g = this.f4543g.m6793g(view);
        if (g) {
            AbstractC1082t d = m7217d(view);
            this.f4541e.m7069b(d);
            this.f4541e.m7075a(d);
        }
        m7221c(!g);
        return g;
    }

    /* renamed from: a */
    final boolean m7248a(AbstractC1082t tVar) {
        AbstractC1061f fVar = this.f4561y;
        return fVar == null || fVar.mo6768a(tVar, tVar.m7003s());
    }

    /* renamed from: a */
    final boolean m7247a(AbstractC1082t tVar, int i) {
        if (m7185z()) {
            tVar.f4672o = i;
            this.f4499J.add(tVar);
            return false;
        }
        C0741t.m8358a(tVar.f4658a, i);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        super.addFocusables(arrayList, i, i2);
    }

    /* renamed from: b */
    public final AbstractC1082t m7232b(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return m7217d(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m7235b() {
        AbstractC1061f fVar = this.f4561y;
        if (fVar != null) {
            fVar.mo6759d();
        }
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null) {
            iVar.m7125c(this.f4541e);
            this.f4550n.m7129b(this.f4541e);
        }
        this.f4541e.m7081a();
    }

    /* renamed from: b */
    final void m7234b(int i) {
        if (i != this.f4525ak) {
            this.f4525ak = i;
            if (i != 2) {
                m7195p();
            }
            AbstractC1066i iVar = this.f4550n;
            if (iVar != null) {
                iVar.mo6933h(i);
            }
            List<AbstractC1071l> list = this.f4540az;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f4540az.get(size);
                }
            }
        }
    }

    /* renamed from: b */
    final void m7233b(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.f4521ag;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.f4521ag.onRelease();
            z = this.f4521ag.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f4523ai;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            z2 = z;
            if (!edgeEffect2.isFinished()) {
                z2 = z;
                if (i < 0) {
                    this.f4523ai.onRelease();
                    z2 = z | this.f4523ai.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect3 = this.f4522ah;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            z3 = z2;
            if (!edgeEffect3.isFinished()) {
                z3 = z2;
                if (i2 > 0) {
                    this.f4522ah.onRelease();
                    z3 = z2 | this.f4522ah.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect4 = this.f4524aj;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            z4 = z3;
            if (!edgeEffect4.isFinished()) {
                z4 = z3;
                if (i2 < 0) {
                    this.f4524aj.onRelease();
                    z4 = z3 | this.f4524aj.isFinished();
                }
            }
        }
        if (z4) {
            C0741t.m8329e(this);
        }
    }

    /* renamed from: b */
    public final void m7231b(AbstractC1070k kVar) {
        this.f4503T.remove(kVar);
        if (this.f4504U == kVar) {
            this.f4504U = null;
        }
    }

    /* renamed from: b */
    public final void m7230b(AbstractC1071l lVar) {
        List<AbstractC1071l> list = this.f4540az;
        if (list != null) {
            list.remove(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m7228b(AbstractC1082t tVar, AbstractC1061f.C1063b bVar, AbstractC1061f.C1063b bVar2) {
        m7216d(tVar);
        tVar.m7019c(false);
        if (this.f4561y.mo6848a(tVar, bVar, bVar2)) {
            m7208g();
        }
    }

    /* renamed from: b */
    final void m7227b(boolean z) {
        this.f4560x = z | this.f4560x;
        this.f4559w = true;
        m7271L();
    }

    /* renamed from: c */
    final int m7222c(AbstractC1082t tVar) {
        if (tVar.m7023b(524) || !tVar.m7007o()) {
            return -1;
        }
        return this.f4542f.m6870c(tVar.f4660c);
    }

    /* renamed from: c */
    public final View m7223c(View view) {
        ViewParent parent;
        while (true) {
            parent = view.getParent();
            if (parent == null || parent == this || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    /* renamed from: c */
    public final AbstractC1056a m7226c() {
        return this.f4549m;
    }

    /* renamed from: c */
    final void m7225c(int i) {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null) {
            iVar.mo6953c(i);
            awakenScrollBars();
        }
    }

    /* renamed from: c */
    final void m7224c(int i, int i2) {
        if (i < 0) {
            m7193r();
            this.f4521ag.onAbsorb(-i);
        } else if (i > 0) {
            m7192s();
            this.f4523ai.onAbsorb(i);
        }
        if (i2 < 0) {
            m7191t();
            this.f4522ah.onAbsorb(-i2);
        } else if (i2 > 0) {
            m7190u();
            this.f4524aj.onAbsorb(i2);
        }
        if (i != 0 || i2 != 0) {
            C0741t.m8329e(this);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.f4550n.mo6979a((LayoutParams) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null && iVar.mo6940f()) {
            return this.f4550n.mo6943d(this.f4492C);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null && iVar.mo6940f()) {
            return this.f4550n.mo6956b(this.f4492C);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null && iVar.mo6940f()) {
            return this.f4550n.mo6938f(this.f4492C);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null && iVar.mo6937g()) {
            return this.f4550n.mo6941e(this.f4492C);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null && iVar.mo6937g()) {
            return this.f4550n.mo6948c(this.f4492C);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null && iVar.mo6937g()) {
            return this.f4550n.mo6935g(this.f4492C);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m7220d() {
        if (!this.f4555s || this.f4559w) {
            C0626c.m8687a("RV FullInvalidate");
            m7280C();
        } else if (this.f4542f.m6867d()) {
            if (this.f4542f.m6880a(4) && !this.f4542f.m6880a(11)) {
                C0626c.m8687a("RV PartialInvalidate");
                m7197n();
                m7215e();
                this.f4542f.m6875b();
                if (!this.f4556t) {
                    int b = this.f4543g.m6804b();
                    boolean z = false;
                    int i = 0;
                    while (true) {
                        if (i < b) {
                            AbstractC1082t d = m7217d(this.f4543g.m6803b(i));
                            if (d != null && !d.m7017e() && d.m6999w()) {
                                z = true;
                                break;
                            }
                            i++;
                        } else {
                            break;
                        }
                    }
                    if (z) {
                        m7280C();
                    } else {
                        this.f4542f.m6871c();
                    }
                }
                m7221c(true);
                m7237a(true);
            } else if (this.f4542f.m6867d()) {
                C0626c.m8687a("RV FullInvalidate");
                m7280C();
                C0626c.m8688a();
                return;
            } else {
                return;
            }
        } else {
            return;
        }
        C0626c.m8688a();
    }

    /* renamed from: d */
    final void m7218d(int i, int i2) {
        setMeasuredDimension(AbstractC1066i.m7151a(i, getPaddingLeft() + getPaddingRight(), C0741t.m8319l(this)), AbstractC1066i.m7151a(i2, getPaddingTop() + getPaddingBottom(), C0741t.m8318m(this)));
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return m7269N().m8400a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return m7269N().m8401a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m7269N().m8393a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return m7269N().m8397a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        boolean z2;
        float f;
        int i;
        super.draw(canvas);
        int size = this.f4551o.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f4551o.get(i2).mo6740a(canvas, this);
        }
        EdgeEffect edgeEffect = this.f4521ag;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f4545i ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f4521ag;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.f4522ah;
        boolean z3 = z;
        if (edgeEffect3 != null) {
            z3 = z;
            if (!edgeEffect3.isFinished()) {
                int save2 = canvas.save();
                if (this.f4545i) {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                EdgeEffect edgeEffect4 = this.f4522ah;
                z3 = z | (edgeEffect4 != null && edgeEffect4.draw(canvas));
                canvas.restoreToCount(save2);
            }
        }
        EdgeEffect edgeEffect5 = this.f4523ai;
        boolean z4 = z3;
        if (edgeEffect5 != null) {
            z4 = z3;
            if (!edgeEffect5.isFinished()) {
                int save3 = canvas.save();
                int width = getWidth();
                int paddingTop = this.f4545i ? getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate(-paddingTop, -width);
                EdgeEffect edgeEffect6 = this.f4523ai;
                z4 = z3 | (edgeEffect6 != null && edgeEffect6.draw(canvas));
                canvas.restoreToCount(save3);
            }
        }
        EdgeEffect edgeEffect7 = this.f4524aj;
        if (edgeEffect7 == null || edgeEffect7.isFinished()) {
            z2 = z4;
        } else {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f4545i) {
                f = (-getWidth()) + getPaddingRight();
                i = (-getHeight()) + getPaddingBottom();
            } else {
                f = -getWidth();
                i = -getHeight();
            }
            canvas.translate(f, i);
            EdgeEffect edgeEffect8 = this.f4524aj;
            boolean z5 = false;
            if (edgeEffect8 != null) {
                z5 = false;
                if (edgeEffect8.draw(canvas)) {
                    z5 = true;
                }
            }
            z2 = z5 | z4;
            canvas.restoreToCount(save4);
        }
        boolean z6 = z2;
        if (!z2) {
            z6 = z2;
            if (this.f4561y != null) {
                z6 = z2;
                if (this.f4551o.size() > 0) {
                    z6 = z2;
                    if (this.f4561y.mo6763b()) {
                        z6 = true;
                    }
                }
            }
        }
        if (z6) {
            C0741t.m8329e(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m7215e() {
        this.f4518ad++;
    }

    /* renamed from: f */
    final boolean m7211f() {
        AccessibilityManager accessibilityManager = this.f4516ab;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    /* JADX WARN: Removed duplicated region for block: B:169:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03c6  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View focusSearch(android.view.View r7, int r8) {
        /*
            Method dump skipped, instructions count: 974
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final Rect m7207g(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f4565e) {
            return layoutParams.f4564d;
        }
        if (this.f4492C.f4639g && (layoutParams.f4563c.m6999w() || layoutParams.f4563c.m7009m())) {
            return layoutParams.f4564d;
        }
        Rect rect = layoutParams.f4564d;
        rect.set(0, 0, 0, 0);
        int size = this.f4551o.size();
        for (int i = 0; i < size; i++) {
            this.f4547k.set(0, 0, 0, 0);
            this.f4551o.get(i).mo7153a(this.f4547k, view, this);
            rect.left += this.f4547k.left;
            rect.top += this.f4547k.top;
            rect.right += this.f4547k.right;
            rect.bottom += this.f4547k.bottom;
        }
        layoutParams.f4565e = false;
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m7208g() {
        if (!this.f4495F && this.f4552p) {
            C0741t.m8344a(this, this.f4513aG);
            this.f4495F = true;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null) {
            return iVar.mo6965b();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m7268a());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null) {
            return iVar.mo6988a(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m7268a());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null) {
            return iVar.mo6981a(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m7268a());
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f4550n != null) {
            return -1;
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        AbstractC1059d dVar = this.f4508aB;
        return dVar == null ? super.getChildDrawingOrder(i, i2) : dVar.m7166a();
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f4545i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m7206h() {
        int c = this.f4543g.m6801c();
        for (int i = 0; i < c; i++) {
            ((LayoutParams) this.f4543g.m6800c(i).getLayoutParams()).f4565e = true;
        }
        this.f4541e.m7057g();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m7269N().m8389b();
    }

    /* renamed from: i */
    public final void m7204i() {
        if (this.f4551o.size() != 0) {
            AbstractC1066i iVar = this.f4550n;
            if (iVar != null) {
                iVar.mo6967a("Cannot invalidate item decorations during a scroll or layout");
            }
            m7206h();
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final void m7203i(View view) {
        m7217d(view);
        List<Object> list = this.f4517ac;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f4517ac.get(size);
            }
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f4552p;
    }

    @Override // android.view.View, androidx.core.p037g.AbstractC0729h
    public boolean isNestedScrollingEnabled() {
        return m7269N().m8402a();
    }

    /* renamed from: j */
    final void m7202j() {
        this.f4519ae++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        AbstractC1071l lVar = this.f4539ay;
        if (lVar != null) {
            lVar.mo6732a(this);
        }
        List<AbstractC1071l> list = this.f4540az;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f4540az.get(size).mo6732a(this);
            }
        }
        this.f4519ae--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final void m7201j(View view) {
        m7217d(view);
        List<Object> list = this.f4517ac;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f4517ac.get(size);
            }
        }
    }

    /* renamed from: k */
    public final boolean m7200k() {
        return !this.f4555s || this.f4559w || this.f4542f.m6867d();
    }

    /* renamed from: m */
    public final boolean m7198m() {
        return m7269N().m8399a(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007a, code lost:
        if (r7 >= 30.0f) goto L_0x0084;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onAttachedToWindow() {
        /*
            r4 = this;
            r0 = r4
            super.onAttachedToWindow()
            r0 = r4
            r1 = 0
            r0.f4518ad = r1
            r0 = r4
            r1 = 1
            r0.f4552p = r1
            r0 = r4
            boolean r0 = r0.f4555s
            if (r0 == 0) goto L_0x0021
            r0 = r4
            boolean r0 = r0.isLayoutRequested()
            if (r0 != 0) goto L_0x0021
            r0 = 1
            r5 = r0
            goto L_0x0023
        L_0x0021:
            r0 = 0
            r5 = r0
        L_0x0023:
            r0 = r4
            r1 = r5
            r0.f4555s = r1
            r0 = r4
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.f4550n
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0036
            r0 = r6
            r1 = 1
            r0.f4595v = r1
        L_0x0036:
            r0 = r4
            r1 = 0
            r0.f4495F = r1
            boolean r0 = androidx.recyclerview.widget.RecyclerView.f4489d
            if (r0 == 0) goto L_0x00a7
            r0 = r4
            java.lang.ThreadLocal<androidx.recyclerview.widget.s> r1 = androidx.recyclerview.widget.RunnableC1139s.f4886a
            java.lang.Object r1 = r1.get()
            androidx.recyclerview.widget.s r1 = (androidx.recyclerview.widget.RunnableC1139s) r1
            r0.f4490A = r1
            r0 = r4
            androidx.recyclerview.widget.s r0 = r0.f4490A
            if (r0 != 0) goto L_0x009b
            r0 = r4
            androidx.recyclerview.widget.s r1 = new androidx.recyclerview.widget.s
            r2 = r1
            r2.<init>()
            r0.f4490A = r1
            r0 = r4
            android.view.Display r0 = androidx.core.p037g.C0741t.m8368G(r0)
            r6 = r0
            r0 = r4
            boolean r0 = r0.isInEditMode()
            if (r0 != 0) goto L_0x0080
            r0 = r6
            if (r0 == 0) goto L_0x0080
            r0 = r6
            float r0 = r0.getRefreshRate()
            r7 = r0
            r0 = r7
            r1 = 1106247680(0x41f00000, float:30.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0080
            goto L_0x0084
        L_0x0080:
            r0 = 1114636288(0x42700000, float:60.0)
            r7 = r0
        L_0x0084:
            r0 = r4
            androidx.recyclerview.widget.s r0 = r0.f4490A
            r1 = 1315859240(0x4e6e6b28, float:1.0E9)
            r2 = r7
            float r1 = r1 / r2
            long r1 = (long) r1
            r0.f4890d = r1
            java.lang.ThreadLocal<androidx.recyclerview.widget.s> r0 = androidx.recyclerview.widget.RunnableC1139s.f4886a
            r1 = r4
            androidx.recyclerview.widget.s r1 = r1.f4490A
            r0.set(r1)
        L_0x009b:
            r0 = r4
            androidx.recyclerview.widget.s r0 = r0.f4490A
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f4888b
            r1 = r4
            boolean r0 = r0.add(r1)
        L_0x00a7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        RunnableC1139s sVar;
        super.onDetachedFromWindow();
        AbstractC1061f fVar = this.f4561y;
        if (fVar != null) {
            fVar.mo6759d();
        }
        m7196o();
        this.f4552p = false;
        AbstractC1066i iVar = this.f4550n;
        if (iVar != null) {
            iVar.m7127b(this, this.f4541e);
        }
        this.f4499J.clear();
        removeCallbacks(this.f4513aG);
        C1108ar.C1109a.m6815b();
        if (f4489d && (sVar = this.f4490A) != null) {
            sVar.f4888b.remove(this);
            this.f4490A = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f4551o.size();
        for (int i = 0; i < size; i++) {
            this.f4551o.get(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.f4550n
            if (r0 != 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r5
            boolean r0 = r0.f4557u
            if (r0 == 0) goto L_0x0012
            r0 = 0
            return r0
        L_0x0012:
            r0 = r6
            int r0 = r0.getAction()
            r1 = 8
            if (r0 != r1) goto L_0x00ae
            r0 = r6
            int r0 = r0.getSource()
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0051
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.f4550n
            boolean r0 = r0.mo6937g()
            if (r0 == 0) goto L_0x0039
            r0 = r6
            r1 = 9
            float r0 = r0.getAxisValue(r1)
            float r0 = -r0
            r7 = r0
            goto L_0x003b
        L_0x0039:
            r0 = 0
            r7 = r0
        L_0x003b:
            r0 = r7
            r8 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.f4550n
            boolean r0 = r0.mo6940f()
            if (r0 == 0) goto L_0x0070
            r0 = r6
            r1 = 10
            float r0 = r0.getAxisValue(r1)
            r8 = r0
            goto L_0x008e
        L_0x0051:
            r0 = r6
            int r0 = r0.getSource()
            r1 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x008a
            r0 = r6
            r1 = 26
            float r0 = r0.getAxisValue(r1)
            r8 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.f4550n
            boolean r0 = r0.mo6937g()
            if (r0 == 0) goto L_0x007b
            r0 = r8
            float r0 = -r0
            r8 = r0
        L_0x0070:
            r0 = 0
            r9 = r0
            r0 = r8
            r7 = r0
            r0 = r9
            r8 = r0
            goto L_0x008e
        L_0x007b:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.f4550n
            boolean r0 = r0.mo6940f()
            if (r0 == 0) goto L_0x008a
            r0 = 0
            r7 = r0
            goto L_0x008e
        L_0x008a:
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
        L_0x008e:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x009a
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00ae
        L_0x009a:
            r0 = r5
            r1 = r8
            r2 = r5
            float r2 = r2.f4536av
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r7
            r3 = r5
            float r3 = r3.f4537aw
            float r2 = r2 * r3
            int r2 = (int) r2
            r3 = r6
            boolean r0 = r0.m7263a(r1, r2, r3)
        L_0x00ae:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (this.f4557u) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.f4504U = null;
        }
        int size = this.f4503T.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            AbstractC1070k kVar = this.f4503T.get(i);
            if (kVar.mo6739a(motionEvent) && action != 3) {
                this.f4504U = kVar;
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            m7187x();
            return true;
        }
        AbstractC1066i iVar = this.f4550n;
        if (iVar == null) {
            return false;
        }
        boolean f = iVar.mo6940f();
        boolean g = this.f4550n.mo6937g();
        if (this.f4527am == null) {
            this.f4527am = VelocityTracker.obtain();
        }
        this.f4527am.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f4506W) {
                this.f4506W = false;
            }
            this.f4526al = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.f4530ap = x;
            this.f4528an = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.f4531aq = y;
            this.f4529ao = y;
            if (this.f4525ak == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                m7234b(1);
            }
            int[] iArr = this.f4512aF;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = f;
            if (g) {
                i2 = f | 2;
            }
            m7210f(i2, 0);
        } else if (actionMasked == 1) {
            this.f4527am.clear();
            mo7266a(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f4526al);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f4526al + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.f4525ak != 1) {
                int i3 = this.f4528an;
                int i4 = this.f4529ao;
                if (!f || Math.abs(x2 - i3) <= this.f4532ar) {
                    z2 = false;
                } else {
                    this.f4530ap = x2;
                    z2 = true;
                }
                boolean z3 = z2;
                if (g) {
                    z3 = z2;
                    if (Math.abs(y2 - i4) > this.f4532ar) {
                        this.f4531aq = y2;
                        z3 = true;
                    }
                }
                if (z3) {
                    m7234b(1);
                }
            }
        } else if (actionMasked == 3) {
            m7187x();
        } else if (actionMasked == 5) {
            this.f4526al = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f4530ap = x3;
            this.f4528an = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f4531aq = y3;
            this.f4529ao = y3;
        } else if (actionMasked == 6) {
            m7258a(motionEvent);
        }
        return this.f4525ak == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0626c.m8687a("RV OnLayout");
        m7280C();
        C0626c.m8688a();
        this.f4555s = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        AbstractC1066i iVar = this.f4550n;
        if (iVar == null) {
            m7218d(i, i2);
        } else if (iVar.mo6946d()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f4550n.m7117g(i, i2);
            boolean z = false;
            if (mode == 1073741824) {
                z = false;
                if (mode2 == 1073741824) {
                    z = true;
                }
            }
            if (!z && this.f4549m != null) {
                if (this.f4492C.f4636d == 1) {
                    m7276G();
                }
                this.f4550n.m7121e(i, i2);
                this.f4492C.f4641i = true;
                m7275H();
                this.f4550n.m7119f(i, i2);
                if (this.f4550n.mo7110j()) {
                    this.f4550n.m7121e(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    this.f4492C.f4641i = true;
                    m7275H();
                    this.f4550n.m7119f(i, i2);
                }
            }
        } else if (this.f4553q) {
            this.f4550n.m7117g(i, i2);
        } else {
            if (this.f4558v) {
                m7197n();
                m7215e();
                m7281B();
                m7237a(true);
                if (this.f4492C.f4643k) {
                    this.f4492C.f4639g = true;
                } else {
                    this.f4542f.m6864e();
                    this.f4492C.f4639g = false;
                }
                this.f4558v = false;
                m7221c(false);
            } else if (this.f4492C.f4643k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            AbstractC1056a aVar = this.f4549m;
            if (aVar != null) {
                this.f4492C.f4637e = aVar.mo979c();
            } else {
                this.f4492C.f4637e = 0;
            }
            m7197n();
            this.f4550n.m7117g(i, i2);
            m7221c(false);
            this.f4492C.f4639g = false;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (m7185z()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.f4501R = (SavedState) parcelable;
        super.onRestoreInstanceState(this.f4501R.m8047a());
        if (this.f4550n != null && this.f4501R.f4567a != null) {
            this.f4550n.mo6986a(this.f4501R.f4567a);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable e;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f4501R;
        if (savedState2 != null) {
            e = savedState2.f4567a;
        } else {
            AbstractC1066i iVar = this.f4550n;
            e = iVar != null ? iVar.mo6942e() : null;
        }
        savedState.f4567a = e;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 || i2 != i4) {
            m7189v();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x036b, code lost:
        if (r19 != 0) goto L_0x036e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x041f, code lost:
        if (java.lang.Math.abs(r0) < r7.f4534at) goto L_0x0422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0437, code lost:
        if (java.lang.Math.abs(r0) < r7.f4534at) goto L_0x043a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x04e8, code lost:
        if (r11 != false) goto L_0x04f0;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02f2  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 1377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        AbstractC1082t d = m7217d(view);
        if (d != null) {
            if (d.m7005q()) {
                d.m7010l();
            } else if (!d.m7017e()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + d + m7268a());
            }
        }
        view.clearAnimation();
        m7203i(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!(this.f4550n.m7103n() || m7185z()) && view2 != null) {
            m7255a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f4550n.m7136a(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.f4503T.size();
        for (int i = 0; i < size; i++) {
            this.f4503T.get(i);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f4505V != 0 || this.f4557u) {
            this.f4556t = true;
        } else {
            super.requestLayout();
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        AbstractC1066i iVar = this.f4550n;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.f4557u) {
            boolean f = iVar.mo6940f();
            boolean g = this.f4550n.mo6937g();
            if (f || g) {
                if (!f) {
                    i = 0;
                }
                if (!g) {
                    i2 = 0;
                }
                m7263a(i, i2, (MotionEvent) null);
            }
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        boolean z = false;
        if (m7185z()) {
            int contentChangeTypes = (accessibilityEvent == null || Build.VERSION.SDK_INT < 19) ? 0 : accessibilityEvent.getContentChangeTypes();
            int i = contentChangeTypes;
            if (contentChangeTypes == 0) {
                i = 0;
            }
            this.f4515aa = i | this.f4515aa;
            z = true;
        }
        if (!z) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f4545i) {
            m7189v();
        }
        this.f4545i = z;
        super.setClipToPadding(z);
        if (this.f4555s) {
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        m7269N().m8390a(z);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m7269N().m8388b(i);
    }

    @Override // android.view.View, androidx.core.p037g.AbstractC0729h
    public void stopNestedScroll() {
        m7269N().m8387c();
    }
}
