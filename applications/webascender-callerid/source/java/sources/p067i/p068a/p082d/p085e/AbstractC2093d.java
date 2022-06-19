package p067i.p068a.p082d.p085e;

import java.util.Objects;
import java.util.Properties;
import p067i.p068a.p069a.p070c.AbstractC2017f;
import p067i.p068a.p069a.p070c.AbstractC2020j;
import p067i.p068a.p069a.p070c.AbstractC2021k;
import p067i.p068a.p069a.p070c.C2019i;
import p067i.p068a.p069a.p071d.C2024c;
import p067i.p068a.p069a.p071d.C2025d;
import p067i.p068a.p091e.p092a.p093a.C2125a;
/* renamed from: i.a.d.e.d */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/d.class */
public abstract class AbstractC2093d {

    /* renamed from: a */
    private static final AbstractC2093d f5700a;

    /* renamed from: b */
    private static final AbstractC2093d f5701b;

    /* renamed from: c */
    private static final AbstractC2093d f5702c;

    static {
        m236b(C2019i.m372b());
        AbstractC2093d m236b = m236b(C2019i.m371c(C2125a.f5809m0, "unknown_service:java"));
        f5701b = m236b;
        AbstractC2021k m373a = C2019i.m373a();
        m373a.m368b(C2125a.f5817q0, "opentelemetry");
        m373a.m368b(C2125a.f5819r0, "java");
        m373a.m368b(C2125a.f5821s0, m229i());
        AbstractC2093d m236b2 = m236b(m373a.m367c());
        f5700a = m236b2;
        f5702c = m236b.m230h(m236b2);
    }

    AbstractC2093d() {
    }

    /* renamed from: a */
    private static void m237a(AbstractC2020j abstractC2020j) {
        abstractC2020j.forEach(C2092b.f5699f);
    }

    /* renamed from: b */
    public static AbstractC2093d m236b(AbstractC2020j abstractC2020j) {
        Objects.requireNonNull(abstractC2020j, "attributes");
        m237a(abstractC2020j);
        return new c(abstractC2020j);
    }

    /* renamed from: d */
    public static AbstractC2093d m234d() {
        return f5702c;
    }

    /* renamed from: e */
    private static boolean m233e(String str) {
        return str.length() <= 255 && C2024c.m352b(str);
    }

    /* renamed from: f */
    private static boolean m232f(AbstractC2017f<?> abstractC2017f) {
        return !abstractC2017f.getKey().isEmpty() && m233e(abstractC2017f.getKey());
    }

    /* renamed from: g */
    public static /* synthetic */ void m231g(AbstractC2017f abstractC2017f, Object obj) {
        C2025d.m351a(m232f(abstractC2017f), "Attribute key should be a ASCII string with a length greater than 0 and not exceed 255 characters.");
        Objects.requireNonNull(obj, "Attribute value should be a ASCII string with a length not exceed 255 characters.");
    }

    /* renamed from: i */
    private static String m229i() {
        Properties properties = new Properties();
        try {
            properties.load(AbstractC2093d.class.getResourceAsStream("/io/opentelemetry/sdk/version.properties"));
            return properties.getProperty("sdk.version");
        } catch (Exception e) {
            return "unknown";
        }
    }

    /* renamed from: c */
    public abstract AbstractC2020j m235c();

    /* renamed from: h */
    public AbstractC2093d m230h(AbstractC2093d abstractC2093d) {
        if (abstractC2093d == null) {
            return this;
        }
        AbstractC2021k m373a = C2019i.m373a();
        m373a.m369a(m235c());
        m373a.m369a(abstractC2093d.m235c());
        return new c(m373a.m367c());
    }
}
