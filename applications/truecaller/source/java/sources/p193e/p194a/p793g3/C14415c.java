package p193e.p194a.p793g3;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.razorpay.AnalyticsConstants;
import e.h.a.b.c;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.C22718b0;
import p193e.p1485h.p1486a.p1493c.C22722d;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22737h0;
import p193e.p1485h.p1486a.p1493c.C22773p;
import p193e.p1485h.p1486a.p1493c.p1504t0.AbstractC22833b;
import p193e.p1485h.p1486a.p1493c.p1504t0.C22836e;
import p193e.p1485h.p1486a.p1493c.p1504t0.C22838f;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.g3.c */
/* loaded from: classes7-dex2jar.jar:e/a/g3/c.class */
public final class C14415c implements AbstractC14413b {

    /* renamed from: a */
    public C22773p f41557a;

    /* renamed from: b */
    public final Context f41558b;

    /* renamed from: c */
    public final AbstractC8426f f41559c;

    /* renamed from: d */
    public final AbstractC8541a f41560d;

    @Inject
    public C14415c(Context context, AbstractC8426f abstractC8426f, AbstractC8541a abstractC8541a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC8541a, "coreSettings");
        this.f41558b = context;
        this.f41559c = abstractC8426f;
        this.f41560d = abstractC8541a;
    }

    @Override // p193e.p194a.p793g3.AbstractC14413b
    /* renamed from: a */
    public void mo20140a(String str) {
        l.e(str, "pushId");
        C22773p m20136e = m20136e();
        if (m20136e != null) {
            m20136e.f63088b.f63525k.m7650k(str, AbstractC22865g.EnumC22866a.FCM, true);
        }
    }

    @Override // p193e.p194a.p793g3.AbstractC14413b
    /* renamed from: b */
    public void mo20139b(String str) {
        l.e(str, "pushId");
        C22773p m20136e = m20136e();
        if (m20136e != null) {
            m20136e.f63088b.f63525k.m7650k(str, AbstractC22865g.EnumC22866a.HPS, true);
        }
    }

    @Override // p193e.p194a.p793g3.AbstractC14413b
    /* renamed from: c */
    public void mo20138c(Map<String, ? extends Object> map) {
        C22773p m20136e;
        boolean z;
        boolean z2;
        String str;
        l.e(map, "profile");
        if (!map.isEmpty() && (m20136e = m20136e()) != null) {
            C22836e c22836e = m20136e.f63088b.f63523i;
            boolean z3 = c22836e.f63367f.f2250k;
            try {
                String m7910j = c22836e.f63372k.m7910j();
                if (m7910j == null) {
                    return;
                }
                Context context = c22836e.f63368g;
                CleverTapInstanceConfig cleverTapInstanceConfig = c22836e.f63367f;
                C22718b0 c22718b0 = c22836e.f63372k;
                C22838f c22838f = new C22838f(context, cleverTapInstanceConfig, c22718b0);
                AbstractC22833b m2285x0 = C26232y.m2285x0(context, cleverTapInstanceConfig, c22718b0, c22836e.f63376o);
                Iterator<String> it = map.keySet().iterator();
                boolean z4 = false;
                while (true) {
                    z = z4;
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    Object obj = map.get(next);
                    if (m2285x0.mo7722b(next)) {
                        if (obj != null) {
                            try {
                                str = obj.toString();
                            } catch (Throwable th) {
                            }
                        } else {
                            str = null;
                        }
                        if (str != null && str.length() > 0) {
                            try {
                                String m7713e = c22838f.m7713e(next, str);
                                c22836e.f63362a = m7713e;
                                if (m7713e != null) {
                                    z = true;
                                    break;
                                }
                            } catch (Throwable th2) {
                            }
                            z4 = true;
                        }
                    }
                }
                if (!c22836e.f63372k.m7905o() && (!z || c22838f.m7712f())) {
                    c22836e.f63367f.m42081b().m7856a(c22836e.f63367f.f2240a, "onUserLogin: no identifier provided or device is anonymous, pushing on current user profile");
                    c22836e.f63363b.m7876o(map);
                    return;
                }
                String str2 = c22836e.f63362a;
                if (str2 != null && str2.equals(m7910j)) {
                    c22836e.f63367f.m42081b().m7856a(c22836e.f63367f.f2240a, "onUserLogin: " + map.toString() + " maps to current device id " + m7910j + " pushing on current profile");
                    c22836e.f63363b.m7876o(map);
                    return;
                }
                String obj2 = map.toString();
                Object obj3 = C22836e.f63361q;
                synchronized (obj3) {
                    String str3 = c22836e.f63377p;
                    z2 = false;
                    if (str3 != null) {
                        z2 = false;
                        if (str3.equals(obj2)) {
                            z2 = true;
                        }
                    }
                }
                if (z2) {
                    c22836e.f63367f.m42081b().m7856a(c22836e.f63367f.f2240a, "Already processing onUserLogin for " + obj2);
                    return;
                }
                synchronized (obj3) {
                    c22836e.f63377p = obj2;
                }
                C22735g0 m42081b = c22836e.f63367f.m42081b();
                String str4 = c22836e.f63367f.f2240a;
                StringBuilder sb = new StringBuilder();
                sb.append("onUserLogin: queuing reset profile for ");
                sb.append(obj2);
                sb.append(" with Cached GUID ");
                String str5 = c22836e.f63362a;
                if (str5 == null) {
                    str5 = "NULL";
                }
                sb.append(str5);
                m42081b.m7855b(str4, sb.toString());
                c22836e.m7719c(map, c22836e.f63362a, null);
            } catch (Throwable th3) {
                C22735g0 m42081b2 = c22836e.f63367f.m42081b();
                String str6 = c22836e.f63367f.f2240a;
                Objects.requireNonNull(m42081b2);
            }
        }
    }

    @Override // p193e.p194a.p793g3.AbstractC14413b
    /* renamed from: d */
    public void mo20137d(Bundle bundle) {
        l.e(bundle, "bundle");
        m20135f();
        C22773p c22773p = this.f41557a;
        if (c22773p != null) {
            c22773p.f63088b.f63518d.m7878m(bundle);
        }
    }

    /* renamed from: e */
    public final C22773p m20136e() {
        C22773p c22773p;
        synchronized (this) {
            Context applicationContext = this.f41558b.getApplicationContext();
            if (applicationContext == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
            }
            AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) applicationContext;
            if (this.f41557a == null && abstractApplicationC8442a.mo28540W() && this.f41560d.getBoolean("featureCleverTap")) {
                m20135f();
                Context applicationContext2 = this.f41558b.getApplicationContext();
                if (applicationContext2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.app.Application");
                }
                C22722d.m7901a((Application) applicationContext2);
            }
            c22773p = this.f41557a;
        }
        return c22773p;
    }

    /* renamed from: f */
    public final void m20135f() {
        boolean mo28594d = this.f41559c.mo28594d();
        String str = mo28594d ? "WRZ-586-7R5Z" : "8R5-874-9R5Z";
        String str2 = mo28594d ? "6b5-120" : "4ab-52b";
        String str3 = mo28594d ? "eu1" : "in";
        if (C22773p.f63084d == null) {
            C22737h0.f62953b = str;
            C22737h0.f62954c = str2;
            C22737h0.f62955d = str3;
        }
        C22773p.f63083c = -1;
        C22773p m7793h = C22773p.m7793h(this.f41558b);
        this.f41557a = m7793h;
        if (m7793h != null) {
            C22718b0 c22718b0 = m7793h.f63088b.f63516b;
            c22718b0.f62876g = true;
            try {
                C26232y.m2297u0(c22718b0.f62874e).edit().putBoolean(C26232y.m2398W1(c22718b0.f62873d, "NetworkInfo"), c22718b0.f62876g).apply();
            } catch (Throwable th) {
            }
            C22735g0 m42081b = c22718b0.f62873d.m42081b();
            String str4 = c22718b0.f62873d.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Device Network Information reporting set to ");
            m8728C.append(c22718b0.f62876g);
            m42081b.m7855b(str4, m8728C.toString());
        }
        C22773p.f63086f = new c();
    }

    @Override // p193e.p194a.p793g3.AbstractC14413b
    public void init() {
        m20136e();
    }

    @Override // p193e.p194a.p793g3.AbstractC14413b
    public void initWithoutActivityLifeCycleCallBacks() {
        m20135f();
    }

    @Override // p193e.p194a.p793g3.AbstractC14413b
    public void push(String str) {
        l.e(str, "eventName");
        C22773p m20136e = m20136e();
        if (m20136e != null) {
            m20136e.m7786o(str);
        }
    }

    @Override // p193e.p194a.p793g3.AbstractC14413b
    public void push(String str, Map<String, ? extends Object> map) {
        l.e(str, "eventName");
        l.e(map, "eventActions");
        C22773p m20136e = m20136e();
        if (m20136e != null) {
            m20136e.m7785p(str, map);
        }
    }

    @Override // p193e.p194a.p793g3.AbstractC14413b
    public void updateProfile(Map<String, ? extends Object> map) {
        C22773p m20136e;
        l.e(map, "profileUpdate");
        if (!map.isEmpty() && (m20136e = m20136e()) != null) {
            m20136e.f63088b.f63518d.m7876o(map);
        }
    }
}
