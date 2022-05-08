package androidx.core.view;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/view/KeyEventDispatcher.class */
public class KeyEventDispatcher {

    /* renamed from: a */
    private static boolean f3256a = false;

    /* renamed from: b */
    private static Method f3257b;

    /* renamed from: c */
    private static boolean f3258c = false;

    /* renamed from: d */
    private static Field f3259d;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/KeyEventDispatcher$Component.class */
    public interface Component {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    private KeyEventDispatcher() {
    }

    /* renamed from: a */
    private static boolean m19303a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f3256a) {
            try {
                f3257b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException e) {
            }
            f3256a = true;
        }
        Method method = f3257b;
        if (method == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            return false;
        }
    }

    /* renamed from: b */
    private static boolean m19302b(Activity activity, KeyEvent keyEvent) {
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && m19303a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (ViewCompat.m19194i(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
    }

    /* renamed from: c */
    private static boolean m19301c(Dialog dialog, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener f = m19298f(dialog);
        if (f != null && f.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window = dialog.getWindow();
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (ViewCompat.m19194i(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
    }

    /* renamed from: d */
    public static boolean m19300d(@NonNull View view, @NonNull KeyEvent keyEvent) {
        return ViewCompat.m19192j(view, keyEvent);
    }

    /* renamed from: e */
    public static boolean m19299e(@NonNull Component component, @Nullable View view, @Nullable Window.Callback callback, @NonNull KeyEvent keyEvent) {
        boolean z = false;
        if (component == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return component.superDispatchKeyEvent(keyEvent);
        }
        if (callback instanceof Activity) {
            return m19302b((Activity) callback, keyEvent);
        }
        if (callback instanceof Dialog) {
            return m19301c((Dialog) callback, keyEvent);
        }
        if ((view != null && ViewCompat.m19194i(view, keyEvent)) || component.superDispatchKeyEvent(keyEvent)) {
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    private static DialogInterface.OnKeyListener m19298f(Dialog dialog) {
        if (!f3258c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f3259d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3258c = true;
        }
        Field field = f3259d;
        if (field == null) {
            return null;
        }
        try {
            return (DialogInterface.OnKeyListener) field.get(dialog);
        } catch (IllegalAccessException e2) {
            return null;
        }
    }
}
