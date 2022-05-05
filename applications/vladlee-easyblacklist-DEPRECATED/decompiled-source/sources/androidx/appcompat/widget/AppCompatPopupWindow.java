package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.C0247a;
import androidx.core.widget.C0785j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatPopupWindow.class */
class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: a */
    private static final boolean f1903a;

    /* renamed from: b */
    private boolean f1904b;

    static {
        f1903a = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m9437a(context, attributeSet, i, 0);
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m9437a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m9437a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0484bm a = C0484bm.m9092a(context, attributeSet, C0247a.C0257j.f910cl, i, i2);
        if (a.m9079i(C0247a.C0257j.f912cn)) {
            m9436a(a.m9095a(C0247a.C0257j.f912cn, false));
        }
        setBackgroundDrawable(a.m9099a(C0247a.C0257j.f911cm));
        a.m9100a();
    }

    /* renamed from: a */
    private void m9436a(boolean z) {
        if (f1903a) {
            this.f1904b = z;
        } else {
            C0785j.m8136a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f1903a) {
            i3 = i2;
            if (this.f1904b) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f1903a) {
            i4 = i2;
            if (this.f1904b) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f1903a) {
            i5 = i2;
            if (this.f1904b) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
