package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0492bu;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends AppCompatTextView implements View.OnClickListener, AbstractC0388t.AbstractC0389a, ActionMenuView.AbstractC0403a {

    /* renamed from: a */
    C0375m f1523a;

    /* renamed from: b */
    C0371k.AbstractC0373b f1524b;

    /* renamed from: c */
    AbstractC0357b f1525c;

    /* renamed from: e */
    private CharSequence f1526e;

    /* renamed from: f */
    private Drawable f1527f;

    /* renamed from: g */
    private AbstractView$OnAttachStateChangeListenerC0443ak f1528g;

    /* renamed from: h */
    private boolean f1529h;

    /* renamed from: i */
    private boolean f1530i;

    /* renamed from: j */
    private int f1531j;

    /* renamed from: k */
    private int f1532k;

    /* renamed from: l */
    private int f1533l;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$a.class */
    private final class C0356a extends AbstractView$OnAttachStateChangeListenerC0443ak {
        public C0356a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
        /* renamed from: a */
        public final AbstractC0391v mo8957a() {
            if (ActionMenuItemView.this.f1525c != null) {
                return ActionMenuItemView.this.f1525c.mo9478a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
        /* renamed from: b */
        protected final boolean mo8956b() {
            AbstractC0391v a;
            return ActionMenuItemView.this.f1524b != null && ActionMenuItemView.this.f1524b.mo9472a(ActionMenuItemView.this.f1523a) && (a = mo8957a()) != null && a.mo9375e();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$b.class */
    public static abstract class AbstractC0357b {
        /* renamed from: a */
        public abstract AbstractC0391v mo9478a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.f1529h = m9653f();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0247a.C0257j.f1008v, i, 0);
        this.f1531j = obtainStyledAttributes.getDimensionPixelSize(C0247a.C0257j.f1009w, 0);
        obtainStyledAttributes.recycle();
        this.f1533l = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f1532k = -1;
        setSaveEnabled(false);
    }

    /* renamed from: f */
    private boolean m9653f() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i < 480) {
            return (i >= 640 && i2 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    /* renamed from: g */
    private void m9652g() {
        boolean isEmpty = TextUtils.isEmpty(this.f1526e);
        boolean z = true;
        if (this.f1527f != null) {
            if (this.f1523a.m9569j()) {
                z = true;
                if (!this.f1529h) {
                    if (this.f1530i) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        boolean z2 = (!isEmpty) & z;
        CharSequence charSequence = null;
        setText(z2 ? this.f1526e : null);
        CharSequence contentDescription = this.f1523a.getContentDescription();
        CharSequence charSequence2 = contentDescription;
        if (TextUtils.isEmpty(contentDescription)) {
            charSequence2 = z2 ? null : this.f1523a.getTitle();
        }
        setContentDescription(charSequence2);
        CharSequence tooltipText = this.f1523a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            if (!z2) {
                charSequence = this.f1523a.getTitle();
            }
            C0492bu.m9044a(this, charSequence);
            return;
        }
        C0492bu.m9044a(this, tooltipText);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: a */
    public final C0375m mo1073a() {
        return this.f1523a;
    }

    /* renamed from: a */
    public final void m9656a(AbstractC0357b bVar) {
        this.f1525c = bVar;
    }

    /* renamed from: a */
    public final void m9655a(C0371k.AbstractC0373b bVar) {
        this.f1524b = bVar;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: a */
    public final void mo1069a(C0375m mVar) {
        this.f1523a = mVar;
        Drawable icon = mVar.getIcon();
        this.f1527f = icon;
        int i = 0;
        if (icon != null) {
            int intrinsicWidth = icon.getIntrinsicWidth();
            int intrinsicHeight = icon.getIntrinsicHeight();
            int i2 = this.f1533l;
            int i3 = intrinsicWidth;
            int i4 = intrinsicHeight;
            if (intrinsicWidth > i2) {
                i4 = (int) (intrinsicHeight * (i2 / intrinsicWidth));
                i3 = i2;
            }
            int i5 = this.f1533l;
            int i6 = i3;
            int i7 = i4;
            if (i4 > i5) {
                i6 = (int) (i3 * (i5 / i4));
                i7 = i5;
            }
            icon.setBounds(0, 0, i6, i7);
        }
        setCompoundDrawables(icon, null, null, null);
        m9652g();
        this.f1526e = mVar.m9585a((AbstractC0388t.AbstractC0389a) this);
        m9652g();
        setId(mVar.getItemId());
        if (!mVar.isVisible()) {
            i = 8;
        }
        setVisibility(i);
        setEnabled(mVar.isEnabled());
        if (mVar.hasSubMenu() && this.f1528g == null) {
            this.f1528g = new C0356a();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: b_ */
    public final boolean mo1066b_() {
        return true;
    }

    /* renamed from: c */
    public final boolean m9654c() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0403a
    /* renamed from: d_ */
    public final boolean mo9456d_() {
        return m9654c() && this.f1523a.getIcon() == null;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0403a
    /* renamed from: e */
    public final boolean mo9455e() {
        return m9654c();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0371k.AbstractC0373b bVar = this.f1524b;
        if (bVar != null) {
            bVar.mo9472a(this.f1523a);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1529h = m9653f();
        m9652g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean c = m9654c();
        if (c && (i3 = this.f1532k) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f1531j) : this.f1531j;
        if (mode != 1073741824 && this.f1531j > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (!c && this.f1527f != null) {
            super.setPadding((getMeasuredWidth() - this.f1527f.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnAttachStateChangeListenerC0443ak akVar;
        if (!this.f1523a.hasSubMenu() || (akVar = this.f1528g) == null || !akVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f1532k = i;
        super.setPadding(i, i2, i3, i4);
    }
}
