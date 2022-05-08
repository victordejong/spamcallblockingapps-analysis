package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.t;
import android.support.v4.widget.h;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout.class */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    static final e f267a;

    /* renamed from: b  reason: collision with root package name */
    private int f268b;
    private int c;
    private Drawable d;
    private Drawable e;
    private final int f;
    private boolean g;
    private View h;
    private float i;
    private float j;
    private int k;
    private boolean l;
    private int m;
    private float n;
    private float o;
    private d p;
    private final android.support.v4.widget.h q;
    private boolean r;
    private boolean s;
    private final Rect t;
    private final ArrayList<b> u;

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int[] e = {16843137};

        /* renamed from: a  reason: collision with root package name */
        public float f269a;

        /* renamed from: b  reason: collision with root package name */
        boolean f270b;
        boolean c;
        Paint d;

        public LayoutParams() {
            super(-1, -1);
            this.f269a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f269a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
            this.f269a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f269a = 0.0f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f269a = 0.0f;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.widget.SlidingPaneLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        boolean f271a;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f271a = parcel.readInt() != 0;
        }

        /* synthetic */ SavedState(Parcel parcel, byte b2) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f271a ? 1 : 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$a.class */
    final class a extends android.support.v4.view.a {
        private final Rect c = new Rect();

        a() {
        }

        private boolean b(View view) {
            return SlidingPaneLayout.this.b(view);
        }

        @Override // android.support.v4.view.a
        public final void a(View view, android.support.v4.view.a.b bVar) {
            android.support.v4.view.a.b a2 = android.support.v4.view.a.b.a(bVar);
            super.a(view, a2);
            Rect rect = this.c;
            a2.a(rect);
            bVar.b(rect);
            a2.c(rect);
            bVar.d(rect);
            bVar.c(a2.d());
            bVar.a(a2.j());
            bVar.b(a2.k());
            bVar.c(a2.l());
            bVar.h(a2.i());
            bVar.f(a2.g());
            bVar.a(a2.b());
            bVar.b(a2.c());
            bVar.d(a2.e());
            bVar.e(a2.f());
            bVar.g(a2.h());
            bVar.a(a2.a());
            android.support.v4.view.a.b.f205a.b(bVar.f206b, android.support.v4.view.a.b.f205a.r(a2.f206b));
            a2.m();
            bVar.b(SlidingPaneLayout.class.getName());
            bVar.a(view);
            ViewParent g = t.g(view);
            if (g instanceof View) {
                bVar.c((View) g);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!b(childAt) && childAt.getVisibility() == 0) {
                    t.b(childAt, 1);
                    bVar.b(childAt);
                }
            }
        }

        @Override // android.support.v4.view.a
        public final boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return !b(view) ? super.a(viewGroup, view, accessibilityEvent) : false;
        }

        @Override // android.support.v4.view.a
        public final void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$b.class */
    public final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final View f273a;

        b(View view) {
            this.f273a = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f273a.getParent() == SlidingPaneLayout.this) {
                t.a(this.f273a, 0, (Paint) null);
                SlidingPaneLayout.this.c(this.f273a);
            }
            SlidingPaneLayout.this.u.remove(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$c.class */
    private final class c extends h.a {
        private c() {
        }

        /* synthetic */ c(SlidingPaneLayout slidingPaneLayout, byte b2) {
            this();
        }

        @Override // android.support.v4.widget.h.a
        public final void a(int i) {
            if (SlidingPaneLayout.this.q.f307a != 0) {
                return;
            }
            if (SlidingPaneLayout.this.i == 0.0f) {
                SlidingPaneLayout.this.a(SlidingPaneLayout.this.h);
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                View unused = SlidingPaneLayout.this.h;
                slidingPaneLayout.sendAccessibilityEvent(32);
                SlidingPaneLayout.this.r = false;
                return;
            }
            SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
            View unused2 = SlidingPaneLayout.this.h;
            slidingPaneLayout2.sendAccessibilityEvent(32);
            SlidingPaneLayout.this.r = true;
        }

        @Override // android.support.v4.widget.h.a
        public final void a(int i, int i2) {
            SlidingPaneLayout.this.q.a(SlidingPaneLayout.this.h, i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x00b5, code lost:
            if (r4.f275a.i > 0.5f) goto L_0x00b8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
            if (r4.f275a.i > 0.5f) goto L_0x0045;
         */
        @Override // android.support.v4.widget.h.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(android.view.View r5, float r6) {
            /*
                r4 = this;
                r0 = r5
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                android.support.v4.widget.SlidingPaneLayout$LayoutParams r0 = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) r0
                r7 = r0
                r0 = r4
                android.support.v4.widget.SlidingPaneLayout r0 = android.support.v4.widget.SlidingPaneLayout.this
                boolean r0 = android.support.v4.widget.SlidingPaneLayout.e(r0)
                if (r0 == 0) goto L_0x0085
                r0 = r4
                android.support.v4.widget.SlidingPaneLayout r0 = android.support.v4.widget.SlidingPaneLayout.this
                int r0 = r0.getPaddingRight()
                r8 = r0
                r0 = r7
                int r0 = r0.rightMargin
                r1 = r8
                int r0 = r0 + r1
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0045
                r0 = r9
                r8 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0051
                r0 = r9
                r8 = r0
                r0 = r4
                android.support.v4.widget.SlidingPaneLayout r0 = android.support.v4.widget.SlidingPaneLayout.this
                float r0 = android.support.v4.widget.SlidingPaneLayout.c(r0)
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0051
            L_0x0045:
                r0 = r9
                r1 = r4
                android.support.v4.widget.SlidingPaneLayout r1 = android.support.v4.widget.SlidingPaneLayout.this
                int r1 = android.support.v4.widget.SlidingPaneLayout.f(r1)
                int r0 = r0 + r1
                r8 = r0
            L_0x0051:
                r0 = r4
                android.support.v4.widget.SlidingPaneLayout r0 = android.support.v4.widget.SlidingPaneLayout.this
                android.view.View r0 = android.support.v4.widget.SlidingPaneLayout.d(r0)
                int r0 = r0.getWidth()
                r9 = r0
                r0 = r4
                android.support.v4.widget.SlidingPaneLayout r0 = android.support.v4.widget.SlidingPaneLayout.this
                int r0 = r0.getWidth()
                r1 = r8
                int r0 = r0 - r1
                r1 = r9
                int r0 = r0 - r1
                r8 = r0
            L_0x006c:
                r0 = r4
                android.support.v4.widget.SlidingPaneLayout r0 = android.support.v4.widget.SlidingPaneLayout.this
                android.support.v4.widget.h r0 = android.support.v4.widget.SlidingPaneLayout.b(r0)
                r1 = r8
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.a(r1, r2)
                r0 = r4
                android.support.v4.widget.SlidingPaneLayout r0 = android.support.v4.widget.SlidingPaneLayout.this
                r0.invalidate()
                return
            L_0x0085:
                r0 = r4
                android.support.v4.widget.SlidingPaneLayout r0 = android.support.v4.widget.SlidingPaneLayout.this
                int r0 = r0.getPaddingLeft()
                r8 = r0
                r0 = r7
                int r0 = r0.leftMargin
                r1 = r8
                int r0 = r0 + r1
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x00b8
                r0 = r9
                r8 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x006c
                r0 = r9
                r8 = r0
                r0 = r4
                android.support.v4.widget.SlidingPaneLayout r0 = android.support.v4.widget.SlidingPaneLayout.this
                float r0 = android.support.v4.widget.SlidingPaneLayout.c(r0)
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x006c
            L_0x00b8:
                r0 = r9
                r1 = r4
                android.support.v4.widget.SlidingPaneLayout r1 = android.support.v4.widget.SlidingPaneLayout.this
                int r1 = android.support.v4.widget.SlidingPaneLayout.f(r1)
                int r0 = r0 + r1
                r8 = r0
                goto L_0x006c
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.c.a(android.view.View, float):void");
        }

        @Override // android.support.v4.widget.h.a
        public final void a(View view, int i) {
            SlidingPaneLayout.a(SlidingPaneLayout.this, i);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.h.a
        public final boolean a(View view) {
            return SlidingPaneLayout.this.l ? false : ((LayoutParams) view.getLayoutParams()).f270b;
        }

        @Override // android.support.v4.widget.h.a
        public final int b(View view, int i) {
            int min;
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.h.getLayoutParams();
            if (SlidingPaneLayout.this.c()) {
                int width = SlidingPaneLayout.this.getWidth() - ((layoutParams.rightMargin + SlidingPaneLayout.this.getPaddingRight()) + SlidingPaneLayout.this.h.getWidth());
                min = Math.max(Math.min(i, width), width - SlidingPaneLayout.this.k);
            } else {
                int paddingLeft = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                min = Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.k + paddingLeft);
            }
            return min;
        }

        @Override // android.support.v4.widget.h.a
        public final void b(View view) {
            SlidingPaneLayout.this.a();
        }

        @Override // android.support.v4.widget.h.a
        public final int c(View view) {
            return SlidingPaneLayout.this.k;
        }

        @Override // android.support.v4.widget.h.a
        public final int d(View view) {
            return view.getTop();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$d.class */
    public interface d {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$e.class */
    public interface e {
        void a(SlidingPaneLayout slidingPaneLayout, View view);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$f.class */
    static class f implements e {
        f() {
        }

        @Override // android.support.v4.widget.SlidingPaneLayout.e
        public void a(SlidingPaneLayout slidingPaneLayout, View view) {
            t.a(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$g.class */
    static final class g extends f {

        /* renamed from: a  reason: collision with root package name */
        private Method f276a;

        /* renamed from: b  reason: collision with root package name */
        private Field f277b;

        g() {
            try {
                this.f276a = View.class.getDeclaredMethod("getDisplayList", null);
            } catch (NoSuchMethodException e) {
                Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
            }
            try {
                this.f277b = View.class.getDeclaredField("mRecreateDisplayList");
                this.f277b.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
            }
        }

        @Override // android.support.v4.widget.SlidingPaneLayout.f, android.support.v4.widget.SlidingPaneLayout.e
        public final void a(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.f276a == null || this.f277b == null) {
                view.invalidate();
                return;
            }
            try {
                this.f277b.setBoolean(view, true);
                this.f276a.invoke(view, null);
            } catch (Exception e) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e);
            }
            super.a(slidingPaneLayout, view);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/SlidingPaneLayout$h.class */
    static final class h extends f {
        h() {
        }

        @Override // android.support.v4.widget.SlidingPaneLayout.f, android.support.v4.widget.SlidingPaneLayout.e
        public final void a(SlidingPaneLayout slidingPaneLayout, View view) {
            t.a(view, ((LayoutParams) view.getLayoutParams()).d);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            f267a = new h();
        } else if (i >= 16) {
            f267a = new g();
        } else {
            f267a = new f();
        }
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f268b = -858993460;
        this.s = true;
        this.t = new Rect();
        this.u = new ArrayList<>();
        float f2 = context.getResources().getDisplayMetrics().density;
        this.f = (int) ((32.0f * f2) + 0.5f);
        ViewConfiguration.get(context);
        setWillNotDraw(false);
        t.a(this, new a());
        t.b((View) this, 1);
        this.q = android.support.v4.widget.h.a(this, 0.5f, new c(this, (byte) 0));
        this.q.g = f2 * 400.0f;
    }

    static /* synthetic */ void a(SlidingPaneLayout slidingPaneLayout, int i) {
        if (slidingPaneLayout.h == null) {
            slidingPaneLayout.i = 0.0f;
            return;
        }
        boolean c2 = slidingPaneLayout.c();
        LayoutParams layoutParams = (LayoutParams) slidingPaneLayout.h.getLayoutParams();
        int width = slidingPaneLayout.h.getWidth();
        int i2 = i;
        if (c2) {
            i2 = (slidingPaneLayout.getWidth() - i) - width;
        }
        slidingPaneLayout.i = (i2 - ((c2 ? layoutParams.rightMargin : layoutParams.leftMargin) + (c2 ? slidingPaneLayout.getPaddingRight() : slidingPaneLayout.getPaddingLeft()))) / slidingPaneLayout.k;
        if (slidingPaneLayout.m != 0) {
            slidingPaneLayout.b(slidingPaneLayout.i);
        }
        if (layoutParams.c) {
            slidingPaneLayout.a(slidingPaneLayout.h, slidingPaneLayout.i, slidingPaneLayout.f268b);
        }
    }

    private void a(View view, float f2, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 > 0.0f && i != 0) {
            int i2 = (int) ((((-16777216) & i) >>> 24) * f2);
            if (layoutParams.d == null) {
                layoutParams.d = new Paint();
            }
            layoutParams.d.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (16777215 & i), PorterDuff.Mode.SRC_OVER));
            if (t.e(view) != 2) {
                t.a(view, 2, layoutParams.d);
            }
            c(view);
        } else if (t.e(view) != 0) {
            if (layoutParams.d != null) {
                layoutParams.d.setColorFilter(null);
            }
            b bVar = new b(view);
            this.u.add(bVar);
            t.a(this, bVar);
        }
    }

    private boolean a(float f2) {
        int paddingLeft;
        boolean z;
        if (!this.g) {
            z = false;
        } else {
            boolean c2 = c();
            LayoutParams layoutParams = (LayoutParams) this.h.getLayoutParams();
            if (c2) {
                int paddingRight = getPaddingRight();
                paddingLeft = (int) (getWidth() - (((layoutParams.rightMargin + paddingRight) + (this.k * f2)) + this.h.getWidth()));
            } else {
                paddingLeft = (int) (layoutParams.leftMargin + getPaddingLeft() + (this.k * f2));
            }
            if (this.q.a(this.h, paddingLeft, this.h.getTop())) {
                a();
                t.c(this);
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(float r6) {
        /*
            Method dump skipped, instructions count: 187
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.b(float):void");
    }

    private boolean b() {
        boolean z = false;
        if (this.s || a(0.0f)) {
            this.r = false;
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(View view) {
        f267a.a(this, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        boolean z = true;
        if (t.f(this) != 1) {
            z = false;
        }
        return z;
    }

    final void a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void a(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.a(android.view.View):void");
    }

    final boolean b(View view) {
        boolean z;
        if (view == null) {
            z = false;
        } else {
            z = this.g && ((LayoutParams) view.getLayoutParams()).c && this.i > 0.0f;
        }
        return z;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.q.c()) {
            return;
        }
        if (!this.g) {
            this.q.b();
        } else {
            t.c(this);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int left;
        int i;
        super.draw(canvas);
        Drawable drawable = c() ? this.e : this.d;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (c()) {
                i = childAt.getRight();
                left = i + intrinsicWidth;
            } else {
                left = childAt.getLeft();
                i = left - intrinsicWidth;
            }
            drawable.setBounds(i, top, left, bottom);
            drawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save(2);
        if (this.g && !layoutParams.f270b && this.h != null) {
            canvas.getClipBounds(this.t);
            if (c()) {
                this.t.left = Math.max(this.t.left, this.h.getRight());
            } else {
                this.t.right = Math.min(this.t.right, this.h.getLeft());
            }
            canvas.clipRect(this.t);
        }
        if (Build.VERSION.SDK_INT < 11) {
            if (layoutParams.c && this.i > 0.0f) {
                if (!view.isDrawingCacheEnabled()) {
                    view.setDrawingCacheEnabled(true);
                }
                Bitmap drawingCache = view.getDrawingCache();
                if (drawingCache != null) {
                    canvas.drawBitmap(drawingCache, view.getLeft(), view.getTop(), layoutParams.d);
                    drawChild = false;
                    canvas.restoreToCount(save);
                    return drawChild;
                }
                Log.e("SlidingPaneLayout", "drawChild: child view " + view + " returned null drawing cache");
            } else if (view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(false);
            }
        }
        drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.s = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.s = true;
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).run();
        }
        this.u.clear();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ad, code lost:
        if (r7 != false) goto L_0x00b0;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a9  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        boolean c2 = c();
        if (c2) {
            this.q.i = 2;
        } else {
            this.q.i = 1;
        }
        int i7 = i3 - i;
        int paddingRight = c2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = c2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.s) {
            this.i = (!this.g || !this.r) ? 0.0f : 1.0f;
        }
        int i8 = paddingRight;
        int i9 = paddingRight;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int i11 = 0;
                if (layoutParams.f270b) {
                    int min = (Math.min(i9, (i7 - paddingLeft) - this.f) - i8) - (layoutParams.leftMargin + layoutParams.rightMargin);
                    this.k = min;
                    int i12 = c2 ? layoutParams.rightMargin : layoutParams.leftMargin;
                    layoutParams.c = ((i8 + i12) + min) + (measuredWidth / 2) > i7 - paddingLeft;
                    int i13 = (int) (min * this.i);
                    i8 += i12 + i13;
                    this.i = i13 / this.k;
                } else {
                    i11 = (!this.g || this.m == 0) ? 0 : (int) ((1.0f - this.i) * this.m);
                    i8 = i9;
                }
                if (c2) {
                    i6 = (i7 - i8) + i11;
                    i5 = i6 - measuredWidth;
                } else {
                    i5 = i8 - i11;
                    i6 = i5 + measuredWidth;
                }
                childAt.layout(i5, paddingTop, i6, childAt.getMeasuredHeight() + paddingTop);
                i9 = childAt.getWidth() + i9;
            } else {
                i9 = i9;
            }
        }
        if (this.s) {
            if (this.g) {
                if (this.m != 0) {
                    b(this.i);
                }
                if (((LayoutParams) this.h.getLayoutParams()).c) {
                    a(this.h, this.i, this.f268b);
                }
            } else {
                for (int i14 = 0; i14 < childCount; i14++) {
                    a(getChildAt(i14), 0.0f, this.f268b);
                }
            }
            a(this.h);
        }
        this.s = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int paddingTop;
        int i6;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            if (mode2 == 0) {
                if (!isInEditMode()) {
                    throw new IllegalStateException("Height must not be UNSPECIFIED");
                } else if (mode2 == 0) {
                    i5 = 300;
                    i3 = Integer.MIN_VALUE;
                    i4 = size;
                }
            }
            i3 = mode2;
            i4 = size;
            i5 = size2;
        } else if (isInEditMode()) {
            if (mode != Integer.MIN_VALUE && mode == 0) {
                i3 = mode2;
                i4 = 300;
                i5 = size2;
            }
            i3 = mode2;
            i4 = size;
            i5 = size2;
        } else {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        }
        switch (i3) {
            case Integer.MIN_VALUE:
                paddingTop = (i5 - getPaddingTop()) - getPaddingBottom();
                i6 = 0;
                break;
            case 1073741824:
                i6 = (i5 - getPaddingTop()) - getPaddingBottom();
                paddingTop = i6;
                break;
            default:
                paddingTop = -1;
                i6 = 0;
                break;
        }
        float f2 = 0.0f;
        boolean z = false;
        int paddingLeft = (i4 - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.h = null;
        int i7 = paddingLeft;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.c = false;
            } else {
                if (layoutParams.f269a > 0.0f) {
                    f2 = layoutParams.f269a + f2;
                    if (layoutParams.width == 0) {
                    }
                }
                int i9 = layoutParams.leftMargin + layoutParams.rightMargin;
                childAt.measure(layoutParams.width == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i9, Integer.MIN_VALUE) : layoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i9, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), layoutParams.height == -2 ? View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE) : layoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                i6 = i6;
                if (i3 == Integer.MIN_VALUE) {
                    i6 = i6;
                    if (measuredHeight > i6) {
                        i6 = Math.min(measuredHeight, paddingTop);
                    }
                }
                i7 -= measuredWidth;
                boolean z2 = i7 < 0;
                layoutParams.f270b = z2;
                if (layoutParams.f270b) {
                    this.h = childAt;
                }
                z = z2 | z;
            }
        }
        if (z || f2 > 0.0f) {
            int i10 = paddingLeft - this.f;
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt2 = getChildAt(i11);
                if (childAt2.getVisibility() != 8) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        boolean z3 = layoutParams2.width == 0 && layoutParams2.f269a > 0.0f;
                        int measuredWidth2 = z3 ? 0 : childAt2.getMeasuredWidth();
                        if (!z || childAt2 == this.h) {
                            if (layoutParams2.f269a > 0.0f) {
                                int makeMeasureSpec = layoutParams2.width == 0 ? layoutParams2.height == -2 ? View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE) : layoutParams2.height == -1 ? View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                if (z) {
                                    int i12 = paddingLeft - (layoutParams2.rightMargin + layoutParams2.leftMargin);
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
                                    if (measuredWidth2 != i12) {
                                        childAt2.measure(makeMeasureSpec2, makeMeasureSpec);
                                    }
                                } else {
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(((int) ((layoutParams2.f269a * Math.max(0, i7)) / f2)) + measuredWidth2, 1073741824), makeMeasureSpec);
                                }
                            }
                        } else if (layoutParams2.width < 0 && (measuredWidth2 > i10 || layoutParams2.f269a > 0.0f)) {
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), z3 ? layoutParams2.height == -2 ? View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE) : layoutParams2.height == -1 ? View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i4, getPaddingTop() + i6 + getPaddingBottom());
        this.g = z;
        if (!(this.q.f307a == 0 || z)) {
            this.q.b();
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f271a) {
            b();
        } else if (this.s || a(1.0f)) {
            this.r = true;
        }
        this.r = savedState.f271a;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f271a = this.g ? !this.g || this.i == 1.0f : this.r;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.s = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (!this.g) {
            z = super.onTouchEvent(motionEvent);
        } else {
            this.q.b(motionEvent);
            switch (motionEvent.getAction() & 255) {
                case 0:
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    this.n = x;
                    this.o = y;
                    break;
                case 1:
                    if (b(this.h)) {
                        float x2 = motionEvent.getX();
                        float y2 = motionEvent.getY();
                        float f2 = x2 - this.n;
                        float f3 = y2 - this.o;
                        int i = this.q.f308b;
                        if ((f2 * f2) + (f3 * f3) < i * i && android.support.v4.widget.h.b(this.h, (int) x2, (int) y2)) {
                            b();
                            break;
                        }
                    }
                    break;
            }
            z = true;
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.g) {
            this.r = view == this.h;
        }
    }

    public void setCoveredFadeColor(int i) {
        this.c = i;
    }

    public void setPanelSlideListener(d dVar) {
        this.p = dVar;
    }

    public void setParallaxDistance(int i) {
        this.m = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.d = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.e = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(getResources().getDrawable(i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(getResources().getDrawable(i));
    }

    public void setSliderFadeColor(int i) {
        this.f268b = i;
    }
}
