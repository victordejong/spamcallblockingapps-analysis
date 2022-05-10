package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import p012b.p016b.C0574a;
import p012b.p016b.p026q.C0675a0;
import p012b.p016b.p026q.C0684c0;
import p012b.p016b.p026q.C0685d;
import p012b.p016b.p026q.C0706l;
import p012b.p042i.p054p.AbstractC1001t;
import p012b.p042i.p056q.AbstractC1025b;
import p012b.p042i.p056q.AbstractC1035k;
import p012b.p042i.p056q.C1032i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatButton.class */
public class AppCompatButton extends Button implements AbstractC1001t, AbstractC1025b, AbstractC1035k {

    /* renamed from: a */
    public final C0685d f542a;

    /* renamed from: b */
    public final C0706l f543b;

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(C0684c0.m36459b(context), attributeSet, i);
        C0675a0.m36481a(this, getContext());
        C0685d dVar = new C0685d(this);
        this.f542a = dVar;
        dVar.m36453a(attributeSet, i);
        C0706l lVar = new C0706l(this);
        this.f543b = lVar;
        lVar.m36336a(attributeSet, i);
        this.f543b.m36347a();
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0685d dVar = this.f542a;
        if (dVar != null) {
            dVar.m36458a();
        }
        C0706l lVar = this.f543b;
        if (lVar != null) {
            lVar.m36347a();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC1025b.f4312X) {
            return super.getAutoSizeMaxTextSize();
        }
        C0706l lVar = this.f543b;
        if (lVar != null) {
            return lVar.m36329c();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (AbstractC1025b.f4312X) {
            return super.getAutoSizeMinTextSize();
        }
        C0706l lVar = this.f543b;
        if (lVar != null) {
            return lVar.m36328d();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (AbstractC1025b.f4312X) {
            return super.getAutoSizeStepGranularity();
        }
        C0706l lVar = this.f543b;
        if (lVar != null) {
            return lVar.m36327e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (AbstractC1025b.f4312X) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0706l lVar = this.f543b;
        return lVar != null ? lVar.m36326f() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        int i = 0;
        if (AbstractC1025b.f4312X) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C0706l lVar = this.f543b;
        if (lVar != null) {
            return lVar.m36325g();
        }
        return 0;
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public ColorStateList getSupportBackgroundTintList() {
        C0685d dVar = this.f542a;
        return dVar != null ? dVar.m36452b() : null;
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0685d dVar = this.f542a;
        return dVar != null ? dVar.m36449c() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f543b.m36324h();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f543b.m36323i();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0706l lVar = this.f543b;
        if (lVar != null) {
            lVar.m36333a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C0706l lVar = this.f543b;
        if (lVar != null && !AbstractC1025b.f4312X && lVar.m36322j()) {
            this.f543b.m36331b();
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (AbstractC1025b.f4312X) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0706l lVar = this.f543b;
        if (lVar != null) {
            lVar.m36344a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (AbstractC1025b.f4312X) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0706l lVar = this.f543b;
        if (lVar != null) {
            lVar.m36332a(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AbstractC1025b.f4312X) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0706l lVar = this.f543b;
        if (lVar != null) {
            lVar.m36346a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0685d dVar = this.f542a;
        if (dVar != null) {
            dVar.m36450b(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0685d dVar = this.f542a;
        if (dVar != null) {
            dVar.m36457a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C1032i.m35098a(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        C0706l lVar = this.f543b;
        if (lVar != null) {
            lVar.m36334a(z);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0685d dVar = this.f542a;
        if (dVar != null) {
            dVar.m36451b(colorStateList);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0685d dVar = this.f542a;
        if (dVar != null) {
            dVar.m36455a(mode);
        }
    }

    @Override // p012b.p042i.p056q.AbstractC1035k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f543b.m36340a(colorStateList);
        this.f543b.m36347a();
    }

    @Override // p012b.p042i.p056q.AbstractC1035k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f543b.m36339a(mode);
        this.f543b.m36347a();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0706l lVar = this.f543b;
        if (lVar != null) {
            lVar.m36343a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (AbstractC1025b.f4312X) {
            super.setTextSize(i, f);
            return;
        }
        C0706l lVar = this.f543b;
        if (lVar != null) {
            lVar.m36345a(i, f);
        }
    }
}
