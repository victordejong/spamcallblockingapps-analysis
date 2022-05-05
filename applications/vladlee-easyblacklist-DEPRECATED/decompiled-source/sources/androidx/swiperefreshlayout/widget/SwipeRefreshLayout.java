package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListView;
import androidx.core.p037g.AbstractC0729h;
import androidx.core.p037g.AbstractC0733l;
import androidx.core.p037g.C0732k;
import androidx.core.p037g.C0736o;
import androidx.core.p037g.C0741t;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout.class */
public class SwipeRefreshLayout extends ViewGroup implements AbstractC0729h, AbstractC0733l {

    /* renamed from: B */
    private boolean f4958B;

    /* renamed from: F */
    private Animation f4961F;

    /* renamed from: G */
    private Animation f4962G;

    /* renamed from: H */
    private Animation f4963H;

    /* renamed from: I */
    private Animation f4964I;

    /* renamed from: J */
    private int f4965J;

    /* renamed from: K */
    private AbstractC1159a f4966K;

    /* renamed from: b */
    int f4971b;

    /* renamed from: c */
    boolean f4972c;

    /* renamed from: e */
    protected int f4974e;

    /* renamed from: f */
    float f4975f;

    /* renamed from: g */
    protected int f4976g;

    /* renamed from: h */
    int f4977h;

    /* renamed from: i */
    int f4978i;

    /* renamed from: k */
    boolean f4980k;

    /* renamed from: l */
    boolean f4981l;

    /* renamed from: n */
    private View f4982n;

    /* renamed from: o */
    private int f4983o;

    /* renamed from: p */
    private float f4984p;

    /* renamed from: q */
    private float f4985q;

    /* renamed from: v */
    private boolean f4990v;

    /* renamed from: x */
    private float f4992x;

    /* renamed from: y */
    private float f4993y;

    /* renamed from: z */
    private boolean f4994z;

    /* renamed from: m */
    private static final String f4956m = SwipeRefreshLayout.class.getSimpleName();

    /* renamed from: D */
    private static final int[] f4955D = {16842766};

    /* renamed from: a */
    boolean f4970a = false;

    /* renamed from: t */
    private final int[] f4988t = new int[2];

    /* renamed from: u */
    private final int[] f4989u = new int[2];

    /* renamed from: A */
    private int f4957A = -1;

    /* renamed from: E */
    private int f4960E = -1;

    /* renamed from: L */
    private Animation.AnimationListener f4967L = new animationAnimation$AnimationListenerC1166e(this);

    /* renamed from: M */
    private final Animation f4968M = new C1170i(this);

    /* renamed from: N */
    private final Animation f4969N = new C1171j(this);

    /* renamed from: w */
    private int f4991w = getResources().getInteger(17694721);

    /* renamed from: C */
    private final DecelerateInterpolator f4959C = new DecelerateInterpolator(2.0f);

    /* renamed from: d */
    C1160a f4973d = new C1160a(getContext());

    /* renamed from: j */
    C1162b f4979j = new C1162b(getContext());

    /* renamed from: r */
    private final C0736o f4986r = new C0736o();

    /* renamed from: s */
    private final C0732k f4987s = new C0732k(this);

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
    public interface AbstractC1159a {
        /* renamed from: a */
        boolean m6660a();
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4984p = -1.0f;
        this.f4983o = ViewConfiguration.get(context).getScaledTouchSlop();
        setWillNotDraw(false);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f4965J = (int) (displayMetrics.density * 40.0f);
        this.f4979j.m6656a();
        this.f4973d.setImageDrawable(this.f4979j);
        this.f4973d.setVisibility(8);
        addView(this.f4973d);
        setChildrenDrawingOrderEnabled(true);
        this.f4977h = (int) (displayMetrics.density * 64.0f);
        this.f4984p = this.f4977h;
        setNestedScrollingEnabled(true);
        int i = -this.f4965J;
        this.f4971b = i;
        this.f4976g = i;
        m6669b(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f4955D);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private Animation m6675a(int i, int i2) {
        C1168g gVar = new C1168g(this, i, i2);
        gVar.setDuration(300L);
        this.f4973d.m6658a(null);
        this.f4973d.clearAnimation();
        this.f4973d.startAnimation(gVar);
        return gVar;
    }

