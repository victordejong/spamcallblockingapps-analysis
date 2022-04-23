package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.appcompat.C0247a;
import androidx.core.p037g.AbstractC0740s;
import androidx.core.widget.C0786k;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatEditText.class */
public class AppCompatEditText extends EditText implements AbstractC0740s {

    /* renamed from: a */
    private final C0517o f1893a;

    /* renamed from: b */
    private final C0431ad f1894b;

    /* renamed from: c */
    private final C0430ac f1895c;

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f545C);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(C0481bj.m9102a(context), attributeSet, i);
        this.f1893a = new C0517o(this);
        this.f1893a.m9004a(attributeSet, i);
        this.f1894b = new C0431ad(this);
        this.f1894b.m9224a(attributeSet, i);
        this.f1894b.m9220b();
        this.f1895c = new C0430ac(this);
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1175a(ColorStateList colorStateList) {
        C0517o oVar = this.f1893a;
        if (oVar != null) {
            oVar.m9007a(colorStateList);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1174a(PorterDuff.Mode mode) {
        C0517o oVar = this.f1893a;
        if (oVar != null) {
            oVar.m9006a(mode);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: b */
    public final PorterDuff.Mode mo1169b() {
        C0517o oVar = this.f1893a;
        if (oVar != null) {
            return oVar.m9001c();
        }
        return null;
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: c_ */
    public final ColorStateList mo1159c_() {
        C0517o oVar = this.f1893a;
        if (oVar != null) {
            return oVar.m9003b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0517o oVar = this.f1893a;
        if (oVar != null) {
            oVar.m9000d();
        }
        C0431ad adVar = this.f1894b;
        if (adVar != null) {
            adVar.m9220b();
        }
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0430ac acVar;
        return (Build.VERSION.SDK_INT >= 28 || (acVar = this.f1895c) == null) ? super.getTextClassifier() : acVar.m9237a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0521s.m8975a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0517o oVar = this.f1893a;
        if (oVar != null) {
            oVar.m9009a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0517o oVar = this.f1893a;
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
        C0431ad adVar = this.f1894b;
        if (adVar != null) {
            adVar.m9231a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0430ac acVar;
        if (Build.VERSION.SDK_INT >= 28 || (acVar = this.f1895c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            acVar.m9236a(textClassifier);
        }
    }
}
