package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0247a;
import androidx.core.p037g.AbstractC0716ad;
import androidx.core.p037g.C0712aa;
import androidx.core.p037g.C0741t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a.class */
public abstract class AbstractC0426a extends ViewGroup {

    /* renamed from: a */
    protected final C0427a f2163a;

    /* renamed from: b */
    protected final Context f2164b;

    /* renamed from: c */
    protected ActionMenuView f2165c;

    /* renamed from: d */
    protected ActionMenuPresenter f2166d;

    /* renamed from: e */
    protected int f2167e;

    /* renamed from: f */
    protected C0712aa f2168f;

    /* renamed from: g */
    private boolean f2169g;

    /* renamed from: h */
    private boolean f2170h;

    /* renamed from: androidx.appcompat.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a$a.class */
    protected final class C0427a implements AbstractC0716ad {

        /* renamed from: a */
        int f2171a;

        /* renamed from: c */
        private boolean f2173c = false;

        protected C0427a() {
        }

        /* renamed from: a */
        public final C0427a m9238a(C0712aa aaVar, int i) {
            AbstractC0426a.this.f2168f = aaVar;
            this.f2171a = i;
            return this;
        }

        @Override // androidx.core.p037g.AbstractC0716ad
        /* renamed from: a */
        public final void mo8442a(View view) {
            AbstractC0426a.super.setVisibility(0);
            this.f2173c = false;
        }

        @Override // androidx.core.p037g.AbstractC0716ad
        /* renamed from: b */
        public final void mo8441b(View view) {
            if (!this.f2173c) {
                AbstractC0426a aVar = AbstractC0426a.this;
                aVar.f2168f = null;
                AbstractC0426a.super.setVisibility(this.f2171a);
            }
        }

        @Override // androidx.core.p037g.AbstractC0716ad
        /* renamed from: c */
        public final void mo8440c(View view) {
            this.f2173c = true;
        }
    }

    AbstractC0426a(Context context) {
        this(context, null);
    }

    AbstractC0426a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC0426a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2163a = new C0427a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C0247a.C0248a.f560a, typedValue, true) || typedValue.resourceId == 0) {
            this.f2164b = context;
        } else {
            this.f2164b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static int m9244a(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static int m9242a(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static int m9241a(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* renamed from: a */
    public C0712aa mo9243a(int i, long j) {
        C0712aa a;
        C0712aa aaVar = this.f2168f;
        if (aaVar != null) {
            aaVar.m8446b();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            a = C0741t.m8317n(this).m8452a(1.0f);
        } else {
            a = C0741t.m8317n(this).m8452a(0.0f);
        }
        a.m8451a(j);
        a.m8448a(this.f2163a.m9238a(a, i));
        return a;
    }

    /* renamed from: a */
    public void mo9245a(int i) {
        this.f2167e = i;
        requestLayout();
    }

    /* renamed from: a */
    public boolean mo9246a() {
        ActionMenuPresenter actionMenuPresenter = this.f2166d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.m9483h();
        }
        return false;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C0247a.C0257j.f766a, C0247a.C0248a.f562c, 0);
        mo9245a(obtainStyledAttributes.getLayoutDimension(C0247a.C0257j.f996j, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f2166d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m9489d();
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f2170h = false;
        }
        if (!this.f2170h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f2170h = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f2170h = false;
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2169g = false;
        }
        if (!this.f2169g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f2169g = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f2169g = false;
        return true;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C0712aa aaVar = this.f2168f;
            if (aaVar != null) {
                aaVar.m8446b();
            }
            super.setVisibility(i);
        }
    }
}
