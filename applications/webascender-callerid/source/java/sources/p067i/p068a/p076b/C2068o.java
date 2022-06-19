package p067i.p068a.p076b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.ServiceLoader;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: i.a.b.o */
/* loaded from: classes2-dex2jar.jar:i/a/b/o.class */
public final class C2068o {

    /* renamed from: a */
    private static final Logger f5651a = Logger.getLogger(C2068o.class.getName());

    /* renamed from: b */
    private static final AbstractC2063i f5652b;

    static {
        AtomicReference atomicReference = new AtomicReference();
        AbstractC2063i m277a = m277a(atomicReference);
        AbstractC2063i abstractC2063i = m277a;
        if (Boolean.getBoolean("io.opentelemetry.context.enableStrictContext")) {
            abstractC2063i = q.e(m277a);
        }
        for (Function<? super AbstractC2063i, ? extends AbstractC2063i> function : C2065k.m282a()) {
            abstractC2063i = function.apply(abstractC2063i);
        }
        f5652b = abstractC2063i;
        C2065k.m281b();
        Throwable th = (Throwable) atomicReference.get();
        if (th != null) {
            f5651a.log(Level.WARNING, "ContextStorageProvider initialized failed. Using default", th);
        }
    }

    private C2068o() {
    }

    /* renamed from: a */
    static AbstractC2063i m277a(AtomicReference<Throwable> atomicReference) {
        String property = System.getProperty("io.opentelemetry.context.contextStorageProvider", "");
        if ("default".equals(property)) {
            return C2062h.m284a();
        }
        ArrayList<AbstractC2064j> arrayList = new ArrayList();
        Iterator it = ServiceLoader.load(AbstractC2064j.class).iterator();
        while (it.hasNext()) {
            AbstractC2064j abstractC2064j = (AbstractC2064j) it.next();
            if (abstractC2064j.getClass().getName().equals("io.opentelemetry.sdk.testing.context.SettableContextStorageProvider")) {
                return abstractC2064j.get();
            }
            arrayList.add(abstractC2064j);
        }
        if (arrayList.isEmpty()) {
            return C2062h.m284a();
        }
        if (property.isEmpty()) {
            if (arrayList.size() == 1) {
                return ((AbstractC2064j) arrayList.get(0)).get();
            }
            atomicReference.set(new IllegalStateException("Found multiple ContextStorageProvider. Set the io.opentelemetry.context.ContextStorageProvider property to the fully qualified class name of the provider to use. Falling back to default ContextStorage. Found providers: " + arrayList));
            return C2062h.m284a();
        }
        for (AbstractC2064j abstractC2064j2 : arrayList) {
            if (abstractC2064j2.getClass().getName().equals(property)) {
                return abstractC2064j2.get();
            }
        }
        atomicReference.set(new IllegalStateException("io.opentelemetry.context.ContextStorageProvider property set but no matching class could be found, requested: " + property + " but found providers: " + arrayList));
        return C2062h.m284a();
    }

    /* renamed from: b */
    public static AbstractC2063i m276b() {
        return f5652b;
    }
}
