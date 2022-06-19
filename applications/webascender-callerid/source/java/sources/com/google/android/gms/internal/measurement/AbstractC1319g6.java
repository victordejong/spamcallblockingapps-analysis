package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.C1413y5;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.android.gms.internal.measurement.g6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/g6.class */
abstract class AbstractC1319g6<T extends C1413y5> {

    /* renamed from: a */
    private static final Logger f3903a = Logger.getLogger(s5.class.getName());

    /* renamed from: b */
    private static final String f3904b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    AbstractC1319g6() {
    }

    /* renamed from: b */
    public static <T extends C1413y5> T m2130b(Class<T> cls) {
        String str;
        ClassLoader classLoader = AbstractC1319g6.class.getClassLoader();
        if (cls.equals(C1413y5.class)) {
            str = f3904b;
        } else if (!cls.getPackage().equals(AbstractC1319g6.class.getPackage())) {
            throw new IllegalArgumentException(cls.getName());
        } else {
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        }
        try {
            try {
                try {
                    try {
                        try {
                            return cls.cast(((AbstractC1319g6) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m2131a());
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
            Iterator it = ServiceLoader.load(AbstractC1319g6.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((AbstractC1319g6) it.next()).m2131a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = f3903a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(cls.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (T) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
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
    protected abstract T m2131a();
}
