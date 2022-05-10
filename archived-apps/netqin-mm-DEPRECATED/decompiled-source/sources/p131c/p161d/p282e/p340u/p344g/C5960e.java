package p131c.p161d.p282e.p340u.p344g;

import android.content.Context;
import com.google.firebase.perf.p494v1.NetworkRequestMetric;
import java.net.URI;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p349l.C5996d;
/* renamed from: c.d.e.u.g.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/e.class */
public final class C5960e extends AbstractC5965j {

    /* renamed from: c */
    public static final C5969a f19362c = C5969a.m22496a();

    /* renamed from: a */
    public final NetworkRequestMetric f19363a;

    /* renamed from: b */
    public final Context f19364b;

    public C5960e(NetworkRequestMetric networkRequestMetric, Context context) {
        this.f19364b = context;
        this.f19363a = networkRequestMetric;
    }

    @Override // p131c.p161d.p282e.p340u.p344g.AbstractC5965j
    /* renamed from: a */
    public boolean mo22504a() {
        if (m22525e(this.f19363a.m7206I())) {
            C5969a aVar = f19362c;
            aVar.m22492c("URL is missing:" + this.f19363a.m7206I(), new Object[0]);
            return false;
        }
        URI c = m22527c(this.f19363a.m7206I());
        if (c == null) {
            f19362c.m22492c("URL cannot be parsed", new Object[0]);
            return false;
        } else if (!m22530a(c, this.f19364b)) {
            C5969a aVar2 = f19362c;
            aVar2.m22492c("URL fails whitelist rule: " + c, new Object[0]);
            return false;
        } else if (!m22524f(c.getHost())) {
            f19362c.m22492c("URL host is null or invalid", new Object[0]);
            return false;
        } else if (!m22523g(c.getScheme())) {
            f19362c.m22492c("URL scheme is null or invalid", new Object[0]);
            return false;
        } else if (!m22522h(c.getUserInfo())) {
            f19362c.m22492c("URL user info is null", new Object[0]);
            return false;
        } else if (!m22529b(c.getPort())) {
            f19362c.m22492c("URL port is less than or equal to 0", new Object[0]);
            return false;
        } else {
            if (!m22531a(this.f19363a.m7204K() ? this.f19363a.m7166y() : null)) {
                C5969a aVar3 = f19362c;
                aVar3.m22492c("HTTP Method is null or invalid: " + this.f19363a.m7166y(), new Object[0]);
                return false;
            } else if (this.f19363a.m7203L() && !m22533a(this.f19363a.m7165z())) {
                C5969a aVar4 = f19362c;
                aVar4.m22492c("HTTP ResponseCode is a negative value:" + this.f19363a.m7165z(), new Object[0]);
                return false;
            } else if (this.f19363a.m7202M() && !m22532a(this.f19363a.m7212C())) {
                C5969a aVar5 = f19362c;
                aVar5.m22492c("Request Payload is a negative value:" + this.f19363a.m7212C(), new Object[0]);
                return false;
            } else if (this.f19363a.m7201N() && !m22532a(this.f19363a.m7210E())) {
                C5969a aVar6 = f19362c;
                aVar6.m22492c("Response Payload is a negative value:" + this.f19363a.m7210E(), new Object[0]);
                return false;
            } else if (!this.f19363a.m7205J() || this.f19363a.m7167x() <= 0) {
                C5969a aVar7 = f19362c;
                aVar7.m22492c("Start time of the request is null, or zero, or a negative value:" + this.f19363a.m7167x(), new Object[0]);
                return false;
            } else if (this.f19363a.m7200O() && !m22528b(this.f19363a.m7209F())) {
                C5969a aVar8 = f19362c;
                aVar8.m22492c("Time to complete the request is a negative value:" + this.f19363a.m7209F(), new Object[0]);
                return false;
            } else if (this.f19363a.m7198Q() && !m22528b(this.f19363a.m7207H())) {
                C5969a aVar9 = f19362c;
                aVar9.m22492c("Time from the start of the request to the start of the response is null or a negative value:" + this.f19363a.m7207H(), new Object[0]);
                return false;
            } else if (!this.f19363a.m7199P() || this.f19363a.m7208G() <= 0) {
                C5969a aVar10 = f19362c;
                aVar10.m22492c("Time from the start of the request to the end of the response is null, negative or zero:" + this.f19363a.m7208G(), new Object[0]);
                return false;
            } else if (this.f19363a.m7203L()) {
                return true;
            } else {
                f19362c.m22492c("Did not receive a HTTP Response Code", new Object[0]);
                return false;
            }
        }
    }

    /* renamed from: a */
    public final boolean m22533a(int i) {
        return i > 0;
    }

    /* renamed from: a */
    public final boolean m22532a(long j) {
        return j >= 0;
    }

    /* renamed from: a */
    public boolean m22531a(NetworkRequestMetric.HttpMethod httpMethod) {
        return (httpMethod == null || httpMethod == NetworkRequestMetric.HttpMethod.HTTP_METHOD_UNKNOWN) ? false : true;
    }

    /* renamed from: a */
    public final boolean m22530a(URI uri, Context context) {
        if (uri == null) {
            return false;
        }
        return C5996d.m22362a(uri, context);
    }

    /* renamed from: b */
    public final boolean m22529b(int i) {
        return i == -1 || i > 0;
    }

    /* renamed from: b */
    public final boolean m22528b(long j) {
        return j >= 0;
    }

    /* renamed from: c */
    public final URI m22527c(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URI.create(str);
        } catch (IllegalArgumentException | IllegalStateException e) {
            f19362c.m22491d(String.format("getResultUrl throws exception %s", e.getMessage()), new Object[0]);
            return null;
        }
    }

    /* renamed from: d */
    public final boolean m22526d(String str) {
        if (str == null) {
            return true;
        }
        return str.trim().isEmpty();
    }

    /* renamed from: e */
    public final boolean m22525e(String str) {
        return m22526d(str);
    }

    /* renamed from: f */
    public final boolean m22524f(String str) {
        return str != null && !m22526d(str) && str.length() <= 255;
    }

    /* renamed from: g */
    public final boolean m22523g(String str) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        if ("http".equalsIgnoreCase(str) || "https".equalsIgnoreCase(str)) {
            z = true;
        }
        return z;
    }

    /* renamed from: h */
    public final boolean m22522h(String str) {
        return str == null;
    }
}
