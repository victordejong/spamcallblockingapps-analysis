package p193e.p194a.p437c.p438a.p477g;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.truecaller.insights.p168ui.C4078R;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.c.a.g.p1 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/g/p1.class */
public final class C9061p1 implements AbstractC26410a {

    /* renamed from: a */
    public final NestedScrollView f27606a;

    public C9061p1(NestedScrollView nestedScrollView, TextView textView, ImageView imageView, TextView textView2, ConstraintLayout constraintLayout, ImageView imageView2, TextView textView3) {
        this.f27606a = nestedScrollView;
    }

    /* renamed from: a */
    public static C9061p1 m27886a(View view) {
        int i = C4078R.C4080id.bannerBody;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = C4078R.C4080id.bannerImageView;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = C4078R.C4080id.bannerTitle;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = C4078R.C4080id.bannerView;
                    ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                    if (constraintLayout != null) {
                        i = C4078R.C4080id.bar1;
                        ImageView imageView2 = (ImageView) view.findViewById(i);
                        if (imageView2 != null) {
                            i = C4078R.C4080id.title;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                return new C9061p1((NestedScrollView) view, textView, imageView, textView2, constraintLayout, imageView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
