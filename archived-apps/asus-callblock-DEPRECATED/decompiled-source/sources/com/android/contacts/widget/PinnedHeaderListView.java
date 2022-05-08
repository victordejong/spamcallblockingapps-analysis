package com.android.contacts.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/PinnedHeaderListView.class */
public class PinnedHeaderListView extends AutoScrollListView implements AbsListView.OnScrollListener, AdapterView.OnItemSelectedListener {

    /* renamed from: a  reason: collision with root package name */
    private b f2197a;

    /* renamed from: b  reason: collision with root package name */
    private int f2198b;
    private a[] c;
    private RectF d;
    private Rect e;
    private AbsListView.OnScrollListener f;
    private AdapterView.OnItemSelectedListener g;
    private int h;
    private int i;
    private boolean j;
    private long k;
    private int l;
    private int m;
    private Drawable n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/widget/PinnedHeaderListView$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        View f2199a;

        /* renamed from: b  reason: collision with root package name */
        boolean f2200b;
        int c;
        int d;
        int e;
        int f;
        boolean g;
        boolean h;
        int i;
        int j;
        long k;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/widget/PinnedHeaderListView$b.class */
    public interface b {
        int a(int i);

        View a(int i, View view, ViewGroup viewGroup);

        void a(PinnedHeaderListView pinnedHeaderListView);

        int c_();
    }

    public PinnedHeaderListView(Context context) {
        this(context, null, Resources.getSystem().getIdentifier("listViewStyle", "attr", "android"));
    }

