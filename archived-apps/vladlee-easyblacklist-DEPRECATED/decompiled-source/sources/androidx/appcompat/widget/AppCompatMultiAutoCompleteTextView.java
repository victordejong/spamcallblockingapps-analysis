package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import androidx.appcompat.C0247a;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.core.p037g.AbstractC0740s;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatMultiAutoCompleteTextView.class */
public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView implements AbstractC0740s {

    /* renamed from: a */
    private static final int[] f1900a = {16843126};

    /* renamed from: b */
    private final C0517o f1901b;

    /* renamed from: c */
    private final C0431ad f1902c;

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f575p);
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0481bj.m9102a(context), attributeSet, i);
        C0484bm a = C0484bm.m9092a(getContext(), attributeSet, f1900a, i, 0);
        if (a.m9079i(0)) {
            setDropDownBackgroundDrawable(a.m9099a(0));
        }
        a.m9100a();
        this.f1901b = new C0517o(this);
        this.f1901b.m9004a(attributeSet, i);
        this.f1902c = new C0431ad(this);
        this.f1902c.m9224a(attributeSet, i);
        this.f1902c.m9220b();
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1175a(ColorStateList colorStateList) {
        C0517o oVar = this.f1901b;
        if (oVar != null) {
            oVar.m9007a(colorStateList);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1174a(PorterDuff.Mode mode) {
        C0517o oVar = this.f1901b;
        if (oVar != null) {
            oVar.m9006a(mode);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: b */
    public final PorterDuff.Mode mo1169b() {
        C0517o oVar = this.f1901b;
        if (oVar != null) {
            return oVar.m9001c();
        }
        return null;
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: c_ */
    public final ColorStateList mo1159c_() {
        C0517o oVar = this.f1901b;
        if (oVar != null) {
            return oVar.m9003b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0517o oVar = this.f1901b;
        if (oVar != null) {
            oVar.m9000d();
        }
        C0431ad adVar = this.f1902c;
        if (adVar != null) {
            adVar.m9220b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0521s.m8975a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0517o oVar = this.f1901b;
        if (oVar != null) {
            oVar.m9009a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0517o oVar = this.f1901b;
        if (oVar != null) {
            oVar.m9008a(i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C0258a.m9951b(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0431ad adVar = this.f1902c;
        if (adVar != null) {
            adVar.m9231a(context, i);
        }
    }
}
