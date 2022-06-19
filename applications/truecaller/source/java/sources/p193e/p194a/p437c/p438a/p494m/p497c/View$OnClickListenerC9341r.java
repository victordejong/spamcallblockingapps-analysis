package p193e.p194a.p437c.p438a.p494m.p497c;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
/* renamed from: e.a.c.a.m.c.r */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/r.class */
public final class View$OnClickListenerC9341r implements View.OnClickListener {

    /* renamed from: a */
    public static final View$OnClickListenerC9341r f28385a = new View$OnClickListenerC9341r();

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (textView.getEllipsize() != null) {
                textView.setMaxLines(Integer.MAX_VALUE);
                textView.setEllipsize(null);
                return;
            }
            textView.setMaxLines(5);
            textView.setEllipsize(TextUtils.TruncateAt.END);
        }
    }
}
