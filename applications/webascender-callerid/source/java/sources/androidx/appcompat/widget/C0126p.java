package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.widget.C0243h;
import f.a.j;
/* renamed from: androidx.appcompat.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p.class */
class C0126p extends PopupWindow {

    /* renamed from: b */
    private static final boolean f557b;

    /* renamed from: a */
    private boolean f558a;

    static {
        f557b = Build.VERSION.SDK_INT < 21;
    }

    public C0126p(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m6496a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m6496a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0135v0 m6445v = C0135v0.m6445v(context, attributeSet, j.Q1, i, i2);
        int i3 = j.S1;
        if (m6445v.m6448s(i3)) {
            m6495b(m6445v.m6466a(i3, false));
        }
        setBackgroundDrawable(m6445v.m6460g(j.R1));
        m6445v.m6444w();
    }

    /* renamed from: b */
    private void m6495b(boolean z) {
        if (f557b) {
            this.f558a = z;
        } else {
            C0243h.m5886a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f557b) {
            i3 = i2;
            if (this.f558a) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f557b) {
            i4 = i2;
            if (this.f558a) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f557b) {
            i5 = i2;
            if (this.f558a) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