    public PinnedHeaderListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, Resources.getSystem().getIdentifier("listViewStyle", "attr", "android"));
    }

    public PinnedHeaderListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new RectF();
        this.e = new Rect();
        this.i = 20;
        super.setOnScrollListener(this);
        super.setOnItemSelectedListener(this);
        this.n = getResources().getDrawable(2131165371);
    }

    private void a(Canvas canvas, a aVar, long j) {
        if (aVar.g) {
            int i = (int) (aVar.k - j);
            if (i <= 0) {
                aVar.c = aVar.j;
                aVar.f2200b = aVar.h;
                aVar.g = false;
            } else {
                aVar.c = ((i * (aVar.i - aVar.j)) / this.i) + aVar.j;
            }
        }
        if (aVar.f2200b) {
            View view = aVar.f2199a;
            int save = canvas.save();
            canvas.translate(this.l, aVar.c);
            if (aVar.f == 2) {
                this.d.set(0.0f, 0.0f, this.m, view.getHeight());
                canvas.saveLayerAlpha(this.d, aVar.e, 31);
            }
            view.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    private void b() {
        this.j = false;
        for (int i = 0; i < this.f2198b; i++) {
            if (this.c[i].g) {
                this.j = true;
                invalidate();
                return;
            }
        }
    }

    private void c(int i) {
        View view = this.c[i].f2199a;
        if (view.isLayoutRequested()) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.m, 1073741824);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            view.measure(makeMeasureSpec, (layoutParams == null || layoutParams.height <= 0) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
            int measuredHeight = view.getMeasuredHeight();
            this.c[i].d = measuredHeight;
            view.layout(0, 0, this.m, measuredHeight);
        }
    }

    public final int a() {
        int i;
        int i2 = this.f2198b;
        while (true) {
            int i3 = i2 - 1;
            if (i3 < 0) {
                i = 0;
                break;
            }
            a aVar = this.c[i3];
            i2 = i3;
            if (aVar.f2200b) {
                i2 = i3;
                if (aVar.f == 0) {
                    i = aVar.c + aVar.d;
                    break;
                }
            }
        }
        return i;
    }

    public final int a(int i) {
        c(i);
        return this.c[i].f2199a.getHeight();
    }

    public final int b(int i) {
        int i2;
        while (true) {
            int pointToPosition = pointToPosition(getPaddingLeft() + 1, i);
            if (pointToPosition == -1) {
                int i3 = i - 1;
                i = i3;
                if (i3 <= 0) {
                    i2 = 0;
                    break;
                }
            } else {
                i2 = pointToPosition;
                break;
            }
        }
        return i2;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        long currentTimeMillis = this.j ? System.currentTimeMillis() : 0L;
        int bottom = getBottom();
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < this.f2198b; i2++) {
            a aVar = this.c[i2];
            bottom = bottom;
            i = i;
            if (aVar.f2200b) {
                if (aVar.f != 1 || aVar.c >= bottom) {
                    if (aVar.f == 0 || aVar.f == 2) {
                        i = aVar.d + aVar.c;
                        if (i > i) {
                            z = true;
                            bottom = bottom;
                        }
                    }
                    z = true;
                    bottom = bottom;
                    i = i;
                } else {
                    bottom = aVar.c;
                    z = true;
                    i = i;
                }
            }
        }
        if (z) {
            canvas.save();
            this.e.set(0, i, getWidth(), bottom);
            canvas.clipRect(this.e);
        }
        super.dispatchDraw(canvas);
        if (z) {
            canvas.restore();
            int i3 = this.f2198b;
            while (true) {
                int i4 = i3 - 1;
                if (i4 >= 0) {
                    a aVar2 = this.c[i4];
                    i3 = i4;
                    if (aVar2.f2200b) {
                        if (aVar2.f != 0) {
                            i3 = i4;
                            if (aVar2.f == 2) {
                            }
                        }
                        a(canvas, aVar2, currentTimeMillis);
                        i3 = i4;
                    }
                }
            }
            for (int i5 = 0; i5 < this.f2198b; i5++) {
                a aVar3 = this.c[i5];
                if (aVar3.f2200b && aVar3.f == 1) {
                    a(canvas, aVar3, currentTimeMillis);
                }
            }
        }
        b();
    }

    @Override // android.widget.AbsListView, android.view.View
    protected float getTopFadingEdgeStrength() {
        return this.f2198b > 0 ? 0.0f : super.getTopFadingEdgeStrength();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean onInterceptTouchEvent;
        int a2;
        if (this.h == 0) {
            int y = (int) motionEvent.getY();
            int i = this.f2198b;
            while (true) {
                int i2 = i - 1;
                if (i2 < 0) {
                    break;
                }
                a aVar = this.c[i2];
                if (aVar.f2200b && aVar.c <= y) {
                    if (aVar.d + aVar.c > y) {
                        if (motionEvent.getAction() != 0) {
                            onInterceptTouchEvent = true;
                        } else if (this.f2197a == null || (a2 = this.f2197a.a(i2)) == -1) {
                            onInterceptTouchEvent = false;
                        } else {
                            int i3 = 0;
                            for (int i4 = 0; i4 < i2; i4++) {
                                a aVar2 = this.c[i4];
                                i3 = i3;
                                if (aVar2.f2200b) {
                                    i3 += aVar2.d;
                                }
                            }
                            smoothScrollToPositionFromTop(getHeaderViewsCount() + a2, i3);
                            onInterceptTouchEvent = true;
                        }
                    }
                }
                i = i2;
            }
        }
        onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        return onInterceptTouchEvent;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        int height = getHeight();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= this.f2198b) {
                break;
            }
            a aVar = this.c[i2];
            if (aVar.f2200b) {
                if (aVar.f == 0) {
                    i3 = aVar.c + aVar.d;
                } else if (aVar.f == 1) {
                    height = aVar.c;
                    break;
                }
            }
            i2++;
        }
        View selectedView = getSelectedView();
        if (selectedView != null) {
            if (selectedView.getTop() < i3) {
                setSelectionFromTop(i, i3);
            } else if (selectedView.getBottom() > height) {
                setSelectionFromTop(i, height - selectedView.getHeight());
            }
        }
        if (this.g != null) {
            this.g.onItemSelected(adapterView, view, i, j);
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.l = getPaddingLeft();
        this.m = ((i3 - i) - this.l) - getPaddingRight();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
        if (this.g != null) {
            this.g.onNothingSelected(adapterView);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.f2197a != null) {
            int c_ = this.f2197a.c_();
            if (c_ != this.f2198b) {
                this.f2198b = c_;
                if (this.c == null) {
                    this.c = new a[this.f2198b];
                } else if (this.c.length < this.f2198b) {
                    a[] aVarArr = this.c;
                    this.c = new a[this.f2198b];
                    System.arraycopy(aVarArr, 0, this.c, 0, aVarArr.length);
                }
            }
            for (int i4 = 0; i4 < this.f2198b; i4++) {
                if (this.c[i4] == null) {
                    this.c[i4] = new a((byte) 0);
                }
                this.c[i4].f2199a = this.f2197a.a(i4, this.c[i4].f2199a, this);
            }
            this.k = System.currentTimeMillis() + this.i;
            this.f2197a.a(this);
            b();
        }
        if (this.f != null) {
            this.f.onScroll(this, i, i2, i3);
        }
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        this.h = i;
        if (this.f != null) {
            this.f.onScrollStateChanged(this, i);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.widget.ListView, android.widget.AbsListView
    public void setAdapter(ListAdapter listAdapter) {
        try {
            this.f2197a = (b) listAdapter;
        } catch (Exception e) {
            Log.d("PinnedHeaderListView", "Fail to PinnedHeaderListView, Exception : " + e.toString());
        }
        super.setAdapter(listAdapter);
    }

    public void setFadingHeader(int i, int i2, boolean z) {
        int bottom;
        int i3;
        c(i);
        View childAt = getChildAt(i2 - getFirstVisiblePosition());
        if (childAt != null) {
            a aVar = this.c[i];
            aVar.f2200b = true;
            aVar.f = 2;
            aVar.e = 255;
            aVar.g = false;
            int a2 = a();
            aVar.c = a2;
            if (z && (bottom = childAt.getBottom() - a2) < (i3 = aVar.d)) {
                int i4 = bottom - i3;
                aVar.e = ((i3 + i4) * 255) / i3;
                aVar.c = i4 + a2;
            }
        }
    }

    public void setHeaderInvisible(int i, boolean z) {
        a aVar = this.c[i];
        if (!aVar.f2200b || ((!z && !aVar.g) || aVar.f != 1)) {
            aVar.f2200b = false;
            return;
        }
        aVar.i = aVar.c;
        if (!aVar.g) {
            aVar.f2200b = true;
            aVar.j = getBottom() + aVar.d;
        }
        aVar.g = true;
        aVar.k = this.k;
        aVar.h = false;
    }

    public void setHeaderPinnedAtBottom(int i, int i2, boolean z) {
        c(i);
        a aVar = this.c[i];
        aVar.f = 1;
        if (aVar.g) {
            aVar.k = this.k;
            aVar.i = aVar.c;
            aVar.j = i2;
        } else if (!z || (aVar.c == i2 && aVar.f2200b)) {
            aVar.f2200b = true;
            aVar.c = i2;
        } else {
            if (aVar.f2200b) {
                aVar.i = aVar.c;
            } else {
                aVar.f2200b = true;
                aVar.i = aVar.d + i2;
            }
            aVar.g = true;
            aVar.h = true;
            aVar.k = this.k;
            aVar.j = i2;
        }
    }

    public void setHeaderPinnedAtTop(int i, int i2, boolean z) {
        c(i);
        a aVar = this.c[i];
        aVar.f2200b = true;
        aVar.c = i2;
        aVar.f = 0;
        aVar.g = false;
    }

    @Override // android.widget.AdapterView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.g = onItemSelectedListener;
        super.setOnItemSelectedListener(this);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f = onScrollListener;
        super.setOnScrollListener(this);
    }

    public void setPinnedHeaderAnimationDuration(int i) {
        this.i = i;
    }
}
