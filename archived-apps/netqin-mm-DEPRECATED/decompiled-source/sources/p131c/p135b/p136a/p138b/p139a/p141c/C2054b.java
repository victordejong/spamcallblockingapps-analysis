package p131c.p135b.p136a.p138b.p139a.p141c;

import android.os.SystemClock;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import p131c.p135b.p136a.p138b.p139a.p140a.C2038b;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.b.a.c.b */
/* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/b.class */
public class C2054b extends AbstractC2041a {

    /* renamed from: x */
    public final C2038b f7993x = new C2038b(this.f7952a, this.f7955d, this.f7953b);

    /* renamed from: c.b.a.b.a.c.b$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/b$a.class */
    public class RunnableC2055a implements Runnable {
        public RunnableC2055a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2054b.this.f7967p = SystemClock.elapsedRealtime();
        }
    }

    public C2054b(AbstractC7036g gVar, AppLovinFullscreenActivity appLovinFullscreenActivity, C2341l lVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(gVar, appLovinFullscreenActivity, lVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
    }

    @Override // p131c.p135b.p136a.p148e.p149a.C2229b.AbstractC2237d
    /* renamed from: a */
    public void mo30683a() {
    }

    @Override // p131c.p135b.p136a.p148e.p149a.C2229b.AbstractC2237d
    /* renamed from: b */
    public void mo30682b() {
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: c */
    public void mo31156c() {
        this.f7993x.m31206a(this.f7962k, this.f7961j);
        m31191a(false);
        this.f7961j.renderAd(this.f7952a);
        m31192a("javascript:al_onPoststitialShow();", this.f7952a.m18860z());
        if (this.f7962k != null) {
            if (this.f7952a.m18859z0() >= 0) {
                m31195a(this.f7962k, this.f7952a.m18859z0(), new RunnableC2055a());
            } else {
                this.f7962k.setVisibility(0);
            }
        }
        m31178q();
        super.m31187b(m31179p());
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: f */
    public void mo31149f() {
        mo31144l();
        super.mo31149f();
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: l */
    public void mo31144l() {
        super.m31199a(100, false, true, -2L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [long] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m31178q() {
        /*
            r5 = this;
            r0 = r5
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            long r0 = r0.m18906d0()
            r6 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001a
            r0 = r5
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            int r0 = r0.m18903e0()
            if (r0 < 0) goto L_0x00b0
        L_0x001a:
            r0 = r5
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            long r0 = r0.m18906d0()
            r6 = r0
            r0 = r5
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            r10 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0037
            r0 = r10
            long r0 = r0.m18906d0()
            r6 = r0
            goto L_0x00ab
        L_0x0037:
            r0 = r8
            r6 = r0
            r0 = r10
            boolean r0 = r0.m18900f0()
            if (r0 == 0) goto L_0x0082
            r0 = r5
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            c.b.a.e.c.a r0 = (p131c.p135b.p136a.p148e.p150c.C2245a) r0
            float r0 = r0.m30656N0()
            int r0 = (int) r0
            r11 = r0
            r0 = r11
            if (r0 <= 0) goto L_0x0064
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            r1 = r11
            long r1 = (long) r1
            long r0 = r0.toMillis(r1)
            r6 = r0
        L_0x005d:
            r0 = 0
            r1 = r6
            long r0 = r0 + r1
            r6 = r0
            goto L_0x0082
        L_0x0064:
            r0 = r5
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            long r0 = r0.m18859z0()
            int r0 = (int) r0
            r11 = r0
            r0 = r8
            r6 = r0
            r0 = r11
            if (r0 <= 0) goto L_0x0082
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            r1 = r11
            long r1 = (long) r1
            long r0 = r0.toMillis(r1)
            r6 = r0
            goto L_0x005d
        L_0x0082:
            r0 = r6
            double r0 = (double) r0
            r12 = r0
            r0 = r5
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            int r0 = r0.m18903e0()
            double r0 = (double) r0
            r14 = r0
            r0 = r14
            boolean r0 = java.lang.Double.isNaN(r0)
            r0 = r14
            r1 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r0 = r0 / r1
            r14 = r0
            r0 = r12
            boolean r0 = java.lang.Double.isNaN(r0)
            r0 = r12
            r1 = r14
            double r0 = r0 * r1
            long r0 = (long) r0
            r6 = r0
        L_0x00ab:
            r0 = r5
            r1 = r6
            r0.m31198a(r1)
        L_0x00b0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p138b.p139a.p141c.C2054b.m31178q():void");
    }
}
