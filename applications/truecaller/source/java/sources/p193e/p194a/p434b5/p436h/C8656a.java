package p193e.p194a.p434b5.p436h;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.truecaller.log.AssertionUtil;
import com.truecaller.social.SocialNetworkType;
import com.truecaller.social.google.C4486R;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p434b5.AbstractC8642a;
import p193e.p194a.p434b5.C8647d;
/* renamed from: e.a.b5.h.a */
/* loaded from: classes13-dex2jar.jar:e/a/b5/h/a.class */
public class C8656a extends AbstractC8642a {

    /* renamed from: f */
    public final Activity f26517f;

    /* renamed from: i */
    public boolean f26520i;

    /* renamed from: j */
    public boolean f26521j;

    /* renamed from: h */
    public GoogleSignInAccount f26519h = null;

    /* renamed from: k */
    public final GoogleApiClient.ConnectionCallbacks f26522k = new C8657a();

    /* renamed from: l */
    public final GoogleApiClient.OnConnectionFailedListener f26523l = new C8658b();

    /* renamed from: g */
    public GoogleApiClient f26518g = m28138t();

    /* renamed from: e.a.b5.h.a$a */
    /* loaded from: classes13-dex2jar.jar:e/a/b5/h/a$a.class */
    public class C8657a implements GoogleApiClient.ConnectionCallbacks {
        public C8657a() {
            C8656a.this = r4;
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            String str = "onConnected(" + bundle + ")";
            C8656a.this.f26503c.sendEmptyMessage(4);
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    }

    /* renamed from: e.a.b5.h.a$b */
    /* loaded from: classes13-dex2jar.jar:e/a/b5/h/a$b.class */
    public class C8658b implements GoogleApiClient.OnConnectionFailedListener {
        public C8658b() {
            C8656a.this = r4;
        }

        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            String str = "onConnectionFailed(" + connectionResult + ")";
            if (!connectionResult.m39077o2()) {
                C8656a.this.m28161o(16, 3, 0, new C8647d(String.valueOf(connectionResult)));
            } else if (connectionResult.f5663b != 4) {
                C8656a.this.m28161o(15, 3, 0, connectionResult);
            } else {
                Handler handler = C8656a.this.f26503c;
                handler.sendMessage(handler.obtainMessage(5, 0, 0, connectionResult));
            }
        }
    }

