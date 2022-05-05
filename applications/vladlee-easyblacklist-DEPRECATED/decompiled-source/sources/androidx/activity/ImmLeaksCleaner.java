package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0930g;
import androidx.lifecycle.AbstractC0932i;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
final class ImmLeaksCleaner implements AbstractC0930g {

    /* renamed from: a */
    private static int f527a;

    /* renamed from: b */
    private static Field f528b;

    /* renamed from: c */
    private static Field f529c;

    /* renamed from: d */
    private static Field f530d;

    /* renamed from: e */
    private Activity f531e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmLeaksCleaner(Activity activity) {
        this.f531e = activity;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00af -> B:8:0x0049). Please submit an issue!!! */
    @Override // androidx.lifecycle.AbstractC0930g
    /* renamed from: a */
    public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
        if (aVar == AbstractC0927f.EnumC0928a.ON_DESTROY) {
            if (f527a == 0) {
                try {
                    f527a = 2;
                    Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                    f529c = declaredField;
                    declaredField.setAccessible(true);
                    Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                    f530d = declaredField2;
                    declaredField2.setAccessible(true);
                    Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                    f528b = declaredField3;
                    declaredField3.setAccessible(true);
                    f527a = 1;
                } catch (NoSuchFieldException e) {
                }
            }
            if (f527a == 1) {
                InputMethodManager inputMethodManager = (InputMethodManager) this.f531e.getSystemService("input_method");
                try {
                    Object obj = f528b.get(inputMethodManager);
                    if (obj != null) {
                        synchronized (obj) {
                            try {
                                View view = (View) f529c.get(inputMethodManager);
                                if (view != null) {
                                    if (!view.isAttachedToWindow()) {
                                        try {
                                            f530d.set(inputMethodManager, null);
                                            inputMethodManager.isActive();
                                        } catch (IllegalAccessException e2) {
                                        }
                                    }
                                }
                            } catch (ClassCastException e3) {
                            } catch (IllegalAccessException e4) {
                            }
                        }
                    }
                } catch (IllegalAccessException e5) {
                }
            }
        }
    }
}
