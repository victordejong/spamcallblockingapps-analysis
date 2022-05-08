package butterknife;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:butterknife/ButterKnife.class */
public final class ButterKnife {
    @VisibleForTesting
    public static final Map<Class<?>, Constructor<? extends Unbinder>> BINDINGS = new LinkedHashMap();
    public static final String TAG = "ButterKnife";
    public static boolean debug = false;

    public ButterKnife() {
        throw new AssertionError("No instances.");
    }

    @NonNull
    @UiThread
    public static Unbinder bind(@NonNull Activity activity) {
        return bind(activity, activity.getWindow().getDecorView());
    }

    @NonNull
    @UiThread
    public static Unbinder bind(@NonNull Dialog dialog) {
        return bind(dialog, dialog.getWindow().getDecorView());
    }

    @NonNull
    @UiThread
    public static Unbinder bind(@NonNull View view) {
        return bind(view, view);
    }

    @NonNull
    @UiThread
    public static Unbinder bind(@NonNull Object obj, @NonNull Activity activity) {
        return bind(obj, activity.getWindow().getDecorView());
    }

    @NonNull
    @UiThread
    public static Unbinder bind(@NonNull Object obj, @NonNull Dialog dialog) {
        return bind(obj, dialog.getWindow().getDecorView());
    }

    @NonNull
    @UiThread
    public static Unbinder bind(@NonNull Object obj, @NonNull View view) {
        Class<?> cls = obj.getClass();
        if (debug) {
            String str = "Looking up binding for " + cls.getName();
        }
        Constructor<? extends Unbinder> findBindingConstructorForClass = findBindingConstructorForClass(cls);
        if (findBindingConstructorForClass == null) {
            return Unbinder.EMPTY;
        }
        try {
            return (Unbinder) findBindingConstructorForClass.newInstance(obj, view);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Unable to invoke " + findBindingConstructorForClass, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Unable to invoke " + findBindingConstructorForClass, e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unable to create binding instance.", cause);
            }
        }
    }

    @Nullable
    @CheckResult
    @UiThread
    public static Constructor<? extends Unbinder> findBindingConstructorForClass(Class<?> cls) {
        Constructor<? extends Unbinder> constructor;
        Constructor<? extends Unbinder> constructor2 = BINDINGS.get(cls);
        if (constructor2 != null || BINDINGS.containsKey(cls)) {
            boolean z = debug;
            return constructor2;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.") || name.startsWith("androidx.")) {
            boolean z2 = debug;
            return null;
        }
        try {
            constructor = cls.getClassLoader().loadClass(name + "_ViewBinding").getConstructor(cls, View.class);
            boolean z3 = debug;
        } catch (ClassNotFoundException e) {
            if (debug) {
                String str = "Not found. Trying superclass " + cls.getSuperclass().getName();
            }
            constructor = findBindingConstructorForClass(cls.getSuperclass());
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException("Unable to find binding constructor for " + name, e2);
        }
        BINDINGS.put(cls, constructor);
        return constructor;
    }

    public static void setDebug(boolean z) {
        debug = z;
    }
}
