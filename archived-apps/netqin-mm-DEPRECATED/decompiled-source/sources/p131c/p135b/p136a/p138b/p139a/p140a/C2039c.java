package p131c.p135b.p136a.p138b.p139a.p140a;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.AppLovinVideoViewV2;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.sdk.AppLovinSdkUtils;
import p131c.p135b.p136a.p138b.C2068b;
import p131c.p135b.p136a.p138b.C2095k;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2382b;
/* renamed from: c.b.a.b.a.a.c */
/* loaded from: classes-dex2jar.jar:c/b/a/b/a/a/c.class */
public class C2039c extends AbstractC2037a {
    public C2039c(AbstractC7036g gVar, AppLovinFullscreenActivity appLovinFullscreenActivity, C2341l lVar) {
        super(gVar, appLovinFullscreenActivity, lVar);
    }

    /* renamed from: a */
    public void m31205a(ImageView imageView, C2095k kVar, C2068b bVar, ProgressBar progressBar, AppLovinVideoViewV2 appLovinVideoViewV2, AppLovinAdView appLovinAdView) {
        appLovinVideoViewV2.setLayoutParams(this.f7947e);
        this.f7946d.addView(appLovinVideoViewV2);
        appLovinAdView.setLayoutParams(this.f7947e);
        this.f7946d.addView(appLovinAdView);
        appLovinAdView.setVisibility(4);
        if (kVar != null) {
            m31207a(this.f7945c.m18934W(), (this.f7945c.m18915b0() ? 3 : 5) | 48, kVar);
        }
        if (imageView != null) {
            int dpToPx = AppLovinSdkUtils.dpToPx(this.f7944b, ((Integer) this.f7943a.m30291a(C2251d.C2256e.f8648c2)).intValue());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPx, dpToPx, ((Integer) this.f7943a.m30291a(C2251d.C2256e.f8660e2)).intValue());
            int dpToPx2 = AppLovinSdkUtils.dpToPx(this.f7944b, ((Integer) this.f7943a.m30291a(C2251d.C2256e.f8654d2)).intValue());
            layoutParams.setMargins(dpToPx2, dpToPx2, dpToPx2, dpToPx2);
            this.f7946d.addView(imageView, layoutParams);
        }
        if (bVar != null) {
            this.f7946d.addView(bVar, this.f7947e);
        }
        if (progressBar != null) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, 20, 80);
            layoutParams2.setMargins(0, 0, 0, ((Integer) this.f7943a.m30291a(C2251d.C2256e.f8684i2)).intValue());
            this.f7946d.addView(progressBar, layoutParams2);
        }
        this.f7944b.setContentView(this.f7946d);
    }

    /* renamed from: a */
    public void m31204a(C2095k kVar, View view) {
        view.setVisibility(0);
        C2382b.m29994a(this.f7946d, view);
        if (kVar != null) {
            m31207a(this.f7945c.m18934W(), (this.f7945c.m18922a0() ? 3 : 5) | 48, kVar);
        }
    }
}
