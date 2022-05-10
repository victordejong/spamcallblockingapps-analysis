package p012b.p016b.p026q;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import p012b.p016b.C0574a;
import p012b.p016b.C0583j;
import p012b.p042i.p054p.AbstractC1021z;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.C1017y;
/* renamed from: b.b.q.a */
/* loaded from: classes-dex2jar.jar:b/b/q/a.class */
public abstract class AbstractC0673a extends ViewGroup {

    /* renamed from: a */
    public final C0674a f3342a;

    /* renamed from: b */
    public final Context f3343b;

    /* renamed from: c */
    public ActionMenuView f3344c;

    /* renamed from: d */
    public ActionMenuPresenter f3345d;

    /* renamed from: e */
    public int f3346e;

    /* renamed from: f */
    public C1017y f3347f;

    /* renamed from: g */
    public boolean f3348g;

    /* renamed from: h */
    public boolean f3349h;

    /* renamed from: b.b.q.a$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/a$a.class */
    public class C0674a implements AbstractC1021z {

        /* renamed from: a */
        public boolean f3350a = false;

        /* renamed from: b */
        public int f3351b;

        public C0674a() {
        }

        /* renamed from: a */
        public C0674a m36485a(C1017y yVar, int i) {
            AbstractC0673a.this.f3347f = yVar;
            this.f3351b = i;
            return this;
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: a */
        public void mo35154a(View view) {
            this.f3350a = true;
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: b */
        public void mo35153b(View view) {
            if (!this.f3350a) {
                AbstractC0673a aVar = AbstractC0673a.this;
                aVar.f3347f = null;
                AbstractC0673a.super.setVisibility(this.f3351b);
            }
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: c */
        public void mo35152c(View view) {
            AbstractC0673a.super.setVisibility(0);
            this.f3350a = false;
        }
    }

    public AbstractC0673a(Context context) {
        this(context, null);
    }

    public AbstractC0673a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC0673a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3342a = new C0674a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C0574a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f3343b = context;
        } else {
            this.f3343b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: a */
    public static int m36491a(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* renamed from: a */
    public int m36489a(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: a */
    public int m36488a(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        int i5 = measuredWidth;
        if (z) {
            i5 = -measuredWidth;
        }
        return i5;
    }

    /* renamed from: a */
    public C1017y m36490a(int i, long j) {
        C1017y yVar = this.f3347f;
        if (yVar != null) {
            yVar.m35165a();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            C1017y a = C1002u.m35249a(this);
            a.m35164a(1.0f);
            a.m35163a(j);
            C0674a aVar = this.f3342a;
            aVar.m36485a(a, i);
            a.m35159a(aVar);
            return a;
        }
        C1017y a2 = C1002u.m35249a(this);
        a2.m35164a(0.0f);
        a2.m35163a(j);
        C0674a aVar2 = this.f3342a;
        aVar2.m36485a(a2, i);
        a2.m35159a(aVar2);
        return a2;
    }

    public int getAnimatedVisibility() {
        return this.f3347f != null ? this.f3342a.f3351b : getVisibility();
    }

    public int getContentHeight() {
        return this.f3346e;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C0583j.ActionBar, C0574a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(C0583j.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f3345d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m39066a(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f3349h = false;
        }
        if (!this.f3349h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f3349h = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f3349h = false;
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f3348g = false;
        }
        if (!this.f3348g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f3348g = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f3348g = false;
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C1017y yVar = this.f3347f;
            if (yVar != null) {
                yVar.m35165a();
            }
            super.setVisibility(i);
        }
    }
}
