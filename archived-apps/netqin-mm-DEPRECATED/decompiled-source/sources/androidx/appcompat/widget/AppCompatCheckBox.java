package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import p012b.p016b.C0574a;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p026q.C0675a0;
import p012b.p016b.p026q.C0684c0;
import p012b.p016b.p026q.C0685d;
import p012b.p016b.p026q.C0687e;
import p012b.p016b.p026q.C0706l;
import p012b.p042i.p054p.AbstractC1001t;
import p012b.p042i.p056q.AbstractC1034j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckBox.class */
public class AppCompatCheckBox extends CheckBox implements AbstractC1034j, AbstractC1001t {

    /* renamed from: a */
    public final C0687e f544a;

    /* renamed from: b */
    public final C0685d f545b;

    /* renamed from: c */
    public final C0706l f546c;

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.checkboxStyle);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(C0684c0.m36459b(context), attributeSet, i);
        C0675a0.m36481a(this, getContext());
        C0687e eVar = new C0687e(this);
        this.f544a = eVar;
        eVar.m36442a(attributeSet, i);
        C0685d dVar = new C0685d(this);
        this.f545b = dVar;
        dVar.m36453a(attributeSet, i);
        C0706l lVar = new C0706l(this);
        this.f546c = lVar;
        lVar.m36336a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0685d dVar = this.f545b;
        if (dVar != null) {
            dVar.m36458a();
        }
        C0706l lVar = this.f546c;
        if (lVar != null) {
            lVar.m36347a();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0687e eVar = this.f544a;
        int i = compoundPaddingLeft;
        if (eVar != null) {
            i = eVar.m36445a(compoundPaddingLeft);
        }
        return i;
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public ColorStateList getSupportBackgroundTintList() {
        C0685d dVar = this.f545b;
        return dVar != null ? dVar.m36452b() : null;
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0685d dVar = this.f545b;
        return dVar != null ? dVar.m36449c() : null;
    }

    public ColorStateList getSupportButtonTintList() {
        C0687e eVar = this.f544a;
        return eVar != null ? eVar.m36441b() : null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0687e eVar = this.f544a;
        return eVar != null ? eVar.m36440c() : null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0685d dVar = this.f545b;
        if (dVar != null) {
            dVar.m36450b(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0685d dVar = this.f545b;
        if (dVar != null) {
            dVar.m36457a(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C0601a.m36777c(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0687e eVar = this.f544a;
        if (eVar != null) {
            eVar.m36439d();
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0685d dVar = this.f545b;
        if (dVar != null) {
            dVar.m36451b(colorStateList);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0685d dVar = this.f545b;
        if (dVar != null) {
            dVar.m36455a(mode);
        }
    }

    @Override // p012b.p042i.p056q.AbstractC1034j
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0687e eVar = this.f544a;
        if (eVar != null) {
            eVar.m36444a(colorStateList);
        }
    }

    @Override // p012b.p042i.p056q.AbstractC1034j
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0687e eVar = this.f544a;
        if (eVar != null) {
            eVar.m36443a(mode);
        }
    }
}
