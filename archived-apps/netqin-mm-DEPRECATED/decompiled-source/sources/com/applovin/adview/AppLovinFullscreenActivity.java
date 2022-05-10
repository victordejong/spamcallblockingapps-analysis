package com.applovin.adview;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import com.applovin.impl.adview.AbstractActivityC6931n;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p138b.AbstractC2086i;
import p131c.p135b.p136a.p138b.C2097m;
import p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a;
import p131c.p135b.p136a.p138b.p139a.p141c.C2054b;
import p131c.p135b.p136a.p138b.p139a.p141c.C2056c;
import p131c.p135b.p136a.p138b.p139a.p141c.C2058d;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2383c;
/* loaded from: classes-dex2jar.jar:com/applovin/adview/AppLovinFullscreenActivity.class */
public class AppLovinFullscreenActivity extends Activity implements AbstractC2086i {
    public static C2097m parentInterstitialWrapper;

    /* renamed from: a */
    public AbstractC2041a f21081a;

    /* renamed from: b */
    public final AtomicBoolean f21082b = new AtomicBoolean(true);

    /* renamed from: c */
    public int f21083c;

    @Override // p131c.p135b.p136a.p138b.AbstractC2086i, android.content.DialogInterface
    public void dismiss() {
        this.f21081a.mo31149f();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f21081a.m31184j();
        if (C2383c.m29991a(getApplicationContext()).m29990a("applovin.sdk.is_test_environment")) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f21081a.m31197a(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f21083c++;
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(16777216);
        getWindow().addFlags(128);
        findViewById(16908290).setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        if (parentInterstitialWrapper == null) {
            C2097m a = C2097m.m31065a(getIntent().getStringExtra(AbstractActivityC6931n.KEY_WRAPPER_ID));
            parentInterstitialWrapper = a;
            if (a == null) {
                C2341l a2 = AbstractC2426r.m29811a(AppLovinSdk.getInstance(this));
                Activity a3 = a2.m30234y().m30676a();
                a2.m30248k().m30519b(C2267f.f8883g);
                a2.m30248k().m30519b(C2267f.f8893q);
                if (((Boolean) a2.m30291a(C2251d.C2256e.f8680h4)).booleanValue()) {
                    throw new IllegalStateException("Parent interstitial wrapper is null. Top activity: " + a3 + " sa: " + a2.m30248k().m30519b(C2267f.f8883g) + " ma: " + a2.m30248k().m30519b(C2267f.f8893q) + " counter: " + this.f21083c);
                }
            }
        }
        AbstractC7036g b = parentInterstitialWrapper.m31064b();
        C2341l a4 = parentInterstitialWrapper.m31077a();
        AppLovinAdClickListener e = parentInterstitialWrapper.m31059e();
        AppLovinAdDisplayListener d = parentInterstitialWrapper.m31060d();
        AppLovinAdVideoPlaybackListener c = parentInterstitialWrapper.m31061c();
        this.f21081a = b instanceof C6894a ? new C2056c(b, this, a4, e, d, c) : b.hasVideoUrl() ? new C2058d(b, this, a4, e, d, c) : new C2054b(b, this, a4, e, d, c);
        this.f21081a.mo31156c();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        parentInterstitialWrapper = null;
        this.f21081a.mo31146h();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        this.f21081a.mo31164a(i, keyEvent);
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f21081a.m31185i();
        super.onLowMemory();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f21081a.mo31167e();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (!this.f21082b.get()) {
            this.f21081a.mo31168d();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f21081a.m31186g();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (!this.f21082b.getAndSet(false)) {
            this.f21081a.mo31153c(z);
        }
        if (z) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
        super.onWindowFocusChanged(z);
    }
}
