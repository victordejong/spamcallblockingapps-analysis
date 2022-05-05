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
import androidx.appcompat.C0247a;
import androidx.core.p037g.AbstractC0740s;
import androidx.core.widget.AbstractC0777b;
import androidx.core.widget.C0786k;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatButton.class */
public class AppCompatButton extends Button implements AbstractC0740s, AbstractC0777b {

    /* renamed from: a */
    private final C0517o f1886a;

    /* renamed from: b */
    private final C0431ad f1887b;

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f576q);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(C0481bj.m9102a(context), attributeSet, i);
        this.f1886a = new C0517o(this);
        this.f1886a.m9004a(attributeSet, i);
        this.f1887b = new C0431ad(this);
        this.f1887b.m9224a(attributeSet, i);
        this.f1887b.m9220b();
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public void mo1175a(ColorStateList colorStateList) {
        C0517o oVar = this.f1886a;
        if (oVar != null) {
            oVar.m9007a(colorStateList);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public void mo1174a(PorterDuff.Mode mode) {
        C0517o oVar = this.f1886a;
        if (oVar != null) {
            oVar.m9006a(mode);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: b */
    public PorterDuff.Mode mo1169b() {
        C0517o oVar = this.f1886a;
        if (oVar != null) {
            return oVar.m9001c();
        }
        return null;
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: c_ */
    public ColorStateList mo1159c_() {
        C0517o oVar = this.f1886a;
        if (oVar != null) {
            return oVar.m9003b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0517o oVar = this.f1886a;
        if (oVar != null) {
            oVar.m9000d();
        }
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            adVar.m9220b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f3242d) {
            return super.getAutoSizeMaxTextSize();
        }
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            return adVar.m9213i();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (f3242d) {
            return super.getAutoSizeMinTextSize();
        }
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            return adVar.m9214h();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (f3242d) {
            return super.getAutoSizeStepGranularity();
        }
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            return adVar.m9215g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (f3242d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0431ad adVar = this.f1887b;
        return adVar != null ? adVar.m9212j() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (f3242d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            return adVar.m9216f();
        }
        return 0;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            adVar.m9219c();
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f1887b != null && !f3242d && this.f1887b.m9217e()) {
            this.f1887b.m9218d();
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (f3242d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            adVar.m9232a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (f3242d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            adVar.m9221a(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f3242d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            adVar.m9234a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0517o oVar = this.f1886a;
        if (oVar != null) {
            oVar.m9009a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0517o oVar = this.f1886a;
        if (oVar != null) {
            oVar.m9008a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0786k.m8132a(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            adVar.m9231a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f3242d) {
            super.setTextSize(i, f);
            return;
        }
        C0431ad adVar = this.f1887b;
        if (adVar != null) {
            adVar.m9233a(i, f);
        }
    }
}
