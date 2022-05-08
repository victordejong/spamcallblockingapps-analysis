package com.flurry.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.flurry.sdk.AbstractC3518x;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import com.flurry.sdk.C2866be;
import com.flurry.sdk.C3007du;
import com.flurry.sdk.C3017ed;
import com.flurry.sdk.C3142ga;
import com.flurry.sdk.C3356jq;
import com.flurry.sdk.C3484p;
import com.flurry.sdk.EnumC2874bi;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryBrowserActivity.class */
public final class FlurryBrowserActivity extends Activity {

    /* renamed from: a */
    public static final String f3828a = FlurryBrowserActivity.class.getSimpleName();

    /* renamed from: b */
    public String f3829b;

    /* renamed from: c */
    public AbstractC3518x f3830c;

    /* renamed from: d */
    public boolean f3831d;

    /* renamed from: e */
    public boolean f3832e;

    /* renamed from: f */
    public C2866be f3833f;

    /* renamed from: g */
    public C2866be.AbstractC2868a f3834g = new C2866be.AbstractC2868a() { // from class: com.flurry.android.FlurryBrowserActivity.1
        @Override // com.flurry.sdk.C2866be.AbstractC2868a
        /* renamed from: a */
        public final void mo33482a() {
            C2866be beVar = FlurryBrowserActivity.this.f3833f;
            FlurryBrowserActivity flurryBrowserActivity = FlurryBrowserActivity.this;
            beVar.m33487a(flurryBrowserActivity, Uri.parse(flurryBrowserActivity.f3829b), new C2866be.AbstractC2869b() { // from class: com.flurry.android.FlurryBrowserActivity.1.1
                @Override // com.flurry.sdk.C2866be.AbstractC2869b
                /* renamed from: a */
                public final void mo33480a() {
                    FlurryBrowserActivity.this.m33758c();
                }
            });
        }

        @Override // com.flurry.sdk.C2866be.AbstractC2868a
        /* renamed from: b */
        public final void mo33481b() {
            FlurryBrowserActivity.this.m33758c();
        }
    };

    /* renamed from: h */
    public C2866be.AbstractC2870c f3835h = new C2866be.AbstractC2870c(this) { // from class: com.flurry.android.FlurryBrowserActivity.2
    };

    /* renamed from: a */
    public final void m33763a() {
        m33761a(EnumC2874bi.INTERNAL_EV_AD_OPENED);
        if (!C2866be.m33486a((Context) this) || !C3017ed.m33282a(16)) {
            m33758c();
            return;
        }
        this.f3832e = true;
        this.f3833f = new C2866be();
        C2866be beVar = this.f3833f;
        beVar.f4167a = this.f3834g;
        beVar.f4168b = this.f3835h;
        beVar.m33488a((Activity) this);
    }

    /* renamed from: a */
    public final void m33761a(EnumC2874bi biVar) {
        if (this.f3830c != null && this.f3831d) {
            Map emptyMap = Collections.emptyMap();
            AbstractC3518x xVar = this.f3830c;
            C3007du.m33321a(biVar, emptyMap, this, xVar, xVar.mo32279k(), 0);
        }
    }

    /* renamed from: b */
    public final void m33760b() {
        FlurryAgent.onEndSession(getApplicationContext());
        C2866be beVar = this.f3833f;
        if (beVar != null) {
            beVar.f4168b = null;
            beVar.f4167a = null;
            beVar.m33484b((Activity) this);
            this.f3833f = null;
        }
    }

    /* renamed from: c */
    public final void m33758c() {
        this.f3832e = false;
        setContentView(new C3142ga(this, this.f3829b, this.f3830c, new AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a() { // from class: com.flurry.android.FlurryBrowserActivity.3
            @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
            /* renamed from: a */
            public final void mo32972a() {
                FlurryBrowserActivity.this.finish();
            }

            @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
            /* renamed from: b */
            public final void mo32971b() {
                FlurryBrowserActivity.this.finish();
            }

            @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
            /* renamed from: c */
            public final void mo32970c() {
                FlurryBrowserActivity.this.finish();
            }
        }));
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            m33760b();
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.f3829b = intent.getStringExtra("url");
        this.f3831d = intent.getBooleanExtra("fire_events", false);
        int intExtra = intent.getIntExtra("ad_object_id", 0);
        if (intExtra != 0) {
            this.f3830c = C3484p.m32358a().f6000b.m32298a(intExtra);
            if (this.f3830c != null) {
                m33763a();
                return;
            }
            C3356jq.m32609b(f3828a, "No ad object found. Can't launch activity");
            finish();
            return;
        }
        C3356jq.m32606c(f3828a, "No ad object provided");
        m33763a();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        m33761a(EnumC2874bi.EV_AD_CLOSED);
        if (this.f3832e) {
            m33760b();
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        if (!this.f3832e) {
            FlurryAgent.onStartSession(getApplicationContext());
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        if (!this.f3832e) {
            FlurryAgent.onEndSession(getApplicationContext());
        }
    }
}
