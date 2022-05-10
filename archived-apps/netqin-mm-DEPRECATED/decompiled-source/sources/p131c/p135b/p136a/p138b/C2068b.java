package p131c.p135b.p136a.p138b;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: c.b.a.b.b */
/* loaded from: classes-dex2jar.jar:c/b/a/b/b.class */
public class C2068b extends RelativeLayout {

    /* renamed from: a */
    public final ProgressBar f8027a;

    public C2068b(Activity activity, int i, int i2) {
        super(activity);
        RelativeLayout.LayoutParams layoutParams;
        setClickable(false);
        ProgressBar progressBar = new ProgressBar(activity, null, i2);
        this.f8027a = progressBar;
        progressBar.setIndeterminate(true);
        this.f8027a.setClickable(false);
        if (i == -2 || i == -1) {
            layoutParams = new RelativeLayout.LayoutParams(i, i);
        } else {
            int dpToPx = AppLovinSdkUtils.dpToPx(activity, i);
            layoutParams = new RelativeLayout.LayoutParams(dpToPx, dpToPx);
        }
        layoutParams.addRule(13);
        this.f8027a.setLayoutParams(layoutParams);
        addView(this.f8027a);
    }

    /* renamed from: a */
    public void m31133a() {
        setVisibility(0);
    }

    /* renamed from: b */
    public void m31132b() {
        setVisibility(8);
    }

    public void setColor(int i) {
        this.f8027a.getIndeterminateDrawable().setColorFilter(i, PorterDuff.Mode.SRC_IN);
    }
}
