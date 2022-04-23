package androidx.core.p037g;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.g.d */
/* loaded from: classes-dex2jar.jar:androidx/core/g/d.class */
public final class C0724d {

    /* renamed from: a */
    private static boolean f3085a = false;

    /* renamed from: b */
    private static Method f3086b;

    /* renamed from: c */
    private static boolean f3087c = false;

    /* renamed from: d */
    private static Field f3088d;

    /* renamed from: androidx.core.g.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/d$a.class */
    public interface AbstractC0725a {
        /* renamed from: a */
        boolean mo8409a(KeyEvent keyEvent);
    }

    /* renamed from: a */
    private static DialogInterface.OnKeyListener m8412a(Dialog dialog) {
        if (!f3087c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f3088d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3087c = true;
        }
        Field field = f3088d;
        if (field == null) {
            return null;
        }
        try {
            return (DialogInterface.OnKeyListener) field.get(dialog);
        } catch (IllegalAccessException e2) {
            return null;
        }
    }

    /* renamed from: a */
    private static boolean m8413a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f3085a) {
            try {
                f3086b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException e) {
            }
            f3085a = true;
        }
        Method method = f3086b;
        if (method == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m8411a(View view, KeyEvent keyEvent) {
        return C0741t.m8350a(view, keyEvent);
    }

    /* renamed from: a */
    public static boolean m8410a(AbstractC0725a aVar, View view, Window.Callback callback, KeyEvent keyEvent) {
        if (aVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return aVar.mo8409a(keyEvent);
        }
        KeyEvent.DispatcherState dispatcherState = null;
        KeyEvent.DispatcherState dispatcherState2 = null;
        if (callback instanceof Activity) {
            Activity activity = (Activity) callback;
            activity.onUserInteraction();
            Window window = activity.getWindow();
            if (window.hasFeature(8)) {
                ActionBar actionBar = activity.getActionBar();
                if (keyEvent.getKeyCode() == 82 && actionBar != null && m8413a(actionBar, keyEvent)) {
                    return true;
                }
            }
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (C0741t.m8336b(decorView, keyEvent)) {
                return true;
            }
            if (decorView != null) {
                dispatcherState2 = decorView.getKeyDispatcherState();
            }
            return keyEvent.dispatch(activity, dispatcherState2, activity);
        } else if (!(callback instanceof Dialog)) {
            return (view != null && C0741t.m8336b(view, keyEvent)) || aVar.mo8409a(keyEvent);
        } else {
            Dialog dialog = (Dialog) callback;
            DialogInterface.OnKeyListener a = m8412a(dialog);
            if (a != null && a.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
                return true;
            }
            Window window2 = dialog.getWindow();
            if (window2.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView2 = window2.getDecorView();
            if (C0741t.m8336b(decorView2, keyEvent)) {
                return true;
            }
            if (decorView2 != null) {
                dispatcherState = decorView2.getKeyDispatcherState();
            }
            return keyEvent.dispatch(dialog, dispatcherState, dialog);
        }
    }
}
