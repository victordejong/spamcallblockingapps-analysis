package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RequiresApi(22)
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewUtilsApi22.class */
public class ViewUtilsApi22 extends ViewUtilsApi21 {
    public static final String TAG = "ViewUtilsApi22";
    public static Method sSetLeftTopRightBottomMethod;
    public static boolean sSetLeftTopRightBottomMethodFetched;

    @SuppressLint({"PrivateApi"})
    private void fetchSetLeftTopRightBottomMethod() {
        if (!sSetLeftTopRightBottomMethodFetched) {
            try {
                sSetLeftTopRightBottomMethod = View.class.getDeclaredMethod("setLeftTopRightBottom", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
                sSetLeftTopRightBottomMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            sSetLeftTopRightBottomMethodFetched = true;
        }
    }

    @Override // androidx.transition.ViewUtilsBase
    public void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        fetchSetLeftTopRightBottomMethod();
        Method method = sSetLeftTopRightBottomMethod;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }
}
