package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
/* renamed from: androidx.appcompat.widget.bu */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bu.class */
public final class C0492bu {
    /* renamed from: a */
    public static void m9044a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            View$OnAttachStateChangeListenerC0493bv.m9042a(view, charSequence);
        }
    }
}
