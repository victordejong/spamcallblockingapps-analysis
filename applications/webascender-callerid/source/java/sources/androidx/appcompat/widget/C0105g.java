package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.core.widget.C0244i;
import f.a.k.a.a;
/* renamed from: androidx.appcompat.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g.class */
public class C0105g extends CheckedTextView {

    /* renamed from: g */
    private static final int[] f485g = {16843016};

    /* renamed from: f */
    private final C0137x f486f;

    public C0105g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public C0105g(Context context, AttributeSet attributeSet, int i) {
        super(C0131s0.m6482b(context), attributeSet, i);
        C0128q0.m6489a(this, getContext());
        C0137x c0137x = new C0137x(this);
        this.f486f = c0137x;
        c0137x.m6427m(attributeSet, i);
        c0137x.m6438b();
        C0135v0 m6445v = C0135v0.m6445v(getContext(), attributeSet, f485g, i, 0);
        setCheckMarkDrawable(m6445v.m6460g(0));
        m6445v.m6444w();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0137x c0137x = this.f486f;
        if (c0137x != null) {
            c0137x.m6438b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0114k.m6553a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(a.d(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0244i.m5865s(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0137x c0137x = this.f486f;
        if (c0137x != null) {
            c0137x.m6423q(context, i);
        }
    }
}
