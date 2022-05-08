package p081h.p203i.p204a.p224e.p259j.p269j;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import p081h.p203i.p204a.p224e.p259j.p269j.C7965z0;
/* renamed from: h.i.a.e.j.j.l1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/l1.class */
public abstract class AbstractC7855l1<T extends C7965z0> {

    /* renamed from: a */
    public static final Logger f18401a = Logger.getLogger(AbstractC7918t0.class.getName());

    /* renamed from: b */
    public static String f18402b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    /* renamed from: a */
    public static <T extends C7965z0> T m19261a(Class<T> cls) {
        String str;
        ClassLoader classLoader = AbstractC7855l1.class.getClassLoader();
        if (cls.equals(C7965z0.class)) {
            str = f18402b;
        } else if (cls.getPackage().equals(AbstractC7855l1.class.getPackage())) {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((AbstractC7855l1) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m19262a());
                        } catch (InstantiationException e) {
                            throw new IllegalStateException(e);
                        }
                    } catch (NoSuchMethodException e2) {
                        throw new IllegalStateException(e2);
                    }
                } catch (InvocationTargetException e3) {
                    throw new IllegalStateException(e3);
                }
            } catch (IllegalAccessException e4) {
                throw new IllegalStateException(e4);
            }
        } catch (ClassNotFoundException e5) {
            Iterator it = ServiceLoader.load(AbstractC7855l1.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((AbstractC7855l1) it.next()).m19262a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f18401a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(cls.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (T) ((C7965z0) arrayList.get(0));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) ((C7965z0) cls.getMethod("combine", Collection.class).invoke(null, arrayList));
            } catch (IllegalAccessException e7) {
                throw new IllegalStateException(e7);
            } catch (NoSuchMethodException e8) {
                throw new IllegalStateException(e8);
            } catch (InvocationTargetException e9) {
                throw new IllegalStateException(e9);
            }
        }
    }

    /* renamed from: a */
    public abstract T m19262a();
}
