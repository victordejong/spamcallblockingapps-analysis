package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.C0247a;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.core.p037g.AbstractC0740s;
import androidx.core.widget.AbstractC0788l;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckBox.class */
public class AppCompatCheckBox extends CheckBox implements AbstractC0740s, AbstractC0788l {

    /* renamed from: a */
    private final C0518p f1888a;

    /* renamed from: b */
    private final C0517o f1889b;

    /* renamed from: c */
    private final C0431ad f1890c;

    public AppCompatCheckBox(Context context) {
        this(context, null);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f577r);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(C0481bj.m9102a(context), attributeSet, i);
        this.f1888a = new C0518p(this);
        this.f1888a.m8994a(attributeSet, i);
        this.f1889b = new C0517o(this);
        this.f1889b.m9004a(attributeSet, i);
        this.f1890c = new C0431ad(this);
        this.f1890c.m9224a(attributeSet, i);
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1175a(ColorStateList colorStateList) {
        C0517o oVar = this.f1889b;
        if (oVar != null) {
            oVar.m9007a(colorStateList);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1174a(PorterDuff.Mode mode) {
        C0517o oVar = this.f1889b;
        if (oVar != null) {
            oVar.m9006a(mode);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: b */
    public final PorterDuff.Mode mo1169b() {
        C0517o oVar = this.f1889b;
        if (oVar != null) {
            return oVar.m9001c();
        }
        return null;
    }

    @Override // androidx.core.widget.AbstractC0788l
    /* renamed from: b */
    public final void mo8124b(ColorStateList colorStateList) {
        C0518p pVar = this.f1888a;
        if (pVar != null) {
            pVar.m8996a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0788l
    /* renamed from: b */
    public final void mo8123b(PorterDuff.Mode mode) {
        C0518p pVar = this.f1888a;
        if (pVar != null) {
            pVar.m8995a(mode);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: c_ */
    public final ColorStateList mo1159c_() {
        C0517o oVar = this.f1889b;
        if (oVar != null) {
            return oVar.m9003b();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0517o oVar = this.f1889b;
        if (oVar != null) {
            oVar.m9000d();
        }
        C0431ad adVar = this.f1890c;
        if (adVar != null) {
            adVar.m9220b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0518p pVar = this.f1888a;
        return pVar != null ? pVar.m8997a(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0517o oVar = this.f1889b;
        if (oVar != null) {
            oVar.m9009a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0517o oVar = this.f1889b;
        if (oVar != null) {
            oVar.m9008a(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C0258a.m9951b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0518p pVar = this.f1888a;
        if (pVar != null) {
            pVar.m8998a();
        }
    }
}
