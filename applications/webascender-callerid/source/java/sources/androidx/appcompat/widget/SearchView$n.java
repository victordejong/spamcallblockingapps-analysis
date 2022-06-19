package androidx.appcompat.widget;

import android.os.Build;
import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$n.class */
class SearchView$n {

    /* renamed from: a */
    private Method f347a;

    /* renamed from: b */
    private Method f348b;

    /* renamed from: c */
    private Method f349c;

    SearchView$n() {
        this.f347a = null;
        this.f348b = null;
        this.f349c = null;
        m6723d();
        try {
            Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
            this.f347a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
        }
        try {
            Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
            this.f348b = declaredMethod2;
            declaredMethod2.setAccessible(true);
        } catch (NoSuchMethodException e2) {
        }
        try {
            Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
            this.f349c = method;
            method.setAccessible(true);
        } catch (NoSuchMethodException e3) {
        }
    }

    /* renamed from: d */
    private static void m6723d() {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
    }

    /* renamed from: a */
    void m6726a(AutoCompleteTextView autoCompleteTextView) {
        m6723d();
        Method method = this.f348b;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: b */
    void m6725b(AutoCompleteTextView autoCompleteTextView) {
        m6723d();
        Method method = this.f347a;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: c */
    void m6724c(AutoCompleteTextView autoCompleteTextView) {
        m6723d();
        Method method = this.f349c;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, Boolean.TRUE);
            } catch (Exception e) {
            }
        }
    }
}
