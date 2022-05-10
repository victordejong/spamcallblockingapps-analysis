package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.customview.view.AbsSavedState;
import com.facebook.ads.AdError;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p012b.p042i.p050l.C0921f;
import p012b.p042i.p053o.C0948h;
import p012b.p042i.p054p.AbstractC0991j;
import p012b.p042i.p054p.AbstractC0992k;
import p012b.p042i.p054p.C0949a;
import p012b.p042i.p054p.C0990i;
import p012b.p042i.p054p.C0994m;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.C1014v;
import p012b.p042i.p054p.p055d0.C0969b;
import p012b.p042i.p054p.p055d0.C0970c;
import p012b.p122v.C1901a;
import p012b.p122v.C1902b;
import p012b.p122v.C1903c;
import p012b.p122v.p123d.C1904a;
import p012b.p122v.p123d.C1907b;
import p012b.p122v.p123d.C1910c;
import p012b.p122v.p123d.C1921d;
import p012b.p122v.p123d.C1936i;
import p012b.p122v.p123d.C1940l;
import p012b.p122v.p123d.C1943m;
import p012b.p122v.p123d.RunnableC1926e;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements AbstractC0991j, AbstractC0992k {

    /* renamed from: A0 */
    public static final boolean f2487A0;

    /* renamed from: B0 */
    public static final boolean f2488B0;

    /* renamed from: C0 */
    public static final boolean f2489C0;

    /* renamed from: D0 */
    public static final boolean f2490D0;

    /* renamed from: E0 */
    public static final boolean f2491E0;

    /* renamed from: F0 */
    public static final Class<?>[] f2492F0;

    /* renamed from: G0 */
    public static final Interpolator f2493G0;

    /* renamed from: y0 */
    public static final int[] f2494y0 = {16843830};

    /* renamed from: z0 */
    public static final boolean f2495z0;

    /* renamed from: A */
    public boolean f2496A;

    /* renamed from: B */
    public final AccessibilityManager f2497B;

    /* renamed from: C */
    public List<AbstractC0516p> f2498C;

    /* renamed from: D */
    public boolean f2499D;

    /* renamed from: E */
    public boolean f2500E;

    /* renamed from: F */
    public int f2501F;

    /* renamed from: G */
    public int f2502G;

    /* renamed from: H */
    public C0504k f2503H;

    /* renamed from: I */
    public EdgeEffect f2504I;

    /* renamed from: J */
    public EdgeEffect f2505J;

    /* renamed from: K */
    public EdgeEffect f2506K;

    /* renamed from: L */
    public EdgeEffect f2507L;

    /* renamed from: M */
    public AbstractC0505l f2508M;

    /* renamed from: N */
    public int f2509N;

    /* renamed from: O */
    public int f2510O;

    /* renamed from: P */
    public VelocityTracker f2511P;

    /* renamed from: Q */
    public int f2512Q;

    /* renamed from: R */
    public int f2513R;

    /* renamed from: S */
    public int f2514S;

    /* renamed from: T */
    public int f2515T;

    /* renamed from: U */
    public int f2516U;

    /* renamed from: V */
    public AbstractC0517q f2517V;

    /* renamed from: W */
    public final int f2518W;

    /* renamed from: a */
    public final C0524w f2519a;

    /* renamed from: a0 */
    public final int f2520a0;

    /* renamed from: b */
    public final C0522u f2521b;

    /* renamed from: b0 */
    public float f2522b0;

    /* renamed from: c */
    public SavedState f2523c;

    /* renamed from: c0 */
    public float f2524c0;

    /* renamed from: d */
    public C1904a f2525d;

    /* renamed from: d0 */
    public boolean f2526d0;

    /* renamed from: e */
    public C1907b f2527e;

    /* renamed from: e0 */
    public final RunnableC0493a0 f2528e0;

    /* renamed from: f */
    public final C1943m f2529f;

    /* renamed from: f0 */
    public RunnableC1926e f2530f0;

    /* renamed from: g */
    public boolean f2531g;

    /* renamed from: g0 */
    public RunnableC1926e.C1928b f2532g0;

    /* renamed from: h */
    public final Runnable f2533h;

    /* renamed from: h0 */
    public final C0526y f2534h0;

    /* renamed from: i */
    public final Rect f2535i;

    /* renamed from: i0 */
    public AbstractC0519s f2536i0;

    /* renamed from: j */
    public final Rect f2537j;

    /* renamed from: j0 */
    public List<AbstractC0519s> f2538j0;

    /* renamed from: k */
    public final RectF f2539k;

    /* renamed from: k0 */
    public boolean f2540k0;

    /* renamed from: l */
    public AbstractC0500g f2541l;

    /* renamed from: l0 */
    public boolean f2542l0;

    /* renamed from: m */
    public AbstractC0511o f2543m;

    /* renamed from: m0 */
    public AbstractC0505l.AbstractC0507b f2544m0;

    /* renamed from: n */
    public AbstractC0523v f2545n;

    /* renamed from: n0 */
    public boolean f2546n0;

    /* renamed from: o */
    public final ArrayList<AbstractC0510n> f2547o;

    /* renamed from: o0 */
    public C1936i f2548o0;

    /* renamed from: p */
    public final ArrayList<AbstractC0518r> f2549p;

    /* renamed from: p0 */
    public AbstractC0503j f2550p0;

    /* renamed from: q */
    public AbstractC0518r f2551q;

    /* renamed from: q0 */
    public final int[] f2552q0;

    /* renamed from: r */
    public boolean f2553r;

    /* renamed from: r0 */
    public C0994m f2554r0;

    /* renamed from: s */
    public boolean f2555s;

    /* renamed from: s0 */
    public final int[] f2556s0;

    /* renamed from: t */
    public boolean f2557t;

    /* renamed from: t0 */
    public final int[] f2558t0;

    /* renamed from: u */
    public boolean f2559u;

    /* renamed from: u0 */
    public final int[] f2560u0;

    /* renamed from: v */
    public int f2561v;

    /* renamed from: v0 */
    public final List<AbstractC0495b0> f2562v0;

    /* renamed from: w */
    public boolean f2563w;

    /* renamed from: w0 */
    public Runnable f2564w0;

    /* renamed from: x */
    public boolean f2565x;

    /* renamed from: x0 */
    public final C1943m.AbstractC1945b f2566x0;

    /* renamed from: y */
    public boolean f2567y;

    /* renamed from: z */
    public int f2568z;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public AbstractC0495b0 f2569a;

        /* renamed from: b */
        public final Rect f2570b = new Rect();

        /* renamed from: c */
        public boolean f2571c = true;

        /* renamed from: d */
        public boolean f2572d = false;

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

        /* renamed from: a */
        public int m37407a() {
            return this.f2569a.getLayoutPosition();
        }

        /* renamed from: b */
        public boolean m37406b() {
            return this.f2569a.isUpdated();
        }

        /* renamed from: c */
        public boolean m37405c() {
            return this.f2569a.isRemoved();
        }

        /* renamed from: d */
        public boolean m37404d() {
            return this.f2569a.isInvalid();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0491a();

        /* renamed from: c */
        public Parcelable f2573c;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState$a.class */
        public static final class C0491a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2573c = parcel.readParcelable(classLoader == null ? AbstractC0511o.class.getClassLoader() : classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        public void m37403a(SavedState savedState) {
            this.f2573c = savedState.f2573c;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f2573c, 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
    public class RunnableC0492a implements Runnable {
        public RunnableC0492a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f2559u && !recyclerView.isLayoutRequested()) {
                RecyclerView recyclerView2 = RecyclerView.this;
                if (!recyclerView2.f2553r) {
                    recyclerView2.requestLayout();
                } else if (recyclerView2.f2565x) {
                    recyclerView2.f2563w = true;
                } else {
                    recyclerView2.m37460c();
                }
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a0 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a0.class */
    public class RunnableC0493a0 implements Runnable {

        /* renamed from: a */
        public int f2575a;

        /* renamed from: b */
        public int f2576b;

        /* renamed from: c */
        public OverScroller f2577c;

        /* renamed from: d */
        public Interpolator f2578d = RecyclerView.f2493G0;

        /* renamed from: e */
        public boolean f2579e = false;

        /* renamed from: f */
        public boolean f2580f = false;

        public RunnableC0493a0() {
            this.f2577c = new OverScroller(RecyclerView.this.getContext(), RecyclerView.f2493G0);
        }

        /* renamed from: a */
        public final float m37401a(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        /* renamed from: a */
        public final int m37399a(int i, int i2, int i3, int i4) {
            int abs;
            int abs2;
            int i5;
            boolean z = Math.abs(i) > Math.abs(i2);
            int sqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
            int sqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            float f = sqrt2;
            float f2 = width;
            float f3 = width / 2;
            float a = m37401a(Math.min(1.0f, (f * 1.0f) / f2));
            if (sqrt > 0) {
                i5 = Math.round(Math.abs((f3 + (a * f3)) / sqrt) * 1000.0f) * 4;
            } else {
                i5 = (int) ((((z ? abs : abs2) / f2) + 1.0f) * 300.0f);
            }
            return Math.min(i5, (int) AdError.SERVER_ERROR_CODE);
        }

        /* renamed from: a */
        public final void m37402a() {
            RecyclerView.this.removeCallbacks(this);
            C1002u.m35234a(RecyclerView.this, this);
        }

        /* renamed from: a */
        public void m37400a(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f2576b = 0;
            this.f2575a = 0;
            Interpolator interpolator = this.f2578d;
            Interpolator interpolator2 = RecyclerView.f2493G0;
            if (interpolator != interpolator2) {
                this.f2578d = interpolator2;
                this.f2577c = new OverScroller(RecyclerView.this.getContext(), RecyclerView.f2493G0);
            }
            this.f2577c.fling(0, 0, i, i2, Integer.MIN_VALUE, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, Integer.MIN_VALUE, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
            m37397b();
        }

        /* renamed from: a */
        public void m37398a(int i, int i2, int i3, Interpolator interpolator) {
            int i4 = i3;
            if (i3 == Integer.MIN_VALUE) {
                i4 = m37399a(i, i2, 0, 0);
            }
            Interpolator interpolator2 = interpolator;
            if (interpolator == null) {
                interpolator2 = RecyclerView.f2493G0;
            }
            if (this.f2578d != interpolator2) {
                this.f2578d = interpolator2;
                this.f2577c = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f2576b = 0;
            this.f2575a = 0;
            RecyclerView.this.setScrollState(2);
            this.f2577c.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f2577c.computeScrollOffset();
            }
            m37397b();
        }

        /* renamed from: b */
        public void m37397b() {
            if (this.f2579e) {
                this.f2580f = true;
            } else {
                m37402a();
            }
        }

        /* renamed from: c */
        public void m37396c() {
            RecyclerView.this.removeCallbacks(this);
            this.f2577c.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            int i3;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f2543m == null) {
                m37396c();
                return;
            }
            this.f2580f = false;
            this.f2579e = true;
            recyclerView.m37460c();
            OverScroller overScroller = this.f2577c;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i4 = currX - this.f2575a;
                int i5 = currY - this.f2576b;
                this.f2575a = currX;
                this.f2576b = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.f2560u0;
                iArr[0] = 0;
                iArr[1] = 0;
                int i6 = i4;
                int i7 = i5;
                if (recyclerView2.m37502a(i4, i5, iArr, (int[]) null, 1)) {
                    int[] iArr2 = RecyclerView.this.f2560u0;
                    i6 = i4 - iArr2[0];
                    i7 = i5 - iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.m37469b(i6, i7);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.f2541l != null) {
                    int[] iArr3 = recyclerView3.f2560u0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.m37503a(i6, i7, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.f2560u0;
                    int i8 = iArr4[0];
                    int i9 = iArr4[1];
                    int i10 = i6 - i8;
                    int i11 = i7 - i9;
                    AbstractC0525x xVar = recyclerView4.f2543m.f2601g;
                    i6 = i10;
                    i = i9;
                    i3 = i8;
                    i2 = i11;
                    if (xVar != null) {
                        i6 = i10;
                        i = i9;
                        i3 = i8;
                        i2 = i11;
                        if (!xVar.m37204b()) {
                            i6 = i10;
                            i = i9;
                            i3 = i8;
                            i2 = i11;
                            if (xVar.m37203c()) {
                                int a = RecyclerView.this.f2534h0.m37201a();
                                if (a == 0) {
                                    xVar.m37202d();
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else if (xVar.m37208a() >= a) {
                                    xVar.m37207a(a - 1);
                                    xVar.m37206a(i8, i9);
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else {
                                    xVar.m37206a(i8, i9);
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                }
                            }
                        }
                    }
                } else {
                    i = 0;
                    i3 = 0;
                    i2 = i7;
                }
                if (!RecyclerView.this.f2547o.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.f2560u0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.m37510a(i3, i, i6, i2, null, 1, iArr5);
                int[] iArr6 = RecyclerView.this.f2560u0;
                int i12 = i6 - iArr6[0];
                int i13 = i2 - iArr6[1];
                if (!(i3 == 0 && i == 0)) {
                    RecyclerView.this.m37446e(i3, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
                AbstractC0525x xVar2 = RecyclerView.this.f2543m.f2601g;
                if ((xVar2 != null && xVar2.m37204b()) || !z) {
                    m37397b();
                    RecyclerView recyclerView6 = RecyclerView.this;
                    RunnableC1926e eVar = recyclerView6.f2530f0;
                    if (eVar != null) {
                        eVar.m31629a(recyclerView6, i3, i);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i14 = i12 < 0 ? -currVelocity : i12 > 0 ? currVelocity : 0;
                        if (i13 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i13 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.m37511a(i14, currVelocity);
                    }
                    if (RecyclerView.f2489C0) {
                        RecyclerView.this.f2532g0.m31622a();
                    }
                }
            }
            AbstractC0525x xVar3 = RecyclerView.this.f2543m.f2601g;
            if (xVar3 != null && xVar3.m37204b()) {
                xVar3.m37206a(0, 0);
            }
            this.f2579e = false;
            if (this.f2580f) {
                m37402a();
                return;
            }
            RecyclerView.this.setScrollState(0);
            RecyclerView.this.m37438g(1);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
    public class RunnableC0494b implements Runnable {
        public RunnableC0494b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0505l lVar = RecyclerView.this.f2508M;
            if (lVar != null) {
                lVar.mo31663i();
            }
            RecyclerView.this.f2546n0 = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b0 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b0.class */
    public static abstract class AbstractC0495b0 {
        public static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        public static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        public static final int FLAG_BOUND = 1;
        public static final int FLAG_IGNORE = 128;
        public static final int FLAG_INVALID = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_NOT_RECYCLABLE = 16;
        public static final int FLAG_REMOVED = 8;
        public static final int FLAG_RETURNED_FROM_SCRAP = 32;
        public static final int FLAG_TMP_DETACHED = 256;
        public static final int FLAG_UPDATE = 2;
        public static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        public static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        public int mFlags;
        public WeakReference<RecyclerView> mNestedRecyclerView;
        public RecyclerView mOwnerRecyclerView;
        public int mPosition = -1;
        public int mOldPosition = -1;
        public long mItemId = -1;
        public int mItemViewType = -1;
        public int mPreLayoutPosition = -1;
        public AbstractC0495b0 mShadowedHolder = null;
        public AbstractC0495b0 mShadowingHolder = null;
        public List<Object> mPayloads = null;
        public List<Object> mUnmodifiedPayloads = null;
        public int mIsRecyclableCount = 0;
        public C0522u mScrapContainer = null;
        public boolean mInChangeScrap = false;
        public int mWasImportantForAccessibilityBeforeHidden = 0;
        public int mPendingAccessibilityState = -1;

        public AbstractC0495b0(View view) {
            if (view != null) {
                this.itemView = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
        }

        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((1024 & this.mFlags) == 0) {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        public void addFlags(int i) {
            this.mFlags = i | this.mFlags;
        }

        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        public void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        public boolean doesTransientStatePreventRecycling() {
            return (this.mFlags & 16) == 0 && C1002u.m35199w(this.itemView);
        }

        public void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
            addFlags(8);
            offsetPosition(i2, z);
            this.mPosition = i;
        }

        public final int getAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.m37455c(this);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i = this.mPreLayoutPosition;
            int i2 = i;
            if (i == -1) {
                i2 = this.mPosition;
            }
            return i2;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i = this.mPreLayoutPosition;
            int i2 = i;
            if (i == -1) {
                i2 = this.mPosition;
            }
            return i2;
        }

        public List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        public boolean hasAnyOfTheFlags(int i) {
            return (i & this.mFlags) != 0;
        }

        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & FLAG_ADAPTER_POSITION_UNKNOWN) != 0 || isInvalid();
        }

        public boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        public boolean isBound() {
            boolean z = true;
            if ((this.mFlags & 1) == 0) {
                z = false;
            }
            return z;
        }

        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.mFlags & 16) == 0 && !C1002u.m35199w(this.itemView);
        }

        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        public boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        public void offsetPosition(int i, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i;
            }
            this.mPosition += i;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).f2571c = true;
            }
        }

        public void onEnteredHiddenState(RecyclerView recyclerView) {
            int i = this.mPendingAccessibilityState;
            if (i != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                this.mWasImportantForAccessibilityBeforeHidden = C1002u.m35210l(this.itemView);
            }
            recyclerView.m37488a(this, 4);
        }

        public void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.m37488a(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        public void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.m37444e(this);
        }

        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        public void setFlags(int i, int i2) {
            this.mFlags = (i & i2) | (this.mFlags & (i2 ^ (-1)));
        }

        public final void setIsRecyclable(boolean z) {
            int i = this.mIsRecyclableCount;
            int i2 = z ? i - 1 : i + 1;
            this.mIsRecyclableCount = i2;
            if (i2 < 0) {
                this.mIsRecyclableCount = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && i2 == 1) {
                this.mFlags |= 16;
            } else if (z && this.mIsRecyclableCount == 0) {
                this.mFlags &= -17;
            }
        }

        public void setScrapContainer(C0522u uVar, boolean z) {
            this.mScrapContainer = uVar;
            this.mInChangeScrap = z;
        }

        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            String simpleName = getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName();
            StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public void unScrap() {
            this.mScrapContainer.m37218e(this);
        }

        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c.class */
    public static final class animationInterpolatorC0496c implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$d.class */
    public class C0497d implements C1943m.AbstractC1945b {
        public C0497d() {
        }

        @Override // p012b.p122v.p123d.C1943m.AbstractC1945b
        /* renamed from: a */
        public void mo31514a(AbstractC0495b0 b0Var) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f2543m.m37344a(b0Var.itemView, recyclerView.f2521b);
        }

        @Override // p012b.p122v.p123d.C1943m.AbstractC1945b
        /* renamed from: a */
        public void mo31513a(AbstractC0495b0 b0Var, AbstractC0505l.C0508c cVar, AbstractC0505l.C0508c cVar2) {
            RecyclerView.this.m37485a(b0Var, cVar, cVar2);
        }

        @Override // p012b.p122v.p123d.C1943m.AbstractC1945b
        /* renamed from: b */
        public void mo31512b(AbstractC0495b0 b0Var, AbstractC0505l.C0508c cVar, AbstractC0505l.C0508c cVar2) {
            RecyclerView.this.f2521b.m37218e(b0Var);
            RecyclerView.this.m37465b(b0Var, cVar, cVar2);
        }

        @Override // p012b.p122v.p123d.C1943m.AbstractC1945b
        /* renamed from: c */
        public void mo31511c(AbstractC0495b0 b0Var, AbstractC0505l.C0508c cVar, AbstractC0505l.C0508c cVar2) {
            b0Var.setIsRecyclable(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f2499D) {
                if (recyclerView.f2508M.mo31568a(b0Var, b0Var, cVar, cVar2)) {
                    RecyclerView.this.m37528B();
                }
            } else if (recyclerView.f2508M.mo31563c(b0Var, cVar, cVar2)) {
                RecyclerView.this.m37528B();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$e.class */
    public class C0498e implements C1907b.AbstractC1909b {
        public C0498e() {
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: a */
        public int mo31684a() {
            return RecyclerView.this.getChildCount();
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: a */
        public View mo31683a(int i) {
            return RecyclerView.this.getChildAt(i);
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: a */
        public void mo31682a(View view) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            if (l != null) {
                l.onEnteredHiddenState(RecyclerView.this);
            }
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: a */
        public void mo31681a(View view, int i) {
            RecyclerView.this.addView(view, i);
            RecyclerView.this.m37494a(view);
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: a */
        public void mo31680a(View view, int i, ViewGroup.LayoutParams layoutParams) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            if (l != null) {
                if (l.isTmpDetached() || l.shouldIgnore()) {
                    l.clearTmpDetachFlag();
                } else {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + l + RecyclerView.this.m37420n());
                }
            }
            RecyclerView.this.attachViewToParent(view, i, layoutParams);
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: b */
        public int mo31677b(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: b */
        public void mo31679b() {
            int a = mo31684a();
            for (int i = 0; i < a; i++) {
                View a2 = mo31683a(i);
                RecyclerView.this.m37467b(a2);
                a2.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: b */
        public void mo31678b(int i) {
            AbstractC0495b0 l;
            View a = mo31683a(i);
            if (!(a == null || (l = RecyclerView.m37422l(a)) == null)) {
                if (!l.isTmpDetached() || l.shouldIgnore()) {
                    l.addFlags(256);
                } else {
                    throw new IllegalArgumentException("called detach on an already detached child " + l + RecyclerView.this.m37420n());
                }
            }
            RecyclerView.this.detachViewFromParent(i);
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: c */
        public AbstractC0495b0 mo31675c(View view) {
            return RecyclerView.m37422l(view);
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: c */
        public void mo31676c(int i) {
            View childAt = RecyclerView.this.getChildAt(i);
            if (childAt != null) {
                RecyclerView.this.m37467b(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i);
        }

        @Override // p012b.p122v.p123d.C1907b.AbstractC1909b
        /* renamed from: d */
        public void mo31674d(View view) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            if (l != null) {
                l.onLeftHiddenState(RecyclerView.this);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
    public class C0499f implements C1904a.AbstractC1905a {
        public C0499f() {
        }

        @Override // p012b.p122v.p123d.C1904a.AbstractC1905a
        /* renamed from: a */
        public AbstractC0495b0 mo31721a(int i) {
            AbstractC0495b0 a = RecyclerView.this.m37501a(i, true);
            if (a != null && !RecyclerView.this.f2527e.m31699d(a.itemView)) {
                return a;
            }
            return null;
        }

        @Override // p012b.p122v.p123d.C1904a.AbstractC1905a
        /* renamed from: a */
        public void mo31720a(int i, int i2) {
            RecyclerView.this.m37434h(i, i2);
            RecyclerView.this.f2540k0 = true;
        }

        @Override // p012b.p122v.p123d.C1904a.AbstractC1905a
        /* renamed from: a */
        public void mo31719a(int i, int i2, Object obj) {
            RecyclerView.this.m37505a(i, i2, obj);
            RecyclerView.this.f2542l0 = true;
        }

        @Override // p012b.p122v.p123d.C1904a.AbstractC1905a
        /* renamed from: a */
        public void mo31718a(C1904a.C1906b bVar) {
            m37395c(bVar);
        }

        @Override // p012b.p122v.p123d.C1904a.AbstractC1905a
        /* renamed from: b */
        public void mo31717b(int i, int i2) {
            RecyclerView.this.m37504a(i, i2, false);
            RecyclerView.this.f2540k0 = true;
        }

        @Override // p012b.p122v.p123d.C1904a.AbstractC1905a
        /* renamed from: b */
        public void mo31716b(C1904a.C1906b bVar) {
            m37395c(bVar);
        }

        @Override // p012b.p122v.p123d.C1904a.AbstractC1905a
        /* renamed from: c */
        public void mo31715c(int i, int i2) {
            RecyclerView.this.m37437g(i, i2);
            RecyclerView.this.f2540k0 = true;
        }

        /* renamed from: c */
        public void m37395c(C1904a.C1906b bVar) {
            int i = bVar.f7508a;
            if (i == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.f2543m.mo37142b(recyclerView, bVar.f7509b, bVar.f7511d);
            } else if (i == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.f2543m.mo37133c(recyclerView2, bVar.f7509b, bVar.f7511d);
            } else if (i == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.f2543m.mo37157a(recyclerView3, bVar.f7509b, bVar.f7511d, bVar.f7510c);
            } else if (i == 8) {
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.f2543m.mo37158a(recyclerView4, bVar.f7509b, bVar.f7511d, 1);
            }
        }

        @Override // p012b.p122v.p123d.C1904a.AbstractC1905a
        /* renamed from: d */
        public void mo31714d(int i, int i2) {
            RecyclerView.this.m37504a(i, i2, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f2540k0 = true;
            recyclerView.f2534h0.f2638d += i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
    public static abstract class AbstractC0500g<VH extends AbstractC0495b0> {
        public final C0501h mObservable = new C0501h();
        public boolean mHasStableIds = false;

        public final void bindViewHolder(VH vh, int i) {
            vh.mPosition = i;
            if (hasStableIds()) {
                vh.mItemId = getItemId(i);
            }
            vh.setFlags(1, 519);
            C0921f.m35495a("RV OnBindView");
            onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
            vh.clearPayload();
            ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                ((LayoutParams) layoutParams).f2571c = true;
            }
            C0921f.m35496a();
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i) {
            try {
                C0921f.m35495a("RV CreateView");
                VH onCreateViewHolder = onCreateViewHolder(viewGroup, i);
                if (onCreateViewHolder.itemView.getParent() == null) {
                    onCreateViewHolder.mItemViewType = i;
                    C0921f.m35496a();
                    return onCreateViewHolder;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } catch (Throwable th) {
                C0921f.m35496a();
                throw th;
            }
        }

        public abstract int getItemCount();

        public long getItemId(int i) {
            return -1L;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public final boolean hasObservers() {
            return this.mObservable.m37394a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.m37391b();
        }

        public final void notifyItemChanged(int i) {
            this.mObservable.m37390b(i, 1);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.mObservable.m37392a(i, 1, obj);
        }

        public final void notifyItemInserted(int i) {
            this.mObservable.m37389c(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.mObservable.m37393a(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.mObservable.m37390b(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.mObservable.m37392a(i, i2, obj);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.mObservable.m37389c(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.mObservable.m37388d(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.mObservable.m37388d(i, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(VH vh, int i);

        public void onBindViewHolder(VH vh, int i, List<Object> list) {
            onBindViewHolder(vh, i);
        }

        public abstract VH onCreateViewHolder(ViewGroup viewGroup, int i);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public void onViewRecycled(VH vh) {
        }

        public void registerAdapterDataObserver(AbstractC0502i iVar) {
            this.mObservable.registerObserver(iVar);
        }

        public void setHasStableIds(boolean z) {
            if (!hasObservers()) {
                this.mHasStableIds = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void unregisterAdapterDataObserver(AbstractC0502i iVar) {
            this.mObservable.unregisterObserver(iVar);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$h */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
    public static class C0501h extends Observable<AbstractC0502i> {
        /* renamed from: a */
        public void m37393a(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0502i) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i, i2, 1);
            }
        }

        /* renamed from: a */
        public void m37392a(int i, int i2, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0502i) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i, i2, obj);
            }
        }

        /* renamed from: a */
        public boolean m37394a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        /* renamed from: b */
        public void m37391b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0502i) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        /* renamed from: b */
        public void m37390b(int i, int i2) {
            m37392a(i, i2, null);
        }

        /* renamed from: c */
        public void m37389c(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0502i) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i, i2);
            }
        }

        /* renamed from: d */
        public void m37388d(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0502i) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i, i2);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$i */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i.class */
    public static abstract class AbstractC0502i {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i, int i2) {
        }

        public void onItemRangeChanged(int i, int i2, Object obj) {
            onItemRangeChanged(i, i2);
        }

        public void onItemRangeInserted(int i, int i2) {
        }

        public void onItemRangeMoved(int i, int i2, int i3) {
        }

        public void onItemRangeRemoved(int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$j */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j.class */
    public interface AbstractC0503j {
        /* renamed from: a */
        int m37387a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
    public static class C0504k {
        /* renamed from: a */
        public EdgeEffect m37386a(RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
    public static abstract class AbstractC0505l {

        /* renamed from: a */
        public AbstractC0507b f2586a = null;

        /* renamed from: b */
        public ArrayList<AbstractC0506a> f2587b = new ArrayList<>();

        /* renamed from: c */
        public long f2588c = 120;

        /* renamed from: d */
        public long f2589d = 120;

        /* renamed from: e */
        public long f2590e = 250;

        /* renamed from: f */
        public long f2591f = 250;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$l$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$a.class */
        public interface AbstractC0506a {
            /* renamed from: a */
            void m37373a();
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$l$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$b.class */
        public interface AbstractC0507b {
            /* renamed from: a */
            void mo37370a(AbstractC0495b0 b0Var);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$l$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$c.class */
        public static class C0508c {

            /* renamed from: a */
            public int f2592a;

            /* renamed from: b */
            public int f2593b;

            /* renamed from: a */
            public C0508c m37372a(AbstractC0495b0 b0Var) {
                m37371a(b0Var, 0);
                return this;
            }

            /* renamed from: a */
            public C0508c m37371a(AbstractC0495b0 b0Var, int i) {
                View view = b0Var.itemView;
                this.f2592a = view.getLeft();
                this.f2593b = view.getTop();
                view.getRight();
                view.getBottom();
                return this;
            }
        }

        /* renamed from: e */
        public static int m37376e(AbstractC0495b0 b0Var) {
            int i = b0Var.mFlags & 14;
            if (b0Var.isInvalid()) {
                return 4;
            }
            int i2 = i;
            if ((i & 4) == 0) {
                int oldPosition = b0Var.getOldPosition();
                int adapterPosition = b0Var.getAdapterPosition();
                i2 = i;
                if (oldPosition != -1) {
                    i2 = i;
                    if (adapterPosition != -1) {
                        i2 = i;
                        if (oldPosition != adapterPosition) {
                            i2 = i | AbstractC0495b0.FLAG_MOVED;
                        }
                    }
                }
            }
            return i2;
        }

        /* renamed from: a */
        public C0508c m37383a(C0526y yVar, AbstractC0495b0 b0Var) {
            C0508c h = m37374h();
            h.m37372a(b0Var);
            return h;
        }

        /* renamed from: a */
        public C0508c m37382a(C0526y yVar, AbstractC0495b0 b0Var, int i, List<Object> list) {
            C0508c h = m37374h();
            h.m37372a(b0Var);
            return h;
        }

        /* renamed from: a */
        public final void m37385a() {
            int size = this.f2587b.size();
            for (int i = 0; i < size; i++) {
                this.f2587b.get(i).m37373a();
            }
            this.f2587b.clear();
        }

        /* renamed from: a */
        public void m37384a(AbstractC0507b bVar) {
            this.f2586a = bVar;
        }

        /* renamed from: a */
        public abstract boolean mo31571a(AbstractC0495b0 b0Var);

        /* renamed from: a */
        public abstract boolean mo31568a(AbstractC0495b0 b0Var, AbstractC0495b0 b0Var2, C0508c cVar, C0508c cVar2);

        /* renamed from: a */
        public abstract boolean mo31567a(AbstractC0495b0 b0Var, C0508c cVar, C0508c cVar2);

        /* renamed from: a */
        public boolean mo31673a(AbstractC0495b0 b0Var, List<Object> list) {
            return mo31571a(b0Var);
        }

        /* renamed from: b */
        public abstract void mo31668b();

        /* renamed from: b */
        public final void m37381b(AbstractC0495b0 b0Var) {
            m37378d(b0Var);
            AbstractC0507b bVar = this.f2586a;
            if (bVar != null) {
                bVar.mo37370a(b0Var);
            }
        }

        /* renamed from: b */
        public abstract boolean mo31565b(AbstractC0495b0 b0Var, C0508c cVar, C0508c cVar2);

        /* renamed from: c */
        public long m37380c() {
            return this.f2588c;
        }

        /* renamed from: c */
        public abstract void mo31665c(AbstractC0495b0 b0Var);

        /* renamed from: c */
        public abstract boolean mo31563c(AbstractC0495b0 b0Var, C0508c cVar, C0508c cVar2);

        /* renamed from: d */
        public long m37379d() {
            return this.f2591f;
        }

        /* renamed from: d */
        public void m37378d(AbstractC0495b0 b0Var) {
        }

        /* renamed from: e */
        public long m37377e() {
            return this.f2590e;
        }

        /* renamed from: f */
        public long m37375f() {
            return this.f2589d;
        }

        /* renamed from: g */
        public abstract boolean mo31664g();

        /* renamed from: h */
        public C0508c m37374h() {
            return new C0508c();
        }

        /* renamed from: i */
        public abstract void mo31663i();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$m */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
    public class C0509m implements AbstractC0505l.AbstractC0507b {
        public C0509m() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0505l.AbstractC0507b
        /* renamed from: a */
        public void mo37370a(AbstractC0495b0 b0Var) {
            b0Var.setIsRecyclable(true);
            if (b0Var.mShadowedHolder != null && b0Var.mShadowingHolder == null) {
                b0Var.mShadowedHolder = null;
            }
            b0Var.mShadowingHolder = null;
            if (!b0Var.shouldBeKeptAsChild() && !RecyclerView.this.m37427j(b0Var.itemView) && b0Var.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(b0Var.itemView, false);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
    public static abstract class AbstractC0510n {
        @Deprecated
        /* renamed from: a */
        public void m37369a(Canvas canvas, RecyclerView recyclerView) {
        }

        /* renamed from: a */
        public void m37368a(Canvas canvas, RecyclerView recyclerView, C0526y yVar) {
            m37369a(canvas, recyclerView);
        }

        @Deprecated
        /* renamed from: a */
        public void m37367a(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        /* renamed from: a */
        public void m37366a(Rect rect, View view, RecyclerView recyclerView, C0526y yVar) {
            m37367a(rect, ((LayoutParams) view.getLayoutParams()).m37407a(), recyclerView);
        }

        @Deprecated
        /* renamed from: b */
        public void m37365b(Canvas canvas, RecyclerView recyclerView) {
        }

        /* renamed from: b */
        public void mo31643b(Canvas canvas, RecyclerView recyclerView, C0526y yVar) {
            m37365b(canvas, recyclerView);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
    public static abstract class AbstractC0511o {

        /* renamed from: a */
        public C1907b f2595a;

        /* renamed from: b */
        public RecyclerView f2596b;

        /* renamed from: g */
        public AbstractC0525x f2601g;

        /* renamed from: m */
        public int f2607m;

        /* renamed from: n */
        public boolean f2608n;

        /* renamed from: o */
        public int f2609o;

        /* renamed from: p */
        public int f2610p;

        /* renamed from: q */
        public int f2611q;

        /* renamed from: r */
        public int f2612r;

        /* renamed from: c */
        public final C1940l.AbstractC1942b f2597c = new C0512a();

        /* renamed from: d */
        public final C1940l.AbstractC1942b f2598d = new C0513b();

        /* renamed from: e */
        public C1940l f2599e = new C1940l(this.f2597c);

        /* renamed from: f */
        public C1940l f2600f = new C1940l(this.f2598d);

        /* renamed from: h */
        public boolean f2602h = false;

        /* renamed from: i */
        public boolean f2603i = false;

        /* renamed from: j */
        public boolean f2604j = false;

        /* renamed from: k */
        public boolean f2605k = true;

        /* renamed from: l */
        public boolean f2606l = true;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$a.class */
        public class C0512a implements C1940l.AbstractC1942b {
            public C0512a() {
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: a */
            public int mo31539a() {
                return AbstractC0511o.this.m37278n();
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: a */
            public int mo31537a(View view) {
                return AbstractC0511o.this.m37295f(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: a */
            public View mo31538a(int i) {
                return AbstractC0511o.this.m37313c(i);
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: b */
            public int mo31536b() {
                return AbstractC0511o.this.m37273q() - AbstractC0511o.this.m37276o();
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: b */
            public int mo31535b(View view) {
                return AbstractC0511o.this.m37287i(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$b.class */
        public class C0513b implements C1940l.AbstractC1942b {
            public C0513b() {
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: a */
            public int mo31539a() {
                return AbstractC0511o.this.m37274p();
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: a */
            public int mo31537a(View view) {
                return AbstractC0511o.this.m37285j(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: a */
            public View mo31538a(int i) {
                return AbstractC0511o.this.m37313c(i);
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: b */
            public int mo31536b() {
                return AbstractC0511o.this.m37290h() - AbstractC0511o.this.m37280m();
            }

            @Override // p012b.p122v.p123d.C1940l.AbstractC1942b
            /* renamed from: b */
            public int mo31535b(View view) {
                return AbstractC0511o.this.m37298e(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$c.class */
        public interface AbstractC0514c {
            /* renamed from: a */
            void mo31620a(int i, int i2);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$d */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$d.class */
        public static class C0515d {

            /* renamed from: a */
            public int f2615a;

            /* renamed from: b */
            public int f2616b;

            /* renamed from: c */
            public boolean f2617c;

            /* renamed from: d */
            public boolean f2618d;
        }

        /* renamed from: a */
        public static int m37360a(int i, int i2, int i3) {
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

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
            if (r5 != 1073741824) goto L_0x0066;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m37359a(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                r0 = 0
                r1 = r4
                r2 = r6
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r6 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0030
                r0 = r7
                if (r0 < 0) goto L_0x0014
                goto L_0x0034
            L_0x0014:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x0066
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L_0x0041
                r0 = r5
                if (r0 == 0) goto L_0x0066
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 == r1) goto L_0x0041
                goto L_0x0066
            L_0x0030:
                r0 = r7
                if (r0 < 0) goto L_0x003a
            L_0x0034:
                r0 = 1073741824(0x40000000, float:2.0)
                r4 = r0
                goto L_0x006a
            L_0x003a:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x0046
                r0 = r5
                r4 = r0
            L_0x0041:
                r0 = r6
                r7 = r0
                goto L_0x006a
            L_0x0046:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L_0x0066
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L_0x0060
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 != r1) goto L_0x005b
                goto L_0x0060
            L_0x005b:
                r0 = 0
                r4 = r0
                goto L_0x0041
            L_0x0060:
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r0
                goto L_0x0041
            L_0x0066:
                r0 = 0
                r4 = r0
                r0 = 0
                r7 = r0
            L_0x006a:
                r0 = r7
                r1 = r4
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0511o.m37359a(int, int, int, int, boolean):int");
        }

        /* renamed from: a */
        public static C0515d m37354a(Context context, AttributeSet attributeSet, int i, int i2) {
            C0515d dVar = new C0515d();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1903c.RecyclerView, i, i2);
            dVar.f2615a = obtainStyledAttributes.getInt(C1903c.RecyclerView_android_orientation, 1);
            dVar.f2616b = obtainStyledAttributes.getInt(C1903c.RecyclerView_spanCount, 1);
            dVar.f2617c = obtainStyledAttributes.getBoolean(C1903c.RecyclerView_reverseLayout, false);
            dVar.f2618d = obtainStyledAttributes.getBoolean(C1903c.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return dVar;
        }

        /* renamed from: b */
        public static boolean m37320b(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            boolean z = false;
            boolean z2 = false;
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                if (size >= i) {
                    z = true;
                }
                return z;
            } else if (mode == 0) {
                return true;
            } else {
                if (mode != 1073741824) {
                    return false;
                }
                if (size == i) {
                    z2 = true;
                }
                return z2;
            }
        }

        /* renamed from: A */
        public boolean mo37364A() {
            return false;
        }

        /* renamed from: B */
        public void m37363B() {
            AbstractC0525x xVar = this.f2601g;
            if (xVar != null) {
                xVar.m37202d();
            }
        }

        /* renamed from: C */
        public boolean mo37193C() {
            return false;
        }

        /* renamed from: a */
        public int mo37178a(int i, C0522u uVar, C0526y yVar) {
            return 0;
        }

        /* renamed from: a */
        public int mo37165a(C0522u uVar, C0526y yVar) {
            RecyclerView recyclerView = this.f2596b;
            int i = 1;
            if (recyclerView != null) {
                if (recyclerView.f2541l == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (mo37180a()) {
                        i = this.f2596b.f2541l.getItemCount();
                    }
                }
            }
            return i;
        }

        /* renamed from: a */
        public int mo37160a(C0526y yVar) {
            return 0;
        }

        /* renamed from: a */
        public View mo37172a(View view, int i, C0522u uVar, C0526y yVar) {
            return null;
        }

        /* renamed from: a */
        public LayoutParams mo37176a(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        /* renamed from: a */
        public LayoutParams mo37169a(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        /* renamed from: a */
        public void m37362a(int i) {
            m37357a(i, m37313c(i));
        }

        /* renamed from: a */
        public void m37361a(int i, int i2) {
            View c = m37313c(i);
            if (c != null) {
                m37362a(i);
                m37310c(c, i2);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f2596b.toString());
        }

        /* renamed from: a */
        public void mo37179a(int i, int i2, C0526y yVar, AbstractC0514c cVar) {
        }

        /* renamed from: a */
        public final void m37357a(int i, View view) {
            this.f2595a.m31711a(i);
        }

        /* renamed from: a */
        public void mo37356a(int i, AbstractC0514c cVar) {
        }

        /* renamed from: a */
        public void m37355a(int i, C0522u uVar) {
            View c = m37313c(i);
            m37292g(i);
            uVar.m37230b(c);
        }

        /* renamed from: a */
        public void mo37175a(Rect rect, int i, int i2) {
            int width = rect.width();
            int n = m37278n();
            int o = m37276o();
            int height = rect.height();
            int p = m37274p();
            m37312c(m37360a(i, width + n + o, m37282l()), m37360a(i2, height + p + m37280m(), m37284k()));
        }

        /* renamed from: a */
        public void mo37174a(Parcelable parcelable) {
        }

        /* renamed from: a */
        public void m37353a(View view) {
            m37352a(view, -1);
        }

        /* renamed from: a */
        public void m37352a(View view, int i) {
            m37346a(view, i, true);
        }

        /* renamed from: a */
        public void m37351a(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect g = this.f2596b.m37436g(view);
            int i3 = g.left;
            int i4 = g.right;
            int i5 = g.top;
            int i6 = g.bottom;
            int a = m37359a(m37273q(), m37272r(), m37278n() + m37276o() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i + i3 + i4, ((ViewGroup.MarginLayoutParams) layoutParams).width, mo37180a());
            int a2 = m37359a(m37290h(), m37288i(), m37274p() + m37280m() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i2 + i5 + i6, ((ViewGroup.MarginLayoutParams) layoutParams).height, mo37150b());
            if (m37349a(view, a, a2, layoutParams)) {
                view.measure(a, a2);
            }
        }

        /* renamed from: a */
        public void m37350a(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f2570b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        /* renamed from: a */
        public void m37347a(View view, int i, LayoutParams layoutParams) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            if (l.isRemoved()) {
                this.f2596b.f2529f.m31531a(l);
            } else {
                this.f2596b.f2529f.m31519g(l);
            }
            this.f2595a.m31709a(view, i, layoutParams, l.isRemoved());
        }

        /* renamed from: a */
        public final void m37346a(View view, int i, boolean z) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            if (z || l.isRemoved()) {
                this.f2596b.f2529f.m31531a(l);
            } else {
                this.f2596b.f2529f.m31519g(l);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (l.wasReturnedFromScrap() || l.isScrap()) {
                if (l.isScrap()) {
                    l.unScrap();
                } else {
                    l.clearReturnedFromScrapFlag();
                }
                this.f2595a.m31709a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f2596b) {
                int c = this.f2595a.m31701c(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.f2595a.m31712a();
                }
                if (c == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f2596b.indexOfChild(view) + this.f2596b.m37420n());
                } else if (c != i2) {
                    this.f2596b.f2543m.m37361a(c, i2);
                }
            } else {
                this.f2595a.m31708a(view, i, false);
                layoutParams.f2571c = true;
                AbstractC0525x xVar = this.f2601g;
                if (xVar != null && xVar.m37203c()) {
                    this.f2601g.m37205a(view);
                }
            }
            if (layoutParams.f2572d) {
                l.itemView.invalidate();
                layoutParams.f2572d = false;
            }
        }

        /* renamed from: a */
        public void m37345a(View view, Rect rect) {
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.m37436g(view));
            }
        }

        /* renamed from: a */
        public void m37344a(View view, C0522u uVar) {
            m37275o(view);
            uVar.m37230b(view);
        }

        /* renamed from: a */
        public void m37343a(View view, C0970c cVar) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            if (l != null && !l.isRemoved() && !this.f2595a.m31699d(l.itemView)) {
                RecyclerView recyclerView = this.f2596b;
                mo37164a(recyclerView.f2521b, recyclerView.f2534h0, view, cVar);
            }
        }

        /* renamed from: a */
        public void m37342a(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).f2570b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (!(this.f2596b == null || (matrix = view.getMatrix()) == null || matrix.isIdentity())) {
                RectF rectF = this.f2596b.f2539k;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* renamed from: a */
        public void mo37168a(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f2596b;
            m37334a(recyclerView.f2521b, recyclerView.f2534h0, accessibilityEvent);
        }

        /* renamed from: a */
        public void m37340a(AbstractC0500g gVar, AbstractC0500g gVar2) {
        }

        /* renamed from: a */
        public void m37339a(C0522u uVar) {
            for (int e = m37299e() - 1; e >= 0; e--) {
                m37338a(uVar, e, m37313c(e));
            }
        }

        /* renamed from: a */
        public final void m37338a(C0522u uVar, int i, View view) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            if (!l.shouldIgnore()) {
                if (!l.isInvalid() || l.isRemoved() || this.f2596b.f2541l.hasStableIds()) {
                    m37362a(i);
                    uVar.m37225c(view);
                    this.f2596b.f2529f.m31522d(l);
                    return;
                }
                m37292g(i);
                uVar.m37221d(l);
            }
        }

        /* renamed from: a */
        public void m37337a(C0522u uVar, C0526y yVar, int i, int i2) {
            this.f2596b.m37458c(i, i2);
        }

        /* renamed from: a */
        public void mo37164a(C0522u uVar, C0526y yVar, View view, C0970c cVar) {
            cVar.m35362b(C0970c.C0973c.m35313a(mo37150b() ? m37281l(view) : 0, 1, mo37180a() ? m37281l(view) : 0, 1, false, false));
        }

        /* renamed from: a */
        public void m37334a(C0522u uVar, C0526y yVar, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView != null && accessibilityEvent != null) {
                boolean z = true;
                if (!recyclerView.canScrollVertically(1)) {
                    z = true;
                    if (!this.f2596b.canScrollVertically(-1)) {
                        z = true;
                        if (!this.f2596b.canScrollHorizontally(-1)) {
                            z = this.f2596b.canScrollHorizontally(1);
                        }
                    }
                }
                accessibilityEvent.setScrollable(z);
                AbstractC0500g gVar = this.f2596b.f2541l;
                if (gVar != null) {
                    accessibilityEvent.setItemCount(gVar.getItemCount());
                }
            }
        }

        /* renamed from: a */
        public void m37333a(C0522u uVar, C0526y yVar, C0970c cVar) {
            if (this.f2596b.canScrollVertically(-1) || this.f2596b.canScrollHorizontally(-1)) {
                cVar.m35383a(8192);
                cVar.m35335j(true);
            }
            if (this.f2596b.canScrollVertically(1) || this.f2596b.canScrollHorizontally(1)) {
                cVar.m35383a(4096);
                cVar.m35335j(true);
            }
            cVar.m35371a(C0970c.C0972b.m35314a(mo37146b(uVar, yVar), mo37165a(uVar, yVar), m37301d(uVar, yVar), m37307c(uVar, yVar)));
        }

        /* renamed from: a */
        public void m37332a(RecyclerView recyclerView) {
            this.f2603i = true;
            m37314b(recyclerView);
        }

        /* renamed from: a */
        public void mo37158a(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        /* renamed from: a */
        public void mo37157a(RecyclerView recyclerView, int i, int i2, Object obj) {
            m37300d(recyclerView, i, i2);
        }

        /* renamed from: a */
        public void m37327a(RecyclerView recyclerView, C0522u uVar) {
            this.f2603i = false;
            mo37141b(recyclerView, uVar);
        }

        /* renamed from: a */
        public void m37324a(C0970c cVar) {
            RecyclerView recyclerView = this.f2596b;
            m37333a(recyclerView.f2521b, recyclerView.f2534h0, cVar);
        }

        /* renamed from: a */
        public void mo37152a(String str) {
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView != null) {
                recyclerView.m37474a(str);
            }
        }

        /* renamed from: a */
        public boolean mo37180a() {
            return false;
        }

        /* renamed from: a */
        public boolean m37358a(int i, Bundle bundle) {
            RecyclerView recyclerView = this.f2596b;
            return m37336a(recyclerView.f2521b, recyclerView.f2534h0, i, bundle);
        }

        /* renamed from: a */
        public boolean m37349a(View view, int i, int i2, LayoutParams layoutParams) {
            return view.isLayoutRequested() || !this.f2605k || !m37320b(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) || !m37320b(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        }

        /* renamed from: a */
        public boolean m37348a(View view, int i, Bundle bundle) {
            RecyclerView recyclerView = this.f2596b;
            return m37335a(recyclerView.f2521b, recyclerView.f2534h0, view, i, bundle);
        }

        /* renamed from: a */
        public boolean m37341a(View view, boolean z, boolean z2) {
            boolean z3 = this.f2599e.m31545a(view, 24579) && this.f2600f.m31545a(view, 24579);
            return z ? z3 : !z3;
        }

        /* renamed from: a */
        public boolean mo37167a(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        /* renamed from: a */
        public boolean m37336a(C0522u uVar, C0526y yVar, int i, Bundle bundle) {
            int i2;
            int i3;
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                i2 = recyclerView.canScrollVertically(1) ? (m37290h() - m37274p()) - m37280m() : 0;
                i2 = i2;
                if (this.f2596b.canScrollHorizontally(1)) {
                    i3 = (m37273q() - m37278n()) - m37276o();
                }
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                i2 = recyclerView.canScrollVertically(-1) ? -((m37290h() - m37274p()) - m37280m()) : 0;
                i2 = i2;
                if (this.f2596b.canScrollHorizontally(-1)) {
                    i3 = -((m37273q() - m37278n()) - m37276o());
                }
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.f2596b.m37506a(i3, i2, (Interpolator) null, Integer.MIN_VALUE, true);
            return true;
        }

        /* renamed from: a */
        public boolean m37335a(C0522u uVar, C0526y yVar, View view, int i, Bundle bundle) {
            return false;
        }

        /* renamed from: a */
        public final boolean m37331a(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int n = m37278n();
            int p = m37274p();
            int q = m37273q();
            int o = m37276o();
            int h = m37290h();
            int m = m37280m();
            Rect rect = this.f2596b.f2535i;
            m37309c(focusedChild, rect);
            return rect.left - i < q - o && rect.right - i > n && rect.top - i2 < h - m && rect.bottom - i2 > p;
        }

        /* renamed from: a */
        public boolean m37330a(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return m37329a(recyclerView, view, rect, z, false);
        }

        /* renamed from: a */
        public boolean m37329a(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] b = m37316b(view, rect);
            int i = b[0];
            int i2 = b[1];
            if (z2 && !m37331a(recyclerView, i, i2)) {
                return false;
            }
            if (i == 0 && i2 == 0) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
                return true;
            }
            recyclerView.m37428j(i, i2);
            return true;
        }

        @Deprecated
        /* renamed from: a */
        public boolean m37328a(RecyclerView recyclerView, View view, View view2) {
            return m37268w() || recyclerView.m37411w();
        }

        /* renamed from: a */
        public boolean m37326a(RecyclerView recyclerView, C0526y yVar, View view, View view2) {
            return m37328a(recyclerView, view, view2);
        }

        /* renamed from: a */
        public boolean m37325a(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        /* renamed from: a */
        public boolean m37323a(Runnable runnable) {
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        /* renamed from: b */
        public int mo37149b(int i, C0522u uVar, C0526y yVar) {
            return 0;
        }

        /* renamed from: b */
        public int mo37146b(C0522u uVar, C0526y yVar) {
            RecyclerView recyclerView = this.f2596b;
            int i = 1;
            if (recyclerView != null) {
                if (recyclerView.f2541l == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (mo37150b()) {
                        i = this.f2596b.f2541l.getItemCount();
                    }
                }
            }
            return i;
        }

        /* renamed from: b */
        public int mo37144b(C0526y yVar) {
            return 0;
        }

        /* renamed from: b */
        public View mo37322b(int i) {
            int e = m37299e();
            for (int i2 = 0; i2 < e; i2++) {
                View c = m37313c(i2);
                AbstractC0495b0 l = RecyclerView.m37422l(c);
                if (l != null && l.getLayoutPosition() == i && !l.shouldIgnore() && (this.f2596b.f2534h0.m37196d() || !l.isRemoved())) {
                    return c;
                }
            }
            return null;
        }

        /* renamed from: b */
        public void m37321b(int i, int i2) {
            this.f2611q = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.f2609o = mode;
            if (mode == 0 && !RecyclerView.f2487A0) {
                this.f2611q = 0;
            }
            this.f2612r = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f2610p = mode2;
            if (mode2 == 0 && !RecyclerView.f2487A0) {
                this.f2612r = 0;
            }
        }

        /* renamed from: b */
        public void m37319b(View view) {
            m37318b(view, -1);
        }

        /* renamed from: b */
        public void m37318b(View view, int i) {
            m37346a(view, i, false);
        }

        /* renamed from: b */
        public void m37315b(C0522u uVar) {
            for (int e = m37299e() - 1; e >= 0; e--) {
                if (!RecyclerView.m37422l(m37313c(e)).shouldIgnore()) {
                    m37355a(e, uVar);
                }
            }
        }

        /* renamed from: b */
        public void m37314b(RecyclerView recyclerView) {
        }

        /* renamed from: b */
        public void mo37142b(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: b */
        public void mo37141b(RecyclerView recyclerView, C0522u uVar) {
            m37306c(recyclerView);
        }

        /* renamed from: b */
        public boolean mo37150b() {
            return false;
        }

        /* renamed from: b */
        public boolean m37317b(View view, int i, int i2, LayoutParams layoutParams) {
            return !this.f2605k || !m37320b(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) || !m37320b(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        }

        /* renamed from: b */
        public final int[] m37316b(View view, Rect rect) {
            int n = m37278n();
            int p = m37274p();
            int q = m37273q();
            int o = m37276o();
            int h = m37290h();
            int m = m37280m();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width();
            int height = rect.height();
            int i = left - n;
            int min = Math.min(0, i);
            int i2 = top - p;
            int min2 = Math.min(0, i2);
            int i3 = (width + left) - (q - o);
            int max = Math.max(0, i3);
            int max2 = Math.max(0, (height + top) - (h - m));
            if (m37286j() == 1) {
                min = max != 0 ? max : Math.max(min, i3);
            } else if (min == 0) {
                min = Math.min(i, max);
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            return new int[]{min, min2};
        }

        /* renamed from: c */
        public int m37307c(C0522u uVar, C0526y yVar) {
            return 0;
        }

        /* renamed from: c */
        public int mo37135c(C0526y yVar) {
            return 0;
        }

        /* renamed from: c */
        public View m37313c(int i) {
            C1907b bVar = this.f2595a;
            return bVar != null ? bVar.m31702c(i) : null;
        }

        /* renamed from: c */
        public View m37311c(View view) {
            View c;
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView == null || (c = recyclerView.m37456c(view)) == null || this.f2595a.m31699d(c)) {
                return null;
            }
            return c;
        }

        /* renamed from: c */
        public abstract LayoutParams mo37139c();

        /* renamed from: c */
        public void m37312c(int i, int i2) {
            this.f2596b.setMeasuredDimension(i, i2);
        }

        /* renamed from: c */
        public void m37310c(View view, int i) {
            m37347a(view, i, (LayoutParams) view.getLayoutParams());
        }

        /* renamed from: c */
        public void m37309c(View view, Rect rect) {
            RecyclerView.m37493a(view, rect);
        }

        /* renamed from: c */
        public void m37308c(C0522u uVar) {
            int e = uVar.m37220e();
            for (int i = e - 1; i >= 0; i--) {
                View c = uVar.m37227c(i);
                AbstractC0495b0 l = RecyclerView.m37422l(c);
                if (!l.shouldIgnore()) {
                    l.setIsRecyclable(false);
                    if (l.isTmpDetached()) {
                        this.f2596b.removeDetachedView(c, false);
                    }
                    AbstractC0505l lVar = this.f2596b.f2508M;
                    if (lVar != null) {
                        lVar.mo31665c(l);
                    }
                    l.setIsRecyclable(true);
                    uVar.m37242a(c);
                }
            }
            uVar.m37228c();
            if (e > 0) {
                this.f2596b.invalidate();
            }
        }

        @Deprecated
        /* renamed from: c */
        public void m37306c(RecyclerView recyclerView) {
        }

        /* renamed from: c */
        public void mo37133c(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: d */
        public int m37305d() {
            return -1;
        }

        /* renamed from: d */
        public int m37303d(View view) {
            return ((LayoutParams) view.getLayoutParams()).f2570b.bottom;
        }

        /* renamed from: d */
        public int mo37129d(C0526y yVar) {
            return 0;
        }

        /* renamed from: d */
        public View m37302d(View view, int i) {
            return null;
        }

        /* renamed from: d */
        public void mo37131d(int i) {
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView != null) {
                recyclerView.m37452d(i);
            }
        }

        /* renamed from: d */
        public void m37304d(int i, int i2) {
            int e = m37299e();
            if (e == 0) {
                this.f2596b.m37458c(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            int i6 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            for (int i7 = 0; i7 < e; i7++) {
                View c = m37313c(i7);
                Rect rect = this.f2596b.f2535i;
                m37309c(c, rect);
                int i8 = rect.left;
                i5 = i5;
                if (i8 < i5) {
                    i5 = i8;
                }
                int i9 = rect.right;
                i3 = i3;
                if (i9 > i3) {
                    i3 = i9;
                }
                int i10 = rect.top;
                i6 = i6;
                if (i10 < i6) {
                    i6 = i10;
                }
                int i11 = rect.bottom;
                i4 = i4;
                if (i11 > i4) {
                    i4 = i11;
                }
            }
            this.f2596b.f2535i.set(i5, i6, i3, i4);
            mo37175a(this.f2596b.f2535i, i, i2);
        }

        /* renamed from: d */
        public void mo37128d(RecyclerView recyclerView) {
        }

        /* renamed from: d */
        public void m37300d(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: d */
        public boolean m37301d(C0522u uVar, C0526y yVar) {
            return false;
        }

        /* renamed from: e */
        public int m37299e() {
            C1907b bVar = this.f2595a;
            return bVar != null ? bVar.m31712a() : 0;
        }

        /* renamed from: e */
        public int m37298e(View view) {
            return view.getBottom() + m37303d(view);
        }

        /* renamed from: e */
        public int mo37124e(C0526y yVar) {
            return 0;
        }

        /* renamed from: e */
        public void mo37127e(int i) {
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView != null) {
                recyclerView.m37447e(i);
            }
        }

        /* renamed from: e */
        public void mo37125e(C0522u uVar, C0526y yVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        /* renamed from: e */
        public void m37297e(RecyclerView recyclerView) {
            m37321b(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        /* renamed from: f */
        public int m37295f(View view) {
            return view.getLeft() - m37283k(view);
        }

        /* renamed from: f */
        public int mo37122f(C0526y yVar) {
            return 0;
        }

        /* renamed from: f */
        public void mo37123f(int i) {
        }

        /* renamed from: f */
        public void m37294f(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f2596b = null;
                this.f2595a = null;
                this.f2611q = 0;
                this.f2612r = 0;
            } else {
                this.f2596b = recyclerView;
                this.f2595a = recyclerView.f2527e;
                this.f2611q = recyclerView.getWidth();
                this.f2612r = recyclerView.getHeight();
            }
            this.f2609o = 1073741824;
            this.f2610p = 1073741824;
        }

        /* renamed from: f */
        public boolean m37296f() {
            RecyclerView recyclerView = this.f2596b;
            return recyclerView != null && recyclerView.f2531g;
        }

        /* renamed from: g */
        public int m37291g(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f2570b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        /* renamed from: g */
        public View m37293g() {
            View focusedChild;
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f2595a.m31699d(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        /* renamed from: g */
        public void m37292g(int i) {
            if (m37313c(i) != null) {
                this.f2595a.m31696f(i);
            }
        }

        /* renamed from: g */
        public void mo37121g(C0526y yVar) {
        }

        /* renamed from: h */
        public int m37290h() {
            return this.f2612r;
        }

        /* renamed from: h */
        public int m37289h(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f2570b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        /* renamed from: i */
        public int m37288i() {
            return this.f2610p;
        }

        /* renamed from: i */
        public int m37287i(View view) {
            return view.getRight() + m37279m(view);
        }

        /* renamed from: j */
        public int m37286j() {
            return C1002u.m35208n(this.f2596b);
        }

        /* renamed from: j */
        public int m37285j(View view) {
            return view.getTop() - m37277n(view);
        }

        /* renamed from: k */
        public int m37284k() {
            return C1002u.m35207o(this.f2596b);
        }

        /* renamed from: k */
        public int m37283k(View view) {
            return ((LayoutParams) view.getLayoutParams()).f2570b.left;
        }

        /* renamed from: l */
        public int m37282l() {
            return C1002u.m35206p(this.f2596b);
        }

        /* renamed from: l */
        public int m37281l(View view) {
            return ((LayoutParams) view.getLayoutParams()).m37407a();
        }

        /* renamed from: m */
        public int m37280m() {
            RecyclerView recyclerView = this.f2596b;
            return recyclerView != null ? recyclerView.getPaddingBottom() : 0;
        }

        /* renamed from: m */
        public int m37279m(View view) {
            return ((LayoutParams) view.getLayoutParams()).f2570b.right;
        }

        /* renamed from: n */
        public int m37278n() {
            RecyclerView recyclerView = this.f2596b;
            return recyclerView != null ? recyclerView.getPaddingLeft() : 0;
        }

        /* renamed from: n */
        public int m37277n(View view) {
            return ((LayoutParams) view.getLayoutParams()).f2570b.top;
        }

        /* renamed from: o */
        public int m37276o() {
            RecyclerView recyclerView = this.f2596b;
            return recyclerView != null ? recyclerView.getPaddingRight() : 0;
        }

        /* renamed from: o */
        public void m37275o(View view) {
            this.f2595a.m31697e(view);
        }

        /* renamed from: p */
        public int m37274p() {
            RecyclerView recyclerView = this.f2596b;
            return recyclerView != null ? recyclerView.getPaddingTop() : 0;
        }

        /* renamed from: q */
        public int m37273q() {
            return this.f2611q;
        }

        /* renamed from: r */
        public int m37272r() {
            return this.f2609o;
        }

        /* renamed from: s */
        public boolean m37271s() {
            int e = m37299e();
            for (int i = 0; i < e; i++) {
                ViewGroup.LayoutParams layoutParams = m37313c(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: t */
        public boolean m37270t() {
            return this.f2603i;
        }

        /* renamed from: u */
        public boolean mo37102u() {
            return this.f2604j;
        }

        /* renamed from: v */
        public final boolean m37269v() {
            return this.f2606l;
        }

        /* renamed from: w */
        public boolean m37268w() {
            AbstractC0525x xVar = this.f2601g;
            return xVar != null && xVar.m37203c();
        }

        /* renamed from: x */
        public Parcelable mo37099x() {
            return null;
        }

        /* renamed from: y */
        public void m37267y() {
            RecyclerView recyclerView = this.f2596b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        /* renamed from: z */
        public void m37266z() {
            this.f2602h = true;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$p */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
    public interface AbstractC0516p {
        /* renamed from: a */
        void m37265a(View view);

        /* renamed from: b */
        void m37264b(View view);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$q */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$q.class */
    public static abstract class AbstractC0517q {
        /* renamed from: a */
        public abstract boolean m37263a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$r */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r.class */
    public interface AbstractC0518r {
        /* renamed from: a */
        void mo31650a(RecyclerView recyclerView, MotionEvent motionEvent);

        /* renamed from: a */
        void mo31649a(boolean z);

        /* renamed from: b */
        boolean mo31642b(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$s */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
    public static abstract class AbstractC0519s {
        /* renamed from: a */
        public void m37262a(RecyclerView recyclerView, int i) {
        }

        /* renamed from: a */
        public void mo31634a(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$t */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
    public static class C0520t {

        /* renamed from: a */
        public SparseArray<C0521a> f2619a = new SparseArray<>();

        /* renamed from: b */
        public int f2620b = 0;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$t$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t$a.class */
        public static class C0521a {

            /* renamed from: a */
            public final ArrayList<AbstractC0495b0> f2621a = new ArrayList<>();

            /* renamed from: b */
            public int f2622b = 5;

            /* renamed from: c */
            public long f2623c = 0;

            /* renamed from: d */
            public long f2624d = 0;
        }

        /* renamed from: a */
        public long m37257a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        /* renamed from: a */
        public AbstractC0495b0 m37260a(int i) {
            C0521a aVar = this.f2619a.get(i);
            if (aVar == null || aVar.f2621a.isEmpty()) {
                return null;
            }
            ArrayList<AbstractC0495b0> arrayList = aVar.f2621a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).isAttachedToTransitionOverlay()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        /* renamed from: a */
        public void m37261a() {
            this.f2620b++;
        }

        /* renamed from: a */
        public void m37259a(int i, long j) {
            C0521a b = m37253b(i);
            b.f2624d = m37257a(b.f2624d, j);
        }

        /* renamed from: a */
        public void m37256a(AbstractC0495b0 b0Var) {
            int itemViewType = b0Var.getItemViewType();
            ArrayList<AbstractC0495b0> arrayList = m37253b(itemViewType).f2621a;
            if (this.f2619a.get(itemViewType).f2622b > arrayList.size()) {
                b0Var.resetInternal();
                arrayList.add(b0Var);
            }
        }

        /* renamed from: a */
        public void m37255a(AbstractC0500g gVar, AbstractC0500g gVar2, boolean z) {
            if (gVar != null) {
                m37250c();
            }
            if (!z && this.f2620b == 0) {
                m37254b();
            }
            if (gVar2 != null) {
                m37261a();
            }
        }

        /* renamed from: a */
        public boolean m37258a(int i, long j, long j2) {
            long j3 = m37253b(i).f2624d;
            return j3 == 0 || j + j3 < j2;
        }

        /* renamed from: b */
        public final C0521a m37253b(int i) {
            C0521a aVar = this.f2619a.get(i);
            C0521a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = new C0521a();
                this.f2619a.put(i, aVar2);
            }
            return aVar2;
        }

        /* renamed from: b */
        public void m37254b() {
            for (int i = 0; i < this.f2619a.size(); i++) {
                this.f2619a.valueAt(i).f2621a.clear();
            }
        }

        /* renamed from: b */
        public void m37252b(int i, long j) {
            C0521a b = m37253b(i);
            b.f2623c = m37257a(b.f2623c, j);
        }

        /* renamed from: b */
        public boolean m37251b(int i, long j, long j2) {
            long j3 = m37253b(i).f2623c;
            return j3 == 0 || j + j3 < j2;
        }

        /* renamed from: c */
        public void m37250c() {
            this.f2620b--;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$u */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
    public final class C0522u {

        /* renamed from: a */
        public final ArrayList<AbstractC0495b0> f2625a = new ArrayList<>();

        /* renamed from: b */
        public ArrayList<AbstractC0495b0> f2626b = null;

        /* renamed from: c */
        public final ArrayList<AbstractC0495b0> f2627c = new ArrayList<>();

        /* renamed from: d */
        public final List<AbstractC0495b0> f2628d = Collections.unmodifiableList(this.f2625a);

        /* renamed from: e */
        public int f2629e = 2;

        /* renamed from: f */
        public int f2630f = 2;

        /* renamed from: g */
        public C0520t f2631g;

        /* renamed from: h */
        public AbstractC0527z f2632h;

        public C0522u() {
        }

        /* renamed from: a */
        public int m37248a(int i) {
            if (i >= 0 && i < RecyclerView.this.f2534h0.m37201a()) {
                return !RecyclerView.this.f2534h0.m37196d() ? i : RecyclerView.this.f2525d.m31733c(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.f2534h0.m37201a() + RecyclerView.this.m37420n());
        }

        /* renamed from: a */
        public AbstractC0495b0 m37245a(int i, boolean z) {
            View b;
            int size = this.f2625a.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0495b0 b0Var = this.f2625a.get(i2);
                if (!b0Var.wasReturnedFromScrap() && b0Var.getLayoutPosition() == i && !b0Var.isInvalid() && (RecyclerView.this.f2534h0.f2642h || !b0Var.isRemoved())) {
                    b0Var.addFlags(32);
                    return b0Var;
                }
            }
            if (z || (b = RecyclerView.this.f2527e.m31705b(i)) == null) {
                int size2 = this.f2627c.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    AbstractC0495b0 b0Var2 = this.f2627c.get(i3);
                    if (!b0Var2.isInvalid() && b0Var2.getLayoutPosition() == i && !b0Var2.isAttachedToTransitionOverlay()) {
                        if (!z) {
                            this.f2627c.remove(i3);
                        }
                        return b0Var2;
                    }
                }
                return null;
            }
            AbstractC0495b0 l = RecyclerView.m37422l(b);
            RecyclerView.this.f2527e.m31694g(b);
            int c = RecyclerView.this.f2527e.m31701c(b);
            if (c != -1) {
                RecyclerView.this.f2527e.m31711a(c);
                m37225c(b);
                l.addFlags(8224);
                return l;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + l + RecyclerView.this.m37420n());
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x03a9  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x03c2  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x03fc  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x02e6  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0314  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0355  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x036e  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.AbstractC0495b0 m37244a(int r8, boolean r9, long r10) {
            /*
                Method dump skipped, instructions count: 1133
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C0522u.m37244a(int, boolean, long):androidx.recyclerview.widget.RecyclerView$b0");
        }

        /* renamed from: a */
        public AbstractC0495b0 m37243a(long j, int i, boolean z) {
            for (int size = this.f2625a.size() - 1; size >= 0; size--) {
                AbstractC0495b0 b0Var = this.f2625a.get(size);
                if (b0Var.getItemId() == j && !b0Var.wasReturnedFromScrap()) {
                    if (i == b0Var.getItemViewType()) {
                        b0Var.addFlags(32);
                        if (b0Var.isRemoved() && !RecyclerView.this.f2534h0.m37196d()) {
                            b0Var.setFlags(2, 14);
                        }
                        return b0Var;
                    } else if (!z) {
                        this.f2625a.remove(size);
                        RecyclerView.this.removeDetachedView(b0Var.itemView, false);
                        m37242a(b0Var.itemView);
                    }
                }
            }
            for (int size2 = this.f2627c.size() - 1; size2 >= 0; size2--) {
                AbstractC0495b0 b0Var2 = this.f2627c.get(size2);
                if (b0Var2.getItemId() == j && !b0Var2.isAttachedToTransitionOverlay()) {
                    if (i == b0Var2.getItemViewType()) {
                        if (!z) {
                            this.f2627c.remove(size2);
                        }
                        return b0Var2;
                    } else if (!z) {
                        m37219e(size2);
                        return null;
                    }
                }
            }
            return null;
        }

        /* renamed from: a */
        public void m37249a() {
            this.f2625a.clear();
            m37212i();
        }

        /* renamed from: a */
        public void m37247a(int i, int i2) {
            int size = this.f2627c.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0495b0 b0Var = this.f2627c.get(i3);
                if (b0Var != null && b0Var.mPosition >= i) {
                    b0Var.offsetPosition(i2, true);
                }
            }
        }

        /* renamed from: a */
        public void m37246a(int i, int i2, boolean z) {
            for (int size = this.f2627c.size() - 1; size >= 0; size--) {
                AbstractC0495b0 b0Var = this.f2627c.get(size);
                if (b0Var != null) {
                    int i3 = b0Var.mPosition;
                    if (i3 >= i + i2) {
                        b0Var.offsetPosition(-i2, z);
                    } else if (i3 >= i) {
                        b0Var.addFlags(8);
                        m37219e(size);
                    }
                }
            }
        }

        /* renamed from: a */
        public void m37242a(View view) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            l.mScrapContainer = null;
            l.mInChangeScrap = false;
            l.clearReturnedFromScrapFlag();
            m37221d(l);
        }

        /* renamed from: a */
        public final void m37241a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m37241a((ViewGroup) childAt, true);
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
        public final void m37240a(AbstractC0495b0 b0Var) {
            if (RecyclerView.this.m37412v()) {
                View view = b0Var.itemView;
                if (C1002u.m35210l(view) == 0) {
                    C1002u.m35217f(view, 1);
                }
                C1936i iVar = RecyclerView.this.f2548o0;
                if (iVar != null) {
                    C0949a b = iVar.m31587b();
                    if (b instanceof C1936i.C1937a) {
                        ((C1936i.C1937a) b).m31576d(view);
                    }
                    C1002u.m35238a(view, b);
                }
            }
        }

        /* renamed from: a */
        public void m37238a(AbstractC0495b0 b0Var, boolean z) {
            RecyclerView.m37444e(b0Var);
            View view = b0Var.itemView;
            C1936i iVar = RecyclerView.this.f2548o0;
            if (iVar != null) {
                C0949a b = iVar.m31587b();
                C1002u.m35238a(view, b instanceof C1936i.C1937a ? ((C1936i.C1937a) b).m31578c(view) : null);
            }
            if (z) {
                m37229b(b0Var);
            }
            b0Var.mOwnerRecyclerView = null;
            m37223d().m37256a(b0Var);
        }

        /* renamed from: a */
        public void m37237a(AbstractC0500g gVar, AbstractC0500g gVar2, boolean z) {
            m37249a();
            m37223d().m37255a(gVar, gVar2, z);
        }

        /* renamed from: a */
        public void m37236a(C0520t tVar) {
            C0520t tVar2 = this.f2631g;
            if (tVar2 != null) {
                tVar2.m37250c();
            }
            this.f2631g = tVar;
            if (tVar != null && RecyclerView.this.getAdapter() != null) {
                this.f2631g.m37261a();
            }
        }

        /* renamed from: a */
        public void m37235a(AbstractC0527z zVar) {
            this.f2632h = zVar;
        }

        /* renamed from: a */
        public final boolean m37239a(AbstractC0495b0 b0Var, int i, int i2, long j) {
            b0Var.mOwnerRecyclerView = RecyclerView.this;
            int itemViewType = b0Var.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.f2631g.m37258a(itemViewType, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.f2541l.bindViewHolder(b0Var, i);
            this.f2631g.m37259a(b0Var.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
            m37240a(b0Var);
            if (!RecyclerView.this.f2534h0.m37196d()) {
                return true;
            }
            b0Var.mPreLayoutPosition = i2;
            return true;
        }

        /* renamed from: b */
        public View m37231b(int i, boolean z) {
            return m37244a(i, z, Long.MAX_VALUE).itemView;
        }

        /* renamed from: b */
        public AbstractC0495b0 m37233b(int i) {
            int size;
            int c;
            ArrayList<AbstractC0495b0> arrayList = this.f2626b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0495b0 b0Var = this.f2626b.get(i2);
                if (!b0Var.wasReturnedFromScrap() && b0Var.getLayoutPosition() == i) {
                    b0Var.addFlags(32);
                    return b0Var;
                }
            }
            if (!RecyclerView.this.f2541l.hasStableIds() || (c = RecyclerView.this.f2525d.m31733c(i)) <= 0 || c >= RecyclerView.this.f2541l.getItemCount()) {
                return null;
            }
            long itemId = RecyclerView.this.f2541l.getItemId(c);
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0495b0 b0Var2 = this.f2626b.get(i3);
                if (!b0Var2.wasReturnedFromScrap() && b0Var2.getItemId() == itemId) {
                    b0Var2.addFlags(32);
                    return b0Var2;
                }
            }
            return null;
        }

        /* renamed from: b */
        public void m37234b() {
            int size = this.f2627c.size();
            for (int i = 0; i < size; i++) {
                this.f2627c.get(i).clearOldPosition();
            }
            int size2 = this.f2625a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f2625a.get(i2).clearOldPosition();
            }
            ArrayList<AbstractC0495b0> arrayList = this.f2626b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f2626b.get(i3).clearOldPosition();
                }
            }
        }

        /* renamed from: b */
        public void m37232b(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            if (i < i2) {
                i5 = -1;
                i4 = i;
                i3 = i2;
            } else {
                i5 = 1;
                i3 = i;
                i4 = i2;
            }
            int size = this.f2627c.size();
            for (int i7 = 0; i7 < size; i7++) {
                AbstractC0495b0 b0Var = this.f2627c.get(i7);
                if (b0Var != null && (i6 = b0Var.mPosition) >= i4 && i6 <= i3) {
                    if (i6 == i) {
                        b0Var.offsetPosition(i2 - i, false);
                    } else {
                        b0Var.offsetPosition(i5, false);
                    }
                }
            }
        }

        /* renamed from: b */
        public void m37230b(View view) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            if (l.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (l.isScrap()) {
                l.unScrap();
            } else if (l.wasReturnedFromScrap()) {
                l.clearReturnedFromScrapFlag();
            }
            m37221d(l);
            if (RecyclerView.this.f2508M != null && !l.isRecyclable()) {
                RecyclerView.this.f2508M.mo31665c(l);
            }
        }

        /* renamed from: b */
        public void m37229b(AbstractC0495b0 b0Var) {
            AbstractC0523v vVar = RecyclerView.this.f2545n;
            if (vVar != null) {
                vVar.m37210a(b0Var);
            }
            AbstractC0500g gVar = RecyclerView.this.f2541l;
            if (gVar != null) {
                gVar.onViewRecycled(b0Var);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f2534h0 != null) {
                recyclerView.f2529f.m31518h(b0Var);
            }
        }

        /* renamed from: c */
        public View m37227c(int i) {
            return this.f2625a.get(i).itemView;
        }

        /* renamed from: c */
        public void m37228c() {
            this.f2625a.clear();
            ArrayList<AbstractC0495b0> arrayList = this.f2626b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        /* renamed from: c */
        public void m37226c(int i, int i2) {
            int i3;
            for (int size = this.f2627c.size() - 1; size >= 0; size--) {
                AbstractC0495b0 b0Var = this.f2627c.get(size);
                if (b0Var != null && (i3 = b0Var.mPosition) >= i && i3 < i2 + i) {
                    b0Var.addFlags(2);
                    m37219e(size);
                }
            }
        }

        /* renamed from: c */
        public void m37225c(View view) {
            AbstractC0495b0 l = RecyclerView.m37422l(view);
            if (!l.hasAnyOfTheFlags(12) && l.isUpdated() && !RecyclerView.this.m37466b(l)) {
                if (this.f2626b == null) {
                    this.f2626b = new ArrayList<>();
                }
                l.setScrapContainer(this, true);
                this.f2626b.add(l);
            } else if (!l.isInvalid() || l.isRemoved() || RecyclerView.this.f2541l.hasStableIds()) {
                l.setScrapContainer(this, false);
                this.f2625a.add(l);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.m37420n());
            }
        }

        /* renamed from: c */
        public final void m37224c(AbstractC0495b0 b0Var) {
            View view = b0Var.itemView;
            if (view instanceof ViewGroup) {
                m37241a((ViewGroup) view, false);
            }
        }

        /* renamed from: d */
        public View m37222d(int i) {
            return m37231b(i, false);
        }

        /* renamed from: d */
        public C0520t m37223d() {
            if (this.f2631g == null) {
                this.f2631g = new C0520t();
            }
            return this.f2631g;
        }

        /* renamed from: d */
        public void m37221d(AbstractC0495b0 b0Var) {
            boolean z = false;
            boolean z2 = false;
            boolean z3 = true;
            if (b0Var.isScrap() || b0Var.itemView.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(b0Var.isScrap());
                sb.append(" isAttached:");
                if (b0Var.itemView.getParent() != null) {
                    z = true;
                }
                sb.append(z);
                sb.append(RecyclerView.this.m37420n());
                throw new IllegalArgumentException(sb.toString());
            } else if (b0Var.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + b0Var + RecyclerView.this.m37420n());
            } else if (!b0Var.shouldIgnore()) {
                boolean doesTransientStatePreventRecycling = b0Var.doesTransientStatePreventRecycling();
                AbstractC0500g gVar = RecyclerView.this.f2541l;
                if ((gVar != null && doesTransientStatePreventRecycling && gVar.onFailedToRecycleView(b0Var)) || b0Var.isRecyclable()) {
                    if (this.f2630f <= 0 || b0Var.hasAnyOfTheFlags(526)) {
                        z2 = false;
                    } else {
                        int size = this.f2627c.size();
                        int i = size;
                        if (size >= this.f2630f) {
                            i = size;
                            if (size > 0) {
                                m37219e(0);
                                i = size - 1;
                            }
                        }
                        int i2 = i;
                        if (RecyclerView.f2489C0) {
                            i2 = i;
                            if (i > 0) {
                                i2 = i;
                                if (!RecyclerView.this.f2532g0.m31621a(b0Var.mPosition)) {
                                    while (true) {
                                        i--;
                                        if (i < 0) {
                                            break;
                                        }
                                        if (!RecyclerView.this.f2532g0.m31621a(this.f2627c.get(i).mPosition)) {
                                            break;
                                        }
                                    }
                                    i2 = i + 1;
                                }
                            }
                        }
                        this.f2627c.add(i2, b0Var);
                        z2 = true;
                    }
                    if (!z2) {
                        m37238a(b0Var, true);
                        RecyclerView.this.f2529f.m31518h(b0Var);
                        if (!z2 && !z3 && doesTransientStatePreventRecycling) {
                            b0Var.mOwnerRecyclerView = null;
                            return;
                        }
                        return;
                    }
                }
                z3 = false;
                RecyclerView.this.f2529f.m31518h(b0Var);
                if (!z2) {
                }
            } else {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.m37420n());
            }
        }

        /* renamed from: e */
        public int m37220e() {
            return this.f2625a.size();
        }

        /* renamed from: e */
        public void m37219e(int i) {
            m37238a(this.f2627c.get(i), true);
            this.f2627c.remove(i);
        }

        /* renamed from: e */
        public void m37218e(AbstractC0495b0 b0Var) {
            if (b0Var.mInChangeScrap) {
                this.f2626b.remove(b0Var);
            } else {
                this.f2625a.remove(b0Var);
            }
            b0Var.mScrapContainer = null;
            b0Var.mInChangeScrap = false;
            b0Var.clearReturnedFromScrapFlag();
        }

        /* renamed from: f */
        public List<AbstractC0495b0> m37217f() {
            return this.f2628d;
        }

        /* renamed from: f */
        public void m37216f(int i) {
            this.f2629e = i;
            m37211j();
        }

        /* renamed from: f */
        public boolean m37215f(AbstractC0495b0 b0Var) {
            if (b0Var.isRemoved()) {
                return RecyclerView.this.f2534h0.m37196d();
            }
            int i = b0Var.mPosition;
            if (i < 0 || i >= RecyclerView.this.f2541l.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + b0Var + RecyclerView.this.m37420n());
            }
            boolean z = false;
            if (!RecyclerView.this.f2534h0.m37196d() && RecyclerView.this.f2541l.getItemViewType(b0Var.mPosition) != b0Var.getItemViewType()) {
                return false;
            }
            if (!RecyclerView.this.f2541l.hasStableIds()) {
                return true;
            }
            if (b0Var.getItemId() == RecyclerView.this.f2541l.getItemId(b0Var.mPosition)) {
                z = true;
            }
            return z;
        }

        /* renamed from: g */
        public void m37214g() {
            int size = this.f2627c.size();
            for (int i = 0; i < size; i++) {
                LayoutParams layoutParams = (LayoutParams) this.f2627c.get(i).itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f2571c = true;
                }
            }
        }

        /* renamed from: h */
        public void m37213h() {
            int size = this.f2627c.size();
            for (int i = 0; i < size; i++) {
                AbstractC0495b0 b0Var = this.f2627c.get(i);
                if (b0Var != null) {
                    b0Var.addFlags(6);
                    b0Var.addChangePayload(null);
                }
            }
            AbstractC0500g gVar = RecyclerView.this.f2541l;
            if (gVar == null || !gVar.hasStableIds()) {
                m37212i();
            }
        }

        /* renamed from: i */
        public void m37212i() {
            for (int size = this.f2627c.size() - 1; size >= 0; size--) {
                m37219e(size);
            }
            this.f2627c.clear();
            if (RecyclerView.f2489C0) {
                RecyclerView.this.f2532g0.m31622a();
            }
        }

        /* renamed from: j */
        public void m37211j() {
            AbstractC0511o oVar = RecyclerView.this.f2543m;
            this.f2630f = this.f2629e + (oVar != null ? oVar.f2607m : 0);
            for (int size = this.f2627c.size() - 1; size >= 0 && this.f2627c.size() > this.f2630f; size--) {
                m37219e(size);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$v */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v.class */
    public interface AbstractC0523v {
        /* renamed from: a */
        void m37210a(AbstractC0495b0 b0Var);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$w */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w.class */
    public class C0524w extends AbstractC0502i {
        public C0524w() {
        }

        /* renamed from: a */
        public void m37209a() {
            if (RecyclerView.f2488B0) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f2555s && recyclerView.f2553r) {
                    C1002u.m35234a(recyclerView, recyclerView.f2533h);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.f2496A = true;
            recyclerView2.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        public void onChanged() {
            RecyclerView.this.m37474a((String) null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f2534h0.f2641g = true;
            recyclerView.m37461b(true);
            if (!RecyclerView.this.f2525d.m31734c()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        public void onItemRangeChanged(int i, int i2, Object obj) {
            RecyclerView.this.m37474a((String) null);
            if (RecyclerView.this.f2525d.m31741a(i, i2, obj)) {
                m37209a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        public void onItemRangeInserted(int i, int i2) {
            RecyclerView.this.m37474a((String) null);
            if (RecyclerView.this.f2525d.m31736b(i, i2)) {
                m37209a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        public void onItemRangeMoved(int i, int i2, int i3) {
            RecyclerView.this.m37474a((String) null);
            if (RecyclerView.this.f2525d.m31742a(i, i2, i3)) {
                m37209a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        public void onItemRangeRemoved(int i, int i2) {
            RecyclerView.this.m37474a((String) null);
            if (RecyclerView.this.f2525d.m31732c(i, i2)) {
                m37209a();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$x */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x.class */
    public static abstract class AbstractC0525x {
        /* renamed from: a */
        public abstract int m37208a();

        /* renamed from: a */
        public abstract void m37207a(int i);

        /* renamed from: a */
        public abstract void m37206a(int i, int i2);

        /* renamed from: a */
        public abstract void m37205a(View view);

        /* renamed from: b */
        public abstract boolean m37204b();

        /* renamed from: c */
        public abstract boolean m37203c();

        /* renamed from: d */
        public final void m37202d() {
            throw null;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$y */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$y.class */
    public static class C0526y {

        /* renamed from: b */
        public SparseArray<Object> f2636b;

        /* renamed from: m */
        public int f2647m;

        /* renamed from: n */
        public long f2648n;

        /* renamed from: o */
        public int f2649o;

        /* renamed from: p */
        public int f2650p;

        /* renamed from: q */
        public int f2651q;

        /* renamed from: a */
        public int f2635a = -1;

        /* renamed from: c */
        public int f2637c = 0;

        /* renamed from: d */
        public int f2638d = 0;

        /* renamed from: e */
        public int f2639e = 1;

        /* renamed from: f */
        public int f2640f = 0;

        /* renamed from: g */
        public boolean f2641g = false;

        /* renamed from: h */
        public boolean f2642h = false;

        /* renamed from: i */
        public boolean f2643i = false;

        /* renamed from: j */
        public boolean f2644j = false;

        /* renamed from: k */
        public boolean f2645k = false;

        /* renamed from: l */
        public boolean f2646l = false;

        /* renamed from: a */
        public int m37201a() {
            return this.f2642h ? this.f2637c - this.f2638d : this.f2640f;
        }

        /* renamed from: a */
        public void m37200a(int i) {
            if ((this.f2639e & i) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f2639e));
            }
        }

        /* renamed from: a */
        public void m37199a(AbstractC0500g gVar) {
            this.f2639e = 1;
            this.f2640f = gVar.getItemCount();
            this.f2642h = false;
            this.f2643i = false;
            this.f2644j = false;
        }

        /* renamed from: b */
        public int m37198b() {
            return this.f2635a;
        }

        /* renamed from: c */
        public boolean m37197c() {
            return this.f2635a != -1;
        }

        /* renamed from: d */
        public boolean m37196d() {
            return this.f2642h;
        }

        /* renamed from: e */
        public boolean m37195e() {
            return this.f2646l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f2635a + ", mData=" + this.f2636b + ", mItemCount=" + this.f2640f + ", mIsMeasuring=" + this.f2644j + ", mPreviousLayoutItemCount=" + this.f2637c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f2638d + ", mStructureChanged=" + this.f2641g + ", mInPreLayout=" + this.f2642h + ", mRunSimpleAnimations=" + this.f2645k + ", mRunPredictiveAnimations=" + this.f2646l + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$z */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$z.class */
    public static abstract class AbstractC0527z {
        /* renamed from: a */
        public abstract View m37194a(C0522u uVar, int i, int i2);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f2495z0 = i == 18 || i == 19 || i == 20;
        f2487A0 = Build.VERSION.SDK_INT >= 23;
        f2488B0 = Build.VERSION.SDK_INT >= 16;
        f2489C0 = Build.VERSION.SDK_INT >= 21;
        f2490D0 = Build.VERSION.SDK_INT <= 15;
        f2491E0 = Build.VERSION.SDK_INT <= 15;
        Class<?> cls = Integer.TYPE;
        f2492F0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f2493G0 = new animationInterpolatorC0496c();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1901a.recyclerViewStyle);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2519a = new C0524w();
        this.f2521b = new C0522u();
        this.f2529f = new C1943m();
        this.f2533h = new RunnableC0492a();
        this.f2535i = new Rect();
        this.f2537j = new Rect();
        this.f2539k = new RectF();
        this.f2547o = new ArrayList<>();
        this.f2549p = new ArrayList<>();
        this.f2561v = 0;
        this.f2499D = false;
        this.f2500E = false;
        this.f2501F = 0;
        this.f2502G = 0;
        this.f2503H = new C0504k();
        this.f2508M = new C1910c();
        this.f2509N = 0;
        this.f2510O = -1;
        this.f2522b0 = Float.MIN_VALUE;
        this.f2524c0 = Float.MIN_VALUE;
        boolean z = true;
        this.f2526d0 = true;
        this.f2528e0 = new RunnableC0493a0();
        this.f2532g0 = f2489C0 ? new RunnableC1926e.C1928b() : null;
        this.f2534h0 = new C0526y();
        this.f2540k0 = false;
        this.f2542l0 = false;
        this.f2544m0 = new C0509m();
        this.f2546n0 = false;
        this.f2552q0 = new int[2];
        this.f2556s0 = new int[2];
        this.f2558t0 = new int[2];
        this.f2560u0 = new int[2];
        this.f2562v0 = new ArrayList();
        this.f2564w0 = new RunnableC0494b();
        this.f2566x0 = new C0497d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2516U = viewConfiguration.getScaledTouchSlop();
        this.f2522b0 = C1014v.m35176b(viewConfiguration, context);
        this.f2524c0 = C1014v.m35175c(viewConfiguration, context);
        this.f2518W = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2520a0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.f2508M.m37384a(this.f2544m0);
        m37416r();
        m37414t();
        m37415s();
        if (C1002u.m35210l(this) == 0) {
            C1002u.m35217f(this, 1);
        }
        this.f2497B = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C1936i(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1903c.RecyclerView, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, C1903c.RecyclerView, attributeSet, obtainStyledAttributes, i, 0);
        }
        String string = obtainStyledAttributes.getString(C1903c.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(C1903c.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f2531g = obtainStyledAttributes.getBoolean(C1903c.RecyclerView_android_clipToPadding, true);
        boolean z2 = obtainStyledAttributes.getBoolean(C1903c.RecyclerView_fastScrollEnabled, false);
        this.f2557t = z2;
        if (z2) {
            m37496a((StateListDrawable) obtainStyledAttributes.getDrawable(C1903c.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes.getDrawable(C1903c.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes.getDrawable(C1903c.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes.getDrawable(C1903c.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        obtainStyledAttributes.recycle();
        m37497a(context, string, attributeSet, i, 0);
        if (Build.VERSION.SDK_INT >= 21) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f2494y0, i, 0);
            if (Build.VERSION.SDK_INT >= 29) {
                saveAttributeDataForStyleable(context, f2494y0, attributeSet, obtainStyledAttributes2, i, 0);
            }
            z = obtainStyledAttributes2.getBoolean(0, true);
            obtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z);
    }

    /* renamed from: a */
    public static void m37493a(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f2570b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    /* renamed from: e */
    public static void m37444e(AbstractC0495b0 b0Var) {
        WeakReference<RecyclerView> weakReference = b0Var.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView != b0Var.itemView) {
                    ViewParent parent = recyclerView.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            b0Var.mNestedRecyclerView = null;
        }
    }

    private C0994m getScrollingChildHelper() {
        if (this.f2554r0 == null) {
            this.f2554r0 = new C0994m(this);
        }
        return this.f2554r0;
    }

    /* renamed from: k */
    public static RecyclerView m37424k(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView k = m37424k(viewGroup.getChildAt(i));
            if (k != null) {
                return k;
            }
        }
        return null;
    }

    /* renamed from: l */
    public static AbstractC0495b0 m37422l(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f2569a;
    }

    /* renamed from: A */
    public void m37529A() {
        m37473a(true);
    }

    /* renamed from: B */
    public void m37528B() {
        if (!this.f2546n0 && this.f2553r) {
            C1002u.m35234a(this, this.f2564w0);
            this.f2546n0 = true;
        }
    }

    /* renamed from: C */
    public final boolean m37527C() {
        return this.f2508M != null && this.f2543m.mo37193C();
    }

    /* renamed from: D */
    public final void m37526D() {
        if (this.f2499D) {
            this.f2525d.m31724f();
            if (this.f2500E) {
                this.f2543m.mo37128d(this);
            }
        }
        if (m37527C()) {
            this.f2525d.m31726e();
        } else {
            this.f2525d.m31738b();
        }
        boolean z = this.f2540k0 || this.f2542l0;
        this.f2534h0.f2645k = this.f2559u && this.f2508M != null && (this.f2499D || z || this.f2543m.f2602h) && (!this.f2499D || this.f2541l.hasStableIds());
        C0526y yVar = this.f2534h0;
        boolean z2 = false;
        if (yVar.f2645k) {
            z2 = false;
            if (z) {
                z2 = false;
                if (!this.f2499D) {
                    z2 = false;
                    if (m37527C()) {
                        z2 = true;
                    }
                }
            }
        }
        yVar.f2646l = z2;
    }

    /* renamed from: E */
    public final void m37525E() {
        if (this.f2526d0 && this.f2541l != null && hasFocus() && getDescendantFocusability() != 393216) {
            if (getDescendantFocusability() != 131072 || !isFocused()) {
                if (!isFocused()) {
                    View focusedChild = getFocusedChild();
                    if (!f2491E0 || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                        if (!this.f2527e.m31699d(focusedChild)) {
                            return;
                        }
                    } else if (this.f2527e.m31712a() == 0) {
                        requestFocus();
                        return;
                    }
                }
                View view = null;
                AbstractC0495b0 a = (this.f2534h0.f2648n == -1 || !this.f2541l.hasStableIds()) ? null : m37500a(this.f2534h0.f2648n);
                if (a != null && !this.f2527e.m31699d(a.itemView) && a.itemView.hasFocusable()) {
                    view = a.itemView;
                } else if (this.f2527e.m31712a() > 0) {
                    view = m37419o();
                }
                if (view != null) {
                    int i = this.f2534h0.f2649o;
                    View view2 = view;
                    if (i != -1) {
                        View findViewById = view.findViewById(i);
                        view2 = view;
                        if (findViewById != null) {
                            view2 = view;
                            if (findViewById.isFocusable()) {
                                view2 = findViewById;
                            }
                        }
                    }
                    view2.requestFocus();
                }
            }
        }
    }

    /* renamed from: F */
    public final void m37524F() {
        boolean z;
        EdgeEffect edgeEffect = this.f2504I;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.f2504I.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f2505J;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 = z | this.f2505J.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f2506K;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z3 = z2 | this.f2506K.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f2507L;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z4 = z3 | this.f2507L.isFinished();
        }
        if (z4) {
            C1002u.m35254C(this);
        }
    }

    /* renamed from: G */
    public void m37523G() {
        AbstractC0505l lVar = this.f2508M;
        if (lVar != null) {
            lVar.mo31668b();
        }
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            oVar.m37315b(this.f2521b);
            this.f2543m.m37308c(this.f2521b);
        }
        this.f2521b.m37249a();
    }

    /* renamed from: H */
    public void m37522H() {
        AbstractC0495b0 b0Var;
        int a = this.f2527e.m31712a();
        for (int i = 0; i < a; i++) {
            View c = this.f2527e.m31702c(i);
            AbstractC0495b0 e = m37445e(c);
            if (!(e == null || (b0Var = e.mShadowingHolder) == null)) {
                View view = b0Var.itemView;
                int left = c.getLeft();
                int top = c.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* renamed from: I */
    public final void m37521I() {
        C0526y yVar = this.f2534h0;
        yVar.f2648n = -1L;
        yVar.f2647m = -1;
        yVar.f2649o = -1;
    }

    /* renamed from: J */
    public final void m37520J() {
        VelocityTracker velocityTracker = this.f2511P;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        m37438g(0);
        m37524F();
    }

    /* renamed from: K */
    public final void m37519K() {
        AbstractC0495b0 b0Var = null;
        View focusedChild = (!this.f2526d0 || !hasFocus() || this.f2541l == null) ? null : getFocusedChild();
        if (focusedChild != null) {
            b0Var = m37450d(focusedChild);
        }
        if (b0Var == null) {
            m37521I();
            return;
        }
        this.f2534h0.f2648n = this.f2541l.hasStableIds() ? b0Var.getItemId() : -1L;
        this.f2534h0.f2647m = this.f2499D ? -1 : b0Var.isRemoved() ? b0Var.mOldPosition : b0Var.getAdapterPosition();
        this.f2534h0.f2649o = m37440f(b0Var.itemView);
    }

    /* renamed from: L */
    public void m37518L() {
        int b = this.f2527e.m31706b();
        for (int i = 0; i < b; i++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31698e(i));
            if (!l.shouldIgnore()) {
                l.saveOldPosition();
            }
        }
    }

    /* renamed from: M */
    public void m37517M() {
        int i = this.f2561v + 1;
        this.f2561v = i;
        if (i == 1 && !this.f2565x) {
            this.f2563w = false;
        }
    }

    /* renamed from: N */
    public void m37516N() {
        setScrollState(0);
        m37515O();
    }

    /* renamed from: O */
    public final void m37515O() {
        this.f2528e0.m37396c();
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            oVar.m37363B();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.recyclerview.widget.RecyclerView.AbstractC0495b0 m37501a(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            b.v.d.b r0 = r0.f2527e
            int r0 = r0.m31706b()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000e:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L_0x007e
            r0 = r3
            b.v.d.b r0 = r0.f2527e
            r1 = r8
            android.view.View r0 = r0.m31698e(r1)
            androidx.recyclerview.widget.RecyclerView$b0 r0 = m37422l(r0)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0074
            r0 = r7
            r10 = r0
            r0 = r9
            boolean r0 = r0.isRemoved()
            if (r0 != 0) goto L_0x0074
            r0 = r5
            if (r0 == 0) goto L_0x004b
            r0 = r9
            int r0 = r0.mPosition
            r1 = r4
            if (r0 == r1) goto L_0x005b
            r0 = r7
            r10 = r0
            goto L_0x0074
        L_0x004b:
            r0 = r9
            int r0 = r0.getLayoutPosition()
            r1 = r4
            if (r0 == r1) goto L_0x005b
            r0 = r7
            r10 = r0
            goto L_0x0074
        L_0x005b:
            r0 = r3
            b.v.d.b r0 = r0.f2527e
            r1 = r9
            android.view.View r1 = r1.itemView
            boolean r0 = r0.m31699d(r1)
            if (r0 == 0) goto L_0x0071
            r0 = r9
            r10 = r0
            goto L_0x0074
        L_0x0071:
            r0 = r9
            return r0
        L_0x0074:
            int r8 = r8 + 1
            r0 = r10
            r7 = r0
            goto L_0x000e
        L_0x007e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m37501a(int, boolean):androidx.recyclerview.widget.RecyclerView$b0");
    }

    /* renamed from: a */
    public AbstractC0495b0 m37500a(long j) {
        AbstractC0500g gVar = this.f2541l;
        AbstractC0495b0 b0Var = null;
        AbstractC0495b0 b0Var2 = null;
        if (gVar != null) {
            if (gVar.hasStableIds()) {
                int b = this.f2527e.m31706b();
                int i = 0;
                while (true) {
                    b0Var2 = b0Var;
                    if (i >= b) {
                        break;
                    }
                    AbstractC0495b0 l = m37422l(this.f2527e.m31698e(i));
                    b0Var = b0Var;
                    if (l != null) {
                        b0Var = b0Var;
                        if (!l.isRemoved()) {
                            b0Var = b0Var;
                            if (l.getItemId() != j) {
                                continue;
                            } else if (!this.f2527e.m31699d(l.itemView)) {
                                return l;
                            } else {
                                b0Var = l;
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                }
            } else {
                b0Var2 = null;
            }
        }
        return b0Var2;
    }

    /* renamed from: a */
    public final String m37498a(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        } else if (str.contains(".")) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + '.' + str;
        }
    }

    /* renamed from: a */
    public final void m37514a() {
        m37520J();
        setScrollState(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0079  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m37513a(float r7, float r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m37513a(float, float, float, float):void");
    }

    /* renamed from: a */
    public void m37512a(int i) {
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            oVar.mo37123f(i);
        }
        m37442f(i);
        AbstractC0519s sVar = this.f2536i0;
        if (sVar != null) {
            sVar.m37262a(this, i);
        }
        List<AbstractC0519s> list = this.f2538j0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2538j0.get(size).m37262a(this, i);
            }
        }
    }

    /* renamed from: a */
    public void m37511a(int i, int i2) {
        if (i < 0) {
            m37426k();
            if (this.f2504I.isFinished()) {
                this.f2504I.onAbsorb(-i);
            }
        } else if (i > 0) {
            m37423l();
            if (this.f2506K.isFinished()) {
                this.f2506K.onAbsorb(i);
            }
        }
        if (i2 < 0) {
            m37421m();
            if (this.f2505J.isFinished()) {
                this.f2505J.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            m37429j();
            if (this.f2507L.isFinished()) {
                this.f2507L.onAbsorb(i2);
            }
        }
        if (i != 0 || i2 != 0) {
            C1002u.m35254C(this);
        }
    }

    /* renamed from: a */
    public final void m37510a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().m35282a(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: a */
    public void m37508a(int i, int i2, Interpolator interpolator) {
        m37507a(i, i2, interpolator, Integer.MIN_VALUE);
    }

    /* renamed from: a */
    public void m37507a(int i, int i2, Interpolator interpolator, int i3) {
        m37506a(i, i2, interpolator, i3, false);
    }

    /* renamed from: a */
    public void m37506a(int i, int i2, Interpolator interpolator, int i3, boolean z) {
        AbstractC0511o oVar = this.f2543m;
        if (oVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.f2565x) {
            int i4 = 0;
            int i5 = i;
            if (!oVar.mo37180a()) {
                i5 = 0;
            }
            if (!this.f2543m.mo37150b()) {
                i2 = 0;
            }
            if (i5 != 0 || i2 != 0) {
                if (i3 == Integer.MIN_VALUE || i3 > 0) {
                    if (z) {
                        if (i5 != 0) {
                            i4 = 1;
                        }
                        int i6 = i4;
                        if (i2 != 0) {
                            i6 = i4 | 2;
                        }
                        m37425k(i6, 1);
                    }
                    this.f2528e0.m37398a(i5, i2, i3, interpolator);
                    return;
                }
                scrollBy(i5, i2);
            }
        }
    }

    /* renamed from: a */
    public void m37505a(int i, int i2, Object obj) {
        int i3;
        int b = this.f2527e.m31706b();
        for (int i4 = 0; i4 < b; i4++) {
            View e = this.f2527e.m31698e(i4);
            AbstractC0495b0 l = m37422l(e);
            if (l != null && !l.shouldIgnore() && (i3 = l.mPosition) >= i && i3 < i + i2) {
                l.addFlags(2);
                l.addChangePayload(obj);
                ((LayoutParams) e.getLayoutParams()).f2571c = true;
            }
        }
        this.f2521b.m37226c(i, i2);
    }

    /* renamed from: a */
    public void m37504a(int i, int i2, boolean z) {
        int b = this.f2527e.m31706b();
        for (int i3 = 0; i3 < b; i3++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31698e(i3));
            if (l != null && !l.shouldIgnore()) {
                int i4 = l.mPosition;
                if (i4 >= i + i2) {
                    l.offsetPosition(-i2, z);
                    this.f2534h0.f2641g = true;
                } else if (i4 >= i) {
                    l.flagRemovedAndOffsetPosition(i - 1, -i2, z);
                    this.f2534h0.f2641g = true;
                }
            }
        }
        this.f2521b.m37246a(i, i2, z);
        requestLayout();
    }

    /* renamed from: a */
    public void m37503a(int i, int i2, int[] iArr) {
        m37517M();
        m37408z();
        C0921f.m35495a("RV Scroll");
        m37479a(this.f2534h0);
        int a = i != 0 ? this.f2543m.mo37178a(i, this.f2521b, this.f2534h0) : 0;
        int b = i2 != 0 ? this.f2543m.mo37149b(i2, this.f2521b, this.f2534h0) : 0;
        C0921f.m35496a();
        m37522H();
        m37529A();
        m37454c(false);
        if (iArr != null) {
            iArr[0] = a;
            iArr[1] = b;
        }
    }

    /* renamed from: a */
    public final void m37499a(long j, AbstractC0495b0 b0Var, AbstractC0495b0 b0Var2) {
        int a = this.f2527e.m31712a();
        for (int i = 0; i < a; i++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31702c(i));
            if (l != b0Var && m37449d(l) == j) {
                AbstractC0500g gVar = this.f2541l;
                if (gVar == null || !gVar.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + l + " \n View Holder 2:" + b0Var + m37420n());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + l + " \n View Holder 2:" + b0Var + m37420n());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + b0Var2 + " cannot be found but it is necessary for " + b0Var + m37420n());
    }

    /* renamed from: a */
    public final void m37497a(Context context, String str, AttributeSet attributeSet, int i, int i2) {
        Constructor constructor;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                String a = m37498a(context, trim);
                try {
                    Class<? extends U> asSubclass = Class.forName(a, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC0511o.class);
                    Object[] objArr = null;
                    try {
                        constructor = asSubclass.getConstructor(f2492F0);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i), Integer.valueOf(i2)};
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = asSubclass.getConstructor(new Class[0]);
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + a, e2);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((AbstractC0511o) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + a, e3);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + a, e4);
                } catch (IllegalAccessException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + a, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a, e6);
                } catch (InvocationTargetException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a, e7);
                }
            }
        }
    }

    /* renamed from: a */
    public void m37496a(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + m37420n());
        }
        Resources resources = getContext().getResources();
        new C1921d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(C1902b.fastscroll_default_thickness), resources.getDimensionPixelSize(C1902b.fastscroll_minimum_range), resources.getDimensionPixelOffset(C1902b.fastscroll_margin));
    }

    /* renamed from: a */
    public void m37494a(View view) {
        AbstractC0495b0 l = m37422l(view);
        m37433h(view);
        AbstractC0500g gVar = this.f2541l;
        if (!(gVar == null || l == null)) {
            gVar.onViewAttachedToWindow(l);
        }
        List<AbstractC0516p> list = this.f2498C;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2498C.get(size).m37264b(view);
            }
        }
    }

    /* renamed from: a */
    public final void m37492a(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f2535i.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f2571c) {
                Rect rect = layoutParams2.f2570b;
                Rect rect2 = this.f2535i;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f2535i);
            offsetRectIntoDescendantCoords(view, this.f2535i);
        }
        this.f2543m.m37329a(this, view, this.f2535i, !this.f2559u, view2 == null);
    }

    /* renamed from: a */
    public final void m37489a(AbstractC0495b0 b0Var) {
        View view = b0Var.itemView;
        boolean z = view.getParent() == this;
        this.f2521b.m37218e(m37445e(view));
        if (b0Var.isTmpDetached()) {
            this.f2527e.m31709a(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.f2527e.m31707a(view, true);
        } else {
            this.f2527e.m31710a(view);
        }
    }

    /* renamed from: a */
    public final void m37487a(AbstractC0495b0 b0Var, AbstractC0495b0 b0Var2, AbstractC0505l.C0508c cVar, AbstractC0505l.C0508c cVar2, boolean z, boolean z2) {
        b0Var.setIsRecyclable(false);
        if (z) {
            m37489a(b0Var);
        }
        if (b0Var != b0Var2) {
            if (z2) {
                m37489a(b0Var2);
            }
            b0Var.mShadowedHolder = b0Var2;
            m37489a(b0Var);
            this.f2521b.m37218e(b0Var);
            b0Var2.setIsRecyclable(false);
            b0Var2.mShadowingHolder = b0Var;
        }
        if (this.f2508M.mo31568a(b0Var, b0Var2, cVar, cVar2)) {
            m37528B();
        }
    }

    /* renamed from: a */
    public void m37486a(AbstractC0495b0 b0Var, AbstractC0505l.C0508c cVar) {
        b0Var.setFlags(0, 8192);
        if (this.f2534h0.f2643i && b0Var.isUpdated() && !b0Var.isRemoved() && !b0Var.shouldIgnore()) {
            this.f2529f.m31532a(m37449d(b0Var), b0Var);
        }
        this.f2529f.m31523c(b0Var, cVar);
    }

    /* renamed from: a */
    public void m37485a(AbstractC0495b0 b0Var, AbstractC0505l.C0508c cVar, AbstractC0505l.C0508c cVar2) {
        b0Var.setIsRecyclable(false);
        if (this.f2508M.mo31567a(b0Var, cVar, cVar2)) {
            m37528B();
        }
    }

    /* renamed from: a */
    public final void m37484a(AbstractC0500g gVar, boolean z, boolean z2) {
        AbstractC0500g gVar2 = this.f2541l;
        if (gVar2 != null) {
            gVar2.unregisterAdapterDataObserver(this.f2519a);
            this.f2541l.onDetachedFromRecyclerView(this);
        }
        if (!z || z2) {
            m37523G();
        }
        this.f2525d.m31724f();
        AbstractC0500g gVar3 = this.f2541l;
        this.f2541l = gVar;
        if (gVar != null) {
            gVar.registerAdapterDataObserver(this.f2519a);
            gVar.onAttachedToRecyclerView(this);
        }
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            oVar.m37340a(gVar3, this.f2541l);
        }
        this.f2521b.m37237a(gVar3, this.f2541l, z);
        this.f2534h0.f2641g = true;
    }

    /* renamed from: a */
    public void m37483a(AbstractC0510n nVar) {
        m37482a(nVar, -1);
    }

    /* renamed from: a */
    public void m37482a(AbstractC0510n nVar, int i) {
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            oVar.mo37152a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f2547o.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.f2547o.add(nVar);
        } else {
            this.f2547o.add(i, nVar);
        }
        m37410x();
        requestLayout();
    }

    /* renamed from: a */
    public void m37481a(AbstractC0518r rVar) {
        this.f2549p.add(rVar);
    }

    /* renamed from: a */
    public void m37480a(AbstractC0519s sVar) {
        if (this.f2538j0 == null) {
            this.f2538j0 = new ArrayList();
        }
        this.f2538j0.add(sVar);
    }

    /* renamed from: a */
    public final void m37479a(C0526y yVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.f2528e0.f2577c;
            yVar.f2650p = overScroller.getFinalX() - overScroller.getCurrX();
            yVar.f2651q = overScroller.getFinalY() - overScroller.getCurrY();
            return;
        }
        yVar.f2650p = 0;
        yVar.f2651q = 0;
    }

    /* renamed from: a */
    public void m37474a(String str) {
        if (m37411w()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + m37420n());
            }
            throw new IllegalStateException(str);
        } else if (this.f2502G > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + m37420n()));
        }
    }

    /* renamed from: a */
    public void m37473a(boolean z) {
        int i = this.f2501F - 1;
        this.f2501F = i;
        if (i < 1) {
            this.f2501F = 0;
            if (z) {
                m37453d();
                m37432i();
            }
        }
    }

    /* renamed from: a */
    public final void m37472a(int[] iArr) {
        int a = this.f2527e.m31712a();
        if (a == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < a; i3++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31702c(i3));
            if (l.shouldIgnore()) {
                i2 = i2;
            } else {
                int layoutPosition = l.getLayoutPosition();
                int i4 = i;
                if (layoutPosition < i) {
                    i4 = layoutPosition;
                }
                i = i4;
                i2 = i2;
                if (layoutPosition > i2) {
                    i2 = layoutPosition;
                    i = i4;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    /* renamed from: a */
    public boolean m37509a(int i, int i2, MotionEvent motionEvent) {
        int i3;
        int i4;
        int i5;
        int i6;
        m37460c();
        if (this.f2541l != null) {
            int[] iArr = this.f2560u0;
            iArr[0] = 0;
            iArr[1] = 0;
            m37503a(i, i2, iArr);
            int[] iArr2 = this.f2560u0;
            int i7 = iArr2[0];
            int i8 = iArr2[1];
            i4 = i8;
            i3 = i7;
            i6 = i - i7;
            i5 = i2 - i8;
        } else {
            i4 = 0;
            i3 = 0;
            i6 = 0;
            i5 = 0;
        }
        if (!this.f2547o.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.f2560u0;
        iArr3[0] = 0;
        iArr3[1] = 0;
        m37510a(i3, i4, i6, i5, this.f2556s0, 0, iArr3);
        int[] iArr4 = this.f2560u0;
        int i9 = iArr4[0];
        int i10 = iArr4[1];
        boolean z = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i11 = this.f2514S;
        int[] iArr5 = this.f2556s0;
        this.f2514S = i11 - iArr5[0];
        this.f2515T -= iArr5[1];
        int[] iArr6 = this.f2558t0;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !C0990i.m35289a(motionEvent, 8194)) {
                m37513a(motionEvent.getX(), i6 - i9, motionEvent.getY(), i5 - i10);
            }
            m37469b(i, i2);
        }
        if (!(i3 == 0 && i4 == 0)) {
            m37446e(i3, i4);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        boolean z2 = true;
        if (!z) {
            z2 = true;
            if (i3 == 0) {
                z2 = i4 != 0;
            }
        }
        return z2;
    }

    /* renamed from: a */
    public boolean m37502a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m35280a(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: a */
    public final boolean m37495a(MotionEvent motionEvent) {
        AbstractC0518r rVar = this.f2551q;
        if (rVar != null) {
            rVar.mo31650a(this, motionEvent);
            int action = motionEvent.getAction();
            if (action != 3 && action != 1) {
                return true;
            }
            this.f2551q = null;
            return true;
        } else if (motionEvent.getAction() == 0) {
            return false;
        } else {
            return m37468b(motionEvent);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x021f, code lost:
        if ((r17 * r19) >= 0) goto L_0x0222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x023f, code lost:
        if ((r17 * r19) <= 0) goto L_0x0242;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m37491a(android.view.View r7, android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m37491a(android.view.View, android.view.View, int):boolean");
    }

    /* renamed from: a */
    public boolean m37490a(AccessibilityEvent accessibilityEvent) {
        int a = 0;
        if (!m37411w()) {
            return false;
        }
        a = accessibilityEvent != null ? C0969b.m35386a(accessibilityEvent) : 0;
        if (a == 0) {
        }
        this.f2568z |= a;
        return true;
    }

    /* renamed from: a */
    public boolean m37488a(AbstractC0495b0 b0Var, int i) {
        if (m37411w()) {
            b0Var.mPendingAccessibilityState = i;
            this.f2562v0.add(b0Var);
            return false;
        }
        C1002u.m35217f(b0Var.itemView, i);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        AbstractC0511o oVar = this.f2543m;
        if (oVar == null || !oVar.m37325a(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    /* renamed from: b */
    public AbstractC0495b0 m37470b(int i) {
        AbstractC0495b0 b0Var = null;
        if (this.f2499D) {
            return null;
        }
        int b = this.f2527e.m31706b();
        for (int i2 = 0; i2 < b; i2++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31698e(i2));
            b0Var = b0Var;
            if (l != null) {
                b0Var = b0Var;
                if (!l.isRemoved()) {
                    b0Var = b0Var;
                    if (m37455c(l) != i) {
                        continue;
                    } else if (!this.f2527e.m31699d(l.itemView)) {
                        return l;
                    } else {
                        b0Var = l;
                    }
                } else {
                    continue;
                }
            }
        }
        return b0Var;
    }

    /* renamed from: b */
    public void m37471b() {
        int b = this.f2527e.m31706b();
        for (int i = 0; i < b; i++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31698e(i));
            if (!l.shouldIgnore()) {
                l.clearOldPosition();
            }
        }
        this.f2521b.m37234b();
    }

    /* renamed from: b */
    public void m37469b(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.f2504I;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.f2504I.onRelease();
            z = this.f2504I.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f2506K;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            z2 = z;
            if (!edgeEffect2.isFinished()) {
                z2 = z;
                if (i < 0) {
                    this.f2506K.onRelease();
                    z2 = z | this.f2506K.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect3 = this.f2505J;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            z3 = z2;
            if (!edgeEffect3.isFinished()) {
                z3 = z2;
                if (i2 > 0) {
                    this.f2505J.onRelease();
                    z3 = z2 | this.f2505J.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect4 = this.f2507L;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            z4 = z3;
            if (!edgeEffect4.isFinished()) {
                z4 = z3;
                if (i2 < 0) {
                    this.f2507L.onRelease();
                    z4 = z3 | this.f2507L.isFinished();
                }
            }
        }
        if (z4) {
            C1002u.m35254C(this);
        }
    }

    /* renamed from: b */
    public void m37467b(View view) {
        AbstractC0495b0 l = m37422l(view);
        m37430i(view);
        AbstractC0500g gVar = this.f2541l;
        if (!(gVar == null || l == null)) {
            gVar.onViewDetachedFromWindow(l);
        }
        List<AbstractC0516p> list = this.f2498C;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2498C.get(size).m37265a(view);
            }
        }
    }

    /* renamed from: b */
    public void m37465b(AbstractC0495b0 b0Var, AbstractC0505l.C0508c cVar, AbstractC0505l.C0508c cVar2) {
        m37489a(b0Var);
        b0Var.setIsRecyclable(false);
        if (this.f2508M.mo31565b(b0Var, cVar, cVar2)) {
            m37528B();
        }
    }

    /* renamed from: b */
    public void m37464b(AbstractC0510n nVar) {
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            oVar.mo37152a("Cannot remove item decoration during a scroll  or layout");
        }
        this.f2547o.remove(nVar);
        if (this.f2547o.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        m37410x();
        requestLayout();
    }

    /* renamed from: b */
    public void m37463b(AbstractC0518r rVar) {
        this.f2549p.remove(rVar);
        if (this.f2551q == rVar) {
            this.f2551q = null;
        }
    }

    /* renamed from: b */
    public void m37462b(AbstractC0519s sVar) {
        List<AbstractC0519s> list = this.f2538j0;
        if (list != null) {
            list.remove(sVar);
        }
    }

    /* renamed from: b */
    public void m37461b(boolean z) {
        this.f2500E = z | this.f2500E;
        this.f2499D = true;
        m37409y();
    }

    /* renamed from: b */
    public final boolean m37468b(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.f2549p.size();
        for (int i = 0; i < size; i++) {
            AbstractC0518r rVar = this.f2549p.get(i);
            if (rVar.mo31642b(this, motionEvent) && action != 3) {
                this.f2551q = rVar;
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public boolean m37466b(AbstractC0495b0 b0Var) {
        AbstractC0505l lVar = this.f2508M;
        return lVar == null || lVar.mo31673a(b0Var, b0Var.getUnmodifiedPayloads());
    }

    /* renamed from: c */
    public int m37455c(AbstractC0495b0 b0Var) {
        if (b0Var.hasAnyOfTheFlags(524) || !b0Var.isBound()) {
            return -1;
        }
        return this.f2525d.m31744a(b0Var.mPosition);
    }

    /* renamed from: c */
    public View m37456c(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = (View) parent;
            parent = view.getParent();
        }
        if (parent != this) {
            view = null;
        }
        return view;
    }

    /* renamed from: c */
    public AbstractC0495b0 m37459c(int i) {
        return m37501a(i, false);
    }

    /* renamed from: c */
    public void m37460c() {
        if (!this.f2559u || this.f2499D) {
            C0921f.m35495a("RV FullInvalidate");
            m37448e();
            C0921f.m35496a();
        } else if (this.f2525d.m31734c()) {
            if (this.f2525d.m31729d(4) && !this.f2525d.m31729d(11)) {
                C0921f.m35495a("RV PartialInvalidate");
                m37517M();
                m37408z();
                this.f2525d.m31726e();
                if (!this.f2563w) {
                    if (m37417q()) {
                        m37448e();
                    } else {
                        this.f2525d.m31745a();
                    }
                }
                m37454c(true);
                m37529A();
                C0921f.m35496a();
            } else if (this.f2525d.m31734c()) {
                C0921f.m35495a("RV FullInvalidate");
                m37448e();
                C0921f.m35496a();
            }
        }
    }

    /* renamed from: c */
    public void m37458c(int i, int i2) {
        setMeasuredDimension(AbstractC0511o.m37360a(i, getPaddingLeft() + getPaddingRight(), C1002u.m35206p(this)), AbstractC0511o.m37360a(i2, getPaddingTop() + getPaddingBottom(), C1002u.m35207o(this)));
    }

    /* renamed from: c */
    public final void m37457c(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2510O) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f2510O = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f2514S = x;
            this.f2512Q = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f2515T = y;
            this.f2513R = y;
        }
    }

    /* renamed from: c */
    public void m37454c(boolean z) {
        if (this.f2561v < 1) {
            this.f2561v = 1;
        }
        if (!z && !this.f2565x) {
            this.f2563w = false;
        }
        if (this.f2561v == 1) {
            if (z && this.f2563w && !this.f2565x && this.f2543m != null && this.f2541l != null) {
                m37448e();
            }
            if (!this.f2565x) {
                this.f2563w = false;
            }
        }
        this.f2561v--;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.f2543m.mo37167a((LayoutParams) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC0511o oVar = this.f2543m;
        int i = 0;
        if (oVar == null) {
            return 0;
        }
        if (oVar.mo37180a()) {
            i = this.f2543m.mo37160a(this.f2534h0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC0511o oVar = this.f2543m;
        int i = 0;
        if (oVar == null) {
            return 0;
        }
        if (oVar.mo37180a()) {
            i = this.f2543m.mo37144b(this.f2534h0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC0511o oVar = this.f2543m;
        int i = 0;
        if (oVar == null) {
            return 0;
        }
        if (oVar.mo37180a()) {
            i = this.f2543m.mo37135c(this.f2534h0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC0511o oVar = this.f2543m;
        int i = 0;
        if (oVar == null) {
            return 0;
        }
        if (oVar.mo37150b()) {
            i = this.f2543m.mo37129d(this.f2534h0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC0511o oVar = this.f2543m;
        int i = 0;
        if (oVar == null) {
            return 0;
        }
        if (oVar.mo37150b()) {
            i = this.f2543m.mo37124e(this.f2534h0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC0511o oVar = this.f2543m;
        int i = 0;
        if (oVar == null) {
            return 0;
        }
        if (oVar.mo37150b()) {
            i = this.f2543m.mo37122f(this.f2534h0);
        }
        return i;
    }

    /* renamed from: d */
    public long m37449d(AbstractC0495b0 b0Var) {
        return this.f2541l.hasStableIds() ? b0Var.getItemId() : b0Var.mPosition;
    }

    /* renamed from: d */
    public AbstractC0495b0 m37450d(View view) {
        View c = m37456c(view);
        return c == null ? null : m37445e(c);
    }

    /* renamed from: d */
    public final void m37453d() {
        int i = this.f2568z;
        this.f2568z = 0;
        if (i != 0 && m37412v()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(AbstractC0495b0.FLAG_MOVED);
            C0969b.m35385a(obtain, i);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    /* renamed from: d */
    public void m37452d(int i) {
        int a = this.f2527e.m31712a();
        for (int i2 = 0; i2 < a; i2++) {
            this.f2527e.m31702c(i2).offsetLeftAndRight(i);
        }
    }

    /* renamed from: d */
    public final boolean m37451d(int i, int i2) {
        m37472a(this.f2552q0);
        int[] iArr = this.f2552q0;
        boolean z = false;
        if (!(iArr[0] == i && iArr[1] == i2)) {
            z = true;
        }
        return z;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m35286a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m35287a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m35281a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m35283a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.f2547o.size();
        for (int i = 0; i < size; i++) {
            this.f2547o.get(i).mo31643b(canvas, this, this.f2534h0);
        }
        EdgeEffect edgeEffect = this.f2504I;
        boolean z2 = true;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f2531g ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f2504I;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.f2505J;
        boolean z3 = z;
        if (edgeEffect3 != null) {
            z3 = z;
            if (!edgeEffect3.isFinished()) {
                int save2 = canvas.save();
                if (this.f2531g) {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                EdgeEffect edgeEffect4 = this.f2505J;
                z3 = z | (edgeEffect4 != null && edgeEffect4.draw(canvas));
                canvas.restoreToCount(save2);
            }
        }
        EdgeEffect edgeEffect5 = this.f2506K;
        boolean z4 = z3;
        if (edgeEffect5 != null) {
            z4 = z3;
            if (!edgeEffect5.isFinished()) {
                int save3 = canvas.save();
                int width = getWidth();
                int paddingTop = this.f2531g ? getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate(-paddingTop, -width);
                EdgeEffect edgeEffect6 = this.f2506K;
                z4 = z3 | (edgeEffect6 != null && edgeEffect6.draw(canvas));
                canvas.restoreToCount(save3);
            }
        }
        EdgeEffect edgeEffect7 = this.f2507L;
        z2 = z4;
        if (edgeEffect7 != null) {
            z2 = z4;
            if (!edgeEffect7.isFinished()) {
                int save4 = canvas.save();
                canvas.rotate(180.0f);
                if (this.f2531g) {
                    canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
                } else {
                    canvas.translate(-getWidth(), -getHeight());
                }
                EdgeEffect edgeEffect8 = this.f2507L;
                boolean z5 = false;
                if (edgeEffect8 != null) {
                    z5 = false;
                    if (edgeEffect8.draw(canvas)) {
                        z5 = true;
                    }
                }
                z2 = z4 | z5;
                canvas.restoreToCount(save4);
            }
        }
        if (z2 || this.f2508M == null || this.f2547o.size() <= 0 || this.f2508M.mo31664g()) {
        }
        if (z2) {
            C1002u.m35254C(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* renamed from: e */
    public AbstractC0495b0 m37445e(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return m37422l(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    /* renamed from: e */
    public void m37448e() {
        if (this.f2541l == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
        } else if (this.f2543m == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
        } else {
            C0526y yVar = this.f2534h0;
            yVar.f2644j = false;
            if (yVar.f2639e == 1) {
                m37443f();
                this.f2543m.m37297e(this);
                m37439g();
            } else if (!this.f2525d.m31730d() && this.f2543m.m37273q() == getWidth() && this.f2543m.m37290h() == getHeight()) {
                this.f2543m.m37297e(this);
            } else {
                this.f2543m.m37297e(this);
                m37439g();
            }
            m37435h();
        }
    }

    /* renamed from: e */
    public void m37447e(int i) {
        int a = this.f2527e.m31712a();
        for (int i2 = 0; i2 < a; i2++) {
            this.f2527e.m31702c(i2).offsetTopAndBottom(i);
        }
    }

    /* renamed from: e */
    public void m37446e(int i, int i2) {
        this.f2502G++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        m37431i(i, i2);
        AbstractC0519s sVar = this.f2536i0;
        if (sVar != null) {
            sVar.mo31634a(this, i, i2);
        }
        List<AbstractC0519s> list = this.f2538j0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2538j0.get(size).mo31634a(this, i, i2);
            }
        }
        this.f2502G--;
    }

    /* renamed from: f */
    public final int m37440f(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            View focusedChild = ((ViewGroup) view).getFocusedChild();
            view = focusedChild;
            if (focusedChild.getId() != -1) {
                id = focusedChild.getId();
                view = focusedChild;
            }
        }
        return id;
    }

    /* renamed from: f */
    public final void m37443f() {
        boolean z = true;
        this.f2534h0.m37200a(1);
        m37479a(this.f2534h0);
        this.f2534h0.f2644j = false;
        m37517M();
        this.f2529f.m31534a();
        m37408z();
        m37526D();
        m37519K();
        C0526y yVar = this.f2534h0;
        if (!yVar.f2645k || !this.f2542l0) {
            z = false;
        }
        yVar.f2643i = z;
        this.f2542l0 = false;
        this.f2540k0 = false;
        C0526y yVar2 = this.f2534h0;
        yVar2.f2642h = yVar2.f2646l;
        yVar2.f2640f = this.f2541l.getItemCount();
        m37472a(this.f2552q0);
        if (this.f2534h0.f2645k) {
            int a = this.f2527e.m31712a();
            for (int i = 0; i < a; i++) {
                AbstractC0495b0 l = m37422l(this.f2527e.m31702c(i));
                if (!l.shouldIgnore() && (!l.isInvalid() || this.f2541l.hasStableIds())) {
                    this.f2529f.m31523c(l, this.f2508M.m37382a(this.f2534h0, l, AbstractC0505l.m37376e(l), l.getUnmodifiedPayloads()));
                    if (this.f2534h0.f2643i && l.isUpdated() && !l.isRemoved() && !l.shouldIgnore() && !l.isInvalid()) {
                        this.f2529f.m31532a(m37449d(l), l);
                    }
                }
            }
        }
        if (this.f2534h0.f2646l) {
            m37518L();
            C0526y yVar3 = this.f2534h0;
            boolean z2 = yVar3.f2641g;
            yVar3.f2641g = false;
            this.f2543m.mo37125e(this.f2521b, yVar3);
            this.f2534h0.f2641g = z2;
            for (int i2 = 0; i2 < this.f2527e.m31712a(); i2++) {
                AbstractC0495b0 l2 = m37422l(this.f2527e.m31702c(i2));
                if (!l2.shouldIgnore() && !this.f2529f.m31524c(l2)) {
                    int e = AbstractC0505l.m37376e(l2);
                    boolean hasAnyOfTheFlags = l2.hasAnyOfTheFlags(8192);
                    int i3 = e;
                    if (!hasAnyOfTheFlags) {
                        i3 = e | 4096;
                    }
                    AbstractC0505l.C0508c a2 = this.f2508M.m37382a(this.f2534h0, l2, i3, l2.getUnmodifiedPayloads());
                    if (hasAnyOfTheFlags) {
                        m37486a(l2, a2);
                    } else {
                        this.f2529f.m31529a(l2, a2);
                    }
                }
            }
            m37471b();
        } else {
            m37471b();
        }
        m37529A();
        m37454c(false);
        this.f2534h0.f2639e = 2;
    }

    /* renamed from: f */
    public void m37442f(int i) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
        if (java.lang.Math.abs(r6) < r5.f2518W) goto L_0x0043;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        if (java.lang.Math.abs(r7) < r5.f2518W) goto L_0x0059;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m37441f(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m37441f(int, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        View view2;
        boolean z;
        View d = this.f2543m.m37302d(view, i);
        if (d != null) {
            return d;
        }
        boolean z2 = true;
        boolean z3 = this.f2541l != null && this.f2543m != null && !m37411w() && !this.f2565x;
        FocusFinder instance = FocusFinder.getInstance();
        if (!z3 || !(i == 2 || i == 1)) {
            view2 = instance.findNextFocus(this, view, i);
            if (view2 == null && z3) {
                m37460c();
                if (m37456c(view) == null) {
                    return null;
                }
                m37517M();
                view2 = this.f2543m.mo37172a(view, i, this.f2521b, this.f2534h0);
                m37454c(false);
            }
        } else {
            if (this.f2543m.mo37150b()) {
                int i2 = i == 2 ? 130 : 33;
                boolean z4 = instance.findNextFocus(this, view, i2) == null;
                z = z4;
                if (f2490D0) {
                    i = i2;
                    z = z4;
                }
            } else {
                z = false;
            }
            z2 = z;
            i = i;
            if (!z) {
                z2 = z;
                i = i;
                if (this.f2543m.mo37180a()) {
                    int i3 = (this.f2543m.m37286j() == 1) ^ (i == 2) ? 66 : 17;
                    if (instance.findNextFocus(this, view, i3) != null) {
                        z2 = false;
                    }
                    if (f2490D0) {
                        i = i3;
                    }
                }
            }
            if (z2) {
                m37460c();
                if (m37456c(view) == null) {
                    return null;
                }
                m37517M();
                this.f2543m.mo37172a(view, i, this.f2521b, this.f2534h0);
                m37454c(false);
            }
            view2 = instance.findNextFocus(this, view, i);
            i = i;
        }
        if (view2 == null || view2.hasFocusable()) {
            if (!m37491a(view, view2, i)) {
                view2 = super.focusSearch(view, i);
            }
            return view2;
        } else if (getFocusedChild() == null) {
            return super.focusSearch(view, i);
        } else {
            m37492a(view2, (View) null);
            return view;
        }
    }

    /* renamed from: g */
    public Rect m37436g(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f2571c) {
            return layoutParams.f2570b;
        }
        if (this.f2534h0.m37196d() && (layoutParams.m37406b() || layoutParams.m37404d())) {
            return layoutParams.f2570b;
        }
        Rect rect = layoutParams.f2570b;
        rect.set(0, 0, 0, 0);
        int size = this.f2547o.size();
        for (int i = 0; i < size; i++) {
            this.f2535i.set(0, 0, 0, 0);
            this.f2547o.get(i).m37366a(this.f2535i, view, this, this.f2534h0);
            int i2 = rect.left;
            Rect rect2 = this.f2535i;
            rect.left = i2 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f2571c = false;
        return rect;
    }

    /* renamed from: g */
    public final void m37439g() {
        m37517M();
        m37408z();
        this.f2534h0.m37200a(6);
        this.f2525d.m31738b();
        this.f2534h0.f2640f = this.f2541l.getItemCount();
        C0526y yVar = this.f2534h0;
        yVar.f2638d = 0;
        yVar.f2642h = false;
        this.f2543m.mo37125e(this.f2521b, yVar);
        C0526y yVar2 = this.f2534h0;
        yVar2.f2641g = false;
        this.f2523c = null;
        yVar2.f2645k = yVar2.f2645k && this.f2508M != null;
        this.f2534h0.f2639e = 4;
        m37529A();
        m37454c(false);
    }

    /* renamed from: g */
    public void m37438g(int i) {
        getScrollingChildHelper().m35271d(i);
    }

    /* renamed from: g */
    public void m37437g(int i, int i2) {
        int b = this.f2527e.m31706b();
        for (int i3 = 0; i3 < b; i3++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31698e(i3));
            if (l != null && !l.shouldIgnore() && l.mPosition >= i) {
                l.offsetPosition(i2, false);
                this.f2534h0.f2641g = true;
            }
        }
        this.f2521b.m37247a(i, i2);
        requestLayout();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            return oVar.mo37139c();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m37420n());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            return oVar.mo37176a(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m37420n());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            return oVar.mo37169a(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m37420n());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC0500g getAdapter() {
        return this.f2541l;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0511o oVar = this.f2543m;
        return oVar != null ? oVar.m37305d() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        AbstractC0503j jVar = this.f2550p0;
        return jVar == null ? super.getChildDrawingOrder(i, i2) : jVar.m37387a(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f2531g;
    }

    public C1936i getCompatAccessibilityDelegate() {
        return this.f2548o0;
    }

    public C0504k getEdgeEffectFactory() {
        return this.f2503H;
    }

    public AbstractC0505l getItemAnimator() {
        return this.f2508M;
    }

    public int getItemDecorationCount() {
        return this.f2547o.size();
    }

    public AbstractC0511o getLayoutManager() {
        return this.f2543m;
    }

    public int getMaxFlingVelocity() {
        return this.f2520a0;
    }

    public int getMinFlingVelocity() {
        return this.f2518W;
    }

    public long getNanoTime() {
        if (f2489C0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC0517q getOnFlingListener() {
        return this.f2517V;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f2526d0;
    }

    public C0520t getRecycledViewPool() {
        return this.f2521b.m37223d();
    }

    public int getScrollState() {
        return this.f2509N;
    }

    /* renamed from: h */
    public final void m37435h() {
        this.f2534h0.m37200a(4);
        m37517M();
        m37408z();
        C0526y yVar = this.f2534h0;
        yVar.f2639e = 1;
        if (yVar.f2645k) {
            for (int a = this.f2527e.m31712a() - 1; a >= 0; a--) {
                AbstractC0495b0 l = m37422l(this.f2527e.m31702c(a));
                if (!l.shouldIgnore()) {
                    long d = m37449d(l);
                    AbstractC0505l.C0508c a2 = this.f2508M.m37383a(this.f2534h0, l);
                    AbstractC0495b0 a3 = this.f2529f.m31533a(d);
                    if (a3 == null || a3.shouldIgnore()) {
                        this.f2529f.m31525b(l, a2);
                    } else {
                        boolean b = this.f2529f.m31526b(a3);
                        boolean b2 = this.f2529f.m31526b(l);
                        if (!b || a3 != l) {
                            AbstractC0505l.C0508c f = this.f2529f.m31520f(a3);
                            this.f2529f.m31525b(l, a2);
                            AbstractC0505l.C0508c e = this.f2529f.m31521e(l);
                            if (f == null) {
                                m37499a(d, l, a3);
                            } else {
                                m37487a(a3, l, f, e, b, b2);
                            }
                        } else {
                            this.f2529f.m31525b(l, a2);
                        }
                    }
                }
            }
            this.f2529f.m31528a(this.f2566x0);
        }
        this.f2543m.m37308c(this.f2521b);
        C0526y yVar2 = this.f2534h0;
        yVar2.f2637c = yVar2.f2640f;
        this.f2499D = false;
        this.f2500E = false;
        yVar2.f2645k = false;
        yVar2.f2646l = false;
        this.f2543m.f2602h = false;
        ArrayList<AbstractC0495b0> arrayList = this.f2521b.f2626b;
        if (arrayList != null) {
            arrayList.clear();
        }
        AbstractC0511o oVar = this.f2543m;
        if (oVar.f2608n) {
            oVar.f2607m = 0;
            oVar.f2608n = false;
            this.f2521b.m37211j();
        }
        this.f2543m.mo37121g(this.f2534h0);
        m37529A();
        m37454c(false);
        this.f2529f.m31534a();
        int[] iArr = this.f2552q0;
        if (m37451d(iArr[0], iArr[1])) {
            m37446e(0, 0);
        }
        m37525E();
        m37521I();
    }

    /* renamed from: h */
    public void m37434h(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int b = this.f2527e.m31706b();
        if (i < i2) {
            i5 = -1;
            i4 = i;
            i3 = i2;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i7 = 0; i7 < b; i7++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31698e(i7));
            if (l != null && (i6 = l.mPosition) >= i4 && i6 <= i3) {
                if (i6 == i) {
                    l.offsetPosition(i2 - i, false);
                } else {
                    l.offsetPosition(i5, false);
                }
                this.f2534h0.f2641g = true;
            }
        }
        this.f2521b.m37232b(i, i2);
        requestLayout();
    }

    /* renamed from: h */
    public void m37433h(View view) {
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m35277b();
    }

    /* renamed from: i */
    public void m37432i() {
        int i;
        for (int size = this.f2562v0.size() - 1; size >= 0; size--) {
            AbstractC0495b0 b0Var = this.f2562v0.get(size);
            if (b0Var.itemView.getParent() == this && !b0Var.shouldIgnore() && (i = b0Var.mPendingAccessibilityState) != -1) {
                C1002u.m35217f(b0Var.itemView, i);
                b0Var.mPendingAccessibilityState = -1;
            }
        }
        this.f2562v0.clear();
    }

    /* renamed from: i */
    public void m37431i(int i, int i2) {
    }

    /* renamed from: i */
    public void m37430i(View view) {
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f2553r;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f2565x;
    }

    @Override // android.view.View, p012b.p042i.p054p.AbstractC0993l
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().m35274c();
    }

    /* renamed from: j */
    public void m37429j() {
        if (this.f2507L == null) {
            EdgeEffect a = this.f2503H.m37386a(this, 3);
            this.f2507L = a;
            if (this.f2531g) {
                a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    /* renamed from: j */
    public void m37428j(int i, int i2) {
        m37508a(i, i2, (Interpolator) null);
    }

    /* renamed from: j */
    public boolean m37427j(View view) {
        m37517M();
        boolean f = this.f2527e.m31695f(view);
        if (f) {
            AbstractC0495b0 l = m37422l(view);
            this.f2521b.m37218e(l);
            this.f2521b.m37221d(l);
        }
        m37454c(!f);
        return f;
    }

    /* renamed from: k */
    public void m37426k() {
        if (this.f2504I == null) {
            EdgeEffect a = this.f2503H.m37386a(this, 0);
            this.f2504I = a;
            if (this.f2531g) {
                a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* renamed from: k */
    public boolean m37425k(int i, int i2) {
        return getScrollingChildHelper().m35284a(i, i2);
    }

    /* renamed from: l */
    public void m37423l() {
        if (this.f2506K == null) {
            EdgeEffect a = this.f2503H.m37386a(this, 2);
            this.f2506K = a;
            if (this.f2531g) {
                a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* renamed from: m */
    public void m37421m() {
        if (this.f2505J == null) {
            EdgeEffect a = this.f2503H.m37386a(this, 1);
            this.f2505J = a;
            if (this.f2531g) {
                a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    /* renamed from: n */
    public String m37420n() {
        return " " + super.toString() + ", adapter:" + this.f2541l + ", layout:" + this.f2543m + ", context:" + getContext();
    }

    /* renamed from: o */
    public final View m37419o() {
        AbstractC0495b0 b;
        AbstractC0495b0 b2;
        int i = this.f2534h0.f2647m;
        if (i == -1) {
            i = 0;
        }
        int a = this.f2534h0.m37201a();
        for (int i2 = i; i2 < a && (b2 = m37470b(i2)) != null; i2++) {
            if (b2.itemView.hasFocusable()) {
                return b2.itemView;
            }
        }
        for (int min = Math.min(a, i) - 1; min >= 0 && (b = m37470b(min)) != null; min--) {
            if (b.itemView.hasFocusable()) {
                return b.itemView;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2501F = 0;
        boolean z = true;
        this.f2553r = true;
        if (!this.f2559u || isLayoutRequested()) {
            z = false;
        }
        this.f2559u = z;
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            oVar.m37332a(this);
        }
        this.f2546n0 = false;
        if (f2489C0) {
            RunnableC1926e eVar = RunnableC1926e.f7604e.get();
            this.f2530f0 = eVar;
            if (eVar == null) {
                this.f2530f0 = new RunnableC1926e();
                Display i = C1002u.m35213i(this);
                float f = 60.0f;
                if (!isInEditMode()) {
                    f = 60.0f;
                    if (i != null) {
                        float refreshRate = i.getRefreshRate();
                        f = 60.0f;
                        if (refreshRate >= 30.0f) {
                            f = refreshRate;
                        }
                    }
                }
                RunnableC1926e eVar2 = this.f2530f0;
                eVar2.f7608c = 1.0E9f / f;
                RunnableC1926e.f7604e.set(eVar2);
            }
            this.f2530f0.m31631a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        RunnableC1926e eVar;
        super.onDetachedFromWindow();
        AbstractC0505l lVar = this.f2508M;
        if (lVar != null) {
            lVar.mo31668b();
        }
        m37516N();
        this.f2553r = false;
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null) {
            oVar.m37327a(this, this.f2521b);
        }
        this.f2562v0.clear();
        removeCallbacks(this.f2564w0);
        this.f2529f.m31527b();
        if (f2489C0 && (eVar = this.f2530f0) != null) {
            eVar.m31624b(this);
            this.f2530f0 = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f2547o.size();
        for (int i = 0; i < size; i++) {
            this.f2547o.get(i).m37368a(canvas, this, this.f2534h0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f2543m
            if (r0 != 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r5
            boolean r0 = r0.f2565x
            if (r0 == 0) goto L_0x0012
            r0 = 0
            return r0
        L_0x0012:
            r0 = r6
            int r0 = r0.getAction()
            r1 = 8
            if (r0 != r1) goto L_0x00ac
            r0 = r6
            int r0 = r0.getSource()
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0057
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f2543m
            boolean r0 = r0.mo37150b()
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
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f2543m
            boolean r0 = r0.mo37180a()
            if (r0 == 0) goto L_0x008a
            r0 = r6
            r1 = 10
            float r0 = r0.getAxisValue(r1)
            r9 = r0
            r0 = r7
            r8 = r0
            r0 = r9
            r7 = r0
            goto L_0x008c
        L_0x0057:
            r0 = r6
            int r0 = r0.getSource()
            r1 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0088
            r0 = r6
            r1 = 26
            float r0 = r0.getAxisValue(r1)
            r7 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f2543m
            boolean r0 = r0.mo37150b()
            if (r0 == 0) goto L_0x0079
            r0 = r7
            float r0 = -r0
            r8 = r0
            goto L_0x008a
        L_0x0079:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.f2543m
            boolean r0 = r0.mo37180a()
            if (r0 == 0) goto L_0x0088
            r0 = 0
            r8 = r0
            goto L_0x008c
        L_0x0088:
            r0 = 0
            r8 = r0
        L_0x008a:
            r0 = 0
            r7 = r0
        L_0x008c:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0098
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00ac
        L_0x0098:
            r0 = r5
            r1 = r7
            r2 = r5
            float r2 = r2.f2522b0
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r8
            r3 = r5
            float r3 = r3.f2524c0
            float r2 = r2 * r3
            int r2 = (int) r2
            r3 = r6
            boolean r0 = r0.m37509a(r1, r2, r3)
        L_0x00ac:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2 = false;
        if (this.f2565x) {
            return false;
        }
        this.f2551q = null;
        if (m37468b(motionEvent)) {
            m37514a();
            return true;
        }
        AbstractC0511o oVar = this.f2543m;
        if (oVar == null) {
            return false;
        }
        boolean a = oVar.mo37180a();
        boolean b = this.f2543m.mo37150b();
        if (this.f2511P == null) {
            this.f2511P = VelocityTracker.obtain();
        }
        this.f2511P.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f2567y) {
                this.f2567y = false;
            }
            this.f2510O = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.f2514S = x;
            this.f2512Q = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.f2515T = y;
            this.f2513R = y;
            if (this.f2509N == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                m37438g(1);
            }
            int[] iArr = this.f2558t0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i = a ? 1 : 0;
            int i2 = i;
            if (b) {
                i2 = i | 2;
            }
            m37425k(i2, 0);
        } else if (actionMasked == 1) {
            this.f2511P.clear();
            m37438g(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f2510O);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f2510O + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.f2509N != 1) {
                int i3 = this.f2512Q;
                int i4 = this.f2513R;
                if (!a || Math.abs(x2 - i3) <= this.f2516U) {
                    z = false;
                } else {
                    this.f2514S = x2;
                    z = true;
                }
                boolean z3 = z;
                if (b) {
                    z3 = z;
                    if (Math.abs(y2 - i4) > this.f2516U) {
                        this.f2515T = y2;
                        z3 = true;
                    }
                }
                if (z3) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            m37514a();
        } else if (actionMasked == 5) {
            this.f2510O = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f2514S = x3;
            this.f2512Q = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f2515T = y3;
            this.f2513R = y3;
        } else if (actionMasked == 6) {
            m37457c(motionEvent);
        }
        if (this.f2509N == 1) {
            z2 = true;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0921f.m35495a("RV OnLayout");
        m37448e();
        C0921f.m35496a();
        this.f2559u = true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        AbstractC0511o oVar = this.f2543m;
        if (oVar == null) {
            m37458c(i, i2);
        } else if (oVar.mo37102u()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f2543m.m37337a(this.f2521b, this.f2534h0, i, i2);
            boolean z = false;
            if (mode == 1073741824) {
                z = false;
                if (mode2 == 1073741824) {
                    z = true;
                }
            }
            if (!z && this.f2541l != null) {
                if (this.f2534h0.f2639e == 1) {
                    m37443f();
                }
                this.f2543m.m37321b(i, i2);
                this.f2534h0.f2644j = true;
                m37439g();
                this.f2543m.m37304d(i, i2);
                if (this.f2543m.mo37364A()) {
                    this.f2543m.m37321b(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    this.f2534h0.f2644j = true;
                    m37439g();
                    this.f2543m.m37304d(i, i2);
                }
            }
        } else if (this.f2555s) {
            this.f2543m.m37337a(this.f2521b, this.f2534h0, i, i2);
        } else {
            if (this.f2496A) {
                m37517M();
                m37408z();
                m37526D();
                m37529A();
                C0526y yVar = this.f2534h0;
                if (yVar.f2646l) {
                    yVar.f2642h = true;
                } else {
                    this.f2525d.m31738b();
                    this.f2534h0.f2642h = false;
                }
                this.f2496A = false;
                m37454c(false);
            } else if (this.f2534h0.f2646l) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            AbstractC0500g gVar = this.f2541l;
            if (gVar != null) {
                this.f2534h0.f2640f = gVar.getItemCount();
            } else {
                this.f2534h0.f2640f = 0;
            }
            m37517M();
            this.f2543m.m37337a(this.f2521b, this.f2534h0, i, i2);
            m37454c(false);
            this.f2534h0.f2642h = false;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (m37411w()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f2523c = savedState;
        super.onRestoreInstanceState(savedState.m38516a());
        AbstractC0511o oVar = this.f2543m;
        if (oVar != null && (parcelable2 = this.f2523c.f2573c) != null) {
            oVar.mo37174a(parcelable2);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f2523c;
        if (savedState2 != null) {
            savedState.m37403a(savedState2);
        } else {
            AbstractC0511o oVar = this.f2543m;
            if (oVar != null) {
                savedState.f2573c = oVar.mo37099x();
            } else {
                savedState.f2573c = null;
            }
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 || i2 != i4) {
            m37413u();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0327, code lost:
        if (r14 != 0) goto L_0x032a;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0213  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 1060
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public boolean m37418p() {
        return !this.f2559u || this.f2499D || this.f2525d.m31734c();
    }

    /* renamed from: q */
    public final boolean m37417q() {
        int a = this.f2527e.m31712a();
        for (int i = 0; i < a; i++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31702c(i));
            if (!(l == null || l.shouldIgnore() || !l.isUpdated())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: r */
    public void m37416r() {
        this.f2525d = new C1904a(new C0499f());
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        AbstractC0495b0 l = m37422l(view);
        if (l != null) {
            if (l.isTmpDetached()) {
                l.clearTmpDetachFlag();
            } else if (!l.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + l + m37420n());
            }
        }
        view.clearAnimation();
        m37467b(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f2543m.m37326a(this, this.f2534h0, view, view2) && view2 != null) {
            m37492a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f2543m.m37330a(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.f2549p.size();
        for (int i = 0; i < size; i++) {
            this.f2549p.get(i).mo31649a(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f2561v != 0 || this.f2565x) {
            this.f2563w = true;
        } else {
            super.requestLayout();
        }
    }

    /* renamed from: s */
    public final void m37415s() {
        if (C1002u.m35209m(this) == 0) {
            C1002u.m35215g(this, 8);
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        AbstractC0511o oVar = this.f2543m;
        if (oVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.f2565x) {
            boolean a = oVar.mo37180a();
            boolean b = this.f2543m.mo37150b();
            if (a || b) {
                if (!a) {
                    i = 0;
                }
                if (!b) {
                    i2 = 0;
                }
                m37509a(i, i2, (MotionEvent) null);
            }
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!m37490a(accessibilityEvent)) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setAccessibilityDelegateCompat(C1936i iVar) {
        this.f2548o0 = iVar;
        C1002u.m35238a(this, iVar);
    }

    public void setAdapter(AbstractC0500g gVar) {
        setLayoutFrozen(false);
        m37484a(gVar, false, true);
        m37461b(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(AbstractC0503j jVar) {
        if (jVar != this.f2550p0) {
            this.f2550p0 = jVar;
            setChildrenDrawingOrderEnabled(jVar != null);
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f2531g) {
            m37413u();
        }
        this.f2531g = z;
        super.setClipToPadding(z);
        if (this.f2559u) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(C0504k kVar) {
        C0948h.m35442a(kVar);
        this.f2503H = kVar;
        m37413u();
    }

    public void setHasFixedSize(boolean z) {
        this.f2555s = z;
    }

    public void setItemAnimator(AbstractC0505l lVar) {
        AbstractC0505l lVar2 = this.f2508M;
        if (lVar2 != null) {
            lVar2.mo31668b();
            this.f2508M.m37384a((AbstractC0505l.AbstractC0507b) null);
        }
        this.f2508M = lVar;
        if (lVar != null) {
            lVar.m37384a(this.f2544m0);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.f2521b.m37216f(i);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC0511o oVar) {
        if (oVar != this.f2543m) {
            m37516N();
            if (this.f2543m != null) {
                AbstractC0505l lVar = this.f2508M;
                if (lVar != null) {
                    lVar.mo31668b();
                }
                this.f2543m.m37315b(this.f2521b);
                this.f2543m.m37308c(this.f2521b);
                this.f2521b.m37249a();
                if (this.f2553r) {
                    this.f2543m.m37327a(this, this.f2521b);
                }
                this.f2543m.m37294f((RecyclerView) null);
                this.f2543m = null;
            } else {
                this.f2521b.m37249a();
            }
            this.f2527e.m31703c();
            this.f2543m = oVar;
            if (oVar != null) {
                if (oVar.f2596b == null) {
                    oVar.m37294f(this);
                    if (this.f2553r) {
                        this.f2543m.m37332a(this);
                    }
                } else {
                    throw new IllegalArgumentException("LayoutManager " + oVar + " is already attached to a RecyclerView:" + oVar.f2596b.m37420n());
                }
            }
            this.f2521b.m37211j();
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().m35278a(z);
    }

    public void setOnFlingListener(AbstractC0517q qVar) {
        this.f2517V = qVar;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0519s sVar) {
        this.f2536i0 = sVar;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.f2526d0 = z;
    }

    public void setRecycledViewPool(C0520t tVar) {
        this.f2521b.m37236a(tVar);
    }

    public void setRecyclerListener(AbstractC0523v vVar) {
        this.f2545n = vVar;
    }

    public void setScrollState(int i) {
        if (i != this.f2509N) {
            this.f2509N = i;
            if (i != 2) {
                m37515O();
            }
            m37512a(i);
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
            } else {
                this.f2516U = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.f2516U = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC0527z zVar) {
        this.f2521b.m37235a(zVar);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m35273c(i);
    }

    @Override // android.view.View, p012b.p042i.p054p.AbstractC0993l
    public void stopNestedScroll() {
        getScrollingChildHelper().m35272d();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.f2565x) {
            m37474a("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.f2565x = false;
                if (!(!this.f2563w || this.f2543m == null || this.f2541l == null)) {
                    requestLayout();
                }
                this.f2563w = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f2565x = true;
            this.f2567y = true;
            m37516N();
        }
    }

    /* renamed from: t */
    public final void m37414t() {
        this.f2527e = new C1907b(new C0498e());
    }

    /* renamed from: u */
    public void m37413u() {
        this.f2507L = null;
        this.f2505J = null;
        this.f2506K = null;
        this.f2504I = null;
    }

    /* renamed from: v */
    public boolean m37412v() {
        AccessibilityManager accessibilityManager = this.f2497B;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    /* renamed from: w */
    public boolean m37411w() {
        return this.f2501F > 0;
    }

    /* renamed from: x */
    public void m37410x() {
        int b = this.f2527e.m31706b();
        for (int i = 0; i < b; i++) {
            ((LayoutParams) this.f2527e.m31698e(i).getLayoutParams()).f2571c = true;
        }
        this.f2521b.m37214g();
    }

    /* renamed from: y */
    public void m37409y() {
        int b = this.f2527e.m31706b();
        for (int i = 0; i < b; i++) {
            AbstractC0495b0 l = m37422l(this.f2527e.m31698e(i));
            if (l != null && !l.shouldIgnore()) {
                l.addFlags(6);
            }
        }
        m37410x();
        this.f2521b.m37213h();
    }

    /* renamed from: z */
    public void m37408z() {
        this.f2501F++;
    }
}
