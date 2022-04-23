package p037i.p038a.p052d.p055e;

import java.util.Objects;
import java.util.Properties;
import p037i.p038a.p039a.p040c.AbstractC0349f;
import p037i.p038a.p039a.p040c.AbstractC0352j;
import p037i.p038a.p039a.p040c.AbstractC0353k;
import p037i.p038a.p039a.p040c.C0351i;
import p037i.p038a.p039a.p041d.C0356c;
import p037i.p038a.p039a.p041d.C0357d;
import p037i.p038a.p061e.p062a.p063a.C0457a;
/* renamed from: i.a.d.e.d */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/d.class */
public abstract class AbstractC0425d {

    /* renamed from: a */
    private static final AbstractC0425d f1021a;

    /* renamed from: b */
    private static final AbstractC0425d f1022b;

    /* renamed from: c */
    private static final AbstractC0425d f1023c;

    static {
        m236b(C0351i.m372b());
        AbstractC0425d b = m236b(C0351i.m371c(C0457a.f1130m0, "unknown_service:java"));
        f1022b = b;
        AbstractC0353k a = C0351i.m373a();
        a.m368b(C0457a.f1138q0, "opentelemetry");
        a.m368b(C0457a.f1140r0, "java");
        a.m368b(C0457a.f1142s0, m229i());
        AbstractC0425d b2 = m236b(a.m367c());
        f1021a = b2;
        f1023c = b.m230h(b2);
    }

    AbstractC0425d() {
    }

    /* renamed from: a */
    private static void m237a(AbstractC0352j jVar) {
        jVar.forEach(C0424b.f1020f);
    }

    /* renamed from: b */
    public static AbstractC0425d m236b(AbstractC0352j jVar) {
        Objects.requireNonNull(jVar, "attributes");
        m237a(jVar);
        return new c(jVar);
    }

    /* renamed from: d */
    public static AbstractC0425d m234d() {
        return f1023c;
    }

    /* renamed from: e */
    private static boolean m233e(String str) {
        return str.length() <= 255 && C0356c.m352b(str);
    }

    /* renamed from: f */
    private static boolean m232f(AbstractC0349f<?> fVar) {
        return !fVar.getKey().isEmpty() && m233e(fVar.getKey());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ void m231g(AbstractC0349f fVar, Object obj) {
        C0357d.m351a(m232f(fVar), "Attribute key should be a ASCII string with a length greater than 0 and not exceed 255 characters.");
        Objects.requireNonNull(obj, "Attribute value should be a ASCII string with a length not exceed 255 characters.");
    }

    /* renamed from: i */
    private static String m229i() {
        Properties properties = new Properties();
        try {
            properties.load(AbstractC0425d.class.getResourceAsStream("/io/opentelemetry/sdk/version.properties"));
            return properties.getProperty("sdk.version");
        } catch (Exception e) {
            return "unknown";
        }
    }

    /* renamed from: c */
    public abstract AbstractC0352j m235c();

    /* renamed from: h */
    public AbstractC0425d m230h(AbstractC0425d dVar) {
        if (dVar == null) {
            return this;
        }
        AbstractC0353k a = C0351i.m373a();
        a.m369a(m235c());
        a.m369a(dVar.m235c());
        return new c(a.m367c());
    }
}
