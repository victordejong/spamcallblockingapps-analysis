package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.core.graphics.C0756c;
import androidx.core.p035e.C0667c;
import androidx.core.p037g.AbstractC0740s;
import androidx.core.widget.AbstractC0777b;
import androidx.core.widget.AbstractC0789m;
import androidx.core.widget.C0786k;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextView.class */
public class AppCompatTextView extends TextView implements AbstractC0740s, AbstractC0777b, AbstractC0789m {

    /* renamed from: a */
    private final C0517o f1931a;

    /* renamed from: b */
    private final C0431ad f1932b;

    /* renamed from: c */
    private final C0430ac f1933c;

    /* renamed from: e */
    private Future<C0667c> f1934e;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0481bj.m9102a(context), attributeSet, i);
        this.f1931a = new C0517o(this);
        this.f1931a.m9004a(attributeSet, i);
        this.f1932b = new C0431ad(this);
        this.f1932b.m9224a(attributeSet, i);
        this.f1932b.m9220b();
        this.f1933c = new C0430ac(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
        if (r0 != 2) goto L_0x0070;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f2, code lost:
        if (r8 == false) goto L_0x00f5;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m9417c() {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatTextView.m9417c():void");
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1175a(ColorStateList colorStateList) {
        C0517o oVar = this.f1931a;
        if (oVar != null) {
            oVar.m9007a(colorStateList);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1174a(PorterDuff.Mode mode) {
        C0517o oVar = this.f1931a;
        if (oVar != null) {
            oVar.m9006a(mode);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: b */
    public final PorterDuff.Mode mo1169b() {
        C0517o oVar = this.f1931a;
        if (oVar != null) {
            return oVar.m9001c();
        }
        return null;
    }

    @Override // androidx.core.widget.AbstractC0789m
    /* renamed from: b */
    public final void mo8122b(ColorStateList colorStateList) {
        this.f1932b.m9228a(colorStateList);
        this.f1932b.m9220b();
    }

    @Override // androidx.core.widget.AbstractC0789m
    /* renamed from: b */
    public final void mo8121b(PorterDuff.Mode mode) {
        this.f1932b.m9227a(mode);
        this.f1932b.m9220b();
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: c_ */
    public final ColorStateList mo1159c_() {
        C0517o oVar = this.f1931a;
        if (oVar != null) {
            return oVar.m9003b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0517o oVar = this.f1931a;
        if (oVar != null) {
            oVar.m9000d();
        }
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9220b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f3242d) {
            return super.getAutoSizeMaxTextSize();
        }
        C0431ad adVar = this.f1932b;
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
        C0431ad adVar = this.f1932b;
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
        C0431ad adVar = this.f1932b;
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
        C0431ad adVar = this.f1932b;
        return adVar != null ? adVar.m9212j() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (f3242d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            return adVar.m9216f();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m9417c();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0430ac acVar;
        return (Build.VERSION.SDK_INT >= 28 || (acVar = this.f1933c) == null) ? super.getTextClassifier() : acVar.m9237a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0521s.m8975a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9219c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m9417c();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f1932b != null && !f3242d && this.f1932b.m9217e()) {
            this.f1932b.m9218d();
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (f3242d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0431ad adVar = this.f1932b;
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
        C0431ad adVar = this.f1932b;
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
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9234a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0517o oVar = this.f1931a;
        if (oVar != null) {
            oVar.m9009a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0517o oVar = this.f1931a;
        if (oVar != null) {
            oVar.m9008a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9235a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9235a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable b = i != 0 ? C0258a.m9951b(context, i) : null;
        Drawable b2 = i2 != 0 ? C0258a.m9951b(context, i2) : null;
        Drawable b3 = i3 != 0 ? C0258a.m9951b(context, i3) : null;
        if (i4 != 0) {
            drawable = C0258a.m9951b(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(b, b2, b3, drawable);
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9235a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9235a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable b = i != 0 ? C0258a.m9951b(context, i) : null;
        Drawable b2 = i2 != 0 ? C0258a.m9951b(context, i2) : null;
        Drawable b3 = i3 != 0 ? C0258a.m9951b(context, i3) : null;
        if (i4 != 0) {
            drawable = C0258a.m9951b(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(b, b2, b3, drawable);
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9235a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9235a();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0786k.m8132a(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C0786k.m8128b(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C0786k.m8127c(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        C0786k.m8126d(this, i);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9231a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0430ac acVar;
        if (Build.VERSION.SDK_INT >= 28 || (acVar = this.f1933c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            acVar.m9236a(textClassifier);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f3242d) {
            super.setTextSize(i, f);
            return;
        }
        C0431ad adVar = this.f1932b;
        if (adVar != null) {
            adVar.m9233a(i, f);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        Typeface a = (typeface == null || i <= 0) ? null : C0756c.m8267a(getContext(), typeface, i);
        if (a != null) {
            typeface = a;
        }
        super.setTypeface(typeface, i);
    }
}
