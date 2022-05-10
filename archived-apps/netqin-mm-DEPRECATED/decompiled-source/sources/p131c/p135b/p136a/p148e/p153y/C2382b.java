package p131c.p135b.p136a.p148e.p153y;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.adview.AppLovinAdView;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: c.b.a.e.y.b */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/b.class */
public class C2382b {
    /* renamed from: a */
    public static MaxAdFormat m29997a(Context context) {
        return AppLovinSdkUtils.isTablet(context) ? MaxAdFormat.LEADER : MaxAdFormat.BANNER;
    }

    /* renamed from: a */
    public static AppLovinAdSize m29996a(AttributeSet attributeSet) {
        AppLovinAdSize appLovinAdSize = null;
        if (attributeSet == null) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(AppLovinAdView.NAMESPACE, "size");
        if (C2422o.m29851b(attributeValue)) {
            appLovinAdSize = AppLovinAdSize.fromString(attributeValue);
        }
        return appLovinAdSize;
    }

    /* renamed from: a */
    public static void m29994a(ViewGroup viewGroup, View view) {
        if (viewGroup != null) {
            int indexOfChild = viewGroup.indexOfChild(view);
            if (indexOfChild == -1) {
                viewGroup.removeAllViews();
                return;
            }
            viewGroup.removeViews(0, indexOfChild);
            viewGroup.removeViews(1, viewGroup.getChildCount() - 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
        if (r0 == 2038) goto L_0x0064;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m29995a(android.view.View r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0066
            r0 = r4
            r5 = r0
            r0 = r3
            android.view.View r0 = r0.getRootView()
            if (r0 == 0) goto L_0x0066
            r0 = r4
            r5 = r0
            r0 = r3
            android.view.View r0 = r0.getRootView()
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            boolean r0 = r0 instanceof android.view.WindowManager.LayoutParams
            if (r0 == 0) goto L_0x0066
            r0 = r3
            android.view.View r0 = r0.getRootView()
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            android.view.WindowManager$LayoutParams r0 = (android.view.WindowManager.LayoutParams) r0
            int r0 = r0.type
            r6 = r0
            r0 = r6
            r1 = 2002(0x7d2, float:2.805E-42)
            if (r0 == r1) goto L_0x0064
            r0 = r6
            r1 = 2007(0x7d7, float:2.812E-42)
            if (r0 == r1) goto L_0x0064
            r0 = r6
            r1 = 2003(0x7d3, float:2.807E-42)
            if (r0 == r1) goto L_0x0064
            r0 = r6
            r1 = 2010(0x7da, float:2.817E-42)
            if (r0 == r1) goto L_0x0064
            r0 = r6
            r1 = 2006(0x7d6, float:2.811E-42)
            if (r0 == r1) goto L_0x0064
            r0 = r4
            r5 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L_0x0066
            r0 = r4
            r5 = r0
            r0 = r6
            r1 = 2038(0x7f6, float:2.856E-42)
            if (r0 != r1) goto L_0x0066
        L_0x0064:
            r0 = 1
            r5 = r0
        L_0x0066:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.p153y.C2382b.m29995a(android.view.View):boolean");
    }

    /* renamed from: b */
    public static boolean m29993b(AttributeSet attributeSet) {
        boolean z = false;
        if (attributeSet != null) {
            z = false;
            if (attributeSet.getAttributeBooleanValue(AppLovinAdView.NAMESPACE, "loadAdOnCreate", false)) {
                z = true;
            }
        }
        return z;
    }
}
