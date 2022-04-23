package androidx.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.core.p037g.AbstractC0731j;
import androidx.core.p037g.AbstractC0735n;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.C0732k;
import androidx.core.p037g.C0736o;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0696d;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements AbstractC0731j, AbstractC0735n {

    /* renamed from: w */
    private static final C0772a f3183w = new C0772a();

    /* renamed from: x */
    private static final int[] f3184x = {16843130};

    /* renamed from: A */
    private float f3185A;

    /* renamed from: B */
    private AbstractC0773b f3186B;

    /* renamed from: a */
    private long f3187a;

    /* renamed from: b */
    private final Rect f3188b;

    /* renamed from: c */
    private OverScroller f3189c;

    /* renamed from: d */
    private EdgeEffect f3190d;

    /* renamed from: e */
    private EdgeEffect f3191e;

    /* renamed from: f */
    private int f3192f;

    /* renamed from: g */
    private boolean f3193g;

    /* renamed from: h */
    private boolean f3194h;

    /* renamed from: i */
    private View f3195i;

    /* renamed from: j */
    private boolean f3196j;

    /* renamed from: k */
    private VelocityTracker f3197k;

    /* renamed from: l */
    private boolean f3198l;

    /* renamed from: m */
    private boolean f3199m;

    /* renamed from: n */
    private int f3200n;

    /* renamed from: o */
    private int f3201o;

    /* renamed from: p */
    private int f3202p;

    /* renamed from: q */
    private int f3203q;

    /* renamed from: r */
    private final int[] f3204r;

    /* renamed from: s */
    private final int[] f3205s;

    /* renamed from: t */
    private int f3206t;

    /* renamed from: u */
    private int f3207u;

    /* renamed from: v */
    private SavedState f3208v;

    /* renamed from: y */
    private final C0736o f3209y;

    /* renamed from: z */
    private final C0732k f3210z;

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0784i();

        /* renamed from: a */
        public int f3211a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            this.f3211a = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f3211a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3211a);
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$a.class */
    static final class C0772a extends C0689a {
        C0772a() {
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final void mo802a(View view, C0696d dVar) {
            int a;
            super.mo802a(view, dVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            dVar.m8514b((CharSequence) ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (a = nestedScrollView.m8202a()) > 0) {
                dVar.m8482k(true);
                if (nestedScrollView.getScrollY() > 0) {
                    dVar.m8535a(8192);
                }
                if (nestedScrollView.getScrollY() < a) {
                    dVar.m8535a(CodedOutputStream.DEFAULT_BUFFER_SIZE);
                }
            }
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final boolean mo6385a(View view, int i, Bundle bundle) {
            if (super.mo6385a(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i == 4096) {
                int height = nestedScrollView.getHeight();
                int paddingBottom = nestedScrollView.getPaddingBottom();
                int min = Math.min(nestedScrollView.getScrollY() + ((height - paddingBottom) - nestedScrollView.getPaddingTop()), nestedScrollView.m8202a());
                if (min == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.m8180b(min);
                return true;
            } else if (i != 8192) {
                return false;
            } else {
                int height2 = nestedScrollView.getHeight();
                int paddingBottom2 = nestedScrollView.getPaddingBottom();
                int max = Math.max(nestedScrollView.getScrollY() - ((height2 - paddingBottom2) - nestedScrollView.getPaddingTop()), 0);
                if (max == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.m8180b(max);
                return true;
            }
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: d */
        public final void mo1060d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo1060d(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.m8202a() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            int scrollX = nestedScrollView.getScrollX();
            if (Build.VERSION.SDK_INT >= 15) {
                accessibilityEvent.setMaxScrollX(scrollX);
            }
            int a = nestedScrollView.m8202a();
            if (Build.VERSION.SDK_INT >= 15) {
                accessibilityEvent.setMaxScrollY(a);
            }
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$b.class */
    public interface AbstractC0773b {
        /* renamed from: a */
        void mo8163a(NestedScrollView nestedScrollView);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3188b = new Rect();
        this.f3193g = true;
        this.f3194h = false;
        this.f3195i = null;
        this.f3196j = false;
        this.f3199m = true;
        this.f3203q = -1;
        this.f3204r = new int[2];
        this.f3205s = new int[2];
        this.f3189c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f3200n = viewConfiguration.getScaledTouchSlop();
        this.f3201o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3202p = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3184x, i, 0);
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        if (z != this.f3198l) {
            this.f3198l = z;
            requestLayout();
        }
        obtainStyledAttributes.recycle();
        this.f3209y = new C0736o();
        this.f3210z = new C0732k(this);
        setNestedScrollingEnabled(true);
        C0741t.m8348a(this, f3183w);
    }

    /* renamed from: a */
    private int m8195a(Rect rect) {
        int i;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i2 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i3 = scrollY;
        if (rect.top > 0) {
            i3 = scrollY + verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i4 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i2 - verticalFadingEdgeLength : i2;
        if (rect.bottom <= i4 || rect.top <= i3) {
            i = 0;
            if (rect.top < i3) {
                i = 0;
                if (rect.bottom < i4) {
                    i = Math.max(rect.height() > height ? 0 - (i4 - rect.bottom) : 0 - (i3 - rect.top), -getScrollY());
                }
            }
        } else {
            i = Math.min((rect.height() > height ? rect.top - i3 : rect.bottom - i4) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i2);
        }
        return i;
    }

    /* renamed from: a */
    private View m8182a(boolean z, int i, int i2) {
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        boolean z2 = false;
        View view = null;
        for (int i3 = 0; i3 < size; i3++) {
            View view2 = (View) focusables.get(i3);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            view = view;
            z2 = z2;
            if (i < bottom) {
                view = view;
                z2 = z2;
                if (top < i2) {
                    boolean z3 = i < top && bottom < i2;
                    if (view == null) {
                        view = view2;
                        z2 = z3;
                    } else {
                        boolean z4 = (z && top < view.getTop()) || (!z && bottom > view.getBottom());
                        if (z2) {
                            view = view;
                            z2 = z2;
                            if (z3) {
                                view = view;
                                z2 = z2;
                                if (!z4) {
                                }
                                view = view2;
                                z2 = z2;
                            }
                        } else if (z3) {
                            view = view2;
                            z2 = true;
                        } else {
                            view = view;
                            z2 = z2;
                            if (!z4) {
                            }
                            view = view2;
                            z2 = z2;
                        }
                    }
                }
            }
        }
        return view;
    }

    /* renamed from: a */
    private void m8198a(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f3210z.m8394a(scrollY2, i - scrollY2, (int[]) null, i2, iArr);
    }

    /* renamed from: a */
    private void m8197a(int i, int i2, int[] iArr, int i3, int[] iArr2) {
        this.f3210z.m8394a(i, i2, iArr, i3, iArr2);
    }

    /* renamed from: a */
    private void m8193a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3203q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f3192f = (int) motionEvent.getY(i);
            this.f3203q = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f3197k;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: a */
    private void m8183a(boolean z) {
        if (z) {
            m8201a(2, 1);
        } else {
            mo7266a(1);
        }
        this.f3207u = getScrollY();
        C0741t.m8329e(this);
    }

    /* renamed from: a */
    private boolean m8201a(int i, int i2) {
        return this.f3210z.m8398a(i, i2);
    }

    /* renamed from: a */
    private boolean m8200a(int i, int i2, int i3) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z = false;
        boolean z2 = i == 33;
        View a = m8182a(z2, i2, i3);
        View view = a;
        if (a == null) {
            view = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m8166g(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z;
    }

    /* renamed from: a */
    private boolean m8199a(int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2;
        getOverScrollMode();
        computeHorizontalScrollRange();
        computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        computeVerticalScrollExtent();
        int i5 = i2 + 0;
        int i6 = i + i3;
        int i7 = i4 + 0;
        if (i5 <= 0 && i5 >= 0) {
            z = false;
        } else {
            z = true;
            i5 = 0;
        }
        if (i6 > i7) {
            z2 = true;
            i6 = i7;
        } else if (i6 < 0) {
            z2 = true;
            i6 = 0;
        } else {
            z2 = false;
        }
        if (z2 && !m8174c(1)) {
            this.f3189c.springBack(i5, i6, 0, 0, 0, m8202a());
        }
        onOverScrolled(i5, i6, z, z2);
        return z || z2;
    }

    /* renamed from: a */
    private boolean m8196a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f3210z.m8392a(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: a */
    private boolean m8192a(View view) {
        return !m8190a(view, 0, getHeight());
    }

    /* renamed from: a */
    private boolean m8190a(View view, int i, int i2) {
        view.getDrawingRect(this.f3188b);
        offsetDescendantRectToMyCoords(view, this.f3188b);
        return this.f3188b.bottom + i >= getScrollY() && this.f3188b.top - i <= getScrollY() + i2;
    }

    /* renamed from: a */
    private static boolean m8186a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && m8186a((View) parent, view2);
    }

    /* renamed from: b */
    private int m8181b() {
        return (int) (getHeight() * 0.5f);
    }

    /* renamed from: b */
    private static int m8178b(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    /* renamed from: b */
    private void m8179b(int i, int i2) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.f3187a > 250) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int height = childAt.getHeight();
                int i3 = layoutParams.topMargin;
                int i4 = layoutParams.bottomMargin;
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int scrollY = getScrollY();
                this.f3189c.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, ((height + i3) + i4) - ((height2 - paddingTop) - paddingBottom)))) - scrollY);
                m8183a(false);
            } else {
                if (!this.f3189c.isFinished()) {
                    m8169f();
                }
                scrollBy(i, i2);
            }
            this.f3187a = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    /* renamed from: b */
    private void m8177b(View view) {
        view.getDrawingRect(this.f3188b);
        offsetDescendantRectToMyCoords(view, this.f3188b);
        int a = m8195a(this.f3188b);
        if (a != 0) {
            scrollBy(0, a);
        }
    }

    /* renamed from: c */
    private boolean m8175c() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    /* renamed from: c */
    private boolean m8174c(int i) {
        return this.f3210z.m8399a(i);
    }

    /* renamed from: d */
    private void m8173d() {
        if (this.f3197k == null) {
            this.f3197k = VelocityTracker.obtain();
        }
    }

    /* renamed from: d */
    private boolean m8172d(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f3188b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                if (this.f3188b.top + height > bottom) {
                    this.f3188b.top = bottom - height;
                }
            }
        } else {
            this.f3188b.top = getScrollY() - height;
            if (this.f3188b.top < 0) {
                this.f3188b.top = 0;
            }
        }
        Rect rect = this.f3188b;
        rect.bottom = rect.top + height;
        return m8200a(i, this.f3188b.top, this.f3188b.bottom);
    }

    /* renamed from: e */
    private void m8171e() {
        VelocityTracker velocityTracker = this.f3197k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3197k = null;
        }
    }

    /* renamed from: e */
    private boolean m8170e(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f3188b;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f3188b.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f3188b;
            rect2.top = rect2.bottom - height;
        }
        return m8200a(i, this.f3188b.top, this.f3188b.bottom);
    }

    /* renamed from: f */
    private void m8169f() {
        this.f3189c.abortAnimation();
        mo7266a(1);
    }

    /* renamed from: f */
    private boolean m8168f(int i) {
        int i2;
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int b = m8181b();
        if (findNextFocus == null || !m8190a(findNextFocus, b, getHeight())) {
            if (i != 33 || getScrollY() >= b) {
                i2 = b;
                if (i == 130) {
                    i2 = b;
                    if (getChildCount() > 0) {
                        View childAt = getChildAt(0);
                        i2 = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), b);
                    }
                }
            } else {
                i2 = getScrollY();
            }
            if (i2 == 0) {
                return false;
            }
            if (i != 130) {
                i2 = -i2;
            }
            m8166g(i2);
        } else {
            findNextFocus.getDrawingRect(this.f3188b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f3188b);
            m8166g(m8195a(this.f3188b));
            findNextFocus.requestFocus(i);
        }
        if (view == null || !view.isFocused() || !m8192a(view)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    /* renamed from: g */
    private void m8167g() {
        this.f3196j = false;
        m8171e();
        mo7266a(0);
        EdgeEffect edgeEffect = this.f3190d;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f3191e.onRelease();
        }
    }

    /* renamed from: g */
    private void m8166g(int i) {
        if (i == 0) {
            return;
        }
        if (this.f3199m) {
            m8179b(0, i);
        } else {
            scrollBy(0, i);
        }
    }

    /* renamed from: h */
    private void m8165h() {
        if (getOverScrollMode() == 2) {
            this.f3190d = null;
            this.f3191e = null;
        } else if (this.f3190d == null) {
            Context context = getContext();
            this.f3190d = new EdgeEffect(context);
            this.f3191e = new EdgeEffect(context);
        }
    }

    /* renamed from: h */
    private void m8164h(int i) {
        if (getChildCount() > 0) {
            this.f3189c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0, 0);
            m8183a(true);
        }
    }

    /* renamed from: a */
    final int m8202a() {
        int i = 0;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            i = Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        }
        return i;
    }

    @Override // androidx.core.p037g.AbstractC0730i
    /* renamed from: a */
    public final void mo7266a(int i) {
        this.f3210z.m8386c(i);
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final void mo8191a(View view, int i) {
        this.f3209y.m8379b(i);
        mo7266a(i);
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final void mo8189a(View view, int i, int i2, int i3, int i4, int i5) {
        m8198a(i4, i5, (int[]) null);
    }

    @Override // androidx.core.p037g.AbstractC0735n
    /* renamed from: a */
    public final void mo8188a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m8198a(i4, i5, iArr);
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final void mo8187a(View view, int i, int i2, int[] iArr, int i3) {
        m8196a(i, i2, iArr, (int[]) null, i3);
    }

    /* renamed from: a */
    public final void m8184a(AbstractC0773b bVar) {
        this.f3186B = bVar;
    }

    /* renamed from: a */
    public final boolean m8194a(KeyEvent keyEvent) {
        this.f3188b.setEmpty();
        int i = 130;
        if (m8175c()) {
            boolean z = false;
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 19) {
                    z = !keyEvent.isAltPressed() ? m8168f(33) : m8170e(33);
                } else if (keyCode == 20) {
                    z = !keyEvent.isAltPressed() ? m8168f(130) : m8170e(130);
                } else if (keyCode != 62) {
                    z = false;
                } else {
                    if (keyEvent.isShiftPressed()) {
                        i = 33;
                    }
                    m8172d(i);
                    z = false;
                }
            }
            return z;
        } else if (!isFocused() || keyEvent.getKeyCode() == 4) {
            return false;
        } else {
            View findFocus = findFocus();
            View view = findFocus;
            if (findFocus == this) {
                view = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, 130);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
        }
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final boolean mo8185a(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() <= 0) {
            super.addView(view, i);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    /* renamed from: b */
    public final void m8180b(int i) {
        m8179b(0 - getScrollX(), i - getScrollY());
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: b */
    public final void mo8176b(View view, View view2, int i, int i2) {
        this.f3209y.m8381a(i, i2);
        m8201a(2, i2);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00aa, code lost:
        if (r0 > 0) goto L_0x00ad;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b3  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void computeScroll() {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.computeScroll():void");
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int i;
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        if (scrollY < 0) {
            i = bottom - scrollY;
        } else {
            i = bottom;
            if (scrollY > max) {
                i = bottom + (scrollY - max);
            }
        }
        return i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m8194a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f3210z.m8400a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f3210z.m8401a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m8196a(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f3210z.m8397a(i, i2, i3, i4, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0104, code lost:
        if (getClipToPadding() != false) goto L_0x0107;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r6) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.draw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f3209y.m8383a();
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m8174c(0);
    }

    @Override // android.view.View, androidx.core.p037g.AbstractC0729h
    public boolean isNestedScrollingEnabled() {
        return this.f3210z.m8402a();
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i, int i2) {
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3194h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8 || this.f3196j) {
            return false;
        }
        float axisValue = motionEvent.getAxisValue(9);
        if (axisValue == 0.0f) {
            return false;
        }
        if (this.f3185A == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                this.f3185A = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        int i2 = (int) (axisValue * this.f3185A);
        int a = m8202a();
        int scrollY = getScrollY();
        int i3 = scrollY - i2;
        if (i3 < 0) {
            i = 0;
        } else {
            i = i3;
            if (i3 > a) {
                i = a;
            }
        }
        if (i == scrollY) {
            return false;
        }
        super.scrollTo(getScrollX(), i);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015b  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        this.f3193g = false;
        View view = this.f3195i;
        if (view != null && m8186a(view, this)) {
            m8177b(this.f3195i);
        }
        this.f3195i = null;
        if (!this.f3194h) {
            if (this.f3208v != null) {
                scrollTo(getScrollX(), this.f3208v.f3211a);
                this.f3208v = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            int b = m8178b(scrollY, ((i4 - i2) - paddingTop) - paddingBottom, i5);
            if (b != scrollY) {
                scrollTo(getScrollX(), b);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f3194h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f3198l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(0.0f, f2, true);
        m8164h((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo8187a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m8198a(i4, 0, (int[]) null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo8176b(view, view2, i, 0);
    }

    @Override // android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        if (i == 2) {
            i2 = 130;
        } else {
            i2 = i;
            if (i == 1) {
                i2 = 33;
            }
        }
        FocusFinder instance = FocusFinder.getInstance();
        View findNextFocus = rect == null ? instance.findNextFocus(this, null, i2) : instance.findNextFocusFromRect(this, rect, i2);
        if (findNextFocus != null && !m8192a(findNextFocus)) {
            return findNextFocus.requestFocus(i2, rect);
        }
        return false;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f3208v = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3211a = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        AbstractC0773b bVar = this.f3186B;
        if (bVar != null) {
            bVar.mo8163a(this);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && m8190a(findFocus, 0, i4)) {
            findFocus.getDrawingRect(this.f3188b);
            offsetDescendantRectToMyCoords(findFocus, this.f3188b);
            m8166g(m8195a(this.f3188b));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo8185a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onStopNestedScroll(View view) {
        mo8191a(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009a, code lost:
        if (r8.f3189c.springBack(getScrollX(), getScrollY(), 0, 0, 0, m8202a()) != false) goto L_0x009d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009d, code lost:
        androidx.core.p037g.C0741t.m8329e(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x031a, code lost:
        if (r8.f3189c.springBack(getScrollX(), getScrollY(), 0, 0, 0, m8202a()) != false) goto L_0x009d;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f3193g) {
            m8177b(view2);
        } else {
            this.f3195i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int a = m8195a(rect);
        boolean z2 = a != 0;
        if (z2) {
            if (z) {
                scrollBy(0, a);
            } else {
                m8179b(0, a);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m8171e();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f3193g = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = getWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = childAt.getWidth();
            int i3 = layoutParams.leftMargin;
            int i4 = layoutParams.rightMargin;
            int height = getHeight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height2 = childAt.getHeight();
            int i5 = layoutParams.topMargin;
            int i6 = layoutParams.bottomMargin;
            int b = m8178b(i, (width - paddingLeft) - paddingRight, width2 + i3 + i4);
            int b2 = m8178b(i2, (height - paddingTop) - paddingBottom, height2 + i5 + i6);
            if (b != getScrollX() || b2 != getScrollY()) {
                super.scrollTo(b, b2);
            }
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f3210z.m8390a(z);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m8201a(i, 0);
    }

    @Override // android.view.View, androidx.core.p037g.AbstractC0729h
    public void stopNestedScroll() {
        mo7266a(0);
    }
}
