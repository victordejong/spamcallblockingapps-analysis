package retrofit2.mock;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.ExecutorService;
import retrofit2.Call;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:retrofit2/mock/BehaviorDelegate.class */
public final class BehaviorDelegate<T> {
    private final NetworkBehavior behavior;
    private final ExecutorService executor;
    final Retrofit retrofit;
    private final Class<T> service;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BehaviorDelegate(Retrofit retrofit, NetworkBehavior networkBehavior, ExecutorService executorService, Class<T> cls) {
        this.retrofit = retrofit;
        this.behavior = networkBehavior;
        this.executor = executorService;
        this.service = cls;
    }

    public <R> T returning(Call<R> call) {
        final BehaviorCall behaviorCall = new BehaviorCall(this.behavior, this.executor, call);
        return (T) Proxy.newProxyInstance(this.service.getClassLoader(), new Class[]{this.service}, new InvocationHandler() { // from class: retrofit2.mock.BehaviorDelegate.1
            @Override // java.lang.reflect.InvocationHandler
            public T invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                return (T) BehaviorDelegate.this.retrofit.callAdapter(method.getGenericReturnType(), method.getAnnotations()).adapt(behaviorCall);
            }
        });
    }

    public T returningResponse(Object obj) {
        return returning(Calls.response(obj));
    }
}
