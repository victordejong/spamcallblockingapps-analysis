package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Field;
import p012b.p068o.AbstractC1107e;
import p012b.p068o.AbstractC1109g;
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
public final class ImmLeaksCleaner implements AbstractC1107e {

    /* renamed from: b */
    public static int f143b;

    /* renamed from: c */
    public static Field f144c;

    /* renamed from: d */
    public static Field f145d;

    /* renamed from: e */
    public static Field f146e;

    /* renamed from: a */
    public Activity f147a;

    public ImmLeaksCleaner(Activity activity) {
        this.f147a = activity;
    }

    /* renamed from: a */
    public static void m39226a() {
        try {
            f143b = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f145d = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            f146e = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f144c = declaredField3;
            declaredField3.setAccessible(true);
            f143b = 1;
        } catch (NoSuchFieldException e) {
        }
    }

    @Override // p012b.p068o.AbstractC1107e
    /* renamed from: a */
    public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            if (f143b == 0) {
                m39226a();
            }
            if (f143b == 1) {
                InputMethodManager inputMethodManager = (InputMethodManager) this.f147a.getSystemService("input_method");
                try {
                    Object obj = f144c.get(inputMethodManager);
                    if (obj != null) {
                        synchronized (obj) {
                            try {
                                try {
                                    View view = (View) f145d.get(inputMethodManager);
                                    if (view != null) {
                                        if (!view.isAttachedToWindow()) {
                                            try {
                                                f146e.set(inputMethodManager, null);
                                                inputMethodManager.isActive();
                                            } catch (IllegalAccessException e) {
                                            }
                                        }
                                    }
                                } catch (ClassCastException e2) {
                                }
                            } catch (IllegalAccessException e3) {
                            }
                        }
                    }
                } catch (IllegalAccessException e4) {
                }
            }
        }
    }
}
