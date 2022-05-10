package p131c.p135b.p136a.p138b.p139a;

import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.sdk.AppLovinSdkUtils;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* renamed from: c.b.a.b.a.b */
/* loaded from: classes-dex2jar.jar:c/b/a/b/a/b.class */
public class C2040b {

    /* renamed from: a */
    public final AppLovinFullscreenActivity f7948a;

    /* renamed from: b */
    public final int f7949b;

    /* renamed from: c */
    public final int f7950c;

    /* renamed from: d */
    public final boolean f7951d;

    public C2040b(AppLovinFullscreenActivity appLovinFullscreenActivity) {
        this.f7948a = appLovinFullscreenActivity;
        this.f7950c = AbstractC2426r.m29774e(appLovinFullscreenActivity);
        boolean isTablet = AppLovinSdkUtils.isTablet(appLovinFullscreenActivity);
        this.f7951d = isTablet;
        this.f7949b = m31202a(this.f7950c, isTablet);
    }

    /* renamed from: a */
    public final int m31202a(int i, boolean z) {
        if (z) {
            if (i == 0) {
                return 0;
            }
            if (i == 1) {
                return 9;
            }
            if (i == 2) {
                return 8;
            }
            return i == 3 ? 1 : -1;
        } else if (i == 0) {
            return 1;
        } else {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 9;
            }
            return i == 3 ? 8 : -1;
        }
    }

    /* renamed from: a */
    public final void m31203a(int i) {
        try {
            this.f7948a.setRequestedOrientation(i);
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0072, code lost:
        if (r5 == 2) goto L_0x002c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0078, code lost:
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0092, code lost:
        if (r5 == 1) goto L_0x0078;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m31201a(com.applovin.impl.sdk.p489ad.AbstractC7036g.EnumC7038b r4, int r5, boolean r6) {
        /*
            r3 = this;
            com.applovin.impl.sdk.ad.g$b r0 = com.applovin.impl.sdk.p489ad.AbstractC7036g.EnumC7038b.ACTIVITY_PORTRAIT
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r4
            r1 = r7
            if (r0 != r1) goto L_0x0055
            r0 = 9
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0035
            r0 = r5
            r1 = 1
            if (r0 == r1) goto L_0x0023
            r0 = r5
            r1 = 3
            if (r0 == r1) goto L_0x0023
            goto L_0x003e
        L_0x0023:
            r0 = r5
            r1 = 1
            if (r0 != r1) goto L_0x003e
            r0 = r9
            r8 = r0
        L_0x002c:
            r0 = r3
            r1 = r8
            r0.m31203a(r1)
            goto L_0x0098
        L_0x0035:
            r0 = r5
            if (r0 == 0) goto L_0x0047
            r0 = r5
            r1 = 2
            if (r0 == r1) goto L_0x0047
        L_0x003e:
            r0 = r3
            r1 = r8
            r0.m31203a(r1)
            goto L_0x0098
        L_0x0047:
            r0 = r5
            if (r0 != 0) goto L_0x004e
            goto L_0x003e
        L_0x004e:
            r0 = 9
            r8 = r0
            goto L_0x003e
        L_0x0055:
            r0 = r4
            com.applovin.impl.sdk.ad.g$b r1 = com.applovin.impl.sdk.p489ad.AbstractC7036g.EnumC7038b.ACTIVITY_LANDSCAPE
            if (r0 != r1) goto L_0x0098
            r0 = 8
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x007e
            r0 = r5
            if (r0 == 0) goto L_0x0070
            r0 = r5
            r1 = 2
            if (r0 == r1) goto L_0x0070
            goto L_0x0088
        L_0x0070:
            r0 = r5
            r1 = 2
            if (r0 != r1) goto L_0x0078
            goto L_0x002c
        L_0x0078:
            r0 = 0
            r8 = r0
            goto L_0x002c
        L_0x007e:
            r0 = r5
            r1 = 1
            if (r0 == r1) goto L_0x0090
            r0 = r5
            r1 = 3
            if (r0 == r1) goto L_0x0090
        L_0x0088:
            r0 = r3
            r1 = 0
            r0.m31203a(r1)
            goto L_0x0098
        L_0x0090:
            r0 = r5
            r1 = 1
            if (r0 != r1) goto L_0x002c
            goto L_0x0078
        L_0x0098:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p138b.p139a.C2040b.m31201a(com.applovin.impl.sdk.ad.g$b, int, boolean):void");
    }

    /* renamed from: a */
    public void m31200a(AbstractC7036g gVar) {
        int i;
        if (!gVar.m18905e() || (i = this.f7949b) == -1) {
            m31201a(gVar.m18865w0(), this.f7950c, this.f7951d);
        } else {
            m31203a(i);
        }
    }
}
