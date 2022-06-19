package p193e.p194a.p912i4;

import android.content.Context;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.log.AssertionUtil;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.inject.Inject;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import r3.a.a.a;
import r3.a.a.c;
/* renamed from: e.a.i4.u */
/* loaded from: classes11-dex2jar.jar:e/a/i4/u.class */
public class C15292u {

    /* renamed from: a */
    public final a f43516a;

    @Inject
    public C15292u(Context context) {
        a aVar;
        a aVar2;
        NoSuchFieldException e;
        IllegalAccessException e2;
        NoSuchMethodException e3;
        InvocationTargetException e4;
        try {
            Field declaredField = c.class.getDeclaredField(C22021b.f61237c);
            declaredField.setAccessible(true);
            a aVar3 = (a) declaredField.get(null);
            aVar = aVar3;
            if (aVar3 == null) {
                try {
                    Method declaredMethod = c.class.getDeclaredMethod(AbstractC2405c.f7629a, Context.class);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(null, context);
                    aVar = (a) declaredField.get(null);
                } catch (IllegalAccessException e5) {
                    e2 = e5;
                    aVar2 = aVar3;
                    AssertionUtil.OnlyInDebug.shouldNeverHappen(e2, "Could not access badger");
                    aVar = aVar2;
                    this.f43516a = aVar;
                } catch (NoSuchFieldException e6) {
                    e = e6;
                    aVar2 = aVar3;
                    AssertionUtil.OnlyInDebug.shouldNeverHappen(e, "Could not access badger");
                    aVar = aVar2;
                    this.f43516a = aVar;
                } catch (NoSuchMethodException e7) {
                    e3 = e7;
                    aVar2 = aVar3;
                    AssertionUtil.OnlyInDebug.shouldNeverHappen(e3, "Could not access badger init method");
                    aVar = aVar2;
                    this.f43516a = aVar;
                } catch (InvocationTargetException e8) {
                    e4 = e8;
                    aVar2 = aVar3;
                    AssertionUtil.OnlyInDebug.shouldNeverHappen(e4, "Could not access badger init method");
                    aVar = aVar2;
                    this.f43516a = aVar;
                }
            }
        } catch (IllegalAccessException e9) {
            e2 = e9;
            aVar2 = null;
        } catch (NoSuchFieldException e10) {
            e = e10;
            aVar2 = null;
        } catch (NoSuchMethodException e11) {
            e3 = e11;
            aVar2 = null;
        } catch (InvocationTargetException e12) {
            e4 = e12;
            aVar2 = null;
        }
        this.f43516a = aVar;
    }
}