    /* renamed from: a */
    private void m6674a(int i, Animation.AnimationListener animationListener) {
        if (this.f4972c) {
            m6668b(i, animationListener);
            return;
        }
        this.f4974e = i;
        this.f4969N.reset();
        this.f4969N.setDuration(200L);
        this.f4969N.setInterpolator(this.f4959C);
        if (animationListener != null) {
            this.f4973d.m6658a(animationListener);
        }
        this.f4973d.clearAnimation();
        this.f4973d.startAnimation(this.f4969N);
    }

    /* renamed from: a */
    private void m6673a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f4957A) {
            this.f4957A = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    /* renamed from: a */
    private static boolean m6671a(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    /* renamed from: b */
    private void m6670b() {
        if (!this.f4970a) {
            this.f4980k = true;
            m6663e();
            this.f4970a = true;
            if (this.f4970a) {
                int i = this.f4971b;
                Animation.AnimationListener animationListener = this.f4967L;
                this.f4974e = i;
                this.f4968M.reset();
                this.f4968M.setDuration(200L);
                this.f4968M.setInterpolator(this.f4959C);
                if (animationListener != null) {
                    this.f4973d.m6658a(animationListener);
                }
                this.f4973d.clearAnimation();
                this.f4973d.startAnimation(this.f4968M);
                return;
            }
            m6672a(this.f4967L);
        }
    }

    /* renamed from: b */
    private void m6668b(int i, Animation.AnimationListener animationListener) {
        this.f4974e = i;
        this.f4975f = this.f4973d.getScaleX();
        this.f4964I = new C1172k(this);
        this.f4964I.setDuration(150L);
        if (animationListener != null) {
            this.f4973d.m6658a(animationListener);
        }
        this.f4973d.clearAnimation();
        this.f4973d.startAnimation(this.f4964I);
    }

    /* renamed from: c */
    private void m6667c() {
        this.f4962G = m6675a(this.f4979j.getAlpha(), 76);
    }

    /* renamed from: c */
    private void m6666c(float f) {
        this.f4979j.m6652a(true);
        float min = Math.min(1.0f, Math.abs(f / this.f4984p));
        float max = (Math.max((float) (min - 0.4d), 0.0f) * 5.0f) / 3.0f;
        float abs = Math.abs(f);
        float f2 = this.f4984p;
        int i = this.f4978i;
        if (i <= 0) {
            i = this.f4981l ? this.f4977h - this.f4976g : this.f4977h;
        }
        float f3 = i;
        double max2 = Math.max(0.0f, Math.min(abs - f2, f3 * 2.0f) / f3) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i2 = this.f4976g;
        int i3 = (int) ((f3 * min) + (f3 * pow * 2.0f));
        if (this.f4973d.getVisibility() != 0) {
            this.f4973d.setVisibility(0);
        }
        if (!this.f4972c) {
            this.f4973d.setScaleX(1.0f);
            this.f4973d.setScaleY(1.0f);
        }
        if (this.f4972c) {
            m6677a(Math.min(1.0f, f / this.f4984p));
        }
        if (f < this.f4984p) {
            if (this.f4979j.getAlpha() > 76 && !m6671a(this.f4962G)) {
                m6667c();
            }
        } else if (this.f4979j.getAlpha() < 255 && !m6671a(this.f4963H)) {
            m6665d();
        }
        this.f4979j.m6651b(Math.min(0.8f, max * 0.8f));
        this.f4979j.m6655a(Math.min(1.0f, max));
        this.f4979j.m6650c((((max * 0.4f) - 0.25f) + (pow * 2.0f)) * 0.5f);
        m6676a((i2 + i3) - this.f4971b);
    }

    /* renamed from: d */
    private void m6665d() {
        this.f4963H = m6675a(this.f4979j.getAlpha(), 255);
    }

    /* renamed from: d */
    private void m6664d(float f) {
        if (f > this.f4984p) {
            m6670b();
            return;
        }
        this.f4970a = false;
        this.f4979j.m6651b(0.0f);
        animationAnimation$AnimationListenerC1169h hVar = null;
        if (!this.f4972c) {
            hVar = new animationAnimation$AnimationListenerC1169h(this);
        }
        m6674a(this.f4971b, hVar);
        this.f4979j.m6652a(false);
    }

    /* renamed from: e */
    private void m6663e() {
        if (this.f4982n == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f4973d)) {
                    this.f4982n = childAt;
                    return;
                }
            }
        }
    }

    /* renamed from: e */
    private void m6662e(float f) {
        float f2 = this.f4993y;
        int i = this.f4983o;
        if (f - f2 > i && !this.f4994z) {
            this.f4992x = f2 + i;
            this.f4994z = true;
            this.f4979j.setAlpha(76);
        }
    }

    /* renamed from: f */
    private boolean m6661f() {
        AbstractC1159a aVar = this.f4966K;
        if (aVar != null) {
            return aVar.m6660a();
        }
        View view = this.f4982n;
        if (!(view instanceof ListView)) {
            return view.canScrollVertically(-1);
        }
        ListView listView = (ListView) view;
        if (Build.VERSION.SDK_INT >= 19) {
            return listView.canScrollList(-1);
        }
        if (listView.getChildCount() == 0) {
            return false;
        }
        return listView.getFirstVisiblePosition() > 0 || listView.getChildAt(0).getTop() < listView.getListPaddingTop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6678a() {
        this.f4973d.clearAnimation();
        this.f4979j.stop();
        this.f4973d.setVisibility(8);
        this.f4973d.getBackground().setAlpha(255);
        this.f4979j.setAlpha(255);
        if (this.f4972c) {
            m6677a(0.0f);
        } else {
            m6676a(this.f4976g - this.f4971b);
        }
        this.f4971b = this.f4973d.getTop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6677a(float f) {
        this.f4973d.setScaleX(f);
        this.f4973d.setScaleY(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6676a(int i) {
        this.f4973d.bringToFront();
        C0741t.m8332c(this.f4973d, i);
        this.f4971b = this.f4973d.getTop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6672a(Animation.AnimationListener animationListener) {
        this.f4961F = new C1167f(this);
        this.f4961F.setDuration(150L);
        this.f4973d.m6658a(animationListener);
        this.f4973d.clearAnimation();
        this.f4973d.startAnimation(this.f4961F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m6669b(float f) {
        int i = this.f4974e;
        m6676a((i + ((int) ((this.f4976g - i) * f))) - this.f4973d.getTop());
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f4987s.m8400a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f4987s.m8401a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f4987s.m8393a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f4987s.m8397a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = this.f4960E;
        if (i3 < 0) {
            return i2;
        }
        if (i2 == i - 1) {
            return i3;
        }
        int i4 = i2;
        if (i2 >= i3) {
            i4 = i2 + 1;
        }
        return i4;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f4986r.m8383a();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f4987s.m8389b();
    }

    @Override // android.view.View, androidx.core.p037g.AbstractC0729h
    public boolean isNestedScrollingEnabled() {
        return this.f4987s.m8402a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m6678a();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        m6663e();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f4958B && actionMasked == 0) {
            this.f4958B = false;
        }
        if (!isEnabled() || this.f4958B || m6661f() || this.f4970a || this.f4990v) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.f4957A;
                    if (i == -1) {
                        Log.e(f4956m, "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    if (findPointerIndex < 0) {
                        return false;
                    }
                    m6662e(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        m6673a(motionEvent);
                    }
                }
            }
            this.f4994z = false;
            this.f4957A = -1;
        } else {
            m6676a(this.f4976g - this.f4973d.getTop());
            this.f4957A = motionEvent.getPointerId(0);
            this.f4994z = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f4957A);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f4993y = motionEvent.getY(findPointerIndex2);
        }
        return this.f4994z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.f4982n == null) {
                m6663e();
            }
            View view = this.f4982n;
            if (view != null) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
                int measuredWidth2 = this.f4973d.getMeasuredWidth();
                int measuredHeight2 = this.f4973d.getMeasuredHeight();
                C1160a aVar = this.f4973d;
                int i5 = measuredWidth / 2;
                int i6 = measuredWidth2 / 2;
                int i7 = this.f4971b;
                aVar.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f4982n == null) {
            m6663e();
        }
        View view = this.f4982n;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.f4973d.measure(View.MeasureSpec.makeMeasureSpec(this.f4965J, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f4965J, 1073741824));
            this.f4960E = -1;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                if (getChildAt(i3) == this.f4973d) {
                    this.f4960E = i3;
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.f4985q;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.f4985q = 0.0f;
                } else {
                    this.f4985q = f - f2;
                    iArr[1] = i2;
                }
                m6666c(this.f4985q);
            }
        }
        if (this.f4981l && i2 > 0 && this.f4985q == 0.0f && Math.abs(i2 - iArr[1]) > 0) {
            this.f4973d.setVisibility(8);
        }
        int[] iArr2 = this.f4988t;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5;
        dispatchNestedScroll(i, i2, i3, i4, this.f4989u);
        if (i4 + this.f4989u[1] < 0 && !m6661f()) {
            this.f4985q += Math.abs(i5);
            m6666c(this.f4985q);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f4986r.m8382a(i);
        startNestedScroll(i & 2);
        this.f4985q = 0.0f;
        this.f4990v = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return isEnabled() && !this.f4958B && !this.f4970a && (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onStopNestedScroll(View view) {
        this.f4986r.m8380b();
        this.f4990v = false;
        float f = this.f4985q;
        if (f > 0.0f) {
            m6664d(f);
            this.f4985q = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f4958B && actionMasked == 0) {
            this.f4958B = false;
        }
        if (!isEnabled() || this.f4958B || m6661f() || this.f4970a || this.f4990v) {
            return false;
        }
        if (actionMasked == 0) {
            this.f4957A = motionEvent.getPointerId(0);
            this.f4994z = false;
            return true;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f4957A);
            if (findPointerIndex < 0) {
                Log.e(f4956m, "Got ACTION_UP event but don't have an active pointer id.");
                return false;
            }
            if (this.f4994z) {
                float y = motionEvent.getY(findPointerIndex);
                float f = this.f4992x;
                this.f4994z = false;
                m6664d((y - f) * 0.5f);
            }
            this.f4957A = -1;
            return false;
        } else if (actionMasked == 2) {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f4957A);
            if (findPointerIndex2 < 0) {
                Log.e(f4956m, "Got ACTION_MOVE event but have an invalid active pointer id.");
                return false;
            }
            float y2 = motionEvent.getY(findPointerIndex2);
            m6662e(y2);
            if (!this.f4994z) {
                return true;
            }
            float f2 = (y2 - this.f4992x) * 0.5f;
            if (f2 <= 0.0f) {
                return false;
            }
            m6666c(f2);
            return true;
        } else if (actionMasked == 3) {
            return false;
        } else {
            if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                if (actionIndex < 0) {
                    Log.e(f4956m, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                    return false;
                }
                this.f4957A = motionEvent.getPointerId(actionIndex);
                return true;
            } else if (actionMasked != 6) {
                return true;
            } else {
                m6673a(motionEvent);
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f4982n instanceof AbsListView)) {
            View view = this.f4982n;
            if (view == null || C0741t.m8306y(view)) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            m6678a();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f4987s.m8390a(z);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.f4987s.m8388b(i);
    }

    @Override // android.view.View, androidx.core.p037g.AbstractC0729h
    public void stopNestedScroll() {
        this.f4987s.m8387c();
    }
}
