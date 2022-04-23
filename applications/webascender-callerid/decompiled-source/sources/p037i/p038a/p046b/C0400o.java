package p037i.p038a.p046b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.ServiceLoader;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: i.a.b.o */
/* loaded from: classes2-dex2jar.jar:i/a/b/o.class */
public final class C0400o {

    /* renamed from: a */
    private static final Logger f972a = Logger.getLogger(C0400o.class.getName());

    /* renamed from: b */
    private static final AbstractC0395i f973b;

    static {
        AtomicReference atomicReference = new AtomicReference();
        q a = m277a(atomicReference);
        q qVar = a;
        if (Boolean.getBoolean("io.opentelemetry.context.enableStrictContext")) {
            qVar = q.e(a);
        }
        for (Function<? super AbstractC0395i, ? extends AbstractC0395i> function : C0397k.m282a()) {
            qVar = (AbstractC0395i) function.apply(qVar);
        }
        f973b = qVar;
        C0397k.m281b();
        Throwable th = (Throwable) atomicReference.get();
        if (th != null) {
            f972a.log(Level.WARNING, "ContextStorageProvider initialized failed. Using default", th);
        }
    }

    private C0400o() {
    }

    /* renamed from: a */
    static AbstractC0395i m277a(AtomicReference<Throwable> atomicReference) {
        String property = System.getProperty("io.opentelemetry.context.contextStorageProvider", "");
        if ("default".equals(property)) {
            return C0394h.m284a();
        }
        ArrayList<AbstractC0396j> arrayList = new ArrayList();
        Iterator it = ServiceLoader.load(AbstractC0396j.class).iterator();
        while (it.hasNext()) {
            AbstractC0396j jVar = (AbstractC0396j) it.next();
            if (jVar.getClass().getName().equals("io.opentelemetry.sdk.testing.context.SettableContextStorageProvider")) {
                return jVar.get();
            }
            arrayList.add(jVar);
        }
        if (arrayList.isEmpty()) {
            return C0394h.m284a();
        }
        if (!property.isEmpty()) {
            for (AbstractC0396j jVar2 : arrayList) {
                if (jVar2.getClass().getName().equals(property)) {
                    return jVar2.get();
                }
            }
            atomicReference.set(new IllegalStateException("io.opentelemetry.context.ContextStorageProvider property set but no matching class could be found, requested: " + property + " but found providers: " + arrayList));
            return C0394h.m284a();
        } else if (arrayList.size() == 1) {
            return ((AbstractC0396j) arrayList.get(0)).get();
        } else {
            atomicReference.set(new IllegalStateException("Found multiple ContextStorageProvider. Set the io.opentelemetry.context.ContextStorageProvider property to the fully qualified class name of the provider to use. Falling back to default ContextStorage. Found providers: " + arrayList));
            return C0394h.m284a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AbstractC0395i m276b() {
        return f973b;
    }
}
