package androidx.core.view;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/core/view/ViewConfigurationCompat.class */
public final class ViewConfigurationCompat {

    /* renamed from: a */
    private static Method f3295a;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                f3295a = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", new Class[0]);
            } catch (Exception e) {
                Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
    }

    private ViewConfigurationCompat() {
    }

    /* renamed from: a */
    private static float m19129a(ViewConfiguration viewConfiguration, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = f3295a) != null) {
            try {
                return ((Integer) method.invoke(viewConfiguration, new Object[0])).intValue();
            } catch (Exception e) {
                Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }

    /* renamed from: b */
    public static float m19128b(@NonNull ViewConfiguration viewConfiguration, @NonNull Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledHorizontalScrollFactor() : m19129a(viewConfiguration, context);
    }

    /* renamed from: c */
    public static int m19127c(ViewConfiguration viewConfiguration) {
        return Build.VERSION.SDK_INT >= 28 ? viewConfiguration.getScaledHoverSlop() : viewConfiguration.getScaledTouchSlop() / 2;
    }

    /* renamed from: d */
    public static float m19126d(@NonNull ViewConfiguration viewConfiguration, @NonNull Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledVerticalScrollFactor() : m19129a(viewConfiguration, context);
    }

    /* renamed from: e */
    public static boolean m19125e(ViewConfiguration viewConfiguration, @NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
        }
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier != 0 && resources.getBoolean(identifier);
    }
}
