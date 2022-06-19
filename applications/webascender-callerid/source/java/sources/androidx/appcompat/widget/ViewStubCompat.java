package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import f.a.j;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: f */
    private int f440f;

    /* renamed from: g */
    private int f441g;

    /* renamed from: h */
    private WeakReference<View> f442h;

    /* renamed from: i */
    private LayoutInflater f443i;

    /* renamed from: j */
    private AbstractC0090a f444j;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0090a {
        /* renamed from: a */
        void m6659a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f440f = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.H3, i, 0);
        this.f441g = obtainStyledAttributes.getResourceId(j.K3, -1);
        this.f440f = obtainStyledAttributes.getResourceId(j.J3, 0);
        setId(obtainStyledAttributes.getResourceId(j.I3, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m6660a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f440f == 0) {
                throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f443i;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f440f, viewGroup, false);
            int i = this.f441g;
            if (i != -1) {
                inflate.setId(i);
            }
            int indexOfChild = viewGroup.indexOfChild(this);
            viewGroup.removeViewInLayout(this);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                viewGroup.addView(inflate, indexOfChild, layoutParams);
            } else {
                viewGroup.addView(inflate, indexOfChild);
            }
            this.f442h = new WeakReference<>(inflate);
            AbstractC0090a abstractC0090a = this.f444j;
            if (abstractC0090a != null) {
                abstractC0090a.m6659a(this, inflate);
            }
            return inflate;
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f441g;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f443i;
    }

    public int getLayoutResource() {
        return this.f440f;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f441g = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f443i = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f440f = i;
    }

    public void setOnInflateListener(AbstractC0090a abstractC0090a) {
        this.f444j = abstractC0090a;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f442h;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i);
            return;
        }
        super.setVisibility(i);
        if (i != 0 && i != 4) {
            return;
        }
        m6660a();
    }
}
