package kotlinx.coroutines.android;

import android.os.Build;
import androidx.annotation.Keep;
import java.lang.Thread;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineExceptionHandler;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15049g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n��\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\rH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000e"}, m815d2 = {"Lkotlinx/coroutines/android/AndroidExceptionPreHandler;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "()V", "_preHandler", "", "handleException", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "", "preHandler", "Ljava/lang/reflect/Method;", "kotlinx-coroutines-android"}, m814k = 1, m813mv = {1, 1, 16})
@Keep
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/android/AndroidExceptionPreHandler.class */
public final class AndroidExceptionPreHandler extends AbstractC15037a implements CoroutineExceptionHandler {
    public volatile Object _preHandler = this;

    public AndroidExceptionPreHandler() {
        super(CoroutineExceptionHandler.Key);
    }

    private final Method preHandler() {
        Object obj = this._preHandler;
        if (obj != this) {
            return (Method) obj;
        }
        Method method = null;
        try {
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", new Class[0]);
            boolean z = false;
            if (Modifier.isPublic(declaredMethod.getModifiers())) {
                z = false;
                if (Modifier.isStatic(declaredMethod.getModifiers())) {
                    z = true;
                }
            }
            if (z) {
                method = declaredMethod;
            }
        } catch (Throwable th) {
        }
        this._preHandler = method;
        return method;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(AbstractC15049g gVar, Throwable th) {
        Thread currentThread = Thread.currentThread();
        if (Build.VERSION.SDK_INT >= 28) {
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
            return;
        }
        Method preHandler = preHandler();
        Object invoke = preHandler != null ? preHandler.invoke(null, new Object[0]) : null;
        Object obj = invoke;
        if (!(invoke instanceof Thread.UncaughtExceptionHandler)) {
            obj = null;
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = (Thread.UncaughtExceptionHandler) obj;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(currentThread, th);
        }
    }
}
