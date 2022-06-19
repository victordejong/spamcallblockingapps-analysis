package p193e.p194a.p294b.p355m;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.truecaller.bizmon.C3478R;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.b.m.j1 */
/* loaded from: classes6-dex2jar.jar:e/a/b/m/j1.class */
public final class C8076j1 implements AbstractC26410a {

    /* renamed from: a */
    public final LinearLayout f24956a;

    public C8076j1(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f24956a = linearLayout;
    }

    /* renamed from: a */
    public static C8076j1 m28915a(View view) {
        int i = C3478R.C3480id.ivEmptySearch;
        AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(i);
        if (appCompatImageView != null) {
            i = C3478R.C3480id.tvEmptySubText;
            AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(i);
            if (appCompatTextView != null) {
                i = C3478R.C3480id.tvEmptyText;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(i);
                if (appCompatTextView2 != null) {
                    return new C8076j1((LinearLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
