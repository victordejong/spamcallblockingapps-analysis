package p131c.p421j.p426d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
import com.mopub.mobileads.resource.DrawableConstants;
/* renamed from: c.j.d.j */
/* loaded from: classes2-dex2jar.jar:c/j/d/j.class */
public class C6685j extends ViewGroup {

    /* renamed from: a */
    public final ProgressBar f20638a;

    /* renamed from: b */
    public int f20639b = Dips.asIntPixels(25.0f, getContext());

    public C6685j(Context context) {
        super(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setVisibility(8);
        setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        getBackground().setAlpha(180);
        this.f20638a = new ProgressBar(context);
        this.f20638a.setIndeterminate(true);
        addView(this.f20638a);
    }

    /* renamed from: a */
    public boolean m20051a() {
        Views.removeFromParent(this);
        setVisibility(8);
        return true;
    }

    /* renamed from: a */
    public boolean m20050a(View view) {
        Preconditions.checkNotNull(view);
        View rootView = view.getRootView();
        if (rootView == null || !(rootView instanceof ViewGroup)) {
            return false;
        }
        setVisibility(0);
        setMeasuredDimension(rootView.getWidth(), rootView.getHeight());
        ((ViewGroup) rootView).addView(this);
        forceLayout();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            int i5 = (i + i3) / 2;
            int i6 = (i2 + i4) / 2;
            ProgressBar progressBar = this.f20638a;
            int i7 = this.f20639b;
            progressBar.layout(i5 - i7, i6 - i7, i5 + i7, i6 + i7);
        }
    }
}
