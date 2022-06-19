package p193e.p194a.p712e4.p713e0;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: e.a.e4.e0.b */
/* loaded from: classes11-dex2jar.jar:e/a/e4/e0/b.class */
public class C13484b extends AbstractC13483a {

    /* renamed from: a */
    public final TelephonyManager f39128a;

    public C13484b(Context context) {
        this.f39128a = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
    }

    @Override // p193e.p194a.p712e4.p713e0.AbstractC13483a
    /* renamed from: a */
    public int mo21766a(String str) {
        int i;
        Method declaredMethod;
        Method declaredMethod2;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            e.getMessage();
            i = -1;
        }
        int i2 = 2;
        if (i == -1) {
            try {
                declaredMethod = this.f39128a.getClass().getDeclaredMethod("getDataEnabled", new Class[0]);
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException | InvocationTargetException e2) {
            }
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(this.f39128a, new Object[0]);
                if (invoke instanceof Boolean) {
                    if (((Boolean) invoke).booleanValue()) {
                        i2 = 1;
                    }
                    return i2;
                }
            }
            i2 = 0;
            return i2;
        }
        try {
            declaredMethod2 = this.f39128a.getClass().getDeclaredMethod("getDataEnabled", Integer.class);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException | InvocationTargetException e3) {
        }
        if (declaredMethod2 != null) {
            declaredMethod2.setAccessible(true);
            Object invoke2 = declaredMethod2.invoke(this.f39128a, Integer.valueOf(i));
            if (invoke2 instanceof Boolean) {
                if (((Boolean) invoke2).booleanValue()) {
                    i2 = 1;
                }
                return i2;
            }
        }
        i2 = 0;
        return i2;
    }
}
