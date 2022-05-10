package p131c.p161d.p282e.p289l.p290d.p293h;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.network.HttpMethod;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;
import p131c.p161d.p282e.p289l.p290d.p297k.C5394a;
import p131c.p161d.p282e.p289l.p290d.p297k.C5395b;
/* renamed from: c.d.e.l.d.h.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/a.class */
public abstract class AbstractC5210a {

    /* renamed from: e */
    public static final Pattern f17883e = Pattern.compile("http(s?)://[^\\/]+", 2);

    /* renamed from: a */
    public final String f17884a;

    /* renamed from: b */
    public final C5395b f17885b;

    /* renamed from: c */
    public final HttpMethod f17886c;

    /* renamed from: d */
    public final String f17887d;

    public AbstractC5210a(String str, String str2, C5395b bVar, HttpMethod httpMethod) {
        if (str2 == null) {
            throw new IllegalArgumentException("url must not be null.");
        } else if (bVar != null) {
            this.f17887d = str;
            this.f17884a = m24276a(str2);
            this.f17885b = bVar;
            this.f17886c = httpMethod;
        } else {
            throw new IllegalArgumentException("requestFactory must not be null.");
        }
    }

    /* renamed from: a */
    public C5394a m24277a() {
        return m24275a(Collections.emptyMap());
    }

    /* renamed from: a */
    public C5394a m24275a(Map<String, String> map) {
        C5394a a = this.f17885b.m23925a(this.f17886c, m24274b(), map);
        a.m23932a("User-Agent", "Crashlytics Android SDK/" + C5269l.m24107e());
        a.m23932a("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
        return a;
    }

    /* renamed from: a */
    public final String m24276a(String str) {
        String str2 = str;
        if (!CommonUtils.m7651b(this.f17887d)) {
            str2 = f17883e.matcher(str).replaceFirst(this.f17887d);
        }
        return str2;
    }

    /* renamed from: b */
    public String m24274b() {
        return this.f17884a;
    }
}