    public C8656a(Activity activity) {
        super(SocialNetworkType.GOOGLE);
        this.f26517f = activity;
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    /* renamed from: a */
    public void mo28152a() {
        if (m28137u()) {
            this.f26503c.sendEmptyMessage(9);
            return;
        }
        m28160p(4, 9, 0, 0, null);
        this.f26503c.sendEmptyMessage(3);
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    /* renamed from: b */
    public void mo28151b() {
        if (m28137u()) {
            this.f26503c.sendEmptyMessage(5);
            return;
        }
        m28160p(4, 5, 0, 0, null);
        this.f26503c.sendEmptyMessage(3);
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a, p193e.p194a.p434b5.AbstractC8645b
    /* renamed from: c */
    public void mo28150c(Bundle bundle) {
        this.f26520i = bundle.getBoolean("gsn-was-connected");
        this.f26521j = bundle.getBoolean("gsn-should-resolve");
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a, p193e.p194a.p434b5.AbstractC8645b
    /* renamed from: d */
    public void mo28149d(Bundle bundle) {
        bundle.putBoolean("gsn-was-connected", this.f26520i);
        bundle.putBoolean("gsn-should-resolve", this.f26521j);
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: e */
    public void mo28148e(Object obj) {
        if (m28137u() || m28136v()) {
            return;
        }
        m28139s(this.f26518g);
        GoogleApiClient m28138t = m28138t();
        this.f26518g = m28138t;
        m28138t.mo39000e();
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: f */
    public void mo28147f(Object obj) {
        m28139s(this.f26518g);
        this.f26518g = null;
        AssertionUtil.OnlyInDebug.isTrue(!m28137u(), new String[0]);
        this.f26503c.sendEmptyMessage(12);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ba A[Catch: RuntimeException -> 0x00db, TRY_ENTER, TryCatch #0 {RuntimeException -> 0x00db, blocks: (B:6:0x001c, B:8:0x003e, B:11:0x0048, B:13:0x0057, B:16:0x0065, B:17:0x0085, B:18:0x0090, B:20:0x00a1, B:22:0x00ba, B:23:0x00c5, B:23:0x00c5, B:24:0x00c8), top: B:30:0x001c }] */
    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo28146g(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p434b5.p436h.C8656a.mo28146g(java.lang.Object):void");
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: h */
    public void mo28145h(int i, Object obj) {
        int i2 = i | 30208;
        if (obj instanceof ConnectionResult) {
            ConnectionResult connectionResult = (ConnectionResult) obj;
            if (!connectionResult.m39077o2()) {
                super.mo28145h(i, obj);
                return;
            }
            try {
                connectionResult.m39075q2(this.f26517f, i2);
            } catch (IntentSender.SendIntentException e) {
                m28161o(16, i, 0, e);
            }
        } else if (!(obj instanceof Status)) {
            super.mo28145h(i, obj);
        } else {
            Status status = (Status) obj;
            if (!status.m39044o2()) {
                super.mo28145h(i, obj);
                return;
            }
            try {
                status.m39041r2(this.f26517f, i2);
            } catch (IntentSender.SendIntentException e2) {
                m28161o(16, i, 0, e2);
            }
        }
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: i */
    public void mo28144i(Object obj) {
        if (!(m28137u() && this.f26519h != null)) {
            this.f26517f.startActivityForResult(Auth.f5349d.mo39106a(this.f26518g), 30464);
            return;
        }
        m28160p(12, 3, 0, 0, null);
        m28160p(4, 5, 0, 0, null);
        this.f26503c.sendEmptyMessage(7);
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: j */
    public void mo28143j(Object obj) {
        GoogleApiClient googleApiClient = this.f26518g;
        if (googleApiClient != null) {
            m28139s(googleApiClient);
            this.f26518g = null;
            this.f26519h = null;
        }
        this.f26503c.sendEmptyMessage(8);
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: k */
    public void mo28142k(Object obj) {
        AssertionUtil.OnlyInDebug.isTrue(m28137u(), new String[0]);
        AssertionUtil.OnlyInDebug.isTrue(!m28136v(), new String[0]);
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: l */
    public void mo28141l(Object obj) {
        AssertionUtil.OnlyInDebug.isTrue(!m28137u(), "Still connected");
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: m */
    public void mo28140m(Object obj) {
        if (m28137u()) {
            this.f26503c.sendEmptyMessage(4);
        } else {
            this.f26503c.sendEmptyMessage(3);
        }
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    public boolean onActivityResult(int i, int i2, Intent intent) {
        StringBuilder m8716F = C22128a.m8716F("onActivityResult(", i, ",", i2, ",");
        m8716F.append(intent);
        m8716F.append(")");
        m8716F.toString();
        if (i != 30464) {
            if ((i & 30208) != 30208) {
                return false;
            }
            int i3 = i & (-30209);
            if (i2 == -1) {
                this.f26503c.sendEmptyMessage(i3);
                return false;
            }
            m28162n(i3, null);
            return false;
        }
        this.f26521j = false;
        if (i2 != -1) {
            m28162n(6, null);
            return true;
        }
        GoogleSignInResult mo39105b = Auth.f5349d.mo39105b(intent);
        if (!mo39105b.f5543a.m39042q2()) {
            m28162n(6, null);
            return true;
        }
        this.f26519h = mo39105b.f5544b;
        this.f26503c.sendEmptyMessage(6);
        if (this.f26519h == null) {
            return true;
        }
        AbstractApplicationC8442a.m28551L().m28549N().mo12420d().putString("profileGoogleIdToken", this.f26519h.f5504c);
        return true;
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a, p193e.p194a.p434b5.AbstractC8645b
    public void onStart() {
        if (this.f26520i) {
            this.f26503c.sendEmptyMessage(3);
        } else {
            this.f26503c.sendEmptyMessage(1);
        }
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a, p193e.p194a.p434b5.AbstractC8645b
    public void onStop() {
        if (m28137u() || m28136v()) {
            this.f26503c.sendEmptyMessage(11);
        }
    }

    /* renamed from: s */
    public final void m28139s(GoogleApiClient googleApiClient) {
        if (googleApiClient != null) {
            googleApiClient.mo38992r(this.f26522k);
            googleApiClient.mo38991s(this.f26523l);
            googleApiClient.mo38999f();
        }
    }

    /* renamed from: t */
    public final GoogleApiClient m28138t() {
        String string = this.f26517f.getString(C4486R.string.google_client_id);
        GoogleSignInOptions.Builder builder = new GoogleSignInOptions.Builder(GoogleSignInOptions.f5516l);
        builder.m39118c(string);
        builder.m39119b();
        GoogleSignInOptions m39120a = builder.m39120a();
        GoogleApiClient.Builder builder2 = new GoogleApiClient.Builder(this.f26517f);
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = this.f26522k;
        Preconditions.m38897k(connectionCallbacks, "Listener must not be null");
        builder2.f5717n.add(connectionCallbacks);
        GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = this.f26523l;
        Preconditions.m38897k(onConnectionFailedListener, "Listener must not be null");
        builder2.f5718o.add(onConnectionFailedListener);
        builder2.m39051a(Auth.f5347b, m39120a);
        return builder2.m39050b();
    }

    /* renamed from: u */
    public final boolean m28137u() {
        GoogleApiClient googleApiClient = this.f26518g;
        return googleApiClient != null && googleApiClient.mo38996n();
    }

    /* renamed from: v */
    public final boolean m28136v() {
        GoogleApiClient googleApiClient = this.f26518g;
        return googleApiClient != null && googleApiClient.mo38995o();
    }

    /* renamed from: w */
    public final void m28135w(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }
}
