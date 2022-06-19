package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
/* renamed from: androidx.appcompat.widget.x0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/x0.class */
public class C0138x0 {
    /* renamed from: a */
    public static void m6413a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            View$OnLongClickListenerC0139y0.m6407f(view, charSequence);
        }
    }
}
