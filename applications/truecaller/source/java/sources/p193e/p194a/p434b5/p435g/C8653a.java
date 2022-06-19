package p193e.p194a.p434b5.p435g;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.internal.C1190t;
import com.facebook.login.C1284v;
import com.facebook.login.C1289w;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.social.SocialNetworkType;
import com.truecaller.social.facebook.FacebookProfileDto;
import e.m.e.k;
import e.m.e.u;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.AbstractC23218a0;
import p193e.p1538j.AbstractC23280y;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23244l0;
import p193e.p1538j.C23265v;
import p193e.p1538j.EnumC23246m0;
import p193e.p194a.p434b5.AbstractC8642a;
import p193e.p194a.p434b5.C8647d;
import p193e.p194a.p434b5.C8652f;
import s1.z.c.l;
/* renamed from: e.a.b5.g.a */
/* loaded from: classes13-dex2jar.jar:e/a/b5/g/a.class */
public class C8653a extends AbstractC8642a {

    /* renamed from: i */
    public static final List<String> f26511i = Collections.singletonList(AnalyticsConstants.EMAIL);

    /* renamed from: f */
    public final Activity f26512f;

    /* renamed from: g */
    public final Fragment f26513g;

    /* renamed from: h */
    public final AbstractC23280y f26514h;

    /* renamed from: e.a.b5.g.a$a */
    /* loaded from: classes13-dex2jar.jar:e/a/b5/g/a$a.class */
    public class C8654a implements AbstractC23218a0<C1289w> {
        public C8654a() {
            C8653a.this = r4;
        }
    }

    /* renamed from: e.a.b5.g.a$b */
    /* loaded from: classes13-dex2jar.jar:e/a/b5/g/a$b.class */
    public class C8655b implements GraphRequest.AbstractC0922b {
        public C8655b() {
            C8653a.this = r4;
        }

        @Override // com.facebook.GraphRequest.AbstractC0922b
        /* renamed from: a */
        public void mo7325a(C23244l0 c23244l0) {
            FacebookRequestError facebookRequestError = c23244l0.f64335e;
            if (facebookRequestError != null) {
                C8653a.this.m28161o(16, 9, 0, new C8647d.C8649b(facebookRequestError.toString()));
                return;
            }
            try {
                FacebookProfileDto facebookProfileDto = (FacebookProfileDto) new k().f(c23244l0.f64332b, FacebookProfileDto.class);
                C8653a c8653a = C8653a.this;
                C8652f socialNetworkProfile = facebookProfileDto.toSocialNetworkProfile();
                Handler handler = c8653a.f26503c;
                handler.sendMessage(handler.obtainMessage(10, 0, 0, socialNetworkProfile));
            } catch (u e) {
                C8653a.this.m28161o(16, 9, 0, e);
            }
        }
    }

    public C8653a(Activity activity, Fragment fragment) {
        super(SocialNetworkType.FACEBOOK);
        this.f26512f = activity;
        this.f26513g = fragment;
        C1190t c1190t = new C1190t();
        this.f26514h = c1190t;
        final C1284v m41550b = C1284v.m41550b();
        final C8654a c8654a = new C8654a();
        int m41639a = C1190t.EnumC1193c.Login.m41639a();
        C1190t.AbstractC1191a abstractC1191a = new C1190t.AbstractC1191a() { // from class: com.facebook.login.f
            @Override // com.facebook.internal.C1190t.AbstractC1191a
            /* renamed from: a */
            public final boolean mo41559a(int i, Intent intent) {
                C1284v c1284v = C1284v.this;
                AbstractC23218a0<C1289w> abstractC23218a0 = c8654a;
                l.e(c1284v, "this$0");
                c1284v.m41545g(i, intent, abstractC23218a0);
                return true;
            }
        };
        l.e(abstractC1191a, "callback");
        c1190t.f3235a.put(Integer.valueOf(m41639a), abstractC1191a);
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    /* renamed from: a */
    public void mo28152a() {
        if (m28153s()) {
            this.f26503c.sendEmptyMessage(9);
            return;
        }
        m28160p(4, 9, 0, 0, null);
        this.f26503c.sendEmptyMessage(5);
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    /* renamed from: b */
    public void mo28151b() {
        if (!m28153s()) {
            this.f26503c.sendEmptyMessage(5);
            return;
        }
        m28160p(12, 5, 0, 0, null);
        this.f26503c.sendEmptyMessage(7);
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: g */
    public void mo28146g(Object obj) {
        AssertionUtil.OnlyInDebug.isTrue(m28153s(), new String[0]);
        Bundle m8654X0 = C22128a.m8654X0("fields", "id,first_name,last_name,email,location,hometown,gender,picture.width(500).height(500),link");
        AccessToken.C0907c c0907c = AccessToken.f2460l;
        GraphRequest graphRequest = new GraphRequest(C23265v.f64388f.m7313a().f64392c, "me", m8654X0, EnumC23246m0.GET, null, null, 48);
        graphRequest.m42009k(new C8655b());
        graphRequest.m42016d();
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: i */
    public void mo28144i(Object obj) {
        try {
            if (this.f26513g == null) {
                C1284v.m41550b().m41548d(this.f26512f, f26511i);
            } else {
                C1284v.m41550b().m41547e(this.f26513g, f26511i);
            }
        } catch (C23222c0 e) {
            m28162n(5, e);
        }
    }

    @Override // p193e.p194a.p434b5.AbstractC8642a
    /* renamed from: j */
    public void mo28143j(Object obj) {
        C1284v.m41550b().m41546f();
        AssertionUtil.OnlyInDebug.isTrue(!m28153s(), new String[0]);
    }

    @Override // p193e.p194a.p434b5.AbstractC8645b
    public boolean onActivityResult(int i, int i2, Intent intent) {
        StringBuilder m8716F = C22128a.m8716F("onActivityResult(", i, ",", i2, ",");
        m8716F.append(intent);
        m8716F.append(")");
        m8716F.toString();
        return this.f26514h.onActivityResult(i, i2, intent);
    }

    /* renamed from: s */
    public final boolean m28153s() {
        AccessToken.C0907c c0907c = AccessToken.f2460l;
        AccessToken accessToken = C23265v.f64388f.m7313a().f64392c;
        return accessToken != null && !accessToken.m42035a();
    }
}
