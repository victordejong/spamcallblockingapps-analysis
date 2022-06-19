package p193e.p194a.p437c.p438a.p487k.p491d;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.c.a.k.d.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/d/c.class */
public final class View$OnLayoutChangeListenerC9216c implements View.OnLayoutChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CharSequence f28005a;

    public View$OnLayoutChangeListenerC9216c(CharSequence charSequence) {
        this.f28005a = charSequence;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        l.e(view, ViewAction.VIEW);
        view.removeOnLayoutChangeListener(this);
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setText(TextUtils.ellipsize(this.f28005a, textView.getPaint(), textView.getWidth(), TextUtils.TruncateAt.END));
        }
    }
}
