package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p372b0.p410f.AbstractC8440a;
import s1.z.c.l;
/* renamed from: e.a.b0.q.f */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/f.class */
public final class C8579f implements AbstractC8577e {

    /* renamed from: a */
    public final TelephonyManager f26397a;

    /* renamed from: b */
    public final AbstractC8440a f26398b;

    @Inject
    public C8579f(Context context, AbstractC8440a abstractC8440a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8440a, "declineCallErrorsTracker");
        this.f26398b = abstractC8440a;
        Object systemService = context.getSystemService(AnalyticsConstants.PHONE);
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        this.f26397a = (TelephonyManager) systemService;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8577e
    /* renamed from: a */
    public boolean mo28341a() {
        try {
            Object m28343b = m28343b(this.f26397a, "getITelephony");
            if (m28343b == null) {
                return true;
            }
            m28343b(m28343b, "endCall");
            return true;
        } catch (Exception e) {
            this.f26398b.mo28558a(0, e);
            try {
                Object m28343b2 = m28343b(this.f26397a, "getITelephonyMSim");
                if (m28343b2 == null) {
                    return false;
                }
                if (!l.a(m28342c(m28343b2, "endCall", 0), Boolean.FALSE)) {
                    return true;
                }
                m28342c(m28343b2, "endCall", 1);
                return true;
            } catch (Exception e2) {
                this.f26398b.mo28558a(1, e2);
                return false;
            }
        }
    }

    /* renamed from: b */
    public final Object m28343b(Object obj, String str) {
        Method declaredMethod = obj.getClass().getDeclaredMethod(str, new Class[0]);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, new Object[0]);
    }

    /* renamed from: c */
    public final Object m28342c(Object obj, String str, Object... objArr) {
        Class<?> cls = obj.getClass();
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj2 : objArr) {
            arrayList.add(obj2.getClass());
        }
        Object[] array = arrayList.toArray(new Class[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Class[] clsArr = (Class[]) array;
        Method declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, objArr);
    }
}
