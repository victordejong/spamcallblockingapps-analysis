package p193e.p194a.p773g.p783h;

import android.view.View;
import android.widget.FrameLayout;
import com.truecaller.acs.C2778R;
import com.truecaller.ads.p134ui.AdsSwitchView;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.g.h.d */
/* loaded from: classes4-dex2jar.jar:e/a/g/h/d.class */
public final class C14259d implements AbstractC26410a {

    /* renamed from: a */
    public final AdsSwitchView f41272a;

    /* renamed from: b */
    public final FrameLayout f41273b;

    /* renamed from: c */
    public final FrameLayout f41274c;

    /* renamed from: d */
    public final FrameLayout f41275d;

    public C14259d(AdsSwitchView adsSwitchView, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, AdsSwitchView adsSwitchView2, C14260e c14260e) {
        this.f41272a = adsSwitchView;
        this.f41273b = frameLayout;
        this.f41274c = frameLayout2;
        this.f41275d = frameLayout3;
    }

    /* renamed from: a */
    public static C14259d m20311a(View view) {
        int i = C2778R.C2780id.adsHolderBanner;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
        if (frameLayout != null) {
            i = C2778R.C2780id.adsHolderNative;
            FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
            if (frameLayout2 != null) {
                int i2 = C2778R.C2780id.container;
                FrameLayout frameLayout3 = (FrameLayout) view.findViewById(i2);
                i = i2;
                if (frameLayout3 != null) {
                    AdsSwitchView adsSwitchView = (AdsSwitchView) view;
                    i = C2778R.C2780id.outer_container;
                    View findViewById = view.findViewById(i);
                    if (findViewById != null) {
                        FrameLayout frameLayout4 = (FrameLayout) findViewById.findViewById(i2);
                        if (frameLayout4 == null) {
                            throw new NullPointerException("Missing required view with ID: ".concat(findViewById.getResources().getResourceName(i2)));
                        }
                        FrameLayout frameLayout5 = (FrameLayout) findViewById;
                        return new C14259d(adsSwitchView, frameLayout, frameLayout2, frameLayout3, adsSwitchView, new C14260e(frameLayout5, frameLayout4, frameLayout5));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
